Imports System.Drawing.Drawing2D

MustInherit Class Theme
    Inherits ContainerControl

#Region " Initialization "

    Protected B As Bitmap, G As Graphics
    Sub New()
        SetStyle(DirectCast(8198, ControlStyles), True)
        B = New Bitmap(1, 1)
        G = Graphics.FromImage(B)
    End Sub

    Private ParentIsForm As Boolean
    Protected Overrides Sub OnHandleCreated(ByVal e As EventArgs)
        Dock = DockStyle.Fill
        ParentIsForm = TypeOf Parent Is Form
        If ParentIsForm Then ParentForm.FormBorderStyle = FormBorderStyle.None
        MyBase.OnHandleCreated(e)
    End Sub

#End Region

#Region " Sizing and Movement "

    Private _Resizable As Boolean = True
    Property Resizable() As Boolean
        Get
            Return _Resizable
        End Get
        Set(ByVal value As Boolean)
            _Resizable = value
        End Set
    End Property

    Private _MoveHeight As Integer = 24
    Property MoveHeight() As Integer
        Get
            Return _MoveHeight
        End Get
        Set(ByVal v As Integer)
            _MoveHeight = v
            Header = New Rectangle(7, 7, Width - 14, _MoveHeight)
        End Set
    End Property

    Private Flag As IntPtr
    Protected Overrides Sub OnMouseDown(ByVal e As MouseEventArgs)
        If Not e.Button = MouseButtons.Left Then Return
        If ParentIsForm Then If ParentForm.WindowState = FormWindowState.Maximized Then Return

        If Header.Contains(e.Location) Then
            Flag = New IntPtr(2)
        ElseIf Current.Position = 0 Or Not _Resizable Then
            Return
        Else
            Flag = New IntPtr(Current.Position)
        End If

        Capture = False
        DefWndProc(Message.Create(Parent.Handle, 161, Flag, Nothing))

        MyBase.OnMouseDown(e)
    End Sub

    Private Structure Pointer
        ReadOnly Cursor As Cursor, Position As Byte
        Sub New(ByVal c As Cursor, ByVal p As Byte)
            Cursor = c
            Position = p
        End Sub
    End Structure

    Private F1, F2, F3, F4 As Boolean, PTC As Point
    Private Function GetPointer() As Pointer
        PTC = PointToClient(MousePosition)
        F1 = PTC.X < 7
        F2 = PTC.X > Width - 7
        F3 = PTC.Y < 7
        F4 = PTC.Y > Height - 7

        If F1 And F3 Then Return New Pointer(Cursors.SizeNWSE, 13)
        If F1 And F4 Then Return New Pointer(Cursors.SizeNESW, 16)
        If F2 And F3 Then Return New Pointer(Cursors.SizeNESW, 14)
        If F2 And F4 Then Return New Pointer(Cursors.SizeNWSE, 17)
        If F1 Then Return New Pointer(Cursors.SizeWE, 10)
        If F2 Then Return New Pointer(Cursors.SizeWE, 11)
        If F3 Then Return New Pointer(Cursors.SizeNS, 12)
        If F4 Then Return New Pointer(Cursors.SizeNS, 15)
        Return New Pointer(Cursors.Default, 0)
    End Function

    Private Current, Pending As Pointer
    Private Sub SetCurrent()
        Pending = GetPointer()
        If Current.Position = Pending.Position Then Return
        Current = GetPointer()
        Cursor = Current.Cursor
    End Sub

    Protected Overrides Sub OnMouseMove(ByVal e As MouseEventArgs)
        If _Resizable Then SetCurrent()
        MyBase.OnMouseMove(e)
    End Sub

    Protected Header As Rectangle
    Protected Overrides Sub OnSizeChanged(ByVal e As EventArgs)
        Header = New Rectangle(7, 7, Width - 14, _MoveHeight)
        G.Dispose()
        B.Dispose()
        B = New Bitmap(Width, Height)
        G = Graphics.FromImage(B)
        Invalidate()
        MyBase.OnSizeChanged(e)
    End Sub

#End Region

