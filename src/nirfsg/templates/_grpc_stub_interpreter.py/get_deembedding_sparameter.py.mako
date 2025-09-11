<%page args="f, config, method_template"/>\
<%
    '''Creates a numpy array based on number of ports queried from driver and passes it to "get_deembedding_sparameters" method.'''
    import build.helper as helper
%>\
    def ${f['python_name']}(${helper.get_params_snippet(f, helper.ParameterUsageOptions.SESSION_METHOD_DECLARATION)}):
        import numpy as np
        sparameters = np.full((1, 1), 0 + 0j, dtype=np.complex128)
        response = self._invoke(
            self._client.GetDeembeddingSparameters,
            grpc_types.GetDeembeddingSparametersRequest(vi=self._vi),
        )
        temp_array = np.array([c.real + 1j * c.imaginary for c in response.sparameters], dtype=np.complex128)
        np.copyto(sparameters, temp_array.view(sparameters.dtype).reshape(sparameters.shape))
        return sparameters
