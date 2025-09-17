<%page args="f, config, method_template"/>\
    
    def write_arb_waveform_complex_f32(self, waveform_name, waveform_data_array, more_data_pending):  # noqa: N802
        import numpy as np  # local import to keep generated style
        interleaved = waveform_data_array.view(np.float32)
        self._invoke(
            self._client.WriteArbWaveformComplexF32,
            grpc_types.WriteArbWaveformComplexF32Request(vi=self._vi, waveform_name=waveform_name, wfm_data=interleaved, more_data_pending=more_data_pending),
        )
