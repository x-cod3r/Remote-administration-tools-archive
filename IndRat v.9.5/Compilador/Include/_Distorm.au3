#include-once
#include <_Distorm_src.au3>
#include <_MemoryDll.au3>

#cs
:[diStorm64}:
The ultimate disassembler library.
Copyright (c) 2003,2004,2005,2006,2007,2008, Gil Dabah
All rights reserved.

Redistribution and use in source and binary forms, with or without modification, are permitted provided that the following conditions are met:

    * Redistributions of source code must retain the above copyright notice, this list of conditions and the following disclaimer.
    * Redistributions in binary form must reproduce the above copyright notice, this list of conditions and the following disclaimer in the
	  documentation and/or other materials provided with the distribution.
    * Neither the name of the diStorm nor the names of its contributors may be used to endorse or promote products derived from this software
	  without specific prior written permission.

THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO,
THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE COPYRIGHT OWNER OR CONTRIBUTORS
BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
POSSIBILITY OF SUCH DAMAGE.

/* distorm_decode
 * Input:
 *         offset - Origin of the given code (virtual address that is), NOT an offset in code.
 *         code - Pointer to the code buffer to be disassembled.
 *         length - Amount of bytes that should be decoded from the code buffer.
 *         dt - Decoding mode, 16 bits (Decode16Bits), 32 bits (Decode32Bits) or AMD64 (Decode64Bits).
 *         result - Array of type _DecodeInst which will be used by this function in order to return the disassembled instructions.
 *         maxInstructions - The maximum number of entries in the result array that you pass to this function, so it won't exceed its bound.
 *         usedInstructionsCount - Number of the instruction that successfully were disassembled and written to the result array.
 * Output: usedInstructionsCount will hold the number of entries used in the result array
 *         and the result array itself will be filled with the disassembled instructions.
 * Return: DECRES_SUCCESS on success (no more to disassemble), DECRES_INPUTERR on input error (null code buffer, invalid decoding mode, etc...),
 *         DECRES_MEMORYERR when there are not enough entries to use in the result array, BUT YOU STILL have to check for usedInstructionsCount!
 * Side-Effects: Even if the return code is DECRES_MEMORYERR, there might STILL be data in the
 *               array you passed, this function will try to use as much entries as possible!
 * Notes:  1)The minimal size of maxInstructions is 15.
 *         2)You will have to synchronize the offset,code and length by yourself if you pass code fragments and not a complete code block!
 */
	_DecodeResult distorm_decode64(_OffsetType codeOffset, const unsigned char* code, int codeLen, _DecodeType dt, _DecodedInst result[],
									unsigned int maxInstructions, unsigned int* usedInstructionsCount);
#ce

Global $DISTORM_DEBUG = False
Global $hDistorm64 = -1
Global Enum $Decode16Bits = 0, $Decode32Bits, $Decode64Bits ; DecodeType
Global $OffsetType = "uint64"
Global $tagWString = "uint Length;char p[60]" ; size = 64 bytes
; DecodedInst structure, 16 byte alignment, size = 208 bytes *IMPORTANT*
; each 64 byte element in DecodeInst is a WString structure
Global $sizeofDecodedInst = 208 ; because of 16 byte alignment
Global $tagDecodedInst = "byte mnemonic[64];byte operands[64];byte instructionHex[64];uint size;" & $OffsetType & " offset" ; actual size = 204 bytes
Global Enum $DECRES_NONE = 0, $DECRES_SUCCESS, $DECRES_MEMORYERR, $DECRES_INPUTERR ; DecodeResult

Func _Distorm64_Init()
	Local $return = 1
	If $hDistorm64 = -1 Then
		$hDistorm64 = MemoryDllOpen($__distorm64Dll)
		If (@error Or (Not $hDistorm64)) Then
			$return = 0
			$hDistorm64 = -1
		EndIf
	EndIf
	Return SetError(Number($return = 0), 0, $return)
EndFunc

Func _Distorm64_Close()
	If $hDistorm64 <> -1 Then
		MemoryDllClose($hDistorm64)
		MemoryDllExit()
		$hDistorm64 = -1
	EndIf
EndFunc

Func distorm_decode($offset, $codeptr, $length, $decodetype, $resultarrayptr, $maxinstructions)
	If $hDistorm64 = -1 Then _Distorm64_Init()
	Local $retarray[2] = [0, 0]
	Local $ret = MemoryDllCall($hDistorm64, "int:cdecl", "distorm_decode64", $OffsetType, $offset, "ptr", $codeptr, "int", $length, "int", $decodetype, _
											"ptr", $resultarrayptr, "uint", $maxinstructions, "uint*", 0)
	If Not @error Then
		$retarray[0] = $ret[0] ; return value
		$retarray[1] = $ret[7] ; number of decoded instructions
	Else
		$retarray = 0
	EndIf

	Return SetError(Number(Not IsArray($retarray)), 0, $retarray)
EndFunc

