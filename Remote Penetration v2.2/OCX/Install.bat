@echo
Copy CommandBars.ocx "C:\Windows\system32\CommandBars.ocx"
Copy Controls.ocx "C:\Windows\system32\Controls.ocx"
Copy Skin.ocx "C:\Windows\system32\Skin.ocx"
Copy MSCOMCTL.ocx "C:\Windows\system32\MSCOMCTL.OCX"

regsvr32 "C:\Windows\system32\CommandBars.ocx"
regsvr32 "C:\Windows\system32\Controls.ocx"
regsvr32 "C:\Windows\system32\Skin.ocx"
regsvr32 "C:\Windows\system32\MSCOMCTL.OCX"