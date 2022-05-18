#------------------------------
# 全局编译工具链
#------------------------------
CROSS=#arm-linux-gnueabihf-
export CC = ${CROSS}gcc
export AR = ${CROSS}ar
export MAKE = make

#------------------------------
# 全局编译参数变量
#------------------------------
export VERSION = 1.0.0
#export CFLAGS_ENV=-Wall -Os -ffunction-sections -fdata-sections
export CFLAGS_ENV = -Wall -g -O2 -std=c99 -fPIC
export MODEL = DEBUG


#-------------------------------
# 全局路径变量
#-------------------------------
export ROOT_DIR=$(shell pwd)
export BUILD_DIR=$(ROOT_DIR)/build/
export BINARY_DIR=$(ROOT_DIR)/build/bin/
export LIB_DIR=$(ROOT_DIR)/lib/
export M_DIR=$(ROOT_DIR)/lib/m
export SHARE_DIR=$(ROOT_DIR)/lib/share
export STATIC_DIR=$(ROOT_DIR)/lib/static
export BIN_DIR=$(BUILD_DIR)/bin
export SRC_DIR=$(ROOT_DIR)/src

SUBDIRS = $(BUILD_DIR) $(SHARE_DIR) $(STATIC_DIR) $(M_DIR) $(SRC_DIR)

#-------------------------------
# 全局头文件变量
#-------------------------------
export INCLUDE_ENV := -I./include 
