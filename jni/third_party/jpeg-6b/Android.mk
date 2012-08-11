# Copyright (C) 2012 Havlena Petr <havlenapetr@gmail.com>
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

JPEG_INCLUDE_DIR := $(LOCAL_PATH)
LOCAL_C_INCLUDES := $(JPEG_INCLUDE_DIR)

ifeq ($(APP_USE_PREBUILT_JPEG),true)
LOCAL_MODULE := libjpeg_addon
LOCAL_SRC_FILES += jpeg_mem_src.cpp
include $(BUILD_STATIC_LIBRARY)
else
LOCAL_MODULE := libjpeg
LOCAL_SRC_FILES := \
    jcapimin.c \
    jccoefct.c \
    jccolor.c \
    jcdctmgr.c \
    jchuff.c \
    jcinit.c \
    jcmainct.c \
    jcmarker.c \
    jcmaster.c \
    jcomapi.c \
    jcparam.c \
    jcphuff.c \
    jcprepct.c \
    jcsample.c \
    jdapimin.c \
    jdapistd.c \
    jdatadst.c \
    jdatasrc.c \
    jdcoefct.c \
    jdcolor.c \
    jddctmgr.c \
    jdhuff.c \
    jdinput.c \
    jdmainct.c \
    jdmarker.c \
    jdmaster.c \
    jdmerge.c \
    jdphuff.c \
    jdpostct.c \
    jdsample.c \
    jdtrans.c \
    jerror.c \
    jfdctflt.c \
    jfdctfst.c \
    jfdctint.c \
    jidctflt.c \
    jidctfst.c \
    jidctint.c \
    jidctred.c \
    jmemmgr.c \
    jmemnobs.c \
    jquant1.c \
    jquant2.c \
    jutils.c

LOCAL_SRC_FILES += jpeg_mem_src.cpp

include $(BUILD_STATIC_LIBRARY)
endif