#Region " Convienence "

    Sub SetTransparent(ByVal c As Color)
        If ParentIsForm Then ParentForm.TransparencyKey = c
    End Sub

    Protected MustOverride Overrides Sub OnPaint(ByVal e As PaintEventArgs)

    Sub DrawCorners(ByVal c As Color, ByVal rect As Rectangle)
        B.SetPixel(rect.X, rect.Y, c)
        B.SetPixel(rect.X + (rect.Width - 1), rect.Y, c)
        B.SetPixel(rect.X, rect.Y + (rect.Height - 1), c)
        B.SetPixel(rect.X + (rect.Width - 1), rect.Y + (rect.Height - 1), c)
    End Sub

    Sub DrawBorders(ByVal p1 As Pen, ByVal p2 As Pen, ByVal rect As Rectangle)
        G.DrawRectangle(p1, rect.X, rect.Y, rect.Width - 1, rect.Height - 1)
        G.DrawRectangle(p2, rect.X + 1, rect.Y + 1, rect.Width - 3, rect.Height - 3)
    End Sub

    Private TextSize As Size
    Sub DrawText(ByVal a As HorizontalAlignment, ByVal b As Brush, Optional ByVal offset As Integer = 0)
        If String.IsNullOrEmpty(Text) Then Return
        TextSize = G.MeasureString(Text, Font).ToSize

        Select Case a
            Case HorizontalAlignment.Left
                G.DrawString(Text, Font, b, 5 + offset, _MoveHeight \ 2 - TextSize.Height \ 2 + 7)
            Case HorizontalAlignment.Right
                G.DrawString(Text, Font, b, Width - 5 - TextSize.Width - offset, _MoveHeight \ 2 - TextSize.Height \ 2 + 7)
            Case HorizontalAlignment.Center
                G.DrawString(Text, Font, b, Width \ 2 - TextSize.Width \ 2, _MoveHeight \ 2 - TextSize.Height \ 2 + 7)
        End Select
    End Sub

    ReadOnly Property ImageWidth As Integer
        Get
            If _Image Is Nothing Then Return 0
            Return _Image.Width
        End Get
    End Property

    Private _Image As Image
    Public Property Image() As Image
        Get
            Return _Image
        End Get
        Set(ByVal value As Image)
            _Image = value
            Invalidate()
        End Set
    End Property

    Sub DrawIcon(ByVal a As HorizontalAlignment, Optional ByVal offset As Integer = 0)
        If _Image Is Nothing Then Return
        Select Case a
            Case HorizontalAlignment.Left
                G.DrawImage(_Image, 5 + offset, _MoveHeight \ 2 - _Image.Height \ 2 + 7)
            Case HorizontalAlignment.Right
                G.DrawImage(_Image, Width - 5 - TextSize.Width - offset, _MoveHeight \ 2 - TextSize.Height \ 2 + 7)
            Case HorizontalAlignment.Center
                G.DrawImage(_Image, Width \ 2 - TextSize.Width \ 2, _MoveHeight \ 2 - TextSize.Height \ 2 + 7)
        End Select
    End Sub
#End Region

End Class
MustInherit Class ThemeControl
    Inherits Control

#Region " Initialization "

    Protected B As Bitmap, G As Graphics
    Sub New()
        SetStyle(DirectCast(8198, ControlStyles), True)
        B = New Bitmap(1, 1)
        G = Graphics.FromImage(B)
    End Sub

    Sub AllowTransparent()
        SetStyle(ControlStyles.Opaque, False)
        SetStyle(DirectCast(141314, ControlStyles), True)
    End Sub

#End Region

#Region " Mouse Handling "

    Enum State As Byte
        MouseNone = 0
        MouseOver = 1
        MouseDown = 2
    End Enum

    Protected MouseState As State
    Protected Overrides Sub OnMouseLeave(ByVal e As EventArgs)
        ChangeMouseState(State.MouseNone)
        MyBase.OnMouseLeave(e)
    End Sub
    Protected Overrides Sub OnMouseEnter(ByVal e As EventArgs)
        ChangeMouseState(State.MouseOver)
        MyBase.OnMouseEnter(e)
    End Sub
    Protected Overrides Sub OnMouseUp(ByVal e As MouseEventArgs)
        ChangeMouseState(State.MouseOver)
        MyBase.OnMouseUp(e)
    End Sub
    Protected Overrides Sub OnMouseDown(ByVal e As MouseEventArgs)
        If e.Button = MouseButtons.Left Then ChangeMouseState(State.MouseDown)
        MyBase.OnMouseDown(e)
    End Sub

    Private Sub ChangeMouseState(ByVal e As State)
        MouseState = e
        Invalidate()
    End Sub

