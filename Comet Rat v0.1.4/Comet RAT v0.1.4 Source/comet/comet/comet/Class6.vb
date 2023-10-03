

Imports System.Drawing.Drawing2D
Imports System.ComponentModel



Module HuraModule

#Region " G"
    Friend G As Graphics, B As Bitmap
#End Region


    Sub New()
        TextBitmap = New Bitmap(1, 1)
        TextGraphics = Graphics.FromImage(TextBitmap)
    End Sub

    Private TextBitmap As Bitmap
    Private TextGraphics As Graphics

    Friend Function MeasureString(text As String, font As Font) As SizeF
        Return TextGraphics.MeasureString(text, font)
    End Function

    Friend Function MeasureString(text As String, font As Font, width As Integer) As SizeF
        Return TextGraphics.MeasureString(text, font, width, StringFormat.GenericTypographic)
    End Function

    Private CreateRoundPath As GraphicsPath
    Private CreateRoundRectangle As Rectangle

    Friend Function CreateRound(ByVal x As Integer, ByVal y As Integer, ByVal width As Integer, ByVal height As Integer, ByVal slope As Integer) As GraphicsPath
        CreateRoundRectangle = New Rectangle(x, y, width, height)
        Return CreateRound(CreateRoundRectangle, slope)
    End Function

    Friend Function CreateRound(ByVal r As Rectangle, ByVal slope As Integer) As GraphicsPath
        CreateRoundPath = New GraphicsPath(FillMode.Winding)
        CreateRoundPath.AddArc(r.X, r.Y, slope, slope, 180.0F, 90.0F)
        CreateRoundPath.AddArc(r.Right - slope, r.Y, slope, slope, 270.0F, 90.0F)
        CreateRoundPath.AddArc(r.Right - slope, r.Bottom - slope, slope, slope, 0.0F, 90.0F)
        CreateRoundPath.AddArc(r.X, r.Bottom - slope, slope, slope, 90.0F, 90.0F)
        CreateRoundPath.CloseFigure()
        Return CreateRoundPath
    End Function

End Module



Public Class HuraForm : Inherits ContainerControl
    Enum ColorSchemes
        Dark
    End Enum
    Event ColorSchemeChanged()
    Private _ColorScheme As ColorSchemes
    Public Property ColorScheme() As ColorSchemes
        Get
            Return _ColorScheme
        End Get
        Set(ByVal value As ColorSchemes)
            _ColorScheme = value
            RaiseEvent ColorSchemeChanged()
        End Set
    End Property
    Protected Sub OnColorSchemeChanged() Handles Me.ColorSchemeChanged
        Invalidate()
        Select Case ColorScheme
            Case ColorSchemes.Dark
                BackColor = Color.FromArgb(40, 40, 40)
                Font = New Font("Segoe UI", 9.5)
                AccentColor = Color.FromArgb(90, 90, 90)
                ForeColor = Color.White
        End Select
    End Sub
#Region " Properties "
    Private _AccentColor As Color
    Public Property AccentColor() As Color
        Get
            Return _AccentColor
        End Get
        Set(ByVal value As Color)
            _AccentColor = value
            OnAccentColorChanged()
        End Set
    End Property
#End Region
#Region " Constructor "
    Sub New()
        MyBase.New()
        DoubleBuffered = True
        Font = New Font("Segoe UI Semilight", 9.75F)
        'AccentColor = Color.FromArgb(150, 0, 150)
        AccentColor = Color.DodgerBlue
        ColorScheme = ColorSchemes.Dark
        ForeColor = Color.White
        BackColor = Color.FromArgb(180, 180, 180)
        MoveHeight = 32
    End Sub
#End Region
#Region " Events "
    Event AccentColorChanged()
