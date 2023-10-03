Public Class Form30
    Public xxx As Integer

    Sub Aint()

        If TextBox5.Text = "NOD32" Then
            PictureBox3.ImageLocation = "IOS\Anti\NOD32.png"
        ElseIf TextBox5.Text = "AVG" Then
            PictureBox3.ImageLocation = "IOS\Anti\AVG.png"
        ElseIf TextBox5.Text = "Avira" Then
            PictureBox3.ImageLocation = "IOS\Anti\Avira.png"
        ElseIf TextBox5.Text = "Total Security 360" Then
            PictureBox3.ImageLocation = "IOS\Anti\Total Security 360.png"
        ElseIf TextBox5.Text = "AhnLab-V3" Then
            PictureBox3.ImageLocation = "IOS\Anti\AhnLab-V3.png"
        ElseIf TextBox5.Text = "BitDefender" Then
            PictureBox3.ImageLocation = "IOS\Anti\BitDefender.png"
        ElseIf TextBox5.Text = "ByteHero" Then
            PictureBox3.ImageLocation = "IOS\Anti\ByteHero.png"
        ElseIf TextBox5.Text = "ClamAV" Then
            PictureBox3.ImageLocation = "IOS\Anti\ClamAV.png"
        ElseIf TextBox5.Text = "F-Prot" Then
            PictureBox3.ImageLocation = "IOS\Anti\F-Prot.png"
        ElseIf TextBox5.Text = "F-Secure" Then
            PictureBox3.ImageLocation = "IOS\Anti\F-Secure.png"
        ElseIf TextBox5.Text = "GData" Then
            PictureBox3.ImageLocation = "IOS\Anti\GData.png"
        ElseIf TextBox5.Text = "Jiangmin" Then
            PictureBox3.ImageLocation = "IOS\Anti\Jiangmin.png"
        ElseIf TextBox5.Text = "Kaspersky" Then
            PictureBox3.ImageLocation = "IOS\Anti\Kaspersky.png"
        ElseIf TextBox5.Text = "McAfee" Then
            PictureBox3.ImageLocation = "IOS\Anti\McAfee.png"
        ElseIf TextBox5.Text = "microsoft security essentials" Then
            PictureBox3.ImageLocation = "IOS\Anti\microsoft security essentials.png"
        ElseIf TextBox5.Text = "Norman" Then
            PictureBox3.ImageLocation = "IOS\Anti\Norman.png"
        ElseIf TextBox5.Text = "nProtect" Then
            PictureBox3.ImageLocation = "IOS\Anti\nProtect.png"
        ElseIf TextBox5.Text = "Panda" Then
            PictureBox3.ImageLocation = "IOS\Anti\Panda.png"
        ElseIf TextBox5.Text = "Prevx" Then
            PictureBox3.ImageLocation = "IOS\Anti\Prevx.png"
        ElseIf TextBox5.Text = "Sophos" Then
            PictureBox3.ImageLocation = "IOS\Anti\Sophos.png"
        ElseIf TextBox5.Text = "SUPERAntiSpyware" Then
            PictureBox3.ImageLocation = "IOS\Anti\SUPERAntiSpyware.png"
        ElseIf TextBox5.Text = "Symantec" Then
            PictureBox3.ImageLocation = "IOS\Anti\Symantec.png"
        ElseIf TextBox5.Text = "TheHacker" Then
            PictureBox3.ImageLocation = "IOS\Anti\TheHacker.png"
        ElseIf TextBox5.Text = "TrendMicro" Then
            PictureBox3.ImageLocation = "IOS\Anti\TrendMicro.png"
        ElseIf TextBox5.Text = "VBA32" Then
            PictureBox3.ImageLocation = "IOS\Anti\VBA32.png"
        ElseIf TextBox5.Text = "VIPRE" Then
            PictureBox3.ImageLocation = "IOS\Anti\VIPRE.png"
        ElseIf TextBox5.Text = "ViRobot" Then
            PictureBox3.ImageLocation = "IOS\Anti\ViRobot.png"
        ElseIf TextBox5.Text = "VBA32" Then
            PictureBox3.ImageLocation = "IOS\Anti\VBA32.png"
        ElseIf TextBox5.Text = "VirusBuster" Then
            PictureBox3.ImageLocation = "IOS\Anti\VirusBuster.png"
        ElseIf TextBox5.Text = "Avast" Then
            PictureBox3.ImageLocation = "IOS\Anti\Avast.png"
        Else
            'antivirus = "Not Found"
        End If
    End Sub


    Private Sub Form30_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        On Error Resume Next
        Aint()
    End Sub
End Class