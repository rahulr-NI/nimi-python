<%page args="f, config, method_template"/>\
    def write_arb_waveform_complex_f64(self, waveform_name, waveform_data_array, more_data_pending):  # noqa: N802
        # Preconditions enforced by caller: 1-D C-contiguous numpy.ndarray complex128
        import numpy as np  # local import consistency
        interleaved = waveform_data_array.view(np.float64)
        self._invoke(
            self._client.WriteArbWaveformComplexF64,
            grpc_types.WriteArbWaveformComplexF64Request(vi=self._vi, waveform_name=waveform_name, wfm_data=interleaved, more_data_pending=more_data_pending),
        )