#End Region
#Region " Overrides "
    Private MouseP As Point = New Point(0, 0)
    Private Cap As Boolean = False
    Private MoveHeight As Integer
    Private pos As Integer = 0
    Protected Overrides Sub OnMouseDown(ByVal e As System.Windows.Forms.MouseEventArgs)
        MyBase.OnMouseDown(e)
        If e.Button = Windows.Forms.MouseButtons.Left And New Rectangle(0, 0, Width, MoveHeight).Contains(e.Location) Then
            Cap = True : MouseP = e.Location
        End If
    End Sub
    Protected Overrides Sub OnMouseMove(ByVal e As System.Windows.Forms.MouseEventArgs)
        MyBase.OnMouseMove(e)
        If Cap Then
            Parent.Location = MousePosition - MouseP
        End If
    End Sub
    Protected Overrides Sub OnMouseUp(ByVal e As System.Windows.Forms.MouseEventArgs)
        MyBase.OnMouseUp(e) : Cap = False
    End Sub
    Protected Overrides Sub OnCreateControl()
        MyBase.OnCreateControl()
        Dock = DockStyle.Fill
        Parent.FindForm().FormBorderStyle = FormBorderStyle.None
    End Sub
    Protected Overrides Sub OnPaint(ByVal e As PaintEventArgs)
        Dim B As Bitmap = New Bitmap(Width, Height)
        Dim G As Graphics = Graphics.FromImage(B)
        MyBase.OnPaint(e)

        G.Clear(BackColor)
        G.DrawLine(New Pen(_AccentColor, 1), New Point(0, 30), New Point(Width, 30))
        G.DrawString(Text, Font, New SolidBrush(ForeColor), New Rectangle(8, 6, Width - 1, Height - 1), StringFormat.GenericDefault)
        G.DrawRectangle(New Pen(Color.FromArgb(100, 100, 100)), New Rectangle(0, 0, Width - 1, Height - 1))
        e.Graphics.DrawImage(B, New Point(0, 0))
        G.Dispose() : B.Dispose()
    End Sub
    Protected Sub OnAccentColorChanged() Handles Me.AccentColorChanged
        Invalidate()
    End Sub
    Protected Overrides Sub OnTextChanged(ByVal e As EventArgs)
        MyBase.OnTextChanged(e)
        Invalidate()
    End Sub
    Protected Overrides Sub OnResize(ByVal e As EventArgs)
        MyBase.OnResize(e)
        Invalidate()
    End Sub
#End Region

End Class

<DefaultEvent("CheckedChanged")> _
Class HuraRadioButton
    Inherits Control

    Event CheckedChanged(sender As Object)

    Sub New()
        SetStyle(DirectCast(139286, ControlStyles), True)
        SetStyle(ControlStyles.Selectable, False)

        P1 = New Pen(Color.FromArgb(50, 50, 50))
        P2 = New Pen(Color.FromArgb(95, 95, 95))
    End Sub

    Private _Checked As Boolean
    Public Property Checked() As Boolean
        Get
            Return _Checked
        End Get
        Set(ByVal value As Boolean)
            _Checked = value

            If _Checked Then
                InvalidateParent()
            End If

            RaiseEvent CheckedChanged(Me)
            Invalidate()
        End Set
    End Property

    Private Sub InvalidateParent()
        If Parent Is Nothing Then Return

        For Each C As Control In Parent.Controls
            If Not (C Is Me) AndAlso (TypeOf C Is HuraRadioButton) Then
                DirectCast(C, HuraRadioButton).Checked = False
            End If
        Next
    End Sub

    Private GP1 As GraphicsPath

    Private SZ1 As SizeF
    Private PT1 As PointF

    Private P1, P2 As Pen



    Protected Overrides Sub OnPaint(e As System.Windows.Forms.PaintEventArgs)
        G = e.Graphics


        G.Clear(BackColor)
        G.SmoothingMode = SmoothingMode.AntiAlias

        GP1 = New GraphicsPath
        GP1.AddEllipse(0, 1, Height - 5, Height - 5)

        G.DrawEllipse(P1, 0, 2, Height - 5, Height - 5)
        G.DrawEllipse(P2, 1, 3, Height - 7, Height - 7)

        If _Checked Then
            G.FillEllipse(Brushes.Black, 6, 8, Height - 15, Height - 15)
            G.FillEllipse(Brushes.White, 5, 7, Height - 15, Height - 15)
        End If

        SZ1 = G.MeasureString(Text, Font)
        PT1 = New PointF(Height - 3, Height \ 2 - SZ1.Height / 2)

        G.DrawString(Text, Font, Brushes.Black, PT1.X + 1, PT1.Y + 1)
        G.DrawString(Text, Font, Brushes.White, PT1)
    End Sub

    Protected Overrides Sub OnMouseDown(e As MouseEventArgs)
        Checked = True
        MyBase.OnMouseDown(e)
    End Sub

End Class

