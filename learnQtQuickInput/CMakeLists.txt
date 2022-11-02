cmake_minimum_required(VERSION 3.16)

project(learnQtQuickInput VERSION 0.1 LANGUAGES CXX)

set(CMAKE_AUTOMOC ON)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 6.2 COMPONENTS Quick REQUIRED)

qt_add_executable(applearnQtQuickInput
    main.cpp
)

qt_add_qml_module(applearnQtQuickInput
    URI learnQtQuickInput
    VERSION 1.0
    QML_FILES main.qml 
              MyTextField.qml
              MyTextArea.qml
              MyComboBox.qml
              MySpinBox.qml
              MyDial.qml
              MySlider.qml
              MyRangeSlider.qml
              MyTumbler.qml
              MyMenu1.qml
              MyMenu2.qml
              MyMenu3.qml
              MyMenuBar.qml
)

set_target_properties(applearnQtQuickInput PROPERTIES
    MACOSX_BUNDLE_GUI_IDENTIFIER my.example.com
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(applearnQtQuickInput
    PRIVATE Qt6::Quick)

install(TARGETS applearnQtQuickInput
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR})
