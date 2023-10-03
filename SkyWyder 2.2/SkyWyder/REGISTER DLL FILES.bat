@echo off >nul

set/p "path=Enter path to dependencies folder: "

regsvr32 "%path%\Codejock.SkinFramework.v13.4.0.Demo.ocx"
regsvr32 "%path%\COMDLG32.OCX"
regsvr32 "%path%\MSCOMCTL.OCX"
regsvr32 "%path%\Mscomctl32.ocx"
regsvr32 "%path%\msvbvm60.dll"
regsvr32 "%path%\PrjXTab.ocx"
regsvr32 "%path%\Socket.ocx"

@exit /b