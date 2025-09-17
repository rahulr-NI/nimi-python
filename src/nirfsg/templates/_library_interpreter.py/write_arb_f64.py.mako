<%page args="f, config, method_template"/>\
    
    def write_arb_waveform_complex_f64(self, waveform_name, waveform_data_array, more_data_pending):  # noqa: N802
        vi_ctype = _visatype.ViSession(self._vi)  # case S110
        waveform_name_ctype = ctypes.create_string_buffer(waveform_name.encode(self._encoding))  # case C020
        number_of_samples_ctype = _visatype.ViInt32(0 if waveform_data_array is None else len(waveform_data_array))  # case S160
        waveform_data_array_ctype = _get_ctypes_pointer_for_buffer(value=waveform_data_array, library_type=_complextype.NIComplexNumber)  # case B510
        more_data_pending_ctype = _visatype.ViBoolean(more_data_pending)  # case S150
        error_code = self._library.niRFSG_WriteArbWaveformComplexF64(vi_ctype, waveform_name_ctype, number_of_samples_ctype, waveform_data_array_ctype, more_data_pending_ctype)
        errors.handle_error(self, error_code, ignore_warnings=False, is_error_handling=False)
        return

