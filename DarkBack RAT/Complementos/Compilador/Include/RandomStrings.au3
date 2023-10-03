Func RandomString($Inicial,$Maximo,$Numeros) ; 65 - 90 Alfabeto Mayusculas
Dim $Vocal[2], $i
For $i = 1 To $Numeros
$Vocal[0] = Chr(Random($Inicial,$Maximo,1))
$Vocal[1] = $Vocal[1] & $Vocal[0]
Next
Return StringStripWS($Vocal[1],8)
EndFunc

