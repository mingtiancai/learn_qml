cmake_minimum_required(VERSION 3.16)

project(learnQtQuick VERSION 0.1 LANGUAGES CXX)

set(CMAKE_AUTOMOC ON)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 6.2 COMPONENTS Quick REQUIRED)

qt_add_executable(applearnQtQuick
    main.cpp
)

qt_add_qml_module(applearnQtQuick
    URI learnQtQuick
    VERSION 1.0
    QML_FILES main.qml
              MyItem.qml
              MyText.qml
              MyGrid.qml
              MyFlow.qml
              MyTransition.qml
              MyRepeator.qml
              MyDoubleRect.qml
              MyLayout.qml
              MyDrag.qml
              MyRect.qml
              MyDrag2.qml
              MyNavigation.qml
              MyTimer.qml
    RESOURCES resource/img/gangshou.jpeg
)

set_target_properties(applearnQtQuick PROPERTIES
    MACOSX_BUNDLE_GUI_IDENTIFIER my.example.com
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(applearnQtQuick
    PRIVATE Qt6::Quick)

install(TARGETS applearnQtQuick
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR})
