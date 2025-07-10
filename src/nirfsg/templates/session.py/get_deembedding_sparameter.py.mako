<%page args="f, config, method_template"/>\
<%
    ''''''
    import build.helper as helper
%>\
    def ${f['python_name']}(self):
        '''${f['python_name']}

        ${helper.get_function_docstring(f, False, config, indent=8)}
        '''
        import numpy as np
        number_of_ports = self._get_deembedding_table_number_of_ports()
        sparameter_array_size = number_of_ports ** 2
        sparameter = np.full((number_of_ports, number_of_ports), 0 + 0j, dtype=np.complex128)
        number_of_ports = self._interpreter.get_deembedding_sparameters(sparameter, sparameter_array_size)
        sparameter = sparameter.reshape((number_of_ports, number_of_ports))
        return sparameter, number_of_ports
