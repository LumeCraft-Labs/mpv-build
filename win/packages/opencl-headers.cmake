ExternalProject_Add(opencl-headers
    GIT_REPOSITORY https://github.com/KhronosGroup/OpenCL-Headers.git
    SOURCE_DIR ${SOURCE_LOCATION}
    GIT_CLONE_FLAGS "--filter=tree:0"
    GIT_TAG e55138572c81dce15ffe402bd1142d9652ec5cb5
    UPDATE_COMMAND ""
    CONFIGURE_COMMAND ""
    BUILD_COMMAND ""
    INSTALL_COMMAND ${CMAKE_COMMAND} -E copy_directory <SOURCE_DIR>/CL ${MINGW_INSTALL_PREFIX}/include/CL
    LOG_DOWNLOAD 1 LOG_UPDATE 1
)

force_rebuild_git(opencl-headers)
cleanup(opencl-headers install)
