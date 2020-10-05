LOCAL_PATH := $(call my-dir)
$(info __LOCAL_PATH: $(LOCAL_PATH))

include $(CLEAR_VARS)
LOCAL_MODULE    := iconv
LOCAL_CFLAGS    := \
    -w \
    -fdeclspec \
    -D_ANDROID \
    -DLIBDIR="\"c\"" \
    -DBUILDING_LIBICONV \
    -DIN_LIBRARY
LOCAL_C_INCLUDES := \
    $(LOCAL_PATH)/libiconv-1.15 \
    $(LOCAL_PATH)/libiconv-1.15/include \
    $(LOCAL_PATH)/libiconv-1.15/lib \
    $(LOCAL_PATH)/libiconv-1.15/srclib/ \
    $(LOCAL_PATH)/libiconv-1.15/libcharset  \
    $(LOCAL_PATH)/libiconv-1.15/libcharset/include
LOCAL_SRC_FILES := \
    $(LOCAL_PATH)/libiconv-1.15/lib/iconv.c \
    $(LOCAL_PATH)/libiconv-1.15/lib/relocatable.c \
    $(LOCAL_PATH)/libiconv-1.15/libcharset/lib/localcharset.c
include $(BUILD_STATIC_LIBRARY)
