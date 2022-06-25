include(${PROJECT_SOURCE_DIR}/cmake/conan.cmake)

# Conan and dependencies configuration

conan_cmake_configure(
    REQUIRES
        vulkan-loader/1.3.216.0
        glfw/3.3.7
        glm/0.9.9.8
    GENERATORS
        cmake_find_package
)

conan_cmake_autodetect(settings)

conan_cmake_install(PATH_OR_REFERENCE .
                    BUILD missing
                    SETTINGS ${settings})

find_package(Vulkan REQUIRED FATAL_ERROR)
find_package(glfw3 REQUIRED)
find_package(glm REQUIRED)
