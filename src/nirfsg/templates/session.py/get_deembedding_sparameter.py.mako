<%page args="f, config, method_template"/>\
<%
    '''Creates a numpy array based on number of ports queried from driver and passes it to "get_deembedding_sparameters" method.'''
    import build.helper as helper
%>\
    def ${f['python_name']}(self):
        '''get_deembedding_sparameters

        Returns the S-parameters used for de-embedding a measurement on the selected port.

        This includes interpolation of the parameters based on the configured carrier frequency. This method returns an empty array if no de-embedding is done.

        If you want to call this method just to get the required buffer size, you can pass 0 for **S-parameter Size** and VI_NULL for the **S-parameters** buffer.

        **Supported Devices** : PXIe-5830/5831/5832/5840/5841/5842/5860

        Note: The port orientation for the returned S-parameters is normalized to SparameterOrientation.PORT1_TOWARDS_DUT.

        Returns:
            sparameters (numpy.array(dtype=numpy.complex128)): Returns an array of S-parameters. The S-parameters are returned in the following order: s11, s12, s21, s22.

        '''
        sparameters = self._interpreter.get_deembedding_sparameters()
        return sparameters