#End Region

#Region " Sizing "

    Protected Overrides Sub OnSizeChanged(ByVal e As EventArgs)
        G.Dispose()
        B.Dispose()
        B = New Bitmap(Width, Height)
        G = Graphics.FromImage(B)
        Invalidate()
        MyBase.OnSizeChanged(e)
    End Sub

#End Region

#Region " Convienence "

    Protected MustOverride Overrides Sub OnPaint(ByVal e As PaintEventArgs)

    Sub DrawCorners(ByVal c As Color, ByVal rect As Rectangle)
        B.SetPixel(rect.X, rect.Y, c)
        B.SetPixel(rect.X + (rect.Width - 1), rect.Y, c)
        B.SetPixel(rect.X, rect.Y + (rect.Height - 1), c)
        B.SetPixel(rect.X + (rect.Width - 1), rect.Y + (rect.Height - 1), c)
    End Sub

    Sub DrawBorders(ByVal p1 As Pen, ByVal p2 As Pen, ByVal rect As Rectangle)
        G.DrawRectangle(p1, rect.X, rect.Y, rect.Width - 1, rect.Height - 1)
        G.DrawRectangle(p2, rect.X + 1, rect.Y + 1, rect.Width - 3, rect.Height - 3)
    End Sub

    Private TextSize As Size
    Sub DrawText(ByVal a As HorizontalAlignment, ByVal b As Brush, Optional ByVal offset As Integer = 0)
        If String.IsNullOrEmpty(Text) Then Return
        TextSize = G.MeasureString(Text, Font).ToSize

        Select Case a
            Case HorizontalAlignment.Left
                G.DrawString(Text, Font, b, 5 + offset, Height \ 2 - TextSize.Height \ 2)
            Case HorizontalAlignment.Right
                G.DrawString(Text, Font, b, Width - 5 - TextSize.Width - offset, Height \ 2 - TextSize.Height \ 2)
            Case HorizontalAlignment.Center
                G.DrawString(Text, Font, b, Width \ 2 - TextSize.Width \ 2, Height \ 2 - TextSize.Height \ 2)
        End Select
    End Sub

    ReadOnly Property ImageWidth As Integer
        Get
            If _Image Is Nothing Then Return 0
            Return _Image.Width
        End Get
    End Property

    Private _Image As Image
    Public Property Image() As Image
        Get
            Return _Image
        End Get
        Set(ByVal value As Image)
            _Image = value
            Invalidate()
        End Set
    End Property

    Sub DrawIcon(ByVal a As HorizontalAlignment, Optional ByVal offset As Integer = 0)
        If _Image Is Nothing Then Return
        Select Case a
            Case HorizontalAlignment.Left
                G.DrawImage(_Image, Width \ 10 + offset, Height \ 2 - _Image.Height \ 2)
            Case HorizontalAlignment.Right
                G.DrawImage(_Image, Width - (Width \ 10) - TextSize.Width - offset, Height \ 2 - TextSize.Height \ 2)
            Case HorizontalAlignment.Center
                G.DrawImage(_Image, Width \ 2 - TextSize.Width \ 2, Height \ 2 - TextSize.Height \ 2)
        End Select
    End Sub

#End Region

End Class

