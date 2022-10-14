# 编译所有CPU的.so
# APP_ABI := all  

# 添加几乎全平台支持 ARM-x86 x86   x86_64   armeabi-v7a 
APP_ABI := arm64-v8a

# 最低android版本为 android-14 -> android-4.0
APP_PLATFORM := android-16

# 添加C++ STL库支持
APP_STL := c++_static
