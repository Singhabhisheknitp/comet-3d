# Install script for directory: /data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules

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
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cmake-2.6/Modules" TYPE FILE FILES
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/FindPythonInterp.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/TestForSSTREAM.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/UsewxWidgets.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/FindCygwin.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/FindOpenGL.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/CMakeVS71FindMake.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/CPack.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/CMakeJavaInformation.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/FindOpenSSL.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/FindMatlab.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/CMakeUnixFindMake.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/CMakeRCInformation.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/FindCurses.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/CMakeDetermineCompilerId.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/FindMotif.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/FindMFC.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/CheckCCompilerFlag.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/kde3uic.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/CMakeTestJavaCompiler.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/FindGIF.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/FindPerl.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/Documentation.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/CMakeVS7BackwardCompatibility.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/FindHSPELL.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/FindLATEX.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/FindSWIG.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/FindDCMTK.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/FindLua50.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/CMakeCommonLanguageInclude.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/FindosgFX.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/FindRuby.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/TestForANSIStreamHeaders.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/CMakeMinGWFindMake.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/FindHTMLHelp.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/CMakeBorlandFindMake.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/Dart.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/FindCABLE.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/FindGDAL.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/FindBoost.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/FindwxWidgets.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/FindAVIFile.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/CMakeFindXCode.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/FindosgParticle.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/UseEcos.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/CPackZIP.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/CMakeCInformation.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/FindPHP4.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/FindSelfPackers.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/CMakeBackwardCompatibilityC.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/FindThreads.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/FindTclStub.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/FindZLIB.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/FindTIFF.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/FindUnixCommands.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/UseQt4.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/FindGLU.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/CMakeTestASMCompiler.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/FindLibXml2.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/FindGTK.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/CMakeFortranInformation.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/UseVTK40.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/FindSDL_sound.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/Findosg.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/CheckSymbolExists.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/FindosgGA.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/FindKDE4.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/FindosgProducer.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/CMakeTestCXXCompiler.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/FindMPEG.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/CMakePrintSystemInformation.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/AddFileDependencies.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/CheckCXXCompilerFlag.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/FindWish.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/FindosgShadow.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/FindKDE3.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/FindImageMagick.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/FindCVS.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/FindCups.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/FindPackageMessage.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/FindosgViewer.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/CMakeDetermineSystem.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/CMakeTestCCompiler.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/CMakeDetermineCCompiler.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/CheckIncludeFile.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/FindBLAS.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/CheckSizeOf.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/CMakeForceCompiler.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/CMakeFindBinUtils.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/FindSDL.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/CMakeASM-ATTInformation.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/TestCXXAcceptsFlag.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/FindosgText.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/FindSDL_image.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/FindJPEG.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/CMakeDetermineJavaCompiler.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/FLTKCompatibility.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/FindosgUtil.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/TestForANSIForScope.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/FindWget.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/CMakeSystemSpecificInformation.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/CMakeTestFortranCompiler.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/FindFLTK2.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/CMakeVS6FindMake.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/FindOpenAL.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/VTKCompatibility.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/FindPerlLibs.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/CheckLibraryExists.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/CMakeExportBuildSettings.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/CMakeFindWMake.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/UseVTKConfig40.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/FindQuickTime.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/CheckVariableExists.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/CheckStructHasMember.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/FindTclsh.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/FindLua51.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/CMakeCXXInformation.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/FindosgDB.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/FindGettext.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/CMakeVS7FindMake.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/CheckCSourceCompiles.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/FindJNI.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/FindDoxygen.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/CMakeDetermineCXXCompiler.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/CMakeNMakeFindMake.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/CheckCSourceRuns.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/CPackDeb.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/FindDart.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/FindMPEG2.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/FindPhysFS.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/FindQt.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/FindPkgConfig.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/CMakeASMInformation.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/FindLAPACK.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/CheckIncludeFiles.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/FindGLUT.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/SystemInformation.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/CMakeDetermineRCCompiler.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/KDE3Macros.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/FindMPI.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/CMakeVS8FindMake.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/CheckCXXSourceRuns.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/FindSDL_mixer.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/CheckFortranFunctionExists.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/CTestTargets.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/FindJava.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/CPackRPM.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/FindCURL.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/MacroAddFileDependencies.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/FindFreetype.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/FindVTK.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/FeatureSummary.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/CMakeBackwardCompatibilityCXX.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/UsePkgConfig.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/FindQt3.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/FindPythonLibs.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/FindwxWindows.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/FindQt4.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/CheckIncludeFileCXX.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/UseSWIG.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/FindPackageHandleStandardArgs.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/CMakeDependentOption.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/FindGnuplot.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/FindXMLRPC.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/CheckTypeSize.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/CMakeImportBuildSettings.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/TestBigEndian.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/FindTCL.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/CMakeVS9FindMake.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/GetPrerequisites.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/InstallRequiredSystemLibraries.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/CTest.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/CMake.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/FindFLTK.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/CMakeDetermineFortranCompiler.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/FindPike.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/FindSDL_net.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/FindITK.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/CMakeDetermineASMCompiler.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/CMakeDetermineASM-ATTCompiler.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/FindSubversion.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/CMakeMSYSFindMake.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/FindX11.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/CMakeVS6BackwardCompatibility.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/ITKCompatibility.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/FindOpenThreads.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/FindPNG.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/CheckFunctionExists.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/FindGCCXML.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/FindASPELL.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/FindLibXslt.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/FindSDL_ttf.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/FindosgTerrain.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/CMakeTestRCCompiler.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/CMakeTestASM-ATTCompiler.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/CheckCXXSourceCompiles.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/FindBZip2.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/FindEXPAT.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/UseVTKBuildSettings40.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/CMakeGenericSystem.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/FindosgSim.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/Use_wxWindows.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/FindJasper.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/FindosgManipulator.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/ecos_clean.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/FindProducer.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/CMakeDetermineCompilerABI.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/TestForSTDNamespace.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/CMakeFindFrameworks.cmake"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/FindosgIntrospection.cmake"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" MATCHES "^(Unspecified)$")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" MATCHES "^(Unspecified)$")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cmake-2.6/Modules" TYPE FILE FILES "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/CMakeCXXCompilerABI.cpp")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" MATCHES "^(Unspecified)$")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" MATCHES "^(Unspecified)$")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cmake-2.6/Modules" TYPE FILE FILES
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/TestForSTDNamespace.cxx"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/DummyCXXFile.cxx"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/CMakeTestForFreeVC.cxx"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/TestForSSTREAM.cxx"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/TestForAnsiForScope.cxx"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/TestForANSIStreamHeaders.cxx"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" MATCHES "^(Unspecified)$")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" MATCHES "^(Unspecified)$")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cmake-2.6/Modules" TYPE FILE FILES
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/CMakeConfigurableFile.in"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/SystemInformation.in"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/CheckIncludeFile.cxx.in"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/CPack.STGZ_Header.sh.in"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/CPack.OSXScriptLauncher.in"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/CMakeCCompiler.cmake.in"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/CMakeSystem.cmake.in"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/TestEndianess.c.in"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/CMakeCXXCompiler.cmake.in"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/CheckIncludeFile.c.in"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/CPack.Description.plist.in"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/CheckLibraryExists.lists.in"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/CMakeFortranCompilerId.F90.in"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/CPack.VolumeIcon.icns.in"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/CMakeASMCompiler.cmake.in"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/CMakeBuildSettings.cmake.in"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/CMakeRCCompiler.cmake.in"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/CPack.background.png.in"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/CMakeJavaCompiler.cmake.in"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/CPack.Info.plist.in"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/CMakeCCompilerId.c.in"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/CMakeFortranCompiler.cmake.in"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/DartConfiguration.tcl.in"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/MacOSXBundleInfo.plist.in"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/kde3init_dummy.cpp.in"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/NSIS.InstallOptions.ini.in"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/CPack.DS_Store.in"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/CPack.OSXX11.Info.plist.in"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/CMakeCXXCompilerId.cpp.in"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/CMakePlatformId.h.in"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/CheckTypeSizeC.c.in"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/CPack.RuntimeScript.in"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/CPack.distribution.dist.in"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/NSIS.template.in"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" MATCHES "^(Unspecified)$")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" MATCHES "^(Unspecified)$")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cmake-2.6/Modules" TYPE FILE FILES
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/CheckFunctionExists.c"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/CMakeTestGNU.c"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/CheckVariableExists.c"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/CheckForPthreads.c"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/CMakeCCompilerABI.c"
    "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/CMakeTestNMakeCLVersion.c"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" MATCHES "^(Unspecified)$")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" MATCHES "^(Unspecified)$")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cmake-2.6/Modules" TYPE FILE FILES "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/CMakeCompilerABI.h")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" MATCHES "^(Unspecified)$")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" MATCHES "^(Unspecified)$")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cmake-2.6/Modules" TYPE FILE FILES
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" MATCHES "^(Unspecified)$")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" MATCHES "^(Unspecified)$")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/cmake-2.6/Modules" TYPE FILE FILES "/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/src/Modules/readme.txt")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" MATCHES "^(Unspecified)$")

IF(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  INCLUDE("/data/marg/abhishek/CoMeT/benchmarks/parsec/parsec-2.1/pkgs/tools/cmake/obj/amd64-linux.gcc-sniper/Modules/Platform/cmake_install.cmake")

ENDIF(NOT CMAKE_INSTALL_LOCAL_ONLY)