Class GTheme
    Inherits Theme

    Sub New()
        MoveHeight = 28
        ForeColor = Color.FromArgb(100, 100, 100)
        SetTransparent(Color.Fuchsia)

        C1 = Color.FromArgb(41, 41, 41)
        C2 = Color.FromArgb(25, 25, 25)

        P1 = New Pen(Color.FromArgb(58, 58, 58))
        P2 = New Pen(C2)
    End Sub

    Private C1, C2 As Color
    Private P1, P2 As Pen
    Private B1 As LinearGradientBrush
    Private R1 As Rectangle

    Protected Overrides Sub OnPaint(ByVal e As PaintEventArgs)
        G.Clear(C1)

        R1 = New Rectangle(0, 0, Width, 28)
        B1 = New LinearGradientBrush(R1, C2, C1, LinearGradientMode.Vertical)
        G.FillRectangle(B1, R1)

        G.DrawLine(P2, 0, 28, Width, 28)
        G.DrawLine(P1, 0, 29, Width, 29)

        DrawText(HorizontalAlignment.Left, New SolidBrush(ForeColor), ImageWidth)
        DrawIcon(HorizontalAlignment.Left)

        DrawBorders(Pens.Black, P1, ClientRectangle)
        DrawCorners(Color.Fuchsia, ClientRectangle)

        e.Graphics.DrawImage(B, 0, 0)
    End Sub
End Class

Class GButton
    Inherits ThemeControl

    Private P1, P2 As Pen
    Private B1 As LinearGradientBrush
    Private C1, C2 As Color
    Private R1 As Rectangle

    Sub New()
        AllowTransparent()
        BackColor = Color.FromArgb(41, 41, 41)
        ForeColor = Color.FromArgb(100, 100, 100)

        P1 = New Pen(Color.FromArgb(25, 25, 25))
        P2 = New Pen(Color.FromArgb(11, Color.White))

        C1 = Color.FromArgb(41, 41, 41)
        C2 = Color.FromArgb(51, 51, 51)
    End Sub

    Protected Overrides Sub OnPaint(ByVal e As System.Windows.Forms.PaintEventArgs)

        If MouseState = State.MouseDown Then
            B1 = New LinearGradientBrush(ClientRectangle, C1, C2, LinearGradientMode.Vertical)
        Else
            B1 = New LinearGradientBrush(ClientRectangle, C2, C1, LinearGradientMode.Vertical)
        End If

        G.FillRectangle(B1, ClientRectangle)

        DrawText(HorizontalAlignment.Center, New SolidBrush(ForeColor))
        DrawIcon(HorizontalAlignment.Left)

        DrawBorders(P1, P2, ClientRectangle)
        DrawCorners(BackColor, ClientRectangle)

        e.Graphics.DrawImage(B, 0, 0)
    End Sub
End Class

Class Seperator
    Inherits ThemeControl

    Sub New()
        AllowTransparent()
        BackColor = Color.Transparent
    End Sub

    Private _Direction As Orientation
    Property Direction() As Orientation
        Get
            Return _Direction
        End Get
        Set(ByVal value As Orientation)
            _Direction = value
            Invalidate()
        End Set
    End Property

    Private _Color1 As Color = Color.FromArgb(90, Color.Black)
    Public Property Color1() As Color
        Get
            Return _Color1
        End Get
        Set(ByVal value As Color)
            _Color1 = value
            Invalidate()
        End Set
    End Property

    Private _Color2 As Color = Color.FromArgb(14, Color.White)
    Public Property Color2() As Color
        Get
            Return _Color2
        End Get
        Set(ByVal value As Color)
            _Color2 = value
            Invalidate()
        End Set
    End Property

    Private R1 As Rectangle
    Private B1 As LinearGradientBrush
    Private Rotation As Integer

    Protected Overrides Sub OnPaint(ByVal e As PaintEventArgs)
        G.Clear(BackColor)

        If _Direction = Orientation.Horizontal Then
            G.DrawLine(New Pen(_Color1), 0, Height \ 2, Width, Height \ 2)
            G.DrawLine(New Pen(_Color2), 0, Height \ 2 + 1, Width, Height \ 2 + 1)
        Else
            G.DrawLine(New Pen(_Color1), Width \ 2, 0, Width \ 2, Height)
            G.DrawLine(New Pen(_Color2), Width \ 2 + 1, 0, Width \ 2 + 1, Height)
        End If

        e.Graphics.DrawImage(B, 0, 0)
    End Sub
End Class
