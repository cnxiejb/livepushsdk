#!/bin/bash
ndk-build clean
ndk-build NDK_PROJECT_PATH=../ APP_BUILD_SCRIPT=./Android.mk NDK_APPLICATION_MK=./Application.mk
