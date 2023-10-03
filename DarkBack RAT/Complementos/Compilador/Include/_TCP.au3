; _TCP
; Sistema TCP En español.
; Codeado Por Mu RedFire
; http://munl.sytes.net:2000/
; http://redfiremu.sytes.net/
; muredfire.foro.bz

; #INCLUDES# ;===============================================================================
#include <Array.au3>
; ===========================================================================================

; #DECLARACIONES# ;==========================================================================
Dim $IPLocal_1, $PuertoLocal_1, $Conexiones_Max = 1000, $Escucha_Local, $TCP_Comenzar, $Sock_Escucha_1, $Datos_Max_1, $TCP_Recibir, $Bin_Texto_1, $IPRemote_1, $PuertoRemoto_1, $TCP_Conectar, $Socket_Conexion_1, $Datos_Enviar_1, $TCP_Enviar, $Socket_Peticion_1, $Conexiones_Array[$Conexiones_Max], $TCP_Aceptar, $Bucle_While = 0,$Array_Valor_1 = 0,$Bucle_Do_1 = 0
; ===========================================================================================

; #FUNCION# ;================================================================================
;
; Name...........: TCPEscuchar
; Description ...: Inicia la escucha de un servidor o cliente.
; Syntax.........: TCPEscuchar($IPLocal_1,$PuertoLocal_1[,$Conexiones_Max])
; Parameters ....: 	$IPLocal - El numero de IP del servidor.
;					$PuertoLocal_1	- El numero de puerto al que se desea iniciar la escucha.
; Return values .: El socket.
; Author ........: MuRedFire
; Modified.......:
; Remarks .......:
; Related .......:
; Link ..........;
; Example .......;
;
; ;==========================================================================================

Func TCPEscuchar($IPLocal_1, $PuertoLocal_1, $Conexiones_Max = 1000)

	$Escucha_Local = TCPListen($IPLocal_1, $PuertoLocal_1, $Conexiones_Max)

	Select

		Case $Escucha_Local >= 2

			Return $Escucha_Local

		Case $Escucha_Local = -1

			Return -1

		Case $Escucha_Local = 0

			Return -2

	EndSelect

EndFunc   ;==>TCPEscuchar

; #FUNCION# ;================================================================================
;
; Name...........: TCPRecibir
; Description ...: Auto-Recibe los datos de un socket.
; Syntax.........: TCPRecibir($Sock_Escucha_1[,$Datos_Max_1])
; Parameters ....: 	$Sock_Escucha_1 - El socket devuelto por TCPEscucha o TCPConectar.
;					$Datos_Max_1	- El valor maximo de datos que se podran recibir.
; Return values .: Exito: El dato devuelto en cadena.
;				   Error: 0 Si la longitud de la cadena es nula.
;				   Error: -1 Si la cadena es nula.
; Author ........: MuRedFire
; Modified.......:
; Remarks .......:
; Related .......:
; Link ..........;
; Example .......;
;
; ;==========================================================================================

Func TCPRecibir($Sock_Escucha_1, $Datos_Max_1 = 32000)

	Do

		$TCP_Recibir = TCPRecv($Sock_Escucha_1, $Datos_Max_1)

		$Bin_Texto_1 = BinaryToString($TCP_Recibir)

		Select

			Case $Bin_Texto_1 = ""

				Return -1

			Case StringLen($Bin_Texto_1) >= 1

				Return $Bin_Texto_1

		EndSelect

	Until $Bucle_Do_1 > 1

EndFunc   ;==>TCPRecibir

; #FUNCION# ;================================================================================
;
; Name...........: TCPConectar
; Description ...: Recibe los datos de un socket.
; Syntax.........: TCPConectar($IPRemote_1, $PuertoRemoto_1)
; Parameters ....: 	$IPRemote_1 - La direccion IP o Host Remoto al que se desea conectar.
;					$PuertoRemoto_1	- El valor de puerto remoto al que se desea conectar.
; Return values .: Exito: El Socket de la conexion.
;				   Error: Devuelve -1 o -2 en caso de IP o Puerto Incorrecto.
; Author ........: MuRedFire
; Modified.......:
; Remarks .......:
; Related .......:
; Link ..........;
; Example .......;
;
; ;==========================================================================================

Func TCPConectar($IPRemote_1, $PuertoRemoto_1)

	$TCP_Conectar = TCPConnect($IPRemote_1, $PuertoRemoto_1)

	Select

		Case $TCP_Conectar >= 2

			Return $TCP_Conectar

		Case $TCP_Conectar = -1

			Return -1

		Case $TCP_Conectar = 0

			Return -2

	EndSelect

EndFunc   ;==>TCPConectar

; #FUNCION# ;================================================================================
;
; Name...........: TCPEnviar
; Description ...: Recibe los datos de un socket.
; Syntax.........: TCPEnviar($Socket_Conexion_1, $Datos_Enviar_1)
; Parameters ....: 	$Socket_Conexion_1 - El socket devuelto por TCPEscucha O TCPConectar.
;					$Datos_Enviar_1	- El dato que se desea enviar al socket conectado.
; Return values .: Exito: La cantidad de bytes enviados.
;				   Error: 0 Si el valor de bytes enviados es nulo.
; Author ........: MuRedFire
; Modified.......:
; Remarks .......:
; Related .......:
; Link ..........;
; Example .......;
;
; ;==========================================================================================

Func TCPEnviar($Socket_Conexion_1, $Datos_Enviar_1)

	$TCP_Enviar = TCPSend($Socket_Conexion_1, $Datos_Enviar_1)

	Select

		Case $TCP_Enviar = 0

			Return 0

		Case $TCP_Enviar >= 1

			Return $TCP_Enviar

	EndSelect

EndFunc   ;==>TCPEnviar

; #FUNCION# ;================================================================================
;
; Name...........: TCPAceptar
; Description ...: Acepta las conexiones entrantes y las inserta en un array.
; Syntax.........: TCPAceptar($Socket_Peticion_1)
; Parameters ....: 	$Socket_Peticion_1 - El socket devuelto por TCPEscucha O TCPConectar.
; Return values .: Exito: Array con las conexiones entrantes.
;				   Error: -1 Error al aceptar la conexion entrante.
; Author ........: MuRedFire
; Modified.......:
; Remarks .......:
; Related .......:
; Link ..........;
; Example .......;
;
; ;==========================================================================================

Func TCPAceptar($Socket_Peticion_1)

	While 1

		$TCP_Aceptar = TCPAccept($Socket_Peticion_1)

		If $TCP_Aceptar >= 0 Then

			_ArrayInsert($Conexiones_Array, $Array_Valor_1, $TCP_Aceptar)

			$Array_Valor_1 = $Array_Valor_1 + 1

			Return $Conexiones_Array

		EndIf

		If $TCP_Aceptar = -1 Then

			ExitLoop

		EndIf

		Sleep(600)

	WEnd

EndFunc   ;==>TCPAceptar
