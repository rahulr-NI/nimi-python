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
- [1.3.1 - 2020-06-08](#131---2020-06-08)
- [1.3.0 - 2020-05-21](#130---2020-05-21)
- [1.2.1 - 2020-04-21](#121---2020-04-21)
- [1.2.0 - 2020-03-06](#120---2020-03-06)
- [1.1.5 - 2019-11-22](#115---2019-11-22)
- [1.1.4 - 2019-11-19](#114---2019-11-19)
- [1.1.3 - 2019-10-21](#113---2019-10-21)
- [1.1.2 - 2019-06-06](#112---2019-06-06)
- [1.1.0 - 2018-10-25](#110---2018-10-25)
- [1.0.1 - 2018-10-17](#101---2018-10-17)
- [1.0.0 - 2018-06-08](#100---2018-06-08)
- [0.9.0 - 2018-05-22](#090---2018-05-22)
- [0.8.0 - 2018-04-27](#080---2018-04-27)
- [0.7.0 - 2018-02-20](#070---2018-02-20)
- [0.6.0 - 2017-12-20](#060---2017-12-20)
- [0.5.0 - 2017-11-27](#050---2017-11-27)
- [0.4.0 - 2017-11-07](#040---2017-11-07)
- [0.3.0 - 2017-10-13](#030---2017-10-13)
- [0.2.0 - 2017-09-20](#020---2017-09-20)


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
- **Removed**:
  - `easy_install` support.

---

### 1.4.4 - 2023-04-14
- **Added**:
  - Support for Python 3.11
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
  -Fix [#1888](https://github.com/ni/nimi-python/issues/1888): Deadlock on multithreaded usage due to UnlockSession always being called with callerHasLock=False. 
  -Enums reordered:
    - `AutoZero`
    - `CableLength`.

---

### 1.4.3 - 2022-12-16
- **Added**:
  - Support for Python 3.10.
  - MeasurementLink support.
- **Changed**:
  - Binary compatibility change for type `LCRLoadCompensationSpot` on Linux. Client code using method `nidcpower.Session.perform_lcr_load_compensation` on Linux now requires NI-DCPower 2023 Q1 driver runtime or newer.
- **Removed**:
  - Support for Python 3.6.


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
  - Support for Python 3.9
  - API parity with NI-DCPower 21.0.0.
    - Properties added:
      - `output_cutoff_delay`.
- **Removed**:
  - Support for Python 3.5.
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
  - Support for independent operation of instrument channels. Creating an `nidcpower.Session` with independent channels allows you to use multiple instruments in the same session. With independent channels, you can configure multiple channels of the same instrument, or of multiple instruments, independently of one another within the same session. Requires NI-DCPower driver runtime 20.6.0 or later. In order to use with older runtime or to maintain old behavior, pass `independent_channels=False` to `nidcpower.Session` constructor.

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
- **Changed**:
  - Fix [#1491](https://github.com/ni/nimi-python/issues/1491): import_attribute_configuration_buffer() fails intermittently when `list` or `array.array` is passed in.
  - Update "Driver Version Tested Against", in documentation, with latest versions installed on nimi-bot. The version is 20.5.0 for NI-DCPower, NI-SWITCH, and NI-DMM. no changes on other drivers.
  
---

### 1.3.1 - 2020-06-08
- **Changed**:
  - Fix [#1473](https://github.com/ni/nimi-python/issues/1473): Unintentional dependency on pytest
  - Fix [#1474](https://github.com/ni/nimi-python/issues/1474): Requires hightime>=0.2.0

### 1.3.0 - 2020-05-21
- **Added**:
  - API parity with NI-DCPower 20.0 by adding the following properties:
    - `Session.serial_number`
    - `Session.actual_power_allocation`
    - `Session.requested_power_allocation`
    - `Session.power_allocation_mode`.
- **Changed**:
  - Change the type of applicable properties and method parameters from `datetime.timedelta` to `hightime.timedelta` and from `datetime.datetime` to `hightime.datetime`. - [#744](https://github.com/ni/nimi-python/issues/744), [#1368](https://github.com/ni/nimi-python/issues/1368), [#1382](https://github.com/ni/nimi-python/issues/1382), [#1397](https://github.com/ni/nimi-python/issues/1397)
  - Update "Driver Version Tested Against", in documentation, with latest versions installed on nimi-bot. The version is 20.0.0 for all modules except `nidigital`, for which it is 19.0.1.
---

### 1.2.1 - 2020-04-21
- **Added**:
  - Support for chained repeated capabilities. This allows things like
            ``` python
            session.sites[0, 1].pins['PinA', 'PinB'].ppmu_voltage_level = 4
            ```

            The repeated capabilities will be expanded to `'site0/PinA,site0/PinB,site1/PinA,site1/PinB'`

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
  - Zip file per driver for all examples and any helper files
  - Link to zip file on examples documentation
  - Support for Python 3.8
- **Changed**:
  - `import_attribute_configuration_buffer()` now accepts `list` of numbers that are integers less than 255, `array.array('b')`, `bytes`, `bytearray` for configuration buffer - [#1013](https://github.com/ni/nimi-python/issues/1013)
  - `export_attribute_configuration_buffer()` now returns `bytes` as the buffer type - [#1013](https://github.com/ni/nimi-python/issues/1013)
- **Removed**:
  - Python 2.7 support - [Python Software Foundation version status](https://devguide.python.org/#status-of-python-branches)
  - Python 3.4 support - [Python Software Foundation PEP 429](https://www.python.org/dev/peps/pep-0429/)
  - PyPy and PyPy3 support [#1271](https://github.com/ni/nimi-python/issues/1271)

---

### 1.1.5 - 2019-11-22
- **Changed**:
  - Fix #1140: Linux support was accidentally broken.
  - Update "Driver Version Tested Against", in documentation, with latest versions installed on nimi-bot.
  
---

### 1.1.4 - 2019-11-19
- **Added**:
  - Support for Python 3.8
  - `ViUInt8` is now a valid type in APIs

---

### 1.1.3 - 2019-10-21
- **Changed**:
  - The development status in `setup.py` will be based on the module version:
            * version >= 1.0
                * .devN or .aN - Alpha
                * .bN, .cN or .rcN - Beta
                * \<nothing\> or .postN - Stable
            * version < 1.0 and version >= 0.5 - Beta
            * version < 0.5 - Alpha
  - Improved installation instructions by not putting a version to pin to. This is confusing in master (what read the docs shows by default) since that version doesn't exist yet.
  - Fix type of `sequence_step_delta_time_enabled ` property - [#1015](https://github.com/ni/nimi-python/issues/1015)

---

### 1.1.2 - 2019-06-06
- **Changed**:
  - Switched to slightly different metadata format - Actual `True`/`False` instead of strings
  - New internal process for generating metadata

---

### 1.1.0 - 2018-10-25
- **Added**:
  - import_attribute_configuration_file function
  - export_attribute_configuration_file function
  - import_attribute_configuration_buffer function
  - import_attribute_configuration_buffer function
- **Changed**:
  - Updated generated metadata
  - Updated "Driver Version Tested Against"
  - Update visatype definitions to work on Linux as well as Windows - [#911](https://github.com/ni/nimi-python/issues/911)
  
---

### 1.0.1 - 2018-10-17
- **Added**:
  - Support for Python 3.7 - [#895](https://github.com/ni/nimi-python/issues/895)
  - \_\_version\_\_ for all drivers - [#928](https://github.com/ni/nimi-python/issues/928)
- **Changed**:
  - No longer globally set warnings filter for `DriverWarning` - if you want all warnings from the driver, you will need to set `warnings.filterwarnings("always", category=<driver>.DriverWarning)` in your code
  - Fix \_\_repr\_\_ for niscope.WaveformInfo - [#920](https://github.com/ni/nimi-python/issues/920)
  
---

### 1.0.0 - 2018-06-08
- **Removed**:
  - Explicitly disallow using a repeated capability on Session. `session[0].vertical_range = 1.0` will no longer work. Instead use `session.channels[0].vertical_range = 1.0` - [#853](https://github.com/ni/nimi-python/issues/853)
  - Remove trigger configuration methods, use attributes instead [#860](https://github.com/ni/nimi-python/issues/860)
            * `configure_digital_edge_measure_trigger()` - use `session.digital_edge_measure_trigger_edge` & `session.digital_edge_measure_trigger_input_terminal`
            * `configure_digital_edge_pulse_trigger()` - use `session.digital_edge_pulse_trigger_edge` & `session.digital_edge_pulse_trigger_input_terminal`
            * `configure_digital_edge_sequence_advance_trigger()` - use `session.digital_edge_sequence_advance_trigger_edge` & `session.digital_edge_sequence_advance_trigger_input_terminal`
            * `configure_digital_edge_source_trigger()` - use `session.digital_edge_source_trigger_edge` & `session.digital_edge_source_trigger_input_terminal`
            * `configure_digital_edge_start_trigger()` - use `session.digital_edge_start_trigger_edge` & `session.digital_edge_start_trigger_input_terminal`
  - Remove polarity attributes for triggers that are PXI backplane only (only support rising edge) [#860](https://github.com/ni/nimi-python/issues/860)
            * `digital_edge_measure_trigger_edge`
            * `digital_edge_pulse_trigger_edge`
            * `digital_edge_sequence_advance_trigger_edge`
            * `digital_edge_source_trigger_edge`
            * `digital_edge_start_trigger_edge`
			
---

### 0.9.0 - 2018-05-22
- **Added**:
  - Add `session.lock()` and `session.unlock()` to all drivers except `nimodinst` - [#846](https://github.com/ni/nimi-python/issues/846)
  - `session.lock()` returns a context manager for managing locks - [#846](https://github.com/ni/nimi-python/issues/846)
  - Fix thread-safety issues by using IVI session lock where aplicable
- **Changed**:
  - SelfTestError` now inherits from `<driver>.Error` rather than `Exception` - [#830](https://github.com/ni/nimi-python/issues/830)
  - Warning class name changed to `<driver>.DriverWarning` for all drivers - [#658](https://github.com/ni/nimi-python/issues/658)
- **Removed**:
  - IVI properties as applicable - some were already removed from some drivers [#824](https://github.com/ni/nimi-python/issues/824)
			* `engine_major_version`
            * `engine_minor_version`
            * `engine_revision`
            * `primary_error`
            * `secondary_error`
            * `error_elaboration`
            * `io_session_type`
            * `io_session` / `visa_rm_session`
            * `group_capabilities`
            * `interchange_check`
            * `range_check`
            * `record_coercions`
            * `specific_driver_class_spec_major_version`
            * `specific_driver_class_spec_minor_version`
            * `query_instrument_status`
            * `cache`
            * `specific_driver_prefix`
 - export_signal()` - [#828](https://github.com/ni/nimi-python/issues/828)
 - `active_advanced_sequence` [#832](https://github.com/ni/nimi-python/issues/832)
 - `active_advanced_sequence_step` [#832](https://github.com/ni/nimi-python/issues/832)
 - Default value for trigger parameter on `send_software_edge_trigger()` [#832](https://github.com/ni/nimi-python/issues/832)
	
	
---

### 0.8.0 - 2018-04-27
- **Changed**:
  - All exceptions raised by the Python bindings inherit from `<driver>.Error`
  - Exception type formerly known as `<driver>.Error` is now known as `<driver>.DriverError`
            * This encapsulates any error that is returned by the underlying driver
  - All timeout parameters can now also take a simple number in seconds. `timeout=datetime.timedelta(milliseconds=100)` and `timeout=0.1` are identical. [#796](https://github.com/ni/nimi-python/issues/796)
  - `Session.fetch_multiple()` and `Session.measure_multiple()` now return list of named tuples instead of multiple arrays. See [fetch_multiple](http://nimi-python.readthedocs.io/en/master/nidcpower/functions.html#nidcpower.Session.fetch_multiple) and [measure_multiple](http://nimi-python.readthedocs.io/en/master/nidcpower/functions.html#nidcpower.Session.measure_multiple)
  - `Session.cal_self_calibration()` renamed to `Session.self_cal()` to match other drivers - issue [#615](https://github.com/ni/nimi-python/issues/615)
  - `Session.set_sequence()` values parameter no longer has a default value and must be passed in. Parameter order has changed as a result of this - issue [#797](https://github.com/ni/nimi-python/issues/797)
  - Session constructor channel parameter can now use any channel format that repeated capabilities can use [#807](https://github.com/ni/nimi-python/issues/807)
  - `Session.get_ext_cal_recommended_interval()` now returns a `datetime.timedelta` for the interval [#794](https://github.com/ni/nimi-python/issues/794)
- **Removed**:
  - Advanced Sequence functions - until [#504](https://github.com/ni/nimi-python/issues/504) can be fixed in a proper way
            * `create_advanced_sequence()`
            * `create_advanced_sequence_step()`
            * `delete_advanced_sequence()`
			
			

---

### 0.7.0 - 2018-02-20
- **Added**:
  - `channel` repeated capability - See [#737](https://github.com/ni/nimi-python/issues/737) for discussion
- **Changed**:
  - Option string can now be a python dictionary instead of a string. (Fix [#661](https://github.com/ni/nimi-python/issues/661))
            * Key/Value pairs approporiate for desired behavior
                ``` python
                session = nidmm.Session('Dev1', False, {'simulate': True, 'driver_setup': {'Model': '4071', 'BoardType': 'PXI'}})
                ```
  - Repeated capabilities are handled differently. See [#737](https://github.com/ni/nimi-python/issues/737) for discussion
  - All function parameters or attributes that represent time now use `datetime.timedelta()`. See [#659](https://github.com/ni/nimi-python/issues/659) for discussion
  - All functions that return calibration dates now return `datetime.datetime()`. See [#659](https://github.com/ni/nimi-python/issues/659) for discussion
  - Metadata updated to NI-DCPower 17.6.1
  - The following functions timeout parameter now is required to be a `datetime.timedelta()` object:
            * `fetch_multiple()`
            * `wait_for_event()`
  - The following functions return a `datetime.datetime()` object representing the date and time
            * `get_ext_cal_last_date_and_time()`
            * `get_self_cal_last_date_and_time()`
- **Removed**:
  - Removed these enums and disconnected them from the associated attribute (Fix [#666](https://github.com/ni/nimi-python/issues/666))
            * `CurrentLimitAutorange` - `CURRENT_LIMIT_AUTORANGE`
            * `CurrentLevelAutorange` - `CURRENT_LEVEL_AUTORANGE`
            * `VoltageLevelAutorange` - `VOLTAGE_LEVEL_AUTORANGE`
            * `VoltageLimitAutorange` - `VOLTAGE_LIMIT_AUTORANGE`
			
---

### 0.6.0 - 2017-12-20
- **Added**:
  -  `abort`. See [#660](https://github.com/ni/nimi-python/issues/655).
- **Changed**:
  - Property power_line_frequency no longer uses enum PowerLineFrequency.
  - Removed `actual_count` from `fetch_multiple()` returned tuple
  
---

### 0.5.0 - 2017-11-27
- **Added**:
  -  `get_ext_cal_last_date_and_time`
  -  `get_ext_cal_last_temp`
  -  `get_ext_cal_recommended_interval`
  -  `measure_multiple`
- **Removed**:
  -  enum definitions that are not referenced by a function and/or an attributes


---

### 0.4.0 - 2017-11-07
- **Added**:
  -  New example `nidcpower_advanced_sequence.py`
- **Changed**:
 - Fixed method signature for:
      * `wait_for_event`
      * `create_sequence`
      * `create_advanced_sequence`
- **Removed**:
  - Support for `measure_multiple` until issue #444 is addressed.

---

### 0.3.0 - 2017-10-13
- **Added**:
  - Support for ViInt64 (64-bit integers)
  - Initial release
- **Changed**:
 - Modified how methods with repeated capabilities are invoked. There's no longer (for example) a `channel_name` input. Instead:
      ```python
      # Sets sequence on channels 0 through 3
      session['0-3'].set_sequence(values, source_delays)
      ```
 - Enum value documentation lists the fully qualified name - this is to allow easy copy/paste
- **Removed**:
  - Support for `measure_multiple` until issue #444 is addressed.
  
---

### 0.2.0 - 2017-09-20
- **Added**:
  - Suport for channel-based properties
- **Changed**:
 - Warnings no longer raise an exception
      * Warnings are now added to warnings.warn()


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
  - Support for Python 3.11
  - API parity with NI-Digital Pattern Driver 2023 Q2.
    - Methods added:
      - `configure_voltage_levels`.
      - `apply_voltage_settings`.
    - Properties added:
      - `voltage_level_high`.
      - `voltage_level_low`.
- **Changed**:
    -Fix [#1888](https://github.com/ni/nimi-python/issues/1888): Deadlock on multithreaded usage due to UnlockSession always being called with callerHasLock=False. 
	
---

### 1.4.3 - 2022-12-16
- **Added**:
  - Support for Python 3.10.
  - MeasurementLink support.
- **Changed**:
  - Updated documentation for pattern burst configuration.
- **Removed**:
  - Support for Python 3.6.
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
- **Changed**:
  - Fix [#1491](https://github.com/ni/nimi-python/issues/1491): import_attribute_configuration_buffer() fails intermittently when `list` or `array.array` is passed in.
  - Update "Driver Version Tested Against", in documentation, with latest versions installed on nimi-bot. The version is 20.5.0 for NI-DCPower, NI-SWITCH, and NI-DMM. no changes on other drivers.
  
---

### 1.3.1 - 2020-06-08
- **Changed**:
  - Fix [#1473](https://github.com/ni/nimi-python/issues/1473): Unintentional dependency on pytest
  - Fix [#1474](https://github.com/ni/nimi-python/issues/1474): Requires hightime>=0.2.0
  
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
- **Changed**:
  - Change the type of applicable properties and method parameters from `datetime.timedelta` to `hightime.timedelta` and from `datetime.datetime` to `hightime.datetime`. - [#744](https://github.com/ni/nimi-python/issues/744), [#1368](https://github.com/ni/nimi-python/issues/1368), [#1382](https://github.com/ni/nimi-python/issues/1382), [#1397](https://github.com/ni/nimi-python/issues/1397)
  - Update "Driver Version Tested Against", in documentation, with latest versions installed on nimi-bot. The version is 20.0.0 for all modules except `nidigital`, for which it is 19.0.1.
  
---

### 1.2.1 - 2020-04-21
- **Added**:
  - Support for chained repeated capabilities. This allows things like
            ``` python
            session.sites[0, 1].pins['PinA', 'PinB'].ppmu_voltage_level = 4
            ```

            The repeated capabilities will be expanded to `'site0/PinA,site0/PinB,site1/PinA,site1/PinB'`
  - `get_pattern_pin_names` - [#1292](https://github.com/ni/nimi-python/issues/1292)
  - Support for `instruments` repeated capability in the following properties - `instrument_firmware_revision`, `serial_number`, and `timing_absolute_delay` -  [#1228](https://github.com/ni/nimi-python/issues/1228)
  - `load_specifications_levels_and_timing` that allows loading of multiple specs, levels, and/or timing files in a single call - [#1392](https://github.com/ni/nimi-python/issues/1392)
  - `get_channel_names` - [#1386](https://github.com/ni/nimi-python/issues/1386)
---
### 1.2.0 - 2020-03-06
- **Added**:
  - `conditional_jump_triggers` and `pattern_opcode_events` repeated capabilities - [#1191](https://github.com/ni/nimi-python/issues/1191), [#1192]
  - Zip file per driver for all examples and any helper files
  - Link to zip file on examples documentation
  - Support for Python 3.8
- **Changed**:
  - `import_attribute_configuration_buffer()` now accepts `list` of numbers that are integers less than 255, `array.array('b')`, `bytes`, `bytearray` for configuration buffer - [#1013](https://github.com/ni/nimi-python/issues/1013)
  - `export_attribute_configuration_buffer()` now returns `bytes` as the buffer type - [#1013](https://github.com/ni/nimi-python/issues/1013)
  - `write_source_waveform_site_unique()` now supports `numpy.array` and `list` as site waveform types
  - sites are now a repeated capability instead of a parameter: `session.sites[1,2].fetch_capture_waveform(...)` - [#1111](https://github.com/ni/nimi-python/issues/1111)
  - `fetch_history_ram_cycle_information` method now supports fetching multiple History RAM samples in a single API call - [#1071](https://github.com/ni/nimi-python/issues/1071)
  - Update methods that require `pin_list` to be passed in, such that `pin_list` can be passed in via `pins` repeated capability - [#1294](https://github.com/ni/nimi-python/issues/1294)
- **Removed**:
  - Python 2.7 support - [Python Software Foundation version status](https://devguide.python.org/#status-of-python-branches)
  - Python 3.4 support - [Python Software Foundation PEP 429](https://www.python.org/dev/peps/pep-0429/)
  - PyPy and PyPy3 support [#1271](https://github.com/ni/nimi-python/issues/1271)
  - Removed redundant (redundant because corresponding properties can be used instead) API methods - [#1065](https://github.com/ni/nimi-python/issues/1065)
  - Removed programmatic pin map creation API - [#1124](https://github.com/ni/nimi-python/issues/1124)
  - Removed `fetch_history_ram_cycle_pin_data` and `fetch_history_ram_scan_cycle_number`. They are not needed since `fetch_history_ram_cycle_information` was updated to return class instances that contains cycle pin data and scan cycle number - [#1071] (https://github.com/ni/nimi-python/issues/1071)

---

### 1.1.5 - 2019-11-22
- **Changed**:
  - Fix #1140: Linux support was accidentally broken.
  - Update "Driver Version Tested Against", in documentation, with latest versions installed on nimi-bot.

---

### 1.1.4 - 2019-11-19
- **Added**:
  - Support for Python 3.8
  - `ViUInt8` is now a valid type in APIs
  - `fetch_capture_waveform()` - returns dictionary { site: data, site: data, ... } 
  - `write_source_waveform_site_unique()` - takes waveform_name and dictionary { site: data, site: data, ... }
  - `pins` is now a valid repeated capability
- **Changed**:
  - Fix get/set properties - [#1062](https://github.com/ni/nimi-python/issues/1062)
  - Removed array-size parameter from apply_tdr_offsets() and write_source_waveform_broadcast_u32() methods - [#1070](https://github.com/ni/nimi-python/issues/1070)
  - Renamed `write_source_waveform_broadcast_u32()` to `write_source_waveform_broadcast()`
  - `get_pin_results_pin_information()` - returns namedtuple `PinInfo(pin_indexes, site_numbers, channel_indexes)`

---


### 1.1.3 - 2019-10-21
- **Added**:
  - `Initial support
  - Very basic at this point and subject to change
  - Looking for any testing and/or feedback
  - `get_channel_name_from_string()`
- **Changed**:
  - The development status in `setup.py` will be based on the module version:
            * version >= 1.0
                * .devN or .aN - Alpha
                * .bN, .cN or .rcN - Beta
                * \<nothing\> or .postN - Stable
            * version < 1.0 and version >= 0.5 - Beta
            * version < 0.5 - Alpha
  - Improved installation instructions by not putting a version to pin to. This is confusing in master (what read the docs shows by default) since that version doesn't exist yet.
  - New enums:

           | Enum name                  | Where used                                                                       |
           |----------------------------|----------------------------------------------------------------------------------|
           | `DigitalEdge`              | `digital_edge_conditional_jump_trigger_edge`, `digital_edge_start_trigger_edge`  |
           | `ApertureTimeUnits`        | `ppmu_aperture_time_units`, `ppmu_configure_aperture_time(units)`                |
           | `PPMUOutputFunction`       | `ppmu_output_function`                                                           |
           | `SelectedFunction`         | `selected_function`                                                              |
           | `TDREndpointTermination`   | `tdr_endpoint_termination`                                                       |
           | `Signal`                   | `export_signal(signal)`                                                          |
  - **[Source Breaker]** No longer return the "actual size" from functions that use 'ivi-dance-with-a-twist'. This only affects `nidigital`.
- **Removed**:
  - Should be private - `get_session_state()`, `get_desired_attribute_*()`, `ppmu_measure_cached()`, `read_static_cached()`, `configure_ref_clock()`, `disable()`,
            `get_number_of_vectors()`, `get_pattern_file_path()`, `get_pin_type()`, `get_time_set_compare_edges()`, `get_time_set_drive_edges()`,
            `is_pattern_file_modified_since_load()`, `load_levels_internal()`, `load_pattern_internal()`, `load_timing_internal()`, `uncommit()`
  - Need to determine how to generate this function - `fetch_capture_waveform_u32()`
  
---

### 1.1.2 - 2019-06-06
- **Changed**:
  - Switched to slightly different metadata format - Actual `True`/`False` instead of strings
  - New internal process for generating metadata

--_

### 1.1.0 - 2018-10-25
- **Changed**:
  - Updated generated metadata
  - Updated "Driver Version Tested Against"
  - Update visatype definitions to work on Linux as well as Windows - [#911](https://github.com/ni/nimi-python/issues/911)
  
---

### 1.0.1 - 2018-10-17
- **Added**:
  - Support for Python 3.7 - [#895](https://github.com/ni/nimi-python/issues/895)
  - \_\_version\_\_ for all drivers - [#928](https://github.com/ni/nimi-python/issues/928)
- **Changed**:
  - No longer globally set warnings filter for `DriverWarning` - if you want all warnings from the driver, you will need to set `warnings.filterwarnings("always", category=<driver>.DriverWarning)` in your code
  - Fix \_\_repr\_\_ for niscope.WaveformInfo - [#920](https://github.com/ni/nimi-python/issues/920)
  
---

### 1.0.0 - 2018-06-08
- **Removed**:
  - Explicitly disallow using a repeated capability on Session. `session[0].vertical_range = 1.0` will no longer work. Instead use `session.channels[0].vertical_range = 1.0` - [#853](https://github.com/ni/nimi-python/issues/853)
  
---

### 0.9.0 - 2018-05-22
- **Added**:
  - Add `session.lock()` and `session.unlock()` to all drivers except `nimodinst` - [#846](https://github.com/ni/nimi-python/issues/846)
  - `session.lock()` returns a context manager for managing locks - [#846](https://github.com/ni/nimi-python/issues/846)
  - Fix thread-safety issues by using IVI session lock where aplicable
- **Changed**:
  - SelfTestError` now inherits from `<driver>.Error` rather than `Exception` - [#830](https://github.com/ni/nimi-python/issues/830)
  - Warning class name changed to `<driver>.DriverWarning` for all drivers - [#658](https://github.com/ni/nimi-python/issues/658)
- **Removed**:
  - IVI properties as applicable - some were already removed from some drivers [#824](https://github.com/ni/nimi-python/issues/824)
			* `engine_major_version`
            * `engine_minor_version`
            * `engine_revision`
            * `primary_error`
            * `secondary_error`
            * `error_elaboration`
            * `io_session_type`
            * `io_session` / `visa_rm_session`
            * `group_capabilities`
            * `interchange_check`
            * `range_check`
            * `record_coercions`
            * `specific_driver_class_spec_major_version`
            * `specific_driver_class_spec_minor_version`
            * `query_instrument_status`
            * `cache`
            * `specific_driver_prefix`
 
---

### 0.8.0 - 2018-04-27
- **Changed**:
  - All exceptions raised by the Python bindings inherit from `<driver>.Error`
  - Exception type formerly known as `<driver>.Error` is now known as `<driver>.DriverError`
            * This encapsulates any error that is returned by the underlying driver
  - All timeout parameters can now also take a simple number in seconds. `timeout=datetime.timedelta(milliseconds=100)` and `timeout=0.1` are identical. [#796](https://github.com/ni/nimi-python/issues/796)


---

### 0.7.0 - 2018-02-20
- **Added**:
  - `channel` repeated capability - See [#737](https://github.com/ni/nimi-python/issues/737) for discussion
- **Changed**:
  - Option string can now be a python dictionary instead of a string. (Fix [#661](https://github.com/ni/nimi-python/issues/661))
            * Key/Value pairs approporiate for desired behavior
                ``` python
                session = nidmm.Session('Dev1', False, {'simulate': True, 'driver_setup': {'Model': '4071', 'BoardType': 'PXI'}})
                ```
  - Repeated capabilities are handled differently. See [#737](https://github.com/ni/nimi-python/issues/737) for discussion
  - All function parameters or attributes that represent time now use `datetime.timedelta()`. See [#659](https://github.com/ni/nimi-python/issues/659) for discussion
  - All functions that return calibration dates now return `datetime.datetime()`. See [#659](https://github.com/ni/nimi-python/issues/659) for discussion
  