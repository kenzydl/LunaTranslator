
set(VERSION_MAJOR 6)
set(VERSION_MINOR 5)
set(VERSION_PATCH 3)
set(VERSION_REVISION 0)
set(LUNA_VERSION "{${VERSION_MAJOR},${VERSION_MINOR},${VERSION_PATCH},${VERSION_REVISION}}")
add_library(VERSION_DEF INTERFACE)
target_compile_definitions(VERSION_DEF INTERFACE  
    VERSION_MAJOR=${VERSION_MAJOR} 
    VERSION_MINOR=${VERSION_MINOR} 
    VERSION_PATCH=${VERSION_PATCH} 
    VERSION_REVISION=${VERSION_REVISION}
    LUNA_VERSION=${LUNA_VERSION})
include(${CMAKE_CURRENT_LIST_DIR}/version/generate_product_version.cmake)