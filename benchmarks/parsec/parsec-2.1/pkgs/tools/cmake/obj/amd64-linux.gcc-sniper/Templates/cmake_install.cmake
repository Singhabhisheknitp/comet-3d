# Install script for directory: /data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Templates

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
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cmake-2.6/Templates" TYPE FILE FILES
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Templates/CPackConfig.cmake.in"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Templates/cygwin-package.sh.in"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Templates/TestDriver.cxx.in"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Templates/CTestScript.cmake.in"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" MATCHES "^(Unspecified)$")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" MATCHES "^(Unspecified)$")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cmake-2.6/Templates" TYPE FILE FILES
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Templates/CPack.GenericWelcome.txt"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Templates/CPack.GenericLicense.txt"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Templates/CMakeLists.txt"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Templates/CPack.GenericDescription.txt"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" MATCHES "^(Unspecified)$")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" MATCHES "^(Unspecified)$")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cmake-2.6/Templates" TYPE FILE FILES "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Templates/CMakeVisualStudio6Configurations.cmake")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" MATCHES "^(Unspecified)$")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" MATCHES "^(Unspecified)$")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cmake-2.6/Templates" TYPE FILE FILES
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Templates/DLLHeader.dsptemplate"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Templates/EXEWinHeader.dsptemplate"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Templates/staticLibFooter.dsptemplate"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Templates/EXEHeader.dsptemplate"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Templates/UtilityHeader.dsptemplate"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Templates/EXEFooter.dsptemplate"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Templates/DLLFooter.dsptemplate"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Templates/UtilityFooter.dsptemplate"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Templates/staticLibHeader.dsptemplate"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" MATCHES "^(Unspecified)$")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" MATCHES "^(Unspecified)$")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cmake-2.6/Templates" TYPE FILE FILES
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Templates/CMakeVSMacros2.vsmacros"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Templates/CMakeVSMacros1.vsmacros"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" MATCHES "^(Unspecified)$")

