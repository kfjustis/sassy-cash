cmake_minimum_required(VERSION 3.2) # When in doubt, use Citra!

# Tell it where to find Qt5
set(CMAKE_PREFIX_PATH /usr/local/opt/qt5/)

project(sassy-cash LANGUAGES CXX)

set(CMAKE_INCLUDE_CURRENT_DIR ON)
set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)

# declare files
set (SOURCES
    src/main.cpp
    src/qml.qrc
)

# include Qt
find_package(Qt5 COMPONENTS Core Quick REQUIRED)
set(QT_LIBRARIES Qt5::Core Qt5::Quick)

# compile
add_executable(${PROJECT_NAME} ${SOURCES})

# link libraries
target_link_libraries(${PROJECT_NAME} ${QT_LIBRARIES})