Func _GetBridgeSize($func)
	Local $DecodeArray = DllStructCreate("byte[" & $sizeofDecodedInst * 50 & "]")
	Local $maxsize = 10
	Local $instrsize = 0
	Local $ret = distorm_decode(0, $func, 50, $Decode32Bits, DllStructGetPtr($DecodeArray), 50)
	If ((Not @error) And ($ret[0] = $DECRES_SUCCESS)) Then
		For $i = 0 To $ret[1] - 1
			If $instrsize >= $maxsize Then ExitLoop

			Local $instr = DllStructCreate($tagDecodedInst, DllStructGetPtr($DecodeArray) + ($i * $sizeofDecodedInst))
			$instrsize += DllStructGetData($instr, "size")

			If $DISTORM_DEBUG Then
				Local $mnemonic = DllStructCreate($tagWString, DllStructGetPtr($instr, "mnemonic"))
				Local $operands = DllStructCreate($tagWString, DllStructGetPtr($instr, "operands"))
				Local $instructions = DllStructCreate($tagWString, DllStructGetPtr($instr, "instructionHex"))

				ConsoleWrite("-----------------" & @CRLF)
				ConsoleWrite("mnemonic: " & DllStructGetData($mnemonic, "p") & @CRLF)
				ConsoleWrite("operands: " & DllStructGetData($operands, "p") & @CRLF)
				ConsoleWrite("instructions: " & DllStructGetData($instructions, "p") & @CRLF)
				ConsoleWrite("size: " & DllStructGetData($instr, "size") & @CRLF)
				ConsoleWrite("offset: " & DllStructGetData($instr, "offset") & @CRLF)

				$mnemonic = 0
				$operands = 0
				$instructions = 0
			EndIf

			$instr = 0 ; reset struct
		Next
	EndIf
	Return SetError(Number($instrsize = 0), 0, $instrsize)
EndFunc

Func _CreateBridge($func, $bridgeaddress)
	Local $return = 0
	Local $bridgesize = _GetBridgeSize($func)
	If $bridgesize > 0 Then
		Local $ret = DllCall("kernel32.dll", "int", "WriteProcessMemory", "ptr", -1, "ptr", $bridgeaddress, "ptr", $func, "uint", $bridgesize, "uint*", 0)
		If ((Not @error) And ($ret[5] = $bridgesize)) Then
			Local $bridge = DllStructCreate("byte[" & $bridgesize & "];byte[2];byte[4];byte[4]", $bridgeaddress) ; bridge + 0xFF25 + ptr + ptr
			DllStructSetData($bridge, 2, 0x25FF) ; absolute jump instruction
			DllStructSetData($bridge, 3, DllStructGetPtr($bridge, 4)) ; ptr to absolute jump address (address of element 4)
			DllStructSetData($bridge, 4, $func + $bridgesize) ; ptr to original function address plus the bridge size
			$return = 1
		EndIf
	EndIf
	Return SetError(Number($return = 0), 0, $return)
EndFunc

Func _CreateRemoteBridge($remotefunc, $bridgeaddress, $hProcess)
	Local $ret, $return = 0
	; read remote data
	Local $bridgedata = DllStructCreate("byte[50]") ; read 50 bytes
	$ret = DllCall("kernel32.dll", "int", "ReadProcessMemory", "ptr", $hProcess, "ptr", $remotefunc, "ptr", DllStructGetPtr($bridgedata), "uint", 50, "uint*", 0)
	If ((Not @error) And ($ret[5] = 50)) Then
		Local $bridgesize = _GetBridgeSize(DllStructGetPtr($bridgedata))
		If $bridgesize > 0 Then
			; create bridge locally first
			Local $bridge = DllStructCreate("byte[" & $bridgesize & "];byte[2];byte[4];byte[4]") ; bridge + 0xFF25 + ptr + ptr
			$ret = DllCall("kernel32.dll", "int", "ReadProcessMemory", "ptr", $hProcess, "ptr", $remotefunc, "ptr", DllStructGetPtr($bridge), "uint", $bridgesize, "uint*", 0)
			If ((Not @error) And ($ret[5] = $bridgesize)) Then
				DllStructSetData($bridge, 2, 0x25FF) ; absolute jump instruction
				DllStructSetData($bridge, 3, $bridgeaddress + $bridgesize + 6) ; ptr to absolute jump address
				DllStructSetData($bridge, 4, $remotefunc + $bridgesize) ; ptr to remote function address plus the bridge size
				; write remote bridge
				$ret = DllCall("kernel32.dll", "int", "WriteProcessMemory", "ptr", $hProcess, "ptr", $bridgeaddress, "ptr", DllStructGetPtr($bridge), "uint", DllStructGetSize($bridge), "uint*", 0)
				If ((Not @error) And ($ret[5] = DllStructGetSize($bridge))) Then $return = 1
			EndIf
		EndIf
	EndIf
	Return SetError(Number($return = 0), 0, $return)
EndFunc