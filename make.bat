@echo off
setlocal

set _P=%~dp0
pushd %_P%

if /i "%1"=="bundle" goto Bundle

rmdir /s/q build
tools\wix\candle src\GitProduct.wxs src\GitComponents.wxs src\GitCredStoreComponents.wxs src\GitFlowComponents.wxs src\GitPoshComponents.wxs -ext WixDependencyExtension -ext WixUtilExtension -o build\obj\
tools\wix\light build\obj\GitProduct.wixobj build\obj\GitComponents.wixobj build\obj\GitCredStoreComponents.wixobj build\obj\GitFlowComponents.wixobj build\obj\GitPoshComponents.wixobj -ext WixDependencyExtension -ext WixUtilExtension -o build\msi\git.msi -b src\portable -b lib -sval

:Bundle
tools\wix\candle src\GitBundle.wxs -o build\obj\ -ext WixBalExtension -ext WixDependencyExtension
tools\wix\light build\obj\GitBundle.wixobj -o build\gitsetup.exe -b build\msi -b portable -b src -ext WixBalExtension -ext WixDependencyExtension

popd
endlocal
