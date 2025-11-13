file(GLOB C
    RELATIVE ${CMAKE_SOURCE_DIR}
    src/*.c*
)

file(GLOB H
    RELATIVE ${CMAKE_SOURCE_DIR}
    inc/*.h*
)

file(GLOB INC
    RELATIVE ${CMAKE_SOURCE_DIR}
    ${CMAKE_BINARY_DIR}
    inc src
)
include_directories(${INC})
