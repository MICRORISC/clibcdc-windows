project (cdc)

cmake_minimum_required(VERSION 2.8)

#library build
add_subdirectory(cdc)

#library build
add_subdirectory(cdcshared)

#example build
add_subdirectory(example)

#javastub build
add_subdirectory(cdc_javastub)