Public Class HuraControlBox : Inherits Control
    Enum ColorSchemes
        Dark
    End Enum
    Event ColorSchemeChanged()
    Private _ColorScheme As ColorSchemes
    Public Property ColorScheme() As ColorSchemes
        Get
            Return _ColorScheme
        End Get
        Set(ByVal value As ColorSchemes)
            _ColorScheme = value
            RaiseEvent ColorSchemeChanged()
        End Set
    End Property
    Protected Sub OnColorSchemeChanged() Handles Me.ColorSchemeChanged
        Invalidate()
        Select Case ColorScheme
            Case ColorSchemes.Dark
                BackColor = Color.FromArgb(40, 40, 40)
                ForeColor = Color.White
                AccentColor = Color.FromArgb(60, 60, 60)
        End Select
    End Sub
    Private _AccentColor As Color
    Public Property AccentColor() As Color
        Get
            Return _AccentColor
        End Get
        Set(ByVal value As Color)
            _AccentColor = value
            Invalidate()
        End Set
    End Property

    Sub New()
        MyBase.New()
        DoubleBuffered = True
        SetStyle(ControlStyles.AllPaintingInWmPaint, True)
        SetStyle(ControlStyles.UserPaint, True)
        SetStyle(ControlStyles.ResizeRedraw, True)
        SetStyle(ControlStyles.OptimizedDoubleBuffer, True)
        ForeColor = Color.FromArgb(50, 50, 50)
        BackColor = Color.FromArgb(50, 50, 50)
        AccentColor = Color.DodgerBlue
        ColorScheme = ColorSchemes.Dark
        Anchor = AnchorStyles.Top Or AnchorStyles.Right
    End Sub
    Protected Overrides Sub OnResize(ByVal e As EventArgs)
        MyBase.OnResize(e)
        Size = New Size(100, 25)
    End Sub
    Enum ButtonHover
        Minimize
        Maximize
        Close
        None
    End Enum
    Dim ButtonState As ButtonHover = ButtonHover.None
    Protected Overrides Sub OnMouseMove(ByVal e As MouseEventArgs)
        MyBase.OnMouseMove(e)
        Dim X As Integer = e.Location.X
        Dim Y As Integer = e.Location.Y
        If Y > 0 AndAlso Y < (Height - 2) Then
            If X > 0 AndAlso X < 34 Then
                ButtonState = ButtonHover.Minimize
            ElseIf X > 33 AndAlso X < 65 Then
                ButtonState = ButtonHover.Maximize
            ElseIf X > 64 AndAlso X < Width Then
                ButtonState = ButtonHover.Close
            Else
                ButtonState = ButtonHover.None
            End If
        Else
            ButtonState = ButtonHover.None
        End If
        Invalidate()
    End Sub
    Protected Overrides Sub OnPaint(ByVal e As PaintEventArgs)
        Dim B As New Bitmap(Width, Height)
        Dim G As Graphics = Graphics.FromImage(B)
        MyBase.OnPaint(e)

        G.Clear(BackColor)
        Select Case ButtonState
            Case ButtonHover.None
                G.Clear(BackColor)
            Case ButtonHover.Minimize
                G.FillRectangle(New SolidBrush(_AccentColor), New Rectangle(3, 0, 30, Height))
            Case ButtonHover.Maximize
                G.FillRectangle(New SolidBrush(_AccentColor), New Rectangle(34, 0, 30, Height))
            Case ButtonHover.Close
                G.FillRectangle(New SolidBrush(_AccentColor), New Rectangle(65, 0, 35, Height))
        End Select

        Dim ButtonFont As New Font("Marlett", 9.75F)
        'Close
        G.DrawString("r", ButtonFont, New SolidBrush(Color.FromArgb(210, 210, 210)), New Point(Width - 16, 7), New StringFormat With {.Alignment = StringAlignment.Center})
        'Maximize
        Select Case Parent.FindForm().WindowState
            Case FormWindowState.Maximized
                G.DrawString("2", ButtonFont, New SolidBrush(Color.FromArgb(210, 210, 210)), New Point(51, 7), New StringFormat With {.Alignment = StringAlignment.Center})
            Case FormWindowState.Normal
                G.DrawString("1", ButtonFont, New SolidBrush(Color.FromArgb(210, 210, 210)), New Point(51, 7), New StringFormat With {.Alignment = StringAlignment.Center})
        End Select
        'Minimize
        G.DrawString("0", ButtonFont, New SolidBrush(Color.FromArgb(210, 210, 210)), New Point(20, 7), New StringFormat With {.Alignment = StringAlignment.Center})


        e.Graphics.DrawImage(B, New Point(0, 0))
        G.Dispose() : B.Dispose()
    End Sub
    Protected Overrides Sub OnMouseUp(ByVal e As MouseEventArgs)
        MyBase.OnMouseDown(e)
        Select Case ButtonState
            Case ButtonHover.Close
                Parent.FindForm().Close()
            Case ButtonHover.Minimize
                Parent.FindForm().WindowState = FormWindowState.Minimized
            Case ButtonHover.Maximize
                If Parent.FindForm().WindowState = FormWindowState.Normal Then
                    Parent.FindForm().WindowState = FormWindowState.Maximized
                Else
                    Parent.FindForm().WindowState = FormWindowState.Normal
                End If

        End Select
    End Sub
    Protected Overrides Sub OnMouseLeave(ByVal e As EventArgs)
        MyBase.OnMouseLeave(e)
        ButtonState = ButtonHover.None : Invalidate()
    End Sub
