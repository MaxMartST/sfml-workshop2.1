add_executable(2.1 main_2.1.cpp)

target_include_directories(2.1 PRIVATE ${SFML_INCLUDE_DIR})
target_compile_features(2.1 PUBLIC cxx_std_17)
target_compile_definitions(2.1 PRIVATE SFML_STATIC)

target_link_libraries(2.1 ${SFML_LIBRARIES} ${SFML_DEPENDENCIES})