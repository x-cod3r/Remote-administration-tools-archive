Public Class Form27


    Private Const AW_BLEND = &H80000
    Private Declare Function AnimateWindow Lib "user32" (ByVal hwnd As Int32, ByVal dwTime As Int32, ByVal dwFlags As Int32) As Boolean
    Dim winHide As Integer = &H10000
    Dim winBlend As Integer = &H80000
    Private Sub backconnection_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        'PictureBox2.Controls.Add(Label1)
        ''PictureBox1.Controls.Add(Label2)
        ''PictureBox1.Controls.Add(Label3)
        ''PictureBox1.Controls.Add(Label4)
        'PictureBox2.Controls.Add(Label14)
        'PictureBox1.Controls.Add(Label5)
        '' ''\

        'PictureBox1.Controls.Add(Label12)
        'PictureBox1.Controls.Add(Label14)
        'PictureBox1.Controls.Add(Label15)
        'PictureBox1.Controls.Add(Label16)
        'PictureBox1.Controls.Add(Label17)
        On Error Resume Next
        Dim RF$ = "IOS\xxx.wav"
        My.Computer.Audio.Play(RF, AudioPlayMode.Background)

        'PictureBox1.ImageLocation = "IOS\H-092.jpg"
        'PictureBox1.ImageLocation = "IOS\H-092.ico"
        'PictureBox1.ImageLocation = "IOS\H-092.png"
        Me.Location = New Point(Screen.PrimaryScreen.WorkingArea.Size.Width - Me.Width, Screen.PrimaryScreen.WorkingArea.Size.Height)
        TextBox1.Text = "1"
        Me.TopMost = True
        Timer1.Enabled = Enabled
        'My.Computer.Audio.Play(My.Resources.Soun, AudioPlayMode.Background)

        gg.Enabled = True
        'Me.Opacity = 0.1
        Me.TransparencyKey = BackColor
        booca()
    End Sub

    Private Sub Timer1_Tick(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Timer1.Tick
        'Dim xx As New backconnection
        'xx.Show()
        TextBox1.Text += 1

        If TextBox1.Text = 200 Then

            Try
                AnimateWindow(Me.Handle.ToInt32, CInt(500), winHide Or winBlend)
            Catch ex As Exception

            End Try

            Me.Close()






        End If
    End Sub
    Private Sub backconnection_Shown(sender As Object, e As EventArgs) Handles Me.Shown
        For i = 1 To Me.Height
            Me.Top -= 1
            Panel2.Hide()
        Next
    End Sub

    Private Sub gg_Tick(sender As Object, e As EventArgs) Handles gg.Tick

        'Me.Opacity = Me.Opacity + 0.1




        'If Me.Opacity = 1 Then
        '    gg.Enabled = False
        'End If
    End Sub

    Private Sub Panel2_Paint(sender As Object, e As PaintEventArgs) Handles Panel2.Paint

    End Sub
    Sub booca()
        Dim KeyIndex As Integer
















        If Label4.Text = ("Afghanistan") Then
            KeyIndex = 1
        End If





        If Label4.Text = ("Albania") Then
            KeyIndex = 2
        End If

        If Label4.Text = ("Algeria") Then
            KeyIndex = 3

        End If
        If Label4.Text = ("American Samoa") Then
            KeyIndex = 4

        End If
        If Label4.Text = ("Andorra") Then
            KeyIndex = 5

        End If
        If Label4.Text = ("Angola") Then
            KeyIndex = 6

        End If
        If Label4.Text = ("Anguilla") Then
            KeyIndex = 7

        End If
        If Label4.Text = ("Antigua and Barbuda") Then
            KeyIndex = 8

        End If
        If Label4.Text = ("Argentina") Then
            KeyIndex = 9

        End If
        If Label4.Text = ("Armenia") Then
            KeyIndex = 10

        End If
        If Label4.Text = ("Aruba") Then
            KeyIndex = 11

        End If
        If Label4.Text = ("Australia") Then
            KeyIndex = 12

        End If
        If Label4.Text = ("Austria") Then
            KeyIndex = 13

        End If
        If Label4.Text = ("Azerbaijan") Then
            KeyIndex = 14

        End If
        If Label4.Text = ("Bahamas") Then
            KeyIndex = 15

        End If
        If Label4.Text = ("Bahrain") Then
            KeyIndex = 16

        End If
        If Label4.Text = ("Bangladesh") Then
            KeyIndex = 17

        End If
        If Label4.Text = ("Barbados") Then
            KeyIndex = 18

        End If
        If Label4.Text = ("Belarus") Then
            KeyIndex = 19

        End If
        If Label4.Text = ("Belgium") Then
            KeyIndex = 20

        End If
        If Label4.Text = ("Belize") Then
            KeyIndex = 21

        End If
        If Label4.Text = ("Benin") Then
            KeyIndex = 22

        End If
        If Label4.Text = ("Bermuda") Then
            KeyIndex = 23

        End If
        If Label4.Text = ("Bhutan") Then
            KeyIndex = 24

        End If
        If Label4.Text = ("Bolivia") Then
            KeyIndex = 25

        End If
        If Label4.Text = ("Bosnia & Herzegovina") Then
            KeyIndex = 26

        End If
        If Label4.Text = ("Botswana") Then
            KeyIndex = 27

        End If
        If Label4.Text = ("Bouvet Island") Then
            KeyIndex = 28

        End If
        If Label4.Text = ("Brazil") Then
            KeyIndex = 29

        End If
        If Label4.Text = ("British Indian Ocean Territory") Then
            KeyIndex = 30

        End If
        If Label4.Text = ("British Virgin Islands") Then
            KeyIndex = 31

        End If
        If Label4.Text = ("Brunei") Then
            KeyIndex = 32

        End If
        If Label4.Text = ("Bulgaria") Then
            KeyIndex = 33

        End If
        If Label4.Text = ("Burkina Faso") Then
            KeyIndex = 34

        End If
        If Label4.Text = ("Burundi") Then
            KeyIndex = 35

        End If
        If Label4.Text = ("Cambodia") Then
            KeyIndex = 36

        End If
        If Label4.Text = ("Cameroon") Then
            KeyIndex = 37

        End If
        If Label4.Text = ("Canada") Then
            KeyIndex = 38

        End If
        If Label4.Text = ("Cape Verde") Then
            KeyIndex = 39

        End If
        If Label4.Text = ("catalonia") Then
            KeyIndex = 40

        End If
        If Label4.Text = ("Cayman Islands") Then
            KeyIndex = 41

        End If
        If Label4.Text = ("Central African Republic") Then
            KeyIndex = 42

        End If
        If Label4.Text = ("Chad") Then
            KeyIndex = 43

        End If
        If Label4.Text = ("Chile") Then
            KeyIndex = 44

        End If
        If Label4.Text = ("China") Then
            KeyIndex = 45

        End If
        If Label4.Text = ("Christmas Islands") Then
            KeyIndex = 46

        End If
        If Label4.Text = ("Cocos (Keeling) Islands") Then
            KeyIndex = 47

        End If
        If Label4.Text = ("Colombia") Then
            KeyIndex = 48

        End If
        If Label4.Text = ("Comoras") Then
            KeyIndex = 49

        End If
        If Label4.Text = ("Congo, the Democratic Republic of the") Then
            KeyIndex = 50

        End If
        If Label4.Text = ("Costa Rica") Then
            KeyIndex = 51

        End If
        If Label4.Text = ("Croatia") Then
            KeyIndex = 52

        End If
        If Label4.Text = ("Cuba") Then
            KeyIndex = 53

        End If
        If Label4.Text = ("Cyprus") Then
            KeyIndex = 54

        End If
        If Label4.Text = ("Czech Republic") Then
            KeyIndex = 55

        End If
        If Label4.Text = ("Denmark") Then
            KeyIndex = 56

        End If
        If Label4.Text = ("Djibouti") Then
            KeyIndex = 57

        End If
        If Label4.Text = ("Dominica") Then
            KeyIndex = 58

        End If
        If Label4.Text = ("Dominican Republic") Then
            KeyIndex = 59

        End If
        If Label4.Text = ("Ecuador") Then
            KeyIndex = 60

        End If
        If Label4.Text = ("Egypt") Then
            KeyIndex = 61

        End If
        If Label4.Text = ("El Salvador") Then
            KeyIndex = 62

        End If
        If Label4.Text = ("England") Then
            KeyIndex = 63

        End If
        If Label4.Text = ("Equatorial Guinea") Then
            KeyIndex = 64

        End If
        If Label4.Text = ("Eritrea") Then
            KeyIndex = 65

        End If
        If Label4.Text = ("Estonia") Then
            KeyIndex = 66

        End If
        If Label4.Text = ("Ethiopia") Then
            KeyIndex = 67

        End If
        If Label4.Text = ("europeanunion") Then
            KeyIndex = 68

        End If
        If Label4.Text = ("Falkland Islands (Malvinas)") Then
            KeyIndex = 69

        End If
        If Label4.Text = ("Faroe Islands") Then
            KeyIndex = 70

        End If
        If Label4.Text = ("Fiji") Then
            KeyIndex = 71

        End If
        If Label4.Text = ("Finland") Then
            KeyIndex = 72

        End If
        If Label4.Text = ("France") Then
            KeyIndex = 73

        End If
        If Label4.Text = ("French Guiana") Then
            KeyIndex = 74

        End If
        If Label4.Text = ("French Polynesia") Then
            KeyIndex = 75

        End If
        If Label4.Text = ("French Southern Territories") Then
            KeyIndex = 76

        End If
        If Label4.Text = ("Gabon") Then
            KeyIndex = 77

        End If
        If Label4.Text = ("Gambia") Then
            KeyIndex = 78

        End If
        If Label4.Text = ("Georgia") Then
            KeyIndex = 79

        End If
        If Label4.Text = ("Germany") Then
            KeyIndex = 80

        End If
        If Label4.Text = ("Ghana") Then
            KeyIndex = 81

        End If
        If Label4.Text = ("Gibraltar") Then
            KeyIndex = 82

        End If
        If Label4.Text = ("Greece") Then
            KeyIndex = 83

        End If
        If Label4.Text = ("Greenland") Then
            KeyIndex = 84

        End If
        If Label4.Text = ("Grenada") Then
            KeyIndex = 85

        End If
        If Label4.Text = ("Guadeloupe") Then
            KeyIndex = 86

        End If
        If Label4.Text = ("Guam") Then
            KeyIndex = 87

        End If
        If Label4.Text = ("Guatemala") Then
            KeyIndex = 88

        End If
        If Label4.Text = ("Guinea") Then
            KeyIndex = 89

        End If
        If Label4.Text = ("Guinea-Bissau") Then
            KeyIndex = 90

        End If
        If Label4.Text = ("Guyana") Then
            KeyIndex = 91

        End If
        If Label4.Text = ("Haiti") Then
            KeyIndex = 92

        End If
        If Label4.Text = ("Heard Island and McDonald Islands") Then
            KeyIndex = 93

        End If
        If Label4.Text = ("Honduras") Then
            KeyIndex = 94

        End If
        If Label4.Text = ("Hong Kong") Then
            KeyIndex = 95

        End If
        If Label4.Text = ("Hungary") Then
            KeyIndex = 96

        End If
        If Label4.Text = ("Iceland") Then
            KeyIndex = 97

        End If
        If Label4.Text = ("India") Then
            KeyIndex = 98

        End If
        If Label4.Text = ("Indonesia") Then
            KeyIndex = 99

        End If
        If Label4.Text = ("Iran, Islamic Republic of") Then
            KeyIndex = 100

        End If
        If Label4.Text = ("Iraq") Then
            KeyIndex = 101

        End If
        If Label4.Text = ("Ireland") Then
            KeyIndex = 102

        End If
        If Label4.Text = ("Israel") Then
            KeyIndex = 103

        End If
        If Label4.Text = ("Italy") Then
            KeyIndex = 104

        End If
        If Label4.Text = ("Jamaica") Then
            KeyIndex = 105

        End If
        If Label4.Text = ("Japan") Then
            KeyIndex = 106

        End If
        If Label4.Text = ("Jordan") Then
            KeyIndex = 107

        End If
        If Label4.Text = ("Kazakhstan") Then
            KeyIndex = 108

        End If
        If Label4.Text = ("Kenya") Then
            KeyIndex = 109

        End If
        If Label4.Text = ("Kiribati") Then
            KeyIndex = 110

        End If
        If Label4.Text = ("Korea, Democratic People's Republic of") Then
            KeyIndex = 111

        End If
        If Label4.Text = ("Korea, Republic of") Then
            KeyIndex = 112

        End If
        If Label4.Text = ("Kuwait") Then
            KeyIndex = 113

        End If
        If Label4.Text = ("Kyrgyzstan") Then
            KeyIndex = 114

        End If
        If Label4.Text = ("Laos") Then
            KeyIndex = 115

        End If
        If Label4.Text = ("Latvia") Then
            KeyIndex = 116

        End If
        If Label4.Text = ("Lebanon") Then
            KeyIndex = 117

        End If
        If Label4.Text = ("Lesotho") Then
            KeyIndex = 118

        End If
        If Label4.Text = ("Liberia") Then
            KeyIndex = 119

        End If
        If Label4.Text = ("Libya") Then
            KeyIndex = 120

        End If
        If Label4.Text = ("Liechtenstein") Then
            KeyIndex = 121

        End If
        If Label4.Text = ("Lithuania") Then
            KeyIndex = 122

        End If
        If Label4.Text = ("Luxembourg") Then
            KeyIndex = 123

        End If
        If Label4.Text = ("Macao") Then
            KeyIndex = 124

        End If
        If Label4.Text = ("Macedonia") Then
            KeyIndex = 125

        End If
        If Label4.Text = ("Madagascar") Then
            KeyIndex = 126

        End If
        If Label4.Text = ("Malawi") Then
            KeyIndex = 127

        End If
        If Label4.Text = ("Malaysia") Then
            KeyIndex = 128

        End If
        If Label4.Text = ("Maldives") Then
            KeyIndex = 129

        End If
        If Label4.Text = ("Mali") Then
            KeyIndex = 130

        End If
        If Label4.Text = ("Malta") Then
            KeyIndex = 131

        End If
        If Label4.Text = ("Marshall Islands") Then
            KeyIndex = 132

        End If
        If Label4.Text = ("Martinique") Then
            KeyIndex = 133

        End If
        If Label4.Text = ("Mauritania") Then
            KeyIndex = 134

        End If
        If Label4.Text = ("Mauritius") Then
            KeyIndex = 135

        End If
        If Label4.Text = ("Mayotte") Then
            KeyIndex = 136

        End If
        If Label4.Text = ("Mexico") Then
            KeyIndex = 137

        End If
        If Label4.Text = ("Micronesia, Federated States of") Then
            KeyIndex = 138

        End If
        If Label4.Text = ("Moldava") Then
            KeyIndex = 139

        End If
        If Label4.Text = ("Monaco") Then
            KeyIndex = 140

        End If
        If Label4.Text = ("Mongolia") Then
            KeyIndex = 141

        End If
        If Label4.Text = ("Montenegro") Then
            KeyIndex = 142

        End If
        If Label4.Text = ("Montserrat") Then
            KeyIndex = 143

        End If
        If Label4.Text = ("Morocco") Then
            KeyIndex = 144

        End If
        If Label4.Text = ("Mozambique") Then
            KeyIndex = 145

        End If
        If Label4.Text = ("Myanmar") Then
            KeyIndex = 146

        End If
        If Label4.Text = ("Namibia") Then
            KeyIndex = 147

        End If
        If Label4.Text = ("Nauru") Then
            KeyIndex = 148

        End If
        If Label4.Text = ("Nepal") Then
            KeyIndex = 149

        End If
        If Label4.Text = ("Netherlands Antilles") Then
            KeyIndex = 150

        End If
        If Label4.Text = ("Netherlands, The") Then
            KeyIndex = 151

        End If
        If Label4.Text = ("New Caledonia") Then
            KeyIndex = 152

        End If
        If Label4.Text = ("New Zealand") Then
            KeyIndex = 153

        End If
        If Label4.Text = ("Nicaragua") Then
            KeyIndex = 154

        End If
        If Label4.Text = ("Niger") Then
            KeyIndex = 155

        End If
        If Label4.Text = ("Nigeria") Then
            KeyIndex = 156

        End If
        If Label4.Text = ("Niue") Then
            KeyIndex = 157

        End If
        If Label4.Text = ("Norfolk Island") Then
            KeyIndex = 158

        End If
        If Label4.Text = ("Northern Mariana Islands") Then
            KeyIndex = 159

        End If
        If Label4.Text = ("Norway") Then
            KeyIndex = 160

        End If
        If Label4.Text = ("Oman") Then
            KeyIndex = 161

        End If
        If Label4.Text = ("Pakistan") Then
            KeyIndex = 162

        End If
        If Label4.Text = ("Palau") Then
            KeyIndex = 163

        End If
        If Label4.Text = ("Panama") Then
            KeyIndex = 164

        End If
        If Label4.Text = ("Papua New Guinea") Then
            KeyIndex = 165

        End If
        If Label4.Text = ("Paraguay") Then
            KeyIndex = 166

        End If
        If Label4.Text = ("Peru") Then
            KeyIndex = 167

        End If
        If Label4.Text = ("Phillipines") Then
            KeyIndex = 168

        End If
        If Label4.Text = ("Pitcairn Islands") Then
            KeyIndex = 169

        End If
        If Label4.Text = ("Poland") Then
            KeyIndex = 170

        End If
        If Label4.Text = ("Portugal") Then
            KeyIndex = 171

        End If
        If Label4.Text = ("ps") Then
            KeyIndex = 172

        End If
        If Label4.Text = ("Puerto Rico") Then
            KeyIndex = 173

        End If
        If Label4.Text = ("Qatar") Then
            KeyIndex = 174

        End If
        If Label4.Text = ("Reunion") Then
            KeyIndex = 175

        End If
        If Label4.Text = ("Romania") Then
            KeyIndex = 176

        End If
        If Label4.Text = ("rs") Then
            KeyIndex = 177

        End If
        If Label4.Text = ("Russian Federation") Then
            KeyIndex = 178

        End If
        If Label4.Text = ("Rwanda") Then
            KeyIndex = 179

        End If
        If Label4.Text = ("Saint Helena") Then
            KeyIndex = 180

        End If
        If Label4.Text = ("Saint Kitts and Nevis") Then
            KeyIndex = 181

        End If
        If Label4.Text = ("Saint Lucia") Then
            KeyIndex = 182

        End If
        If Label4.Text = ("Saint Pierre") Then
            KeyIndex = 183

        End If
        If Label4.Text = ("Saint Vincent and the Grenadines") Then
            KeyIndex = 184

        End If
        If Label4.Text = ("Samoa") Then
            KeyIndex = 185

        End If
        If Label4.Text = ("San Marino") Then
            KeyIndex = 186

        End If
        If Label4.Text = ("Sao Tome and Principe") Then
            KeyIndex = 187

        End If
        If Label4.Text = ("Saudi Arabia") Then
            KeyIndex = 188

        End If
        If Label4.Text = ("scotland") Then
            KeyIndex = 189

        End If
        If Label4.Text = ("Senegal") Then
            KeyIndex = 190

        End If
        If Label4.Text = ("Seychelles") Then
            KeyIndex = 191

        End If
        If Label4.Text = ("Sierra Leone") Then
            KeyIndex = 192

        End If
        If Label4.Text = ("Singapore") Then
            KeyIndex = 193

        End If
        If Label4.Text = ("Slovakia") Then
            KeyIndex = 194

        End If
        If Label4.Text = ("Slovenia") Then
            KeyIndex = 195

        End If
        If Label4.Text = ("Solomon Islands") Then
            KeyIndex = 196

        End If
        If Label4.Text = ("Somalia") Then
            KeyIndex = 197

        End If
        If Label4.Text = ("South Africa") Then
            KeyIndex = 198

        End If
        If Label4.Text = ("South Georgia and the South Sandwich Islands") Then
            KeyIndex = 199

        End If
        If Label4.Text = ("Spain") Then
            KeyIndex = 200

        End If
        If Label4.Text = ("Sri Lanka") Then
            KeyIndex = 201

        End If
        If Label4.Text = ("Sudan") Then
            KeyIndex = 202

        End If
        If Label4.Text = ("Suriname") Then
            KeyIndex = 203

        End If
        If Label4.Text = ("Svalbard & Jan Mayen Islands") Then
            KeyIndex = 204

        End If
        If Label4.Text = ("Swaziland") Then
            KeyIndex = 205

        End If
        If Label4.Text = ("Sweden") Then
            KeyIndex = 206

        End If
        If Label4.Text = ("Switzerland") Then
            KeyIndex = 207

        End If
        If Label4.Text = ("Syrian Arab Republic") Then
            KeyIndex = 208

        End If
        If Label4.Text = ("Taiwan") Then
            KeyIndex = 209

        End If
        If Label4.Text = ("Tajikistan") Then
            KeyIndex = 210

        End If
        If Label4.Text = ("Tanzania, United Republic of") Then
            KeyIndex = 211

        End If
        If Label4.Text = ("Thailand") Then
            KeyIndex = 212

        End If
        If Label4.Text = ("Togo") Then
            KeyIndex = 213

        End If
        If Label4.Text = ("Tokelau") Then
            KeyIndex = 214

        End If

        If Label4.Text = ("Tonga") Then
            KeyIndex = 215

        End If
        If Label4.Text = ("Trinidad and Tobago") Then
            KeyIndex = 216

        End If
        If Label4.Text = ("Tunisia") Then
            KeyIndex = 217

        End If
        If Label4.Text = ("Turkey") Then
            KeyIndex = 218

        End If
        If Label4.Text = ("Turkmenistan") Then
            KeyIndex = 219

        End If
        If Label4.Text = ("Turks") Then
            KeyIndex = 220

        End If
        If Label4.Text = ("Tuvalu") Then
            KeyIndex = 221

        End If
        If Label4.Text = ("Uganda") Then
            KeyIndex = 222

        End If
        If Label4.Text = ("Ukraine") Then
            KeyIndex = 223

        End If
        If Label4.Text = ("United Arab Emirates") Then
            KeyIndex = 224

        End If
        If Label4.Text = ("United Kingdom") Then
            KeyIndex = 225

        End If
        If Label4.Text = ("United States Minor Outlying Islands") Then
            KeyIndex = 226

        End If
        If Label4.Text = ("United States") Then
            KeyIndex = 227

        End If
        If Label4.Text = ("Uruguay") Then
            KeyIndex = 228

        End If
        If Label4.Text = ("Uzbekistan") Then
            KeyIndex = 229

        End If
        If Label4.Text = ("Wales") Then
            KeyIndex = 230

        End If
        If Label4.Text = ("Wallis and Futuna") Then
            KeyIndex = 231

        End If
        If Label4.Text = ("Vanuatu") Then
            KeyIndex = 232

        End If
        If Label4.Text = ("Vatican City State") Then
            KeyIndex = 233

        End If
        If Label4.Text = ("Venezuela") Then
            KeyIndex = 234

        End If
        If Label4.Text = ("Western Sahara") Then
            KeyIndex = 235

        End If
        If Label4.Text = ("Viet Nam") Then
            KeyIndex = 236

        End If
        If Label4.Text = ("Virgin Islands, U.S") Then
            KeyIndex = 237

        End If
        If Label4.Text = ("Yemen") Then
            KeyIndex = 238

        End If

        If Label4.Text = ("Zambia") Then
            KeyIndex = 239

        End If
        If Label4.Text = ("Zimbabwe") Then
            KeyIndex = 240

        End If


        If Label1.Text = "127.0.0.1" Then
            KeyIndex = 241
        End If
        ListView1.Items.Add(Text, KeyIndex)








    End Sub
    Private Sub Timer2_Tick(sender As Object, e As EventArgs) Handles Timer2.Tick
        If Label1.Text = "127.0.0.1" Then








            For Each Process As ListViewItem In Form1.L1.Items
                Process.ImageIndex = 241
            Next
            Timer2.Enabled = False

        Else
            Timer2.Enabled = False
        End If
       


    End Sub

    Private Sub PictureBox1_Click(sender As Object, e As EventArgs) Handles PictureBox1.Click
        On Error Resume Next
        Me.Hide()
    End Sub

    Private Sub Panel1_MouseClick(sender As Object, e As MouseEventArgs) Handles Panel1.MouseClick
        On Error Resume Next
        Me.Hide()

    End Sub

    Private Sub Panel1_Paint(sender As Object, e As PaintEventArgs) Handles Panel1.Paint

    End Sub

    Private Sub PictureBox2_Click(sender As Object, e As EventArgs) Handles PictureBox2.Click
        Form11.TopMost = True
        Form11.TopMost = False
    End Sub
End Class