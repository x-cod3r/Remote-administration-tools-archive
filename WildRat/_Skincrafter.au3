;===============================================================================
; Description:      Skins a GUI by calling the skincrafter dll and a skincrafter skin (www.skincrafter.com)
; Parameter(s):     $SkincrafterDll - The location of your skincrafter Dll
;               $SkincrafterSkin - The location of your skincrafter skin
;               $Handle - Your GUI handle to skin
; Requirement(s):   Requires the skincrafter dll and a skincrafter skin
; Return Value(s):  None
; Author(s):        =sinister=, Piccaso
; Note(s):         None
;===============================================================================

Func _SkinGUI($SkincrafterDll, $SkincrafterSkin, $Handle)
   $Dll = DllOpen($SkincrafterDll)
   DllCall($Dll, "int:cdecl", "InitLicenKeys", "wstr", "SKINCRAFTER", "wstr", "SKINCRAFTER.COM", "wstr", "support@skincrafter.com", "wstr", "DEMOSKINCRAFTERLICENCE")
   DllCall($Dll, "int:cdecl", "InitDecoration", "int", 1)
   DllCall($Dll, "int:cdecl", "LoadSkinFromFile", "wstr", $SkincrafterSkin)
   DllCall($Dll, "int:cdecl", "DecorateAs", "int", $Handle, "int", 25)
   DllCall($Dll, "int:cdecl", "ApplySkin")
EndFunc      ;==_SkinGUI