End Class
Public Class HuraButton : Inherits Button
    Enum MouseState
        None
        Over
        Down
    End Enum
    Enum ColorSchemes
        Dark
    End Enum
    Private _ColorScheme As ColorSchemes
    Public Property ColorScheme() As ColorSchemes
        Get
            Return _ColorScheme
        End Get
        Set(ByVal value As ColorSchemes)
            _ColorScheme = value
            Invalidate()
        End Set
    End Property

    Dim State As MouseState = MouseState.None
    Protected Overrides Sub OnMouseEnter(ByVal e As EventArgs)
        MyBase.OnMouseEnter(e)
        State = MouseState.Over : Invalidate()
    End Sub
    Protected Overrides Sub OnMouseLeave(ByVal e As EventArgs)
        MyBase.OnMouseLeave(e)
        State = MouseState.None : Invalidate()
    End Sub
    Protected Overrides Sub OnMouseDown(ByVal e As MouseEventArgs)
        MyBase.OnMouseDown(e)
        State = MouseState.Down : Invalidate()
    End Sub
    Protected Overrides Sub OnMouseUp(ByVal e As MouseEventArgs)
        MyBase.OnMouseUp(e)
        State = MouseState.Over : Invalidate()
    End Sub

    Private _AccentColor As Color
    Public Property AccentColor() As Color
        Get
            Return _AccentColor
        End Get
        Set(ByVal value As Color)
            _AccentColor = value
            OnAccentColorChanged()
        End Set
    End Property

    Event AccentColorChanged()

    Sub New()
        MyBase.New()
        Font = New Font("Segoe UI", 9.5)
        ForeColor = Color.White
        BackColor = Color.FromArgb(50, 50, 50)
        AccentColor = Color.FromArgb(70, 70, 70)
        ColorScheme = ColorSchemes.Dark
    End Sub

    Protected Overrides Sub OnPaint(ByVal e As PaintEventArgs)
        Dim B As New Bitmap(Width, Height)
        Dim G As Graphics = Graphics.FromImage(B)
        MyBase.OnPaint(e)
        Dim BGColor As Color
        Select Case ColorScheme
            Case ColorSchemes.Dark
                BGColor = Color.FromArgb(50, 50, 50)
        End Select

        Select Case State
            Case MouseState.None
                G.Clear(BGColor)
            Case MouseState.Over
                G.Clear(AccentColor)
            Case MouseState.Down
                G.Clear(AccentColor)
                G.FillRectangle(New SolidBrush(Color.FromArgb(50, Color.Black)), New Rectangle(0, 0, Width - 1, Height - 1))
        End Select


        G.DrawRectangle(New Pen(Color.FromArgb(100, 100, 100)), New Rectangle(0, 0, Width - 1, Height - 1))

        Dim ButtonString As New StringFormat() With {.Alignment = StringAlignment.Center, .LineAlignment = StringAlignment.Center}
        Select Case ColorScheme
            Case ColorSchemes.Dark
                G.DrawString(Text, Font, Brushes.White, New Rectangle(0, 0, Width - 1, Height - 1), ButtonString)
        End Select

        e.Graphics.DrawImage(B, New Point(0, 0))
        G.Dispose() : B.Dispose()
    End Sub
    Protected Sub OnAccentColorChanged() Handles Me.AccentColorChanged
        Invalidate()
    End Sub
End Class

