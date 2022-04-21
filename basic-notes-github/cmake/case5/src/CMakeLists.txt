aux_source_directory(. SRC_LIST)

include_directories(../include)

find_library(TESTFUNC_LIB libtestFunc.so ../lib)

add_executable(main ${SRC_LIST})

target_link_libraries(main ${TESTFUNC_LIB})
