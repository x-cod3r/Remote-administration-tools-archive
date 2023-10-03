





Module Module1
    Class Kys
        Public Shared Function Key() As Object
            Const ranshit1 As String = "167200938887465526111235670865"
            Const randshit2 As String = "qazwsxedcrfvtgbyhnujmiklop"
            Const ranshit3 As String = "1234567890"
            Const ranshit4 As String = "QWXCZPOIUYTREEWQASDFGHJKLMNBVCXZ"
            Const ranshit5 As String = "QPSOIEUdjhEuydXNNABaytey6q81S019DMCNz"
            Dim totalequivalent As String
            Dim i As Short
            totalequivalent = ranshit1 & randshit2 & ranshit3 & ranshit4 & ranshit5
            For i = 1 To CInt("20")
                Key = Key & Mid(totalequivalent, Int((Rnd() * Len(totalequivalent)) + 1), 1)
            Next i
        End Function
    End Class
End Module

