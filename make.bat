@echo off
setlocal

set _P=%~dp0
pushd %_P%

if /i "%1"=="bundle" goto Bundle

rmdir /s/q build
candle src\GitProduct.wxs src\GitComponents.wxs -ext WixDependencyExtension -o build\obj\
light build\obj\GitProduct.wixobj build\obj\GitComponents.wixobj -ext WixDependencyExtension -o build\msi\git.msi -b src\portable -sval

:Bundle
candle src\GitBundle.wxs -o build\obj\ -ext WixBalExtension -ext WixDependencyExtension
light build\obj\GitBundle.wixobj -o build\gitsetup.exe -b build\msi -b portable -b src -ext WixBalExtension -ext WixDependencyExtension

popd
endlocal
