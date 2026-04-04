set(PACKAGE ${CMAKE_CURRENT_BINARY_DIR}/mpv-packaging-prefix/src/packaging.sh)
file(WRITE ${PACKAGE}
"#!/bin/bash
for dir in $1/mpv*$2*; do
if [ -d $dir ]; then
    7z a -m0=lzma2 -mx=9 -ms=on $dir.7z $dir/* -x!*.7z
fi
done")

ExternalProject_Add(mpv-packaging
    DOWNLOAD_COMMAND ""
    UPDATE_COMMAND ""
    CONFIGURE_COMMAND ""
    BUILD_COMMAND ""
    INSTALL_COMMAND ""
    COMMAND chmod 755 ${PACKAGE}
    COMMAND ${PACKAGE} ${CMAKE_BINARY_DIR} ${TARGET_CPU}
    BUILD_ALWAYS 1
)
