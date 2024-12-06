# Install script for directory: /data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/Platform

# Set the install prefix
IF(NOT DEFINED CMAKE_INSTALL_PREFIX)
  SET(CMAKE_INSTALL_PREFIX "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/./pkgs/tools/cmake/inst/amd64-linux.gcc-sniper")
ENDIF(NOT DEFINED CMAKE_INSTALL_PREFIX)
STRING(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
IF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  IF(BUILD_TYPE)
    STRING(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  ELSE(BUILD_TYPE)
    SET(CMAKE_INSTALL_CONFIG_NAME "")
  ENDIF(BUILD_TYPE)
  MESSAGE(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
ENDIF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)

# Set the component getting installed.
IF(NOT CMAKE_INSTALL_COMPONENT)
  IF(COMPONENT)
    MESSAGE(STATUS "Install component: \"${COMPONENT}\"")
    SET(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  ELSE(COMPONENT)
    SET(CMAKE_INSTALL_COMPONENT)
  ENDIF(COMPONENT)
ENDIF(NOT CMAKE_INSTALL_COMPONENT)

# Install shared libraries without execute permission?
IF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  SET(CMAKE_INSTALL_SO_NO_EXE "1")
ENDIF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" MATCHES "^(Unspecified)$")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cmake-2.6/Modules/Platform" TYPE FILE FILES
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/Platform/Linux-PGI-Fortran.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/Platform/ULTRIX.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/Platform/Generic-ADSP-ASM.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/Platform/Darwin-icpc.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/Platform/BlueGeneL.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/Platform/Linux-SunPro-C.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/Platform/SINIX.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/Platform/IRIX.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/Platform/UNIX_SV.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/Platform/Xenix.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/Platform/FreeBSD.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/Platform/AIX.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/Platform/CYGWIN-g77.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/Platform/Linux-icpc.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/Platform/UnixPaths.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/Platform/eCos.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/Platform/Linux-como.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/Platform/GNU.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/Platform/BeOS.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/Platform/Linux-Intel-CXX.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/Platform/Generic-SDCC-C.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/Platform/Linux-PGI-CXX.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/Platform/Windows-cl.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/Platform/Linux-PGI-C.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/Platform/MP-RAS.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/Platform/Generic-ADSP-C.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/Platform/cl.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/Platform/CYGWIN.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/Platform/Linux-Intel-Fortran.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/Platform/Windows.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/Platform/SunOS-SunPro-Fortran.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/Platform/Windows-gcc.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/Platform/Linux-SunPro-Fortran.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/Platform/Linux-GNU-Fortran.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/Platform/Linux-SunPro-CXX.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/Platform/gas.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/Platform/HP-UX.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/Platform/Generic-ADSP-CXX.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/Platform/kFreeBSD.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/Platform/Windows-g++.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/Platform/Windows-g77.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/Platform/RISCos.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/Platform/Linux.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/Platform/Windows-bcc32.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/Platform/syllable.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/Platform/Generic-ADSP-Common.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/Platform/NetBSD.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/Platform/Darwin-icc.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/Platform/Windows-wcl386.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/Platform/Linux-ifort.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/Platform/QNX.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/Platform/DragonFly.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/Platform/Catamount.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/Platform/AIX-VisualAge-Fortran.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/Platform/Generic.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/Platform/gcc.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/Platform/UnixWare.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/Platform/Windows-df.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/Platform/Linux-VisualAge-Fortran.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/Platform/Linux-Intel-C.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/Platform/SCO_SV.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/Platform/xlf.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/Platform/Windows-ifort.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/Platform/Linux-VisualAge-C.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/Platform/Windows-icl.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/Platform/SunOS.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/Platform/OpenBSD.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/Platform/Darwin.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/Platform/IRIX64.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/Platform/OSF1.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/Platform/Tru64.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/Platform/WindowsPaths.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/Platform/BSDOS.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/Platform/g77.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/Platform/Darwin-xlc.cmake"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" MATCHES "^(Unspecified)$")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" MATCHES "^(Unspecified)$")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cmake-2.6/Modules/Platform" TYPE FILE FILES "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/Platform/Windows-cl.cmake.in")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" MATCHES "^(Unspecified)$")

