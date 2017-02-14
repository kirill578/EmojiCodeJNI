LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := emojicodec
CODE_FOLDER := EmojicodeCompiler
FILE_LIST := $(wildcard $(LOCAL_PATH)/[$(CODE_FOLDER)]/*.cpp)

LOCAL_SRC_FILES := main.cpp
LOCAL_CPPFLAGS := -std=c++14 -Wall
LOCAL_LDLIBS := -L$(SYSROOT)/usr/lib -llog -lm -rdynamic  -pie
include $(BUILD_EXECUTABLE)
