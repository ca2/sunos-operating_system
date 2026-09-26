

if(${CMAKE_SYSTEM_NAME} STREQUAL "SunOS")

include(operating_system/operating_system-sunos/_.cmake)

elseif(${CMAKE_SYSTEM_NAME} STREQUAL "Windows")

include(operating_system/operating_system-windows/_.cmake)

endif()