Class HuraGroupBox
    Inherits ContainerControl

    Sub New()
        SetStyle(ControlStyles.AllPaintingInWmPaint Or ControlStyles.OptimizedDoubleBuffer Or _
                 ControlStyles.UserPaint Or ControlStyles.ResizeRedraw, True)
        BackColor = Color.FromArgb(50, 50, 50)
    End Sub

    Protected Overrides Sub OnPaint(ByVal e As System.Windows.Forms.PaintEventArgs)
        MyBase.OnPaint(e)

        Dim G As Graphics = e.Graphics

        G.SmoothingMode = SmoothingMode.HighQuality
        G.Clear(Parent.BackColor)

        Dim mainRect As New Rectangle(0, 0, Width - 1, Height - 1)
        G.FillRectangle(New SolidBrush(Color.FromArgb(50, 50, 50)), mainRect)
        G.DrawRectangle(New Pen(Color.FromArgb(87, 87, 87)), mainRect)

    End Sub

End Class

<DefaultEvent("CheckedChanged")> _
Class HuraCheckBox
    Inherits Control

    Event CheckedChanged(sender As Object)

    Sub New()
        SetStyle(DirectCast(139286, ControlStyles), True)
        SetStyle(ControlStyles.Selectable, False)

        P11 = New Pen(Color.FromArgb(50, 50, 50))
        P22 = New Pen(Color.FromArgb(87, 87, 87))
        P3 = New Pen(Color.Black, 2.0F)
        P4 = New Pen(Color.White, 2.0F)
    End Sub

    Private _Checked As Boolean
    Public Property Checked() As Boolean
        Get
            Return _Checked
        End Get
        Set(ByVal value As Boolean)
            _Checked = value
            RaiseEvent CheckedChanged(Me)

            Invalidate()
        End Set
    End Property

    Private GP1, GP2 As GraphicsPath

    Private SZ1 As SizeF
    Private PT1 As PointF

    Private P11, P22, P3, P4 As Pen

    Private PB1 As PathGradientBrush

    Protected Overrides Sub OnPaint(e As System.Windows.Forms.PaintEventArgs)
        G = e.Graphics


        G.Clear(BackColor)
        G.SmoothingMode = SmoothingMode.AntiAlias

        GP1 = CreateRound(0, 2, Height - 5, Height - 5, 5)
        GP2 = CreateRound(1, 3, Height - 7, Height - 7, 5)

        PB1 = New PathGradientBrush(GP1)
        PB1.CenterColor = Color.FromArgb(50, 50, 50)
        PB1.SurroundColors = {Color.FromArgb(45, 45, 45)}
        PB1.FocusScales = New PointF(0.3F, 0.3F)

        G.FillPath(PB1, GP1)
        G.DrawPath(P11, GP1)
        G.DrawPath(P22, GP2)

        If _Checked Then
            G.DrawLine(P3, 5, Height - 9, 8, Height - 7)
            G.DrawLine(P3, 7, Height - 7, Height - 8, 7)

            G.DrawLine(P4, 4, Height - 10, 7, Height - 8)
            G.DrawLine(P4, 6, Height - 8, Height - 9, 6)
        End If

        SZ1 = G.MeasureString(Text, Font)
        PT1 = New PointF(Height - 3, Height \ 2 - SZ1.Height / 2)

        G.DrawString(Text, Font, Brushes.Black, PT1.X + 1, PT1.Y + 1)
        G.DrawString(Text, Font, Brushes.White, PT1)
    End Sub

    Protected Overrides Sub OnMouseDown(e As MouseEventArgs)
        Checked = Not Checked
    End Sub

End Class

Public Class HuraTextBox : Inherits TextBox
    Enum ColorSchemes
        Light
        Dark
    End Enum
    Event ColorSchemeChanged()
    Private _ColorScheme As ColorSchemes
    Public Property ColorScheme() As ColorSchemes
        Get
            Return _ColorScheme
        End Get
        Set(ByVal value As ColorSchemes)
            _ColorScheme = value
            RaiseEvent ColorSchemeChanged()
        End Set
    End Property

    Sub New()
        BorderStyle = Windows.Forms.BorderStyle.FixedSingle
        Font = New Font("Segoe UI", 9.5)
        BackColor = Color.FromArgb(50, 50, 50)
        ForeColor = Color.White
        ColorScheme = ColorSchemes.Dark
    End Sub

    Protected Sub OnColorSchemeChanged() Handles Me.ColorSchemeChanged
        Invalidate()
        Select Case ColorScheme
            Case ColorSchemes.Dark
                BackColor = Color.FromArgb(50, 50, 50)
                ForeColor = Color.White
        End Select
    End Sub
