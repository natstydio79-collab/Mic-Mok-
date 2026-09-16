cmake_minimum_required(VERSION 3.16)

project(TikTokClone VERSION 1.0 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Qt6 REQUIRED COMPONENTS Core Gui Qml Quick)

qt_add_executable(TikTokClone
    main.cpp
)

qt_add_qml_module(TikTokClone
    URI TikTokClone
    VERSION 1.0
    QML_FILES
        main.qml
)

target_link_libraries(TikTokClone PRIVATE
    Qt6::Core
    Qt6::Gui
    Qt6::Qml
    Qt6::Quick
)

set_target_properties(TikTokClone PROPERTIES
    QT_ANDROID_PACKAGE_SOURCE_DIR "${CMAKE_CURRENT_SOURCE_DIR}"
    QT_ANDROID_PACKAGE_NAME "com.example.tiktokclone"
    QT_ANDROID_APP_NAME "TikTokClone"
    QT_ANDROID_TARGET_SDK_VERSION 35
    QT_ANDROID_MIN_SDK_VERSION 24
    QT_ANDROID_VERSION_NAME "1.0"
    QT_ANDROID_VERSION_CODE 1
)
