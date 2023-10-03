#Include <WinINet.au3>

Global $sText

Global $sDHCP_Detected = _WinINet_DetectAutoProxyUrl($PROXY_AUTO_DETECT_TYPE_DHCP)
If Not @error Then $sText &= "DHCP Detected: " & $sDHCP_Detected & @CRLF

Global $sDNS_Detected = _WinINet_DetectAutoProxyUrl($PROXY_AUTO_DETECT_TYPE_DNS_A)
If Not @error Then $sText &= "DNS Detected: " & $sDNS_Detected & @CRLF

If Not $sText Then $sText = "No AutoProxy discovered!"

ConsoleWrite($sText & @CRLF)
