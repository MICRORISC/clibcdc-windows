set(_name cdc_example)

set(cdc_example_SRC_FILES
	writeread.cpp
)

include_directories(${CMAKE_SOURCE_DIR}/include)

add_executable(${_name} ${cdc_example_SRC_FILES})

target_link_libraries(${_name} cdc)

#install(TARGETS ${project} DESTINATION ${CMAKE_INSTALL_PREFIX}/sbin)
