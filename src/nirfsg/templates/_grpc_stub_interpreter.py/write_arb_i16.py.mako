<%page args="f, config, method_template"/>\
    def write_arb_waveform_complex_i16(self, waveform_name, waveform_data_array):  # noqa: N802
        import numpy as np
        arr = waveform_data_array  # already validated
        if arr.size % 2 != 0:
            raise ValueError("Interleaved int16 array must have even length (real/imag pairs)")
        # Proto expects repeated sint32. We widen int16 -> int32 once; unavoidable copy due to itemsize change.
        interleaved_int32 = arr.astype(np.int32, copy=False)  # copy will occur because of wider dtype
        self._invoke(
            self._client.WriteArbWaveformComplexI16,
            grpc_types.WriteArbWaveformComplexI16Request(vi=self._vi, waveform_name=waveform_name, wfm_data=interleaved_int32),
        )