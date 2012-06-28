@echo off
setlocal

set _P=%~dp0
pushd %_P%

rmdir /s/q build
candle src\GitProduct.wxs src\GitComponents.wxs -o build\obj\
light build\obj\GitProduct.wixobj build\obj\GitComponents.wixobj -o build\msi\git.msi -b src\portable -sval

candle src\GitBundle.wxs -o build\obj\ -ext WixBalExtension
light build\obj\GitBundle.wixobj -o build\gitsetup.exe -b build\msi -b portable -b src -ext WixBalExtension

popd
endlocal