LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_CPP_EXTENSION := .cpp
#LOCAL_C_INCLUDES 
LOCAL_MODULE := LiveSDKAndroid
LOCAL_SRC_FILES := ../HelloWorld.cpp
include $(BUILD_SHARED_LIBRARY)
