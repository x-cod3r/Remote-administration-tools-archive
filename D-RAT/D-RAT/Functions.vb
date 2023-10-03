Module Functions

    Public Function BS(ByVal b As Byte()) As String
        Return System.Text.Encoding.Default.GetString(b)
    End Function
    Public Function SB(ByVal s As String) As Byte()
        Return System.Text.Encoding.Default.GetBytes(s)
    End Function

    Function fx(ByVal b As Byte(), ByVal WRD As String) As Array ' split bytes by word
        Dim a As New List(Of Byte())
        Dim M As New IO.MemoryStream
        Dim MM As New IO.MemoryStream
        Dim T As String() = Split(BS(b), WRD)
        M.Write(b, 0, T(0).Length)
        MM.Write(b, T(0).Length + WRD.Length, b.Length - (T(0).Length + WRD.Length))
        a.Add(M.ToArray)
        a.Add(MM.ToArray)
        M.Dispose()
        MM.Dispose()
        Return a.ToArray
    End Function

    Public Function RandomVariable(ByVal minamount As Integer, ByVal maxamount As Integer) As String
        Dim Rand As New Random
        Dim TheVariable As String = Nothing
        Dim CharactersToUse As String = "qwertyuiopasdfghjklzxcvbnmQWERTYUIOPLKHJJGFDSAZXCVBNM1234567890"
        For x As Integer = 1 To Rand.Next(minamount + 1, maxamount)
            Dim PickAChar As Integer = Int((CharactersToUse.Length - 2) * Rnd()) + 1
            TheVariable += (CharactersToUse(PickAChar))
        Next
        Dim letters As String = "qwertyuiopasdfghjklzxcvbnmQWERTYUIOPLKHJJGFDSAZXCVBNM"
        Return letters(Rand.Next(0, letters.Length - 1)) + TheVariable
    End Function

    Public Function GetCountryNumber(ByVal queryCountry As String) As Integer
        Select Case queryCountry
            Case UCase("Afghanistan")
                GetCountryNumber = 1
            Case UCase("Albania")
                GetCountryNumber = 2
            Case UCase("Algeria")
                GetCountryNumber = 3
            Case UCase("American Samoa")
                GetCountryNumber = 4
            Case UCase("Andorra")
                GetCountryNumber = 5
            Case UCase("Angola")
                GetCountryNumber = 6
            Case UCase("Anguilla")
                GetCountryNumber = 7
            Case UCase("Antigua and Barbuda")
                GetCountryNumber = 8
            Case UCase("Argentina")
                GetCountryNumber = 9
            Case UCase("Armenia")
                GetCountryNumber = 10
            Case UCase("Aruba")
                GetCountryNumber = 11
            Case UCase("Australia")
                GetCountryNumber = 12
            Case UCase("Austria")
                GetCountryNumber = 13
            Case UCase("Azerbaijan")
                GetCountryNumber = 14
            Case UCase("Bahamas")
                GetCountryNumber = 15
            Case UCase("Bahrain")
                GetCountryNumber = 16
            Case UCase("Bangladesh")
                GetCountryNumber = 17
            Case UCase("Barbados")
                GetCountryNumber = 18
            Case UCase("Belarus")
                GetCountryNumber = 19
            Case UCase("Belgium")
                GetCountryNumber = 20
            Case UCase("Belize")
                GetCountryNumber = 21
            Case UCase("Benin")
                GetCountryNumber = 22
            Case UCase("Bermuda")
                GetCountryNumber = 23
            Case UCase("Bhutan")
                GetCountryNumber = 24
            Case UCase("Bolivia")
                GetCountryNumber = 25
            Case UCase("Bosnia & Herzegovina")
                GetCountryNumber = 26
            Case UCase("Botswana")
                GetCountryNumber = 27
            Case UCase("Bouvet Island")
                GetCountryNumber = 28
            Case UCase("Brazil")
                GetCountryNumber = 29
            Case UCase("British Indian Ocean Territory")
                GetCountryNumber = 30
            Case UCase("British Virgin Islands")
                GetCountryNumber = 31
            Case UCase("Brunei")
                GetCountryNumber = 32
            Case UCase("Bulgaria")
                GetCountryNumber = 33
            Case UCase("Burkina Faso")
                GetCountryNumber = 34
            Case UCase("Burundi")
                GetCountryNumber = 35
            Case UCase("Cambodia")
                GetCountryNumber = 36
            Case UCase("Cameroon")
                GetCountryNumber = 37
            Case UCase("Canada")
                GetCountryNumber = 38
            Case UCase("Cape Verde")
                GetCountryNumber = 39
            Case UCase("catalonia")
                GetCountryNumber = 40
            Case UCase("Cayman Islands")
                GetCountryNumber = 41
            Case UCase("Central African Republic")
                GetCountryNumber = 42
            Case UCase("Chad")
                GetCountryNumber = 43
            Case UCase("Chile")
                GetCountryNumber = 44
            Case UCase("China")
                GetCountryNumber = 45
            Case UCase("Christmas Islands")
                GetCountryNumber = 46
            Case UCase("Cocos (Keeling) Islands")
                GetCountryNumber = 47
            Case UCase("Colombia")
                GetCountryNumber = 48
            Case UCase("Comoras")
                GetCountryNumber = 49
            Case UCase("Congo, the Democratic Republic of the")
                GetCountryNumber = 50
            Case UCase("Costa Rica")
                GetCountryNumber = 51
            Case UCase("Croatia")
                GetCountryNumber = 52
            Case UCase("Cuba")
                GetCountryNumber = 53
            Case UCase("Cyprus")
                GetCountryNumber = 54
            Case UCase("Czech Republic")
                GetCountryNumber = 55
            Case UCase("Denmark")
                GetCountryNumber = 56
            Case UCase("Djibouti")
                GetCountryNumber = 57
            Case UCase("Dominica")
                GetCountryNumber = 58
            Case UCase("Dominican Republic")
                GetCountryNumber = 59
            Case UCase("Ecuador")
                GetCountryNumber = 60
            Case UCase("Egypt")
                GetCountryNumber = 61
            Case UCase("El Salvador")
                GetCountryNumber = 62
            Case UCase("England")
                GetCountryNumber = 63
            Case UCase("Equatorial Guinea")
                GetCountryNumber = 64
            Case UCase("Eritrea")
                GetCountryNumber = 65
            Case UCase("Estonia")
                GetCountryNumber = 66
            Case UCase("Ethiopia")
                GetCountryNumber = 67
            Case UCase("europeanunion")
                GetCountryNumber = 68
            Case UCase("Falkland Islands (Malvinas)")
                GetCountryNumber = 69
            Case UCase("Faroe Islands")
                GetCountryNumber = 70
            Case UCase("Fiji")
                GetCountryNumber = 71
            Case UCase("Finland")
                GetCountryNumber = 72
            Case UCase("France")
                GetCountryNumber = 73
            Case UCase("French Guiana")
                GetCountryNumber = 74
            Case UCase("French Polynesia")
                GetCountryNumber = 75
            Case UCase("French Southern Territories")
                GetCountryNumber = 76
            Case UCase("Gabon")
                GetCountryNumber = 77
            Case UCase("Gambia")
                GetCountryNumber = 78
            Case UCase("Georgia")
                GetCountryNumber = 79
            Case UCase("Germany")
                GetCountryNumber = 80
            Case UCase("Ghana")
                GetCountryNumber = 81
            Case UCase("Gibraltar")
                GetCountryNumber = 82
            Case UCase("Greece")
                GetCountryNumber = 83
            Case UCase("Greenland")
                GetCountryNumber = 84
            Case UCase("Grenada")
                GetCountryNumber = 85
            Case UCase("Guadeloupe")
                GetCountryNumber = 86
            Case UCase("Guam")
                GetCountryNumber = 87
            Case UCase("Guatemala")
                GetCountryNumber = 88
            Case UCase("Guinea")
                GetCountryNumber = 89
            Case UCase("Guinea-Bissau")
                GetCountryNumber = 90
            Case UCase("Guyana")
                GetCountryNumber = 91
            Case UCase("Haiti")
                GetCountryNumber = 92
            Case UCase("Heard Island and McDonald Islands")
                GetCountryNumber = 93
            Case UCase("Honduras")
                GetCountryNumber = 94
            Case UCase("Hong Kong")
                GetCountryNumber = 95
            Case UCase("Hungary")
                GetCountryNumber = 96
            Case UCase("Iceland")
                GetCountryNumber = 97
            Case UCase("India")
                GetCountryNumber = 98
            Case UCase("Indonesia")
                GetCountryNumber = 99
            Case UCase("Iran, Islamic Republic of")
                GetCountryNumber = 100
            Case UCase("Iraq")
                GetCountryNumber = 101
            Case UCase("Ireland")
                GetCountryNumber = 102
            Case UCase("Israel")
                GetCountryNumber = 103
            Case UCase("Italy")
                GetCountryNumber = 104
            Case UCase("Jamaica")
                GetCountryNumber = 105
            Case UCase("Japan")
                GetCountryNumber = 106
            Case UCase("Jordan")
                GetCountryNumber = 107
            Case UCase("Kazakhstan")
                GetCountryNumber = 108
            Case UCase("Kenya")
                GetCountryNumber = 109
            Case UCase("Kiribati")
                GetCountryNumber = 110
            Case UCase("Korea, Democratic People's Republic of")
                GetCountryNumber = 111
            Case UCase("Korea, Republic of")
                GetCountryNumber = 112
            Case UCase("Kuwait")
                GetCountryNumber = 113
            Case UCase("Kyrgyzstan")
                GetCountryNumber = 114
            Case UCase("Laos")
                GetCountryNumber = 115
            Case UCase("Latvia")
                GetCountryNumber = 116
            Case UCase("Lebanon")
                GetCountryNumber = 117
            Case UCase("Lesotho")
                GetCountryNumber = 118
            Case UCase("Liberia")
                GetCountryNumber = 119
            Case UCase("Libya")
                GetCountryNumber = 120
            Case UCase("Liechtenstein")
                GetCountryNumber = 121
            Case UCase("Lithuania")
                GetCountryNumber = 122
            Case UCase("Luxembourg")
                GetCountryNumber = 123
            Case UCase("Macao")
                GetCountryNumber = 124
            Case UCase("Macedonia")
                GetCountryNumber = 125
            Case UCase("Madagascar")
                GetCountryNumber = 126
            Case UCase("Malawi")
                GetCountryNumber = 127
            Case UCase("Malaysia")
                GetCountryNumber = 128
            Case UCase("Maldives")
                GetCountryNumber = 129
            Case UCase("Mali")
                GetCountryNumber = 130
            Case UCase("Malta")
                GetCountryNumber = 131
            Case UCase("Marshall Islands")
                GetCountryNumber = 132
            Case UCase("Martinique")
                GetCountryNumber = 133
            Case UCase("Mauritania")
                GetCountryNumber = 134
            Case UCase("Mauritius")
                GetCountryNumber = 135
            Case UCase("Mayotte")
                GetCountryNumber = 136
            Case UCase("Mexico")
                GetCountryNumber = 137
            Case UCase("Micronesia, Federated States of")
                GetCountryNumber = 138
            Case UCase("Moldava")
                GetCountryNumber = 139
            Case UCase("Monaco")
                GetCountryNumber = 140
            Case UCase("Mongolia")
                GetCountryNumber = 141
            Case UCase("Montenegro")
                GetCountryNumber = 142
            Case UCase("Montserrat")
                GetCountryNumber = 143
            Case UCase("Morocco")
                GetCountryNumber = 144
            Case UCase("Mozambique")
                GetCountryNumber = 145
            Case UCase("Myanmar")
                GetCountryNumber = 146
            Case UCase("Namibia")
                GetCountryNumber = 147
            Case UCase("Nauru")
                GetCountryNumber = 148
            Case UCase("Nepal")
                GetCountryNumber = 149
            Case UCase("Netherlands Antilles")
                GetCountryNumber = 150
            Case UCase("Netherlands, The")
                GetCountryNumber = 151
            Case UCase("New Caledonia")
                GetCountryNumber = 152
            Case UCase("New Zealand")
                GetCountryNumber = 153
            Case UCase("Nicaragua")
                GetCountryNumber = 154
            Case UCase("Niger")
                GetCountryNumber = 155
            Case UCase("Nigeria")
                GetCountryNumber = 156
            Case UCase("Niue")
                GetCountryNumber = 157
            Case UCase("Norfolk Island")
                GetCountryNumber = 158
            Case UCase("Northern Mariana Islands")
                GetCountryNumber = 159
            Case UCase("Norway")
                GetCountryNumber = 160
            Case UCase("Oman")
                GetCountryNumber = 161
            Case UCase("Pakistan")
                GetCountryNumber = 162
            Case UCase("Palau")
                GetCountryNumber = 163
            Case UCase("Panama")
                GetCountryNumber = 164
            Case UCase("Papua New Guinea")
                GetCountryNumber = 165
            Case UCase("Paraguay")
                GetCountryNumber = 166
            Case UCase("Peru")
                GetCountryNumber = 167
            Case UCase("Phillipines")
                GetCountryNumber = 168
            Case UCase("Pitcairn Islands")
                GetCountryNumber = 169
            Case UCase("Poland")
                GetCountryNumber = 170
            Case UCase("Portugal")
                GetCountryNumber = 171
            Case UCase("ps")
                GetCountryNumber = 172
            Case UCase("Puerto Rico")
                GetCountryNumber = 173
            Case UCase("Qatar")
                GetCountryNumber = 174
            Case UCase("Reunion")
                GetCountryNumber = 175
            Case UCase("Romania")
                GetCountryNumber = 176
            Case UCase("rs")
                GetCountryNumber = 177
            Case UCase("Russian Federation")
                GetCountryNumber = 178
            Case UCase("Rwanda")
                GetCountryNumber = 179
            Case UCase("Saint Helena")
                GetCountryNumber = 180
            Case UCase("Saint Kitts and Nevis")
                GetCountryNumber = 181
            Case UCase("Saint Lucia")
                GetCountryNumber = 182
            Case UCase("Saint Pierre")
                GetCountryNumber = 183
            Case UCase("Saint Vincent and the Grenadines")
                GetCountryNumber = 184
            Case UCase("Samoa")
                GetCountryNumber = 185
            Case UCase("San Marino")
                GetCountryNumber = 186
            Case UCase("Sao Tome and Principe")
                GetCountryNumber = 187
            Case UCase("Saudi Arabia")
                GetCountryNumber = 188
            Case UCase("scotland")
                GetCountryNumber = 189
            Case UCase("Senegal")
                GetCountryNumber = 190
            Case UCase("Seychelles")
                GetCountryNumber = 191
            Case UCase("Sierra Leone")
                GetCountryNumber = 192
            Case UCase("Singapore")
                GetCountryNumber = 193
            Case UCase("Slovakia")
                GetCountryNumber = 194
            Case UCase("Slovenia")
                GetCountryNumber = 195
            Case UCase("Solomon Islands")
                GetCountryNumber = 196
            Case UCase("Somalia")
                GetCountryNumber = 197
            Case UCase("South Africa")
                GetCountryNumber = 198
            Case UCase("South Georgia and the South Sandwich Islands")
                GetCountryNumber = 199
            Case UCase("Spain")
                GetCountryNumber = 200
            Case UCase("Sri Lanka")
                GetCountryNumber = 201
            Case UCase("Sudan")
                GetCountryNumber = 202
            Case UCase("Suriname")
                GetCountryNumber = 203
            Case UCase("Svalbard & Jan Mayen Islands")
                GetCountryNumber = 204
            Case UCase("Swaziland")
                GetCountryNumber = 205
            Case UCase("Sweden")
                GetCountryNumber = 206
            Case UCase("Switzerland")
                GetCountryNumber = 207
            Case UCase("Syrian Arab Republic")
                GetCountryNumber = 208
            Case UCase("Taiwan")
                GetCountryNumber = 209
            Case UCase("Tajikistan")
                GetCountryNumber = 210
            Case UCase("Tanzania, United Republic of")
                GetCountryNumber = 211
            Case UCase("Thailand")
                GetCountryNumber = 212
            Case UCase("Togo")
                GetCountryNumber = 213
            Case UCase("Tokelau")
                GetCountryNumber = 214
            Case UCase("Tonga")
                GetCountryNumber = 215
            Case UCase("Trinidad and Tobago")
                GetCountryNumber = 216
            Case UCase("Tunisia")
                GetCountryNumber = 217
            Case UCase("Turkey")
                GetCountryNumber = 218
            Case UCase("Turkmenistan")
                GetCountryNumber = 219
            Case UCase("Turks")
                GetCountryNumber = 220
            Case UCase("Tuvalu")
                GetCountryNumber = 221
            Case UCase("Uganda")
                GetCountryNumber = 222
            Case UCase("Ukraine")
                GetCountryNumber = 223
            Case UCase("United Arab Emirates")
                GetCountryNumber = 224
            Case UCase("United Kingdom")
                GetCountryNumber = 225
            Case UCase("United States Minor Outlying Islands")
                GetCountryNumber = 226
            Case UCase("United States")
                GetCountryNumber = 227
            Case UCase("Uruguay")
                GetCountryNumber = 228
            Case UCase("Uzbekistan")
                GetCountryNumber = 229
            Case UCase("Wales")
                GetCountryNumber = 230
            Case UCase("Wallis and Futuna")
                GetCountryNumber = 231
            Case UCase("Vanuatu")
                GetCountryNumber = 232
            Case UCase("Vatican City State")
                GetCountryNumber = 233
            Case UCase("Venezuela")
                GetCountryNumber = 234
            Case UCase("Western Sahara")
                GetCountryNumber = 235
            Case UCase("Viet Nam")
                GetCountryNumber = 236
            Case UCase("Virgin Islands, U.S")
                GetCountryNumber = 237
            Case UCase("Yemen")
                GetCountryNumber = 238
            Case UCase("Zambia")
                GetCountryNumber = 239
            Case UCase("Zimbabwe")
                GetCountryNumber = 240
            Case UCase("Palestine")
                GetCountryNumber = 241
            Case UCase("Cote d'Ivoire")
                GetCountryNumber = 242
            Case UCase("Sudan")
                GetCountryNumber = 243
            Case Else
                GetCountryNumber = 0
        End Select
    End Function

    Public Function siz(ByVal Size As String) As String
        If Size.Length < 4 Then
            Return Size & " Bytes"
            Exit Function
        End If
        Dim s As String = Size / 1024
        Dim F As String = " KB"
        Dim ss As Integer
        If InStr(s, ".") > 0 Then
            Dim j As Array = Split(s, ".")
            s = j(0)
            If j(1).ToString.Length > 3 Then
                ss = Mid(j(1), 1, 3)
            Else
                ss = j(1)
            End If
        End If
        If s.Length > 3 Then
            s = s / 1024
            F = " MB"
            If InStr(s, ".") > 0 Then
                Dim j As Array = Split(s, ".")
                s = j(0)
                If j(1).ToString.Length > 3 Then
                    ss = Mid(j(1), 1, 3)
                Else
                    ss = j(1)
                End If
            End If
        End If
        If s.Length > 3 Then
            s = s / 1024
            F = " GB"
            If InStr(s, ".") > 0 Then
                Dim j As Array = Split(s, ".")
                s = j(0)
                If j(1).ToString.Length > 3 Then
                    ss = Mid(j(1), 1, 3)
                Else
                    ss = j(1)
                End If
            End If
        End If
        Return s & "." & ss & F
    End Function

    Public Function DEB(ByRef s As String) As String ' Decode Base64
        Dim b As Byte() = Convert.FromBase64String(s)
        DEB = System.Text.Encoding.UTF8.GetString(b)
    End Function
    Public Function ENB(ByRef s As String) As String ' Encode base64
        Dim byt As Byte() = System.Text.Encoding.UTF8.GetBytes(s)
        ENB = Convert.ToBase64String(byt)
    End Function

    Public Function random_key(ByVal lenght As Integer) As String
        Randomize()
        Dim s As New System.Text.StringBuilder("")
        Dim b() As Char = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz".ToCharArray()
        For i As Integer = 1 To lenght
            Randomize()
            Dim z As Integer = Int(((b.Length - 2) - 0 + 1) * Rnd()) + 1
            s.Append(b(z))
        Next
        Return s.ToString
    End Function
    Public Function encrypt(ByVal message As Byte(), ByVal password As String) As Byte()
        Dim passarr As Byte() = System.Text.Encoding.Default.GetBytes(password)
        Randomize()
        Dim rand As Integer = Int((255 - 0 + 1) * Rnd()) + 1
        Dim outarr(message.Length) As Byte
        Dim u As Integer
        For i As Integer = 0 To message.Length - 1
            outarr(i) += (message(i) Xor passarr(u)) Xor rand
            If u = password.Length - 1 Then u = 0 Else u = u + 1
        Next
        outarr(message.Length) = 112 Xor rand
        Return outarr
    End Function


End Module
