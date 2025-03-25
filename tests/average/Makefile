#Name of component Under test
COMPONENT_NAME = average

#Dynamically generate absolute paths

MAKEFILE_DIR=$(dir $(realpath $(firstword $(MAKEFILE_LIST))))
$(info MAKEFILE_DIR is $(MAKEFILE_DIR))
PROJECT_DIR=$(realpath $(MAKEFILE_DIR)../..)
$(info PROJECT_DIR is $(PROJECT_DIR))
SRC_DIR = $(PROJECT_DIR)/src
TEST_DIR = $(PROJECT_DIR)/tests

$(info SRC_DIR is $(SRC_DIR))
$(info TEST_DIR is $(TEST_DIR))

#Location of CppUTest (if not already set)
CPPUTEST_HOME = $(PROJECT_DIR)/tools/cpputest

$(info CPPUTEST_HOME is $(CPPUTEST_HOME))

#include and source files for component under test
INCLUDE_DIRS = $(SRC_DIR)/$(COMPONENT_NAME)
SRC_DIRS = $(SRC_DIR)/$(COMPONENT_NAME)

$(info INCLUDE_DIRS is $(INCLUDE_DIRS))
$(info SRC_DIRS is $(SRC_DIRS))

#includes CppUTest header files
INCLUDE_DIRS += $(CPPUTEST_HOME)/include

$(info INCLUDE_DIRS is $(INCLUDE_DIRS))

#Directories containing the unit tests
TEST_SRC_DIRS = $(TEST_DIR)/$(COMPONENT_NAME)
$(info TEST_SRC_DIRS is $(TEST_SRC_DIRS))

#RUN makefilesWorker.mk with the variables set in this Makefile
include $(CPPUTEST_HOME)/build/MakefileWorker.mk
