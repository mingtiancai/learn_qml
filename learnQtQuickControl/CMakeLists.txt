cmake_minimum_required(VERSION 3.16)

project(learnQtQuickControl VERSION 0.1 LANGUAGES CXX)

set(CMAKE_AUTOMOC ON)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 6.2 COMPONENTS Quick REQUIRED)

qt_add_executable(applearnQtQuickControl
    main.cpp
)

qt_add_qml_module(applearnQtQuickControl
    URI learnQtQuickControl
    VERSION 1.0
    QML_FILES main.qml
              MyButton.qml
              MyButton2.qml
              MyCheckBox.qml
              MyCheckBox2.qml
              MySwitch.qml
              MyRadioButton.qml
              MyDelayButton.qml
)

set_target_properties(applearnQtQuickControl PROPERTIES
    MACOSX_BUNDLE_GUI_IDENTIFIER my.example.com
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(applearnQtQuickControl
    PRIVATE Qt6::Quick)

install(TARGETS applearnQtQuickControl
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR})
