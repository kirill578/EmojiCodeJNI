LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := emojicodec

FILE_LIST := $(wildcard $(LOCAL_PATH)/EmojicodeCompiler/*.cpp)
LOCAL_C_INCLUDES := $(LOCAL_PATH)/EmojicodeReal-TimeEngine/ $(LOCAL_PATH)/
LOCAL_SRC_FILES := $(FILE_LIST:$(LOCAL_PATH)/%=%)

LOCAL_CPPFLAGS := -std=c++14 -Wall -fpie -c -fexceptions -frtti -Ofast -iquote . -iquote EmojicodeReal-TimeEngine/ -iquote EmojicodeCompiler/ -D__STDC_LIMIT_MACROS=1
LOCAL_LDLIBS := -pie -lm -ldl -rdynamic

include $(BUILD_EXECUTABLE)
