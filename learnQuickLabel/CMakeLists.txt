cmake_minimum_required(VERSION 3.16)

project(learnQuickLabel VERSION 0.1 LANGUAGES CXX)

set(CMAKE_AUTOMOC ON)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 6.2 COMPONENTS Quick REQUIRED)

qt_add_executable(applearnQuickLabel
    main.cpp
)

qt_add_qml_module(applearnQuickLabel
    URI learnQuickLabel
    VERSION 1.0
    QML_FILES main.qml
              MyLabel.qml
              MyProgress.qml
              MyBusyIndicator.qml
              MyPageIndicator.qml
)

set_target_properties(applearnQuickLabel PROPERTIES
    MACOSX_BUNDLE_GUI_IDENTIFIER my.example.com
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(applearnQuickLabel
    PRIVATE Qt6::Quick)

install(TARGETS applearnQuickLabel
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR})
