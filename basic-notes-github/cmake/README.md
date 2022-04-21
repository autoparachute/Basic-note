# CmakeLists.txt语法

### 一、指定cmake的最小版本

`cmake_minimum_required(VERSION 3.4.1)`

### 二、设置项目名称

`project(demo)`

### 三、设置编译类型

#### 1、生成可执行文件

`add_executable(demo demo.cpp)`   

#### 2、生成静态库

`add_library(common util.cpp)` 

#### 3、生成动态库/共享库

`add_library(common SHARED util.cpp)`

### 四、指定编译包含的源文件

### 1、明确指定包含哪些源文件

`add_library(demo demo1.cpp demo2.cpp demo3.cpp)`

#### 2、搜索所有的cpp文件

`aux_source_directory(. SRC_LIST)`

`add_library(demo ${SRC_LIST})`

### 五、指定的库文件

`find_library()`

### 六、规定.h头文件的路径

`include_directories()`

### 七、规定.so/.a库文件路径

`link_directories()`

### 八、设置target需要链接的库

`target_link_libraries()`

