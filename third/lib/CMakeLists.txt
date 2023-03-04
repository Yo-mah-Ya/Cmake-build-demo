option(GREETINGS_BUILD_SHARED_LIBS "build greetings as a shared library" OFF)
if(GREETINGS_BUILD_SHARED_LIBS)
    add_library(greetings
            SHARED
            hello.cpp good_morning.cpp)
else()
    add_library(greetings
            STATIC
            hello.cpp good_morning.cpp)
endif()
# PROJECT_SOURCE_DIR is this repository's root path.
target_include_directories(greetings
  PUBLIC ${PROJECT_SOURCE_DIR}/include
)
