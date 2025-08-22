

include $(BUILD_HELPER_DIR)/defines.mak

MODULE_FILES_TO_GENERATE := $(DEFAULT_PY_FILES_TO_GENERATE) _complextype.py

MODULE_FILES_TO_COPY := $(DEFAULT_PY_FILES_TO_COPY)

RST_FILES_TO_GENERATE := $(DEFAULT_RST_FILES_TO_GENERATE)

SPHINX_CONF_PY := $(DEFAULT_SPHINX_CONF_PY)
READTHEDOCS_CONFIG := $(DEFAULT_READTHEDOCS_CONFIG)

# Ensure restricted proto is always compiled for nirfsg
$(MODULE_DIR)/nirfsg_restricted_pb2.py: $(METADATA_DIR)/nirfsg_restricted.proto
$(MODULE_DIR)/nirfsg_restricted_pb2_grpc.py: $(MODULE_DIR)/nirfsg_restricted_pb2.py

all: $(MODULE_DIR)/nirfsg_restricted_pb2.py $(MODULE_DIR)/nirfsg_restricted_pb2_grpc.py

include $(BUILD_HELPER_DIR)/rules.mak