End Class


Public Class HuraComboBox : Inherits ComboBox
#Region " Control Help - Properties & Flicker Control "
    Enum ColorSchemes
        Light
        Dark
    End Enum
    Private _ColorScheme As ColorSchemes
    Public Property ColorScheme() As ColorSchemes
        Get
            Return _ColorScheme
        End Get
        Set(ByVal value As ColorSchemes)
            _ColorScheme = value
            Invalidate()
        End Set
    End Property

    Private _AccentColor As Color
    Public Property AccentColor() As Color
        Get
            Return _AccentColor
        End Get
        Set(ByVal value As Color)
            _AccentColor = value
            Invalidate()
        End Set
    End Property

    Private _StartIndex As Integer = 0
    Private Property StartIndex As Integer
        Get
            Return _StartIndex
        End Get
        Set(ByVal value As Integer)
            _StartIndex = value
            Try
                MyBase.SelectedIndex = value
            Catch
            End Try
            Invalidate()
        End Set
    End Property
    Sub ReplaceItem(ByVal sender As System.Object, ByVal e As System.Windows.Forms.DrawItemEventArgs) Handles Me.DrawItem
        e.DrawBackground()
        Try
            If (e.State And DrawItemState.Selected) = DrawItemState.Selected Then
                e.Graphics.FillRectangle(New SolidBrush(_AccentColor), e.Bounds)
            Else
                Select Case ColorScheme
                    Case ColorSchemes.Dark
                        e.Graphics.FillRectangle(New SolidBrush(Color.FromArgb(35, 35, 35)), e.Bounds)
                    Case ColorSchemes.Light
                        e.Graphics.FillRectangle(New SolidBrush(Color.White), e.Bounds)
                End Select
            End If
            Select Case ColorScheme
                Case ColorSchemes.Dark
                    e.Graphics.DrawString(MyBase.GetItemText(MyBase.Items(e.Index)), e.Font, Brushes.White, e.Bounds)
                Case ColorSchemes.Light
                    e.Graphics.DrawString(MyBase.GetItemText(MyBase.Items(e.Index)), e.Font, Brushes.Black, e.Bounds)
            End Select
        Catch
        End Try
    End Sub
    Protected Sub DrawTriangle(ByVal Clr As Color, ByVal FirstPoint As Point, ByVal SecondPoint As Point, ByVal ThirdPoint As Point, ByVal G As Graphics)
        Dim points As New List(Of Point)()
        points.Add(FirstPoint)
        points.Add(SecondPoint)
        points.Add(ThirdPoint)
        G.FillPolygon(New SolidBrush(Clr), points.ToArray())
    End Sub

#End Region

    Sub New()
        MyBase.New()
        SetStyle(ControlStyles.AllPaintingInWmPaint, True)
        SetStyle(ControlStyles.ResizeRedraw, True)
        SetStyle(ControlStyles.UserPaint, True)
        SetStyle(ControlStyles.DoubleBuffer, True)
        SetStyle(ControlStyles.SupportsTransparentBackColor, True)
        DrawMode = Windows.Forms.DrawMode.OwnerDrawFixed
        BackColor = Color.FromArgb(50, 50, 50)
        Size = New Size(189, 24)
        ForeColor = Color.White
        AccentColor = Color.FromArgb(70, 70, 70)
        ColorScheme = ColorSchemes.Dark
        DropDownStyle = ComboBoxStyle.DropDownList
        Font = New Font("Segoe UI", 9.5)
        StartIndex = 0
        DoubleBuffered = True
    End Sub

    Protected Overrides Sub OnPaint(ByVal e As PaintEventArgs)
        Dim B As New Bitmap(Width, Height)
        Dim G As Graphics = Graphics.FromImage(B)
        Dim Curve As Integer = 2


        G.SmoothingMode = SmoothingMode.HighQuality


        Select Case ColorScheme
            Case ColorSchemes.Dark
                G.Clear(Color.FromArgb(50, 50, 50))
                G.DrawLine(New Pen(Color.White, 2), New Point(Width - 18, 10), New Point(Width - 14, 14))
                G.DrawLine(New Pen(Color.White, 2), New Point(Width - 14, 14), New Point(Width - 10, 10))
                G.DrawLine(New Pen(Color.White), New Point(Width - 14, 15), New Point(Width - 14, 14))
            Case ColorSchemes.Light
                G.Clear(Color.White)
                G.DrawLine(New Pen(Color.FromArgb(100, 100, 100), 2), New Point(Width - 18, 10), New Point(Width - 14, 14))
                G.DrawLine(New Pen(Color.FromArgb(100, 100, 100), 2), New Point(Width - 14, 14), New Point(Width - 10, 10))
                G.DrawLine(New Pen(Color.FromArgb(100, 100, 100)), New Point(Width - 14, 15), New Point(Width - 14, 14))
        End Select
        G.DrawRectangle(New Pen(Color.FromArgb(100, 100, 100)), New Rectangle(0, 0, Width - 1, Height - 1))


        Try
            Select Case ColorScheme
                Case ColorSchemes.Dark
                    G.DrawString(Text, Font, Brushes.White, New Rectangle(7, 0, Width - 1, Height - 1), New StringFormat With {.LineAlignment = StringAlignment.Center, .Alignment = StringAlignment.Near})
                Case ColorSchemes.Light
                    G.DrawString(Text, Font, Brushes.Black, New Rectangle(7, 0, Width - 1, Height - 1), New StringFormat With {.LineAlignment = StringAlignment.Center, .Alignment = StringAlignment.Near})
            End Select
        Catch
        End Try

        e.Graphics.DrawImage(B.Clone(), 0, 0)
        G.Dispose() : B.Dispose()
    End Sub
