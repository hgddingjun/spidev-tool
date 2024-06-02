# spidev-tool

#### 介绍
spidev_test是测试spi接口工具

### Android R版本里编译使用spidev_test工具：
#### 1. 编译：
####    在$AOSP/external目录下新建spidev_test目录
####    进入到该目录下：cd spidev_test ，并将spidev_test.c文件拷贝到该目录下；
####    新建Android.mk文件：touch Android.mk，内容如下：
#####    LOCAL_PATH := $(call my-dir)
#####    include $(CLEAR_VARS)
#####    LOCAL_SRC_FILES += spidev_test.c
#####    LOCAL_MODULE := spidev_test
#####    LOCAL_CFLAGS += -Wno-unused-parameter
#####    LOCAL_LDFLAGS += -L$(LOCAL_PATH)
#####    LOCAL_LDLIBS := -llog
#####    include $(BUILD_EXECUTABLE)
####    新建Makefile文件：touch Makefile，内容如下：
#####    hostprogs-y := spidev_test
#####    always := $(hostprogs-y)
#####    HOSTCFLAGS_spidev_test.o += -I$(objtree)/usr/include
####    在当前目录下执行 mm 命令
#### 2. 在kernel中打开 CONFIG_SPI_SPIDEV=y，然后编译kernel：make bootimage
#### 3. 测试举例：
##### spidev_test -D /dev/spidev0.0 -v -p "abcdef9876543210"
