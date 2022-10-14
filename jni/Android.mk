# 设置本地目录
LOCAL_PATH := $(call my-dir)

# --------------------------- 标准库支持 ---------------------------------------#

# 添加C++ stl 头文件支持
LOCAL_C_INCLUDES := $(NDK_ROOT)/sources/cxx-stl/stlport/stlport

LOCAL_STATIC_LIBRARIES := $(NDK_ROOT)/sources/cxx-stl/stlport/libs/armeabi/libstlport_static.a


# --------------------------- 第三方库支持 -------------------------------------#

# # 添加Eigen3 矩阵运算库支持
# LOCAL_C_INCLUDES += $(LOCAL_PATH)/Eigen

# # 添加Eigen3 NNLS 求解器支持
# LOCAL_C_INCLUDES += $(LOCAL_PATH)/Eigen3-nnls

# ----------------------------工程文件包含--------------------------------------#

include $(CLEAR_VARS)

LOCAL_MODULE := Hello

# 包含文件设置
LOCAL_SRC_FILES := Hello.cpp 
# ----------------------------配置文件生成类型 ---------------------------------#

# 生成可执行文件
# include $(BUILD_EXECUTABLE) 

# 生成动态链接库
include $(BUILD_SHARED_LIBRARY)
