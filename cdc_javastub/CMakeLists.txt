set(_name cdc_javastub)

find_package(Java REQUIRED)
find_package(JNI REQUIRED)

if (JNI_FOUND)
	message (STATUS "JNI_INCLUDE_DIRS=${JNI_INCLUDE_DIRS}")
	message (STATUS "JNI_LIBRARIES=${JNI_LIBRARIES}")
	include_directories(${JNI_INCLUDE_DIRS})
endif()

set(cdc_javastub_SRC_FILES
	CDCLib_JavaStub.cpp
)

set(cdc_javastub_INC_FILES
	com_microrisc_CDC_J_CDCImpl.h
)

# Group the files in IDE.
source_group("include" FILES ${cdc_javastub_INC_FILES})

include_directories(${CMAKE_CURRENT_SOURCE_DIR})
include_directories(${CMAKE_SOURCE_DIR}/include)

add_library(
	${_name}
	SHARED
	${cdc_javastub_SRC_FILES} 
	${cdc_javastub_INC_FILES}
)

target_link_libraries(${_name} cdc)

#install(TARGETS ${project} DESTINATION ${CMAKE_INSTALL_PREFIX}/lib)
