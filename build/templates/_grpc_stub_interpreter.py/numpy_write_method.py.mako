<%page args="f, config, method_template, grpc_types_var, grpc_client_var"/>\
<%
    '''Renders a GrpcStubInterpreter method corresponding to the passed-in function metadata.'''
    import build.helper as helper
    parameters = f['parameters']
    full_func_name = f['interpreter_name'] + method_template['method_python_name_suffix']
    method_decl_params = helper.get_params_snippet(f, helper.ParameterUsageOptions.INTERPRETER_METHOD_DECLARATION)
    grpc_name = f.get('grpc_name', f['name'])
    grpc_request_args = helper.get_params_snippet(f, helper.ParameterUsageOptions.GRPC_REQUEST_PARAMETERS)
    return_statement = helper.get_grpc_interpreter_method_return_snippet(f['parameters'], config)
    if return_statement == 'return':
        return_statement = None
    capture_response = 'response = ' if return_statement else ''
    included_in_proto = f.get('included_in_proto', True)
    numpy_complex_params = [
        p for p in helper.filter_parameters(parameters, helper.ParameterUsageOptions.NUMPY_PARAMETERS)
        if p['complex_type'] is not None and p.get('original_type') in ('NIComplexNumber[]', 'NIComplexNumberF32[]', 'NIComplexI16[]')
    ]
    # For numpy complex inputs, create NIComplex message lists and map them in the request args
    for p in numpy_complex_params:
        # Replace occurrences like "field=python_name" with "field=python_name_list"
        grpc_request_args = grpc_request_args.replace(
            p['grpc_name'] + '=' + p['python_name'],
            p['grpc_name'] + '=' + p['python_name'] + '_list'
        )

%>\

    def ${full_func_name}(${method_decl_params}):  # noqa: N802
% if included_in_proto:
% for p in numpy_complex_params:
% if p['original_type'] == 'NIComplexNumber[]':
        ${p['python_name']}_list = [
            grpc_complex_types.NIComplexNumber(real=val.real, imaginary=val.imag)
            for val in ${p['python_name']}.ravel()
        ]
% elif p['original_type'] == 'NIComplexNumberF32[]':
        ${p['python_name']}_list = [
            grpc_complex_types.NIComplexNumberF32(real=val.real, imaginary=val.imag)
            for val in ${p['python_name']}.ravel()
        ]
% elif p['original_type'] == 'NIComplexI16[]':
        import numpy as np
        arr = ${p['python_name']}.ravel()
        if arr.size % 2 != 0:
            raise ValueError("Interleaved int16 array must have even length (real/imag pairs)")
        arr_pairs = arr.reshape(-1, 2)
        ${p['python_name']}_list = [
            grpc_complex_types.NIComplexI16(real=int(pair[0]), imaginary=int(pair[1]))
            for pair in arr_pairs
        ]
% endif
% endfor
        client = self._restricted_client if grpc_client_var == 'restricted_grpc' else self._client
        ${capture_response}self._invoke(
            client.${grpc_name},
            ${grpc_types_var}.${grpc_name}Request(${grpc_request_args}),
        )
% if return_statement:
        ${return_statement}
% endif
% else:
        raise NotImplementedError('${full_func_name} is not supported over gRPC')
% endif
