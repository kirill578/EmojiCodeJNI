LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := emojicodec

FILE_LIST := $(wildcard $(LOCAL_PATH)/EmojicodeCompiler/*.cpp)
LOCAL_SRC_FILES := $(FILE_LIST:$(LOCAL_PATH)/%=%)

LOCAL_CPPFLAGS := -std=c++11 -Wall -fpie -c -fexceptions -frtti -Ofast -iquote . -iquote EmojicodeReal-TimeEngine/ -iquote EmojicodeCompiler/
LOCAL_LDLIBS := -pie -lm -ldl -rdynamic

include $(BUILD_EXECUTABLE)
