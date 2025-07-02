<%page args="f, config, method_template"/>\
<%
    '''Dispatches to the appropriate "write arb waveform" method based on the waveform type.'''
    import build.helper as helper
%>\
    def ${f['python_name']}(${helper.get_params_snippet(f, helper.ParameterUsageOptions.SESSION_METHOD_DECLARATION)}):
        '''${f['python_name']}

        ${helper.get_function_docstring(f, False, config, indent=8)}
        '''

        if sparameter_array_size > 0:
            import numpy as np
            number_of_ports = self._interpreter._get_deembedding_table_number_of_ports()
            waveform = np.full(number_of_ports, 0+0j, dtype=np.complex128)
            sparameterArraySize = number_of_ports ** 2
            waveform, number_of_ports = self._interpreter.get_deembedding_sparameter(sparameterArraySize)
            waveform = np.array(waveform).reshape((number_of_ports, number_of_ports))
            return list(waveform), number_of_ports
        else:
            raise TypeError("S Parameter array size is expected to be greater than 0.")



        