End Class

Class HuraProgressBar
    Inherits Control

    Private _Minimum As Integer
    Property Minimum() As Integer
        Get
            Return _Minimum
        End Get
        Set(ByVal value As Integer)
            If value < 0 Then
                Throw New Exception("Property value is not valid.")
            End If

            _Minimum = value
            If value > _Value Then _Value = value
            If value > _Maximum Then _Maximum = value
            Invalidate()
        End Set
    End Property

    Private _Maximum As Integer = 100
    Property Maximum() As Integer
        Get
            Return _Maximum
        End Get
        Set(ByVal value As Integer)
            If value < 0 Then
                Throw New Exception("Property value is not valid.")
            End If

            _Maximum = value
            If value < _Value Then _Value = value
            If value < _Minimum Then _Minimum = value
            Invalidate()
        End Set
    End Property

    Private _Value As Integer
    Property Value() As Integer
        Get
            Return _Value
        End Get
        Set(ByVal value As Integer)

            _Value = value
            Invalidate()
        End Set
    End Property

    Private Sub Increment(ByVal amount As Integer)
        Value += amount
    End Sub

    Sub New()
        SetStyle(DirectCast(139286, ControlStyles), True)
        SetStyle(ControlStyles.Selectable, False)

        P1 = New Pen(Color.FromArgb(90, 90, 90))
        P2 = New Pen(Color.FromArgb(55, 55, 55))
        B1 = New SolidBrush(Color.FromArgb(70, 70, 70))
    End Sub

    Private GP1, GP2, GP3 As GraphicsPath

    Private R1, R2 As Rectangle

    Private P1, P2 As Pen
    Private B1 As SolidBrush
    Private GB1, GB2 As LinearGradientBrush

    Private I1 As Integer

    Protected Overrides Sub OnPaint(e As System.Windows.Forms.PaintEventArgs)
        G = e.Graphics

        G.Clear(BackColor)
        G.SmoothingMode = SmoothingMode.AntiAlias

        GP1 = CreateRound(0, 0, Width - 1, Height - 1, 7)
        GP2 = CreateRound(1, 1, Width - 3, Height - 3, 7)

        R1 = New Rectangle(0, 2, Width - 1, Height - 1)
        GB1 = New LinearGradientBrush(R1, Color.FromArgb(45, 45, 45), Color.FromArgb(50, 50, 50), 90.0F)

        G.SetClip(GP1)
        G.FillRectangle(GB1, R1)

        I1 = CInt((_Value - _Minimum) / (_Maximum - _Minimum) * (Width - 3))

        If I1 > 1 Then
            GP3 = CreateRound(1, 1, I1, Height - 3, 7)

            R2 = New Rectangle(1, 1, I1, Height - 3)
            GB2 = New LinearGradientBrush(R2, Color.FromArgb(70, 70, 70), Color.FromArgb(70, 70, 70), 90.0F)

            G.FillPath(GB2, GP3)
            G.DrawPath(P1, GP3)

            G.SetClip(GP3)
            G.SmoothingMode = SmoothingMode.None

            G.FillRectangle(B1, R2.X, R2.Y + 1, R2.Width, R2.Height \ 2)

            G.SmoothingMode = SmoothingMode.AntiAlias
            G.ResetClip()
        End If

        G.DrawPath(P2, GP1)
        G.DrawPath(P1, GP2)
    End Sub
