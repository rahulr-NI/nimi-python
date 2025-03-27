# Changelog

- [nidcpower (NI-DCPower)](#nidcpower-ni-dcpower)
  - [Unreleased](#unreleased)
  - [1.4.9 - 2025-02-26](#149---2025-02-26)
  - [1.4.8 - 2024-04-26](#148---2024-04-26)
  - [1.4.7 - 2023-12-15](#147---2023-12-15)
  - [1.4.6 - 2023-09-11](#146---2023-09-11)
  - [1.4.5 - 2023-06-12](#145---2023-06-12)
  - [1.4.4 - 2023-04-14](#144---2023-04-14)
  - [1.4.3 - 2022-12-16](#143---2022-12-16)
  - [1.4.2 - 2022-08-03](#142---2022-08-03)
  - [1.4.1 - 2021-08-23](#141---2021-08-23)
  - [1.4.0 - 2021-07-09](#140---2021-07-09)
  - [1.3.3 - 2021-02-26](#133---2021-02-26)
  - [1.3.2 - 2020-09-18](#132---2020-09-18)
  - [1.3.0 - 2020-05-21](#130---2020-05-21)
  - [1.2.0 - 2020-03-06](#120---2020-03-06)
  - [1.1.0 - 2018-10-25](#110---2018-10-25)
  - [1.0.0 - 2018-06-08](#100---2018-06-08)

- [nidigital (NI-Digital Pattern Driver)](#nidigital-ni-digital-pattern-driver)
  - [Unreleased](#unreleased-1)
  - [1.4.9 - 2025-02-26](#149---2025-02-26-1)
  - [1.4.8 - 2024-04-26](#148---2024-04-26-1)
  - [1.4.7 - 2023-12-15](#147---2023-12-15-1)
  - [1.4.6 - 2023-09-11](#146---2023-09-11-1)
  - [1.4.5 - 2023-06-12](#145---2023-06-12-1)
  - [1.4.4 - 2023-04-14](#144---2023-04-14-1)
  - [1.4.3 - 2022-12-16](#143---2022-12-16-1)
  - [1.4.2 - 2022-08-03](#142---2022-08-03-1)
  - [1.4.1 - 2021-08-23](#141---2021-08-23-1)
  - [1.4.0 - 2021-07-09](#140---2021-07-09-1)
  - [1.3.3 - 2021-02-26](#133---2021-02-26-1)
  - [1.3.2 - 2020-09-18](#132---2020-09-18-1)
  - [1.3.0 - 2020-05-21](#130---2020-05-21-1)
  - [1.2.0 - 2020-03-06](#120---2020-03-06-1)
  - [1.1.0 - 2018-10-25](#110---2018-10-25-1)
  - [1.0.0 - 2018-06-08](#100---2018-06-08-1)
---

## nidcpower (NI-DCPower)

---

### Unreleased
- **Added**:
- **Changed**:
- **Removed**:

---

### 1.4.9 - 2025-02-26
- **Added**:
  - Support for Python 3.13.
  - API parity with NI-DCPower 2025 Q1.
    - Enum value added:
      - `INHIBITED` added to enum `OutputStates`.
- **Changed**:
  - Fixed [#2069](https://github.com/ni/nimi-python/issues/2069).
  - Fixed #2067: `nidcpower.OutputStates` values are incorrect.
- **Removed**:
  - Support for Python 3.8.

---

### 1.4.8 - 2024-04-26
- **Added**:
  - Support for Python 3.12.
- **Changed**:
  - Fixed [#1664](https://github.com/ni/nimi-python/issues/1664): Issues with `nidcpower_advanced_sequence.py` preventing it from working on real hardware.

---

### 1.4.7 - 2023-12-15
- **Added**:
  - API parity with NI-DCPower 2023 Q4.
    - Properties added:
      - `current_level_rising_slew_rate`
      - `current_level_falling_slew_rate`
      - `conduction_voltage_mode`
      - `conduction_voltage_on_threshold`
      - `conduction_voltage_off_threshold`
      - `output_cutoff_voltage_measure_limit_high`
      - `output_cutoff_voltage_measure_limit_low`
    - Enum added:
      - `ConductionVoltageMode`
    - Enum values added:
      - `E_LOAD` added to enum `InstrumentMode`.
      - `CURRENT_SATURATED`, `VOLTAGE_MEASURE_HIGH`, and `VOLTAGE_MEASURE_LOW` added to enum `OutputCutoffReason`.

---

### 1.4.6 - 2023-09-11
- **Changed**:
  - Fixed [#1970](https://github.com/ni/nimi-python/issues/1970): Incorrect error when driver runtime not installed.
  - Fixed [#1998](https://github.com/ni/nimi-python/issues/1998): `nimi-python` APIs inefficiently allocate Python arrays.
- **Removed**:
  - Support for Python 3.7.

---

### 1.4.5 - 2023-06-12
- **Added**:
  - Pass Python interpreter information if the driver runtime version supports it. This is used by NI to better understand client usage.
- **Removed**:
  - `easy_install` support.

---

### 1.4.4 - 2023-04-14
- **Added**:
  - Pass Python interpreter information if the driver runtime version supports it. This is used by NI to better understand client usage.
  - API parity with NI-DCPower 2023 Q2.
    - Properties added:
      - `lcr_ac_dither_enabled`
      - `lcr_ac_electrical_cable_length_delay`
      - `lcr_dc_bias_transient_response`
      - `lcr_source_aperture_time`
      - `measure_complete_event_output_behavior`
      - `measure_complete_event_toggle_initial_state`
      - `sequence_engine_done_event_output_behavior`
      - `sequence_engine_done_event_toggle_initial_state`
      - `sequence_iteration_complete_event_output_behavior`
      - `sequence_iteration_complete_event_toggle_initial_state`
      - `source_complete_event_output_behavior`
      - `source_complete_event_toggle_initial_state`
    - Enums added:
      - `CurrentLimitBehavior`
      - `EventOutputBehavior`
      - `EventToggleInitialState`
      - `LCRDCBiasTransientResponse`
    - Enum values added:
      - `AS_CONFIGURED` added to enum `LCROpenShortLoadCompensationDataSource`.
      - `NI_STANDARD_0_5M` added to enum `CableLength`.
    - Methods added:
      - `configure_lcr_compensation`
      - `get_lcr_compensation_data`.
- **Changed**:
  - Enums reordered:
    - `AutoZero`
    - `CableLength`.

---

### 1.4.3 - 2022-12-16
- **Added**:
  - MeasurementLink support.
- **Changed**:
  - Binary compatibility change for type `LCRLoadCompensationSpot` on Linux. Client code using method `nidcpower.Session.perform_lcr_load_compensation` on Linux now requires NI-DCPower 2023 Q1 driver runtime or newer.

---

### 1.4.2 - 2022-08-03
- **Added**:
  - API parity with NI-DCPower 2022 Q3.
    - Properties added:
      - `aperture_time_auto_mode`
      - `autorange_maximum_delay_after_range_change`
      - `cable_length`
      - `instrument_mode`
      - `isolation_state`
      - `lcr_actual_load_reactance`
      - `lcr_actual_load_resistance`
      - `lcr_automatic_level_control`
      - `lcr_current_amplitude`
      - `lcr_current_range`
      - `lcr_custom_measurement_time`
      - `lcr_dc_bias_automatic_level_control`
      - `lcr_dc_bias_current_level`
      - `lcr_dc_bias_current_range`
      - `lcr_dc_bias_source`
      - `lcr_dc_bias_voltage_level`
      - `lcr_dc_bias_voltage_range`
      - `lcr_frequency`
      - `lcr_impedance_auto_range`
      - `lcr_impedance_range`
      - `lcr_impedance_range_source`
      - `lcr_load_capacitance`
      - `lcr_load_compensation_enabled`
      - `lcr_load_inductance`
      - `lcr_load_resistance`
      - `lcr_measured_load_reactance`
      - `lcr_measured_load_resistance`
      - `lcr_measurement_time`
      - `lcr_open_compensation_enabled`
      - `lcr_open_conductance`
      - `lcr_open_short_load_compensation_data_source`
      - `lcr_open_susceptance`
      - `lcr_short_compensation_enabled`
      - `lcr_short_custom_cable_compensation_enabled`
      - `lcr_short_reactance`
      - `lcr_short_resistance`
      - `lcr_source_delay_mode`
      - `lcr_stimulus_function`
      - `lcr_voltage_amplitude`
      - `lcr_voltage_range`.
    - Enums added:
      - `ApertureTimeAutoMode`
      - `CableLength`
      - `InstrumentMode`
      - `LCRCompensationType`
      - `LCRDCBiasSource`
      - `LCRImpedanceRangeSource`
      - `LCRMeasurementTime`
      - `LCROpenShortLoadCompensationDataSource`
      - `LCRReferenceValueType`
      - `LCRSourceDelayMode`
      - `LCRStimulusFunction`.
    - Methods added:
      - `configure_lcr_custom_cable_compensation`
      - `fetch_multiple_lcr`
      - `get_lcr_compensation_last_date_and_time`
      - `get_lcr_custom_cable_compensation_data`
      - `measure_multiple_lcr`
      - `perform_lcr_load_compensation`
      - `perform_lcr_open_compensation`
      - `perform_lcr_open_custom_cable_compensation`
      - `perform_lcr_short_compensation`
      - `perform_lcr_short_custom_cable_compensation`.
    - Custom types added:
      - `LCRLoadCompensationSpot`
      - `LCRMeasurement`.
- **Changed**:
  - Updated supported devices information in documentation for methods and properties.
  - Added `channel` field to the `Measurement` namedtuple instances returned by `fetch_multiple` and `measure_multiple`.

---

### 1.4.1 - 2021-08-23
- **Added**:
  - API parity with NI-DCPower 21.0.0.
    - Properties added:
      - `output_cutoff_delay`.

---

### 1.4.0 - 2021-07-09
- **Added**:
  - `get_channel_names` - [#1588](https://github.com/ni/nimi-python/issues/1588).
  - `create_advanced_sequence_commit_step` - [#1636](https://github.com/ni/nimi-python/issues/1636).
  - API parity with NI-DCPower 20.7.0 by adding Output Cutoff functionality.
    - Properties added:
      - `output_cutoff_current_change_limit_high`
      - `output_cutoff_current_change_limit_low`
      - `output_cutoff_current_measure_limit_high`
      - `output_cutoff_current_measure_limit_low`
      - `output_cutoff_current_overrange_enabled`
      - `output_cutoff_enabled`
      - `output_cutoff_voltage_change_limit_high`
      - `output_cutoff_voltage_change_limit_low`
      - `output_cutoff_voltage_output_limit_high`
      - `output_cutoff_voltage_output_limit_low`.
    - Methods added:
      - `clear_latched_output_cutoff_state`
      - `query_latched_output_cutoff_state`.
  - Support for independent operation of instrument channels. Creating an `nidcpower.Session` with independent channels allows you to use multiple instruments in the same session. Requires NI-DCPower driver runtime 20.6.0 or later.

---

### 1.3.3 - 2021-02-26
- **Added**:
  - API parity with NI-DCPower 20.6.0 by adding Merged Channels and Shutdown Triggers support.
    - Properties added:
      - `merged_channels`
      - `digital_edge_shutdown_trigger_input_terminal`
      - `shutdown_trigger_type`.

---

### 1.3.2 - 2020-09-18
- **Added**:
  - API parity with NI-DCPower 20.5.0 by adding measurement autoranging threshold range support.
    - Properties added:
      - `autorange`
      - `autorange_aperture_time_mode`
      - `autorange_behavior`
      - `autorange_minimum_aperture_time`
      - `autorange_minimum_aperture_time_units`
      - `autorange_minimum_current_range`
      - `autorange_minimum_voltage_range`
      - `autorange_threshold_mode`.

---

### 1.3.0 - 2020-05-21
- **Added**:
  - API parity with NI-DCPower 20.0 by adding the following properties:
    - `Session.serial_number`
    - `Session.actual_power_allocation`
    - `Session.requested_power_allocation`
    - `Session.power_allocation_mode`.

---

### 1.2.0 - 2020-03-06
- **Added**:
  - `create_advanced_sequence()` - [#504](https://github.com/ni/nimi-python/issues/504).
    - Includes example to see how to use it.
    - Additional methods and properties made public:
      - `create_advanced_sequence_step()`
      - `delete_advanced_sequence()`
      - `active_advanced_sequence`
      - `active_advanced_sequence_step`.

---

### 1.1.0 - 2018-10-25
- **Added**:
  - `import_attribute_configuration_file`.
  - `export_attribute_configuration_file`.
  - `import_attribute_configuration_buffer`.

---

### 1.0.0 - 2018-06-08
- **Removed**:
  - Trigger configuration methods, use attributes instead:
    - `configure_digital_edge_measure_trigger()`
    - `configure_digital_edge_pulse_trigger()`
    - `configure_digital_edge_sequence_advance_trigger()`
    - `configure_digital_edge_source_trigger()`
    - `configure_digital_edge_start_trigger()`.
	
## nidigital (NI-Digital Pattern Driver)

---

### Unreleased
- **Added**:
  - Support for Python 3.13.
  - API parity with NI-Digital Pattern Driver 2025 Q1.
    - Methods added:
      - `configure_pattern_burst`.
      - `fetch_capture_waveform`.
    - Properties added:
      - `pattern_burst_mode`.
      - `capture_waveform_name`.
- **Changed**:
  - Fixed [#3001](https://github.com/ni/nimi-python/issues/3001): Incorrect error handling for pattern burst configuration.
- **Removed**:
  - Support for Python 3.8.

---

### 1.4.9 - 2025-02-26
- **Added**:
  - Support for Python 3.13.
  - API parity with NI-Digital Pattern Driver 2025 Q1.
    - Methods added:
      - `configure_pattern_burst`.
      - `fetch_capture_waveform`.
    - Properties added:
      - `pattern_burst_mode`.
      - `capture_waveform_name`.

---

### 1.4.8 - 2024-04-26
- **Added**:
  - Support for Python 3.12.
  - API parity with NI-Digital Pattern Driver 2024 Q2.
    - Methods added:
      - `configure_time_set`.
      - `apply_timing_settings`.
    - Properties added:
      - `time_set_name`.
      - `timing_settings`.

---

### 1.4.7 - 2023-12-15
- **Added**:
  - API parity with NI-Digital Pattern Driver 2023 Q4.
    - Methods added:
      - `load_pattern`.
      - `start_burst`.
    - Properties added:
      - `pattern_file_path`.
      - `burst_status`.

---

### 1.4.6 - 2023-09-11
- **Changed**:
  - Fixed [#2900](https://github.com/ni/nimi-python/issues/2900): Improved performance for pattern burst execution.
- **Removed**:
  - Support for Python 3.7.

---

### 1.4.5 - 2023-06-12
- **Added**:
  - Pass Python interpreter information if the driver runtime version supports it. This is used by NI to better understand client usage.
- **Removed**:
  - `easy_install` support.

---

### 1.4.4 - 2023-04-14
- **Added**:
  - API parity with NI-Digital Pattern Driver 2023 Q2.
    - Methods added:
      - `configure_voltage_levels`.
      - `apply_voltage_settings`.
    - Properties added:
      - `voltage_level_high`.
      - `voltage_level_low`.

---

### 1.4.3 - 2022-12-16
- **Added**:
  - MeasurementLink support.
- **Changed**:
  - Updated documentation for pattern burst configuration.

---

### 1.4.2 - 2022-08-03
- **Added**:
  - API parity with NI-Digital Pattern Driver 2022 Q3.
    - Methods added:
      - `configure_timing`.
      - `apply_timing_settings`.
    - Properties added:
      - `timing_mode`.
      - `timing_settings`.

---

### 1.4.1 - 2021-08-23
- **Added**:
  - Support for Python 3.9.
- **Removed**:
  - Support for Python 3.5.

---

### 1.4.0 - 2021-07-09
- **Added**:
  - `get_channel_names` - [#1588](https://github.com/ni/nimi-python/issues/1588).
  - API parity with NI-Digital Pattern Driver 2021 Q2.
    - Methods added:
      - `configure_pattern`.
      - `apply_pattern_settings`.
    - Properties added:
      - `pattern_name`.
      - `pattern_settings`.

---

### 1.3.3 - 2021-02-26
- **Added**:
  - API parity with NI-Digital Pattern Driver 2020 Q4.
    - Methods added:
      - `configure_waveform`.
      - `apply_waveform_settings`.
    - Properties added:
      - `waveform_name`.
      - `waveform_settings`.

---

### 1.3.2 - 2020-09-18
- **Added**:
  - API parity with NI-Digital Pattern Driver 2020 Q3.
    - Methods added:
      - `configure_trigger`.
      - `apply_trigger_settings`.
    - Properties added:
      - `trigger_name`.
      - `trigger_settings`.

---

### 1.3.0 - 2020-05-21
- **Added**:
  - API parity with NI-Digital Pattern Driver 2020 Q1.
    - Methods added:
      - `configure_clock`.
      - `apply_clock_settings`.
    - Properties added:
      - `clock_name`.
      - `clock_settings`.

---

### 1.2.0 - 2020-03-06
- **Added**:
  - `create_pattern_sequence()` - [#504](https://github.com/ni/nimi-python/issues/504).
    - Includes example to see how to use it.
    - Additional methods and properties made public:
      - `create_pattern_step()`
      - `delete_pattern_sequence()`
      - `active_pattern_sequence`
      - `active_pattern_step`.

---

### 1.1.0 - 2018-10-25
- **Added**:
  - `import_pattern_configuration_file`.
  - `export_pattern_configuration_file`.
  - `import_pattern_configuration_buffer`.

---

### 1.0.0 - 2018-06-08
- **Removed**:
  - Deprecated methods for pattern configuration.