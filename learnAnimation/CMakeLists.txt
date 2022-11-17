cmake_minimum_required(VERSION 3.16)

project(learnAnimation VERSION 0.1 LANGUAGES CXX)

set(CMAKE_AUTOMOC ON)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 6.2 COMPONENTS Quick REQUIRED)

qt_add_executable(applearnAnimation
    main.cpp
)

qt_add_qml_module(applearnAnimation
    URI learnAnimation
    VERSION 1.0
    QML_FILES main.qml 
              MyColor.qml
              MyGradient.qml
              MyPalette.qml
              MyImage.qml
              MyAnimatedImage.qml
              MyScale.qml
              MyRotation.qml
              MyState.qml
              MyPropertyAnimation.qml
              MyButton.qml
              MyBall.qml
              mybehavior.qml
              MySquentialAnimation.qml
              MyAnimator.qml
              MySprite.qml
              MyFlickable.qml
    RESOURCES
              image/animation.gif
              image/switch.png
              image/warning.png
              image/critical.png
              image/fengche.png
              image/BearSheet.png
              image/bigImage.jpg
              image/back.png
              image/front.png
)

set_target_properties(applearnAnimation PROPERTIES
    MACOSX_BUNDLE_GUI_IDENTIFIER my.example.com
    MACOSX_BUNDLE_BUNDLE_VERSION ${PROJECT_VERSION}
    MACOSX_BUNDLE_SHORT_VERSION_STRING ${PROJECT_VERSION_MAJOR}.${PROJECT_VERSION_MINOR}
    MACOSX_BUNDLE TRUE
    WIN32_EXECUTABLE TRUE
)

target_link_libraries(applearnAnimation
    PRIVATE Qt6::Quick)

install(TARGETS applearnAnimation
    BUNDLE DESTINATION .
    LIBRARY DESTINATION ${CMAKE_INSTALL_LIBDIR})