End Class

Class HuraAlertBox
    Inherits Control

    Private exitLocation As Point
    Private overExit As Boolean

    Enum Style
        Simple
        Success
        Notice
        Warning
        Informations
    End Enum

    Private _alertStyle As Style
    Public Property AlertStyle As Style
        Get
            Return _alertStyle
        End Get
        Set(ByVal value As Style)
            _alertStyle = value
            Invalidate()
        End Set
    End Property

    Sub New()
        SetStyle(ControlStyles.AllPaintingInWmPaint Or ControlStyles.OptimizedDoubleBuffer Or _
                 ControlStyles.UserPaint Or ControlStyles.ResizeRedraw, True)
        Font = New Font("Verdana", 8)
        Size = New Size(200, 40)
    End Sub

    Protected Overrides Sub OnPaint(ByVal e As System.Windows.Forms.PaintEventArgs)
        MyBase.OnPaint(e)

        Dim G As Graphics = e.Graphics

        G.SmoothingMode = SmoothingMode.HighQuality
        G.Clear(Parent.BackColor)

        Dim borderColor, innerColor, textColor As Color
        Select Case _alertStyle
            Case Style.Simple
                borderColor = Color.FromArgb(90, 90, 90)
                innerColor = Color.FromArgb(50, 50, 50)
                textColor = Color.FromArgb(150, 150, 150)
            Case Style.Success
                borderColor = Color.FromArgb(60, 98, 79)
                innerColor = Color.FromArgb(60, 85, 79)
                textColor = Color.FromArgb(35, 169, 110)
            Case Style.Notice
                borderColor = Color.FromArgb(70, 91, 107)
                innerColor = Color.FromArgb(70, 91, 94)
                textColor = Color.FromArgb(97, 185, 186)
            Case Style.Warning
                borderColor = Color.FromArgb(100, 71, 71)
                innerColor = Color.FromArgb(87, 71, 71)
                textColor = Color.FromArgb(254, 142, 122)
            Case Style.Informations
                borderColor = Color.FromArgb(133, 133, 71)
                innerColor = Color.FromArgb(120, 120, 71)
                textColor = Color.FromArgb(254, 224, 122)
        End Select

        Dim mainRect As New Rectangle(0, 0, Width - 1, Height - 1)
        G.FillRectangle(New SolidBrush(innerColor), mainRect)
        G.DrawRectangle(New Pen(borderColor), mainRect)

        Dim styleText As String = Nothing

        Select Case _alertStyle

        End Select

        Dim styleFont As New Font(Font.FontFamily, Font.Size, FontStyle.Bold)
        Dim textY As Integer = ((Me.Height - 1) / 2) - (G.MeasureString(Text, Font).Height / 2)
        G.DrawString(styleText, styleFont, New SolidBrush(textColor), New Point(10, textY))
        G.DrawString(Text, Font, New SolidBrush(textColor), New Point(10 + G.MeasureString(styleText, styleFont).Width + 4, textY))

        Dim exitFont As New Font("Marlett", 6)
        Dim exitY As Integer = ((Me.Height - 1) / 2) - (G.MeasureString("r", exitFont).Height / 2) + 1
        exitLocation = New Point(Width - 26, exitY - 3)
        G.DrawString("r", exitFont, New SolidBrush(textColor), New Point(Width - 23, exitY))

    End Sub


    Protected Overrides Sub OnMouseMove(ByVal e As System.Windows.Forms.MouseEventArgs)
        MyBase.OnMouseMove(e)

        If e.X >= Width - 26 AndAlso e.X <= Width - 12 AndAlso e.Y > exitLocation.Y AndAlso e.Y < exitLocation.Y + 12 Then
            If Cursor <> Cursors.Hand Then Cursor = Cursors.Hand
            overExit = True
        Else
            If Cursor <> Cursors.Arrow Then Cursor = Cursors.Arrow
            overExit = False
        End If

        Invalidate()

    End Sub

    Protected Overrides Sub OnMouseDown(ByVal e As System.Windows.Forms.MouseEventArgs)
        MyBase.OnMouseDown(e)

        If overExit Then Me.Visible = False

    End Sub

End Class