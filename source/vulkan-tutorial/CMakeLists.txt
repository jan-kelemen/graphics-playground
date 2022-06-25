set(TARGET_NAME vulkan-tutorial)

add_executable(${TARGET_NAME} src/main.cpp)

add_dependencies(${TARGET_NAME} clang-format)

target_link_libraries(${TARGET_NAME}
    PRIVATE
        Vulkan::Vulkan
        glfw::glfw
        glm::glm
)

