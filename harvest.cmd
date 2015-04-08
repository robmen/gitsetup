@echo off
setlocal

set _P=%~dp0
pushd %_P%

tools\wix\heat dir src\portable -ag -srd -sreg -scom -cg GitComponents -dr INSTALLFOLDER -o src\GitComponents.wxs

popd
endlocal