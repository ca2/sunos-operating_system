


if(${CMAKE_SYSTEM_NAME} STREQUAL "SunOS")

include(operating_system/operating_system-sunos/__.cmake)

elseif(${CMAKE_SYSTEM_NAME} STREQUAL "Windows")

include(operating_system/operating_system-windows/__.cmake)

endif()
