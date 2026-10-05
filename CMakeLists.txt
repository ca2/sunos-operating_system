cmake_minimum_required(VERSION 3.17)
project(operating_system)


if(${CMAKE_SYSTEM_NAME} STREQUAL "SunOS")


add_subdirectory(operating_system-posix/acme_posix)
add_subdirectory(operating_system-sunos/acme_sunos)
#add_subdirectory(operating_system-sunos/acme_windowing_win32)
#add_subdirectory(operating_system-windows/nano_graphics_gdi)
#add_subdirectory(operating_system-windows/gdiplus_library)
add_subdirectory(operating_system-posix/nano_graphics_cairo)
#add_subdirectory(operating_system-windows_common/nano_compress_windows)
#add_subdirectory(operating_system-windows_common/nano_idn_windows_common)
add_subdirectory(operating_system-posix/nano_compress_command_line)
add_subdirectory(operating_system-posix/nano_http_command_line)
add_subdirectory(operating_system-posix/apex_posix)
add_subdirectory(operating_system-sunos/apex_sunos)

option(INCLUDE_ACCESSIBILITY_ATSPI "Build AT-SPI accessibility automation" ON)
if(INCLUDE_ACCESSIBILITY_ATSPI)
   add_subdirectory(operating_system-posix/accessibility_atspi)
   add_subdirectory(operating_system-posix/accessibility_gtk3)
endif()

if(INCLUDE_AUDIO)
   add_subdirectory(operating_system-posix/audio_sunaudio)
   add_subdirectory(operating_system-posix/audio_oss)
   # Audio backends are loaded dynamically, so ensure application audio builds
   # also produce both modules. Link dependencies point from the backends to
   # audio; ordering dependencies must go on applications to avoid a cycle.
endif()
#add_subdirectory(operating_system-windows/innate_ui_win32)
#add_subdirectory(operating_system-posix/aura_posix)
#add_subdirectory(operating_system-sunos/aura_sunos)
#add_subdirectory(operating_system-sunos/node_sunos)
#add_subdirectory(operating_system-windows/windowing_win32)
#add_subdirectory(operating_system-sunos/operating_ambient_gtk3)
#add_subdirectory(operating_system-windows/write_text_win32)
#add_subdirectory(operating_system-windows/draw2d_gdiplus)
#add_subdirectory(operating_system-windows/multimedia_mmsystem)
#add_subdirectory(operating_system-windows/audio_mmsystem)
#add_subdirectory(operating_system-windows/input_win32)


#add_subdirectory(operating_system-windows_common/imaging_wic)

include(operating_system-posix/_desktop_ambient_5.cmake)

if(DESKTOP_AMBIENT)
   add_subdirectory(operating_system-posix/write_text_pango)
endif()


elseif(${CMAKE_SYSTEM_NAME} STREQUAL "Windows")
add_subdirectory(operating_system-windows_common/acme_windows_common)
add_subdirectory(operating_system-windows/acme_windows)
add_subdirectory(operating_system-windows/acme_windowing_win32)
add_subdirectory(operating_system-windows/nano_graphics_gdi)
add_subdirectory(operating_system-windows/gdiplus_library)
add_subdirectory(operating_system-windows/nano_graphics_gdiplus)
add_subdirectory(operating_system-windows_common/nano_compress_windows)
add_subdirectory(operating_system-windows_common/nano_idn_windows_common)
add_subdirectory(operating_system-windows/nano_http_wininet)
add_subdirectory(operating_system-windows_common/apex_windows_common)
add_subdirectory(operating_system-windows/apex_windows)
add_subdirectory(operating_system-windows/innate_ui_win32)
add_subdirectory(operating_system-windows_common/aura_windows_common)
add_subdirectory(operating_system-windows/aura_windows)
add_subdirectory(operating_system-windows/node_windows)
add_subdirectory(operating_system-windows/windowing_win32)
add_subdirectory(operating_system-windows/operating_ambient_windows)
add_subdirectory(operating_system-windows/write_text_win32)
add_subdirectory(operating_system-windows/draw2d_gdiplus)
add_subdirectory(operating_system-windows/multimedia_mmsystem)
add_subdirectory(operating_system-windows/audio_mmsystem)
add_subdirectory(operating_system-windows/input_win32)


add_subdirectory(operating_system-windows_common/imaging_wic)

endif()

