# Specify source and header files.
#file(GLOB _SRCS src/*.cpp)
set(cdc_SRC_FILES
	${CMAKE_SOURCE_DIR}/src/CDCImpl.cpp
	${CMAKE_SOURCE_DIR}/src/CDCImplException.cpp
	${CMAKE_SOURCE_DIR}/src/CDCMessageParser.cpp
	${CMAKE_SOURCE_DIR}/src/CDCMessageParserException.cpp
	${CMAKE_SOURCE_DIR}/src/CDCReceiveException.cpp
	${CMAKE_SOURCE_DIR}/src/CDCSendException.cpp
)

#file(GLOB _HEADERS include/*.h)
set(cdc_INC_FILES
	${CMAKE_SOURCE_DIR}/include/cdc/CDCImpl.h
	${CMAKE_SOURCE_DIR}/include/cdc/CDCImplException.h
	${CMAKE_SOURCE_DIR}/include/cdc/CdcInterface.h
	${CMAKE_SOURCE_DIR}/include/cdc/CDCMessageParser.h
	${CMAKE_SOURCE_DIR}/include/cdc/CDCMessageParserException.h
	${CMAKE_SOURCE_DIR}/include/cdc/CDCReceiveException.h
	${CMAKE_SOURCE_DIR}/include/cdc/CDCSendException.h
	${CMAKE_SOURCE_DIR}/include/cdc/CDCTypes.h
)

# Group the files in IDE.
source_group("include" FILES ${cdc_INC_FILES})

include_directories(${CMAKE_SOURCE_DIR}/include)

add_library(
	cdcshared
    SHARED
	${cdc_SRC_FILES} ${cdc_INC_FILES}
)

# link to pthread
#target_link_libraries(${project} pthread)

#install(TARGETS ${project} DESTINATION ${CMAKE_INSTALL_PREFIX}/lib)
