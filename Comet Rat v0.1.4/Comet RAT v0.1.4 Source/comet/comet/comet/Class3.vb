Option Strict On

Imports System.Drawing.Text
Imports System.Drawing.Drawing2D
Imports System.ComponentModel
Imports System.Runtime.InteropServices
#Region "Global Functions/ Subs/ Enums"
Module DrawHelpers
    Public Function RoundRectangle(ByVal Rectangle As Rectangle, ByVal Curve As Integer) As GraphicsPath
        Dim P As GraphicsPath = New GraphicsPath()
        Dim ArcRectangleWidth As Integer = Curve * 2
        P.AddArc(New Rectangle(Rectangle.X, Rectangle.Y, ArcRectangleWidth, ArcRectangleWidth), -180, 90)
        P.AddArc(New Rectangle(Rectangle.Width - ArcRectangleWidth + Rectangle.X, Rectangle.Y, ArcRectangleWidth, ArcRectangleWidth), -90, 90)
        P.AddArc(New Rectangle(Rectangle.Width - ArcRectangleWidth + Rectangle.X, Rectangle.Height - ArcRectangleWidth + Rectangle.Y, ArcRectangleWidth, ArcRectangleWidth), 0, 90)
        P.AddArc(New Rectangle(Rectangle.X, Rectangle.Height - ArcRectangleWidth + Rectangle.Y, ArcRectangleWidth, ArcRectangleWidth), 90, 90)
        P.AddLine(New Point(Rectangle.X, Rectangle.Height - ArcRectangleWidth + Rectangle.Y), New Point(Rectangle.X, Curve + Rectangle.Y))
        Return P
    End Function

    Public Function RoundRect(x!, y!, w!, h!, Optional r! = 0.3, Optional TL As Boolean = True, Optional TR As Boolean = True, Optional BR As Boolean = True, Optional BL As Boolean = True) As GraphicsPath
        Dim d! = Math.Min(w, h) * r, xw = x + w, yh = y + h
        RoundRect = New GraphicsPath
        With RoundRect
            If TL Then .AddArc(x, y, d, d, 180, 90) Else .AddLine(x, y, x, y)
            If TR Then .AddArc(xw - d, y, d, d, 270, 90) Else .AddLine(xw, y, xw, y)
            If BR Then .AddArc(xw - d, yh - d, d, d, 0, 90) Else .AddLine(xw, yh, xw, yh)
            If BL Then .AddArc(x, yh - d, d, d, 90, 90) Else .AddLine(x, yh, x, yh)
            .CloseFigure()
        End With
    End Function
End Module
Enum MouseState As Byte
    None = 0
    Over = 1
    Down = 2
    Block = 3
End Enum
#End Region


Public Class VisualStudioContainer
    Inherits ContainerControl

#Region "Declarations"
    Private _AllowClose As Boolean = True
    Private _AllowMinimize As Boolean = True
    Private _AllowMaximize As Boolean = True
    Private _FontSize As Integer = 12
    Private _ShowIcon As Boolean = True
    Private State As MouseState = MouseState.None
    Private MouseXLoc As Integer
    Private MouseYLoc As Integer
    Private CaptureMovement As Boolean = False
    Private Const MoveHeight As Integer = 35
    Private MouseP As Point = New Point(0, 0)
    Private _FontColour As Color = Color.FromArgb(153, 153, 153)
    Private _BaseColour As Color = Color.FromArgb(45, 45, 48)
    Private _IconColour As Color = Color.FromArgb(255, 255, 255)
    Private _ControlBoxColours As Color = Color.FromArgb(248, 248, 248)
    Private _BorderColour As Color = Color.FromArgb(15, 15, 18)
    Private _HoverColour As Color = Color.FromArgb(63, 63, 65)
    Private _PressedColour As Color = Color.FromArgb(0, 122, 204)
    Private _Font As New Font("Microsoft Sans Serif", 9)
    Enum __IconStyle
        VSIcon
        FormIcon
    End Enum
    Private _IconStyle As __IconStyle = __IconStyle.FormIcon
    Enum __FormOrWhole
        WholeApplication
        Form
    End Enum
    Private _FormOrWhole As __FormOrWhole = __FormOrWhole.WholeApplication
    Private _Form As Form = Form.ActiveForm
#End Region

#Region "Properties"

    <Category("Control")>
    Public Property FormOrWhole As __FormOrWhole
        Get
            Return _FormOrWhole
        End Get
        Set(value As __FormOrWhole)
            _FormOrWhole = value
            Invalidate()
        End Set
    End Property

    <Category("Control")>
    Public Property Form As Form
        Get
            Return _Form
        End Get
        Set(value As Form)
            If value Is Nothing Then
                Return
            Else
                _Form = value
            End If

            Invalidate()
        End Set
    End Property

    <Category("Control")>
    Public Property IconStyle As __IconStyle
        Get
            Return _IconStyle
        End Get
        Set(value As __IconStyle)
            _IconStyle = value
            Invalidate()
        End Set
    End Property

    <Category("Control")>
    Public Property FontSize As Integer
        Get
            Return _FontSize
        End Get
        Set(value As Integer)
            _FontSize = value
        End Set
    End Property

    <Category("Control")>
    Public Property AllowMinimize As Boolean
        Get
            Return _AllowMinimize
        End Get
        Set(value As Boolean)
            _AllowMinimize = value
        End Set
    End Property

    <Category("Control")>
    Public Property AllowMaximize As Boolean
        Get
            Return _AllowMaximize
        End Get
        Set(value As Boolean)
            _AllowMaximize = value
        End Set
    End Property

    <Category("Control")>
    Public Property ShowIcon As Boolean
        Get
            Return _ShowIcon
        End Get
        Set(value As Boolean)
            _ShowIcon = value
            Invalidate()
        End Set
    End Property

    <Category("Control")>
    Public Property AllowClose As Boolean
        Get
            Return _AllowClose
        End Get
        Set(value As Boolean)
            _AllowClose = value
        End Set
    End Property

    <Category("Colours")>
    Public Property BorderColour As Color
        Get
            Return _BorderColour
        End Get
        Set(value As Color)
            _BorderColour = value
        End Set
    End Property

    <Category("Colours")>
    Public Property HoverColour As Color
        Get
            Return _HoverColour
        End Get
        Set(value As Color)
            _HoverColour = value
        End Set
    End Property

    <Category("Colours")>
    Public Property BaseColour As Color
        Get
            Return _BaseColour
        End Get
        Set(value As Color)
            _BaseColour = value
        End Set
    End Property

    <Category("Colours")>
    Public Property FontColour As Color
        Get
            Return _FontColour
        End Get
        Set(value As Color)
            _FontColour = value
        End Set
    End Property

    Protected Overrides Sub OnMouseUp(ByVal e As System.Windows.Forms.MouseEventArgs)
        MyBase.OnMouseUp(e)
        CaptureMovement = False
        State = MouseState.Over
        Invalidate()
    End Sub

    Protected Overrides Sub OnMouseEnter(e As EventArgs)
        MyBase.OnMouseEnter(e)
        State = MouseState.Over : Invalidate()
    End Sub

    Protected Overrides Sub OnMouseLeave(e As EventArgs)
        MyBase.OnMouseLeave(e)
        State = MouseState.None : Invalidate()
    End Sub

    Protected Overrides Sub OnMouseMove(e As MouseEventArgs)
        MyBase.OnMouseMove(e)
        MouseXLoc = e.Location.X
        MouseYLoc = e.Location.Y
        Invalidate()
        If CaptureMovement Then
            Parent.Location = MousePosition - CType(MouseP, Size)
        End If
        If e.Y > 26 Then Cursor = Cursors.Arrow Else Cursor = Cursors.Hand
    End Sub

    Private Delegate Sub _InvokeForm(e As MouseEventArgs)

    Protected Overrides Sub OnMouseDown(e As MouseEventArgs)
        MyBase.OnMouseDown(e)
        If MouseXLoc > Width - 30 AndAlso MouseXLoc < Width AndAlso MouseYLoc < 26 Then
            If _AllowClose Then
                If _FormOrWhole = __FormOrWhole.Form Then
                    If _Form Is "(none)" Then
                        Environment.Exit(0)
                    Else
                        If _Form.InvokeRequired Then
                            _Form.Invoke(New _InvokeForm(AddressOf OnMouseDown), e)
                        Else
                            _Form.Close()
                        End If
                    End If

                Else
                    Environment.Exit(0)
                End If
            End If
        ElseIf MouseXLoc > Width - 60 AndAlso MouseXLoc < Width - 30 AndAlso MouseYLoc < 26 Then
            If _AllowMaximize Then
                Select Case FindForm.WindowState
                    Case FormWindowState.Maximized
                        FindForm.WindowState = FormWindowState.Normal
                    Case FormWindowState.Normal
                        FindForm.WindowState = FormWindowState.Maximized
                End Select
            End If
        ElseIf MouseXLoc > Width - 90 AndAlso MouseXLoc < Width - 60 AndAlso MouseYLoc < 26 Then
            If _AllowMinimize Then
                Select Case FindForm.WindowState
                    Case FormWindowState.Normal
                        FindForm.WindowState = FormWindowState.Minimized
                    Case FormWindowState.Maximized
                        FindForm.WindowState = FormWindowState.Minimized
                End Select
            End If
        ElseIf e.Button = Windows.Forms.MouseButtons.Left And New Rectangle(0, 0, Width - 90, MoveHeight).Contains(e.Location) Then
            CaptureMovement = True
            MouseP = e.Location
        ElseIf e.Button = Windows.Forms.MouseButtons.Left And New Rectangle(Width - 90, 22, 75, 13).Contains(e.Location) Then
            CaptureMovement = True
            MouseP = e.Location
        ElseIf e.Button = Windows.Forms.MouseButtons.Left And New Rectangle(Width - 15, 0, 15, MoveHeight).Contains(e.Location) Then
            CaptureMovement = True
            MouseP = e.Location
        Else
            Focus()
        End If
        State = MouseState.Down
        Invalidate()
    End Sub
#End Region

#Region "Draw Control"

    Sub New()
        SetStyle(ControlStyles.AllPaintingInWmPaint Or ControlStyles.UserPaint Or
                ControlStyles.ResizeRedraw Or ControlStyles.OptimizedDoubleBuffer, True)
        Me.DoubleBuffered = True
        Me.BackColor = _BaseColour
        Me.Dock = DockStyle.Fill
    End Sub

    Protected Overrides Sub OnCreateControl()
        MyBase.OnCreateControl()
        ParentForm.FormBorderStyle = FormBorderStyle.None
        ParentForm.AllowTransparency = False
        ParentForm.TransparencyKey = Color.Fuchsia
        ParentForm.FindForm.StartPosition = FormStartPosition.CenterParent
        Dock = DockStyle.Fill
        Invalidate()
    End Sub

    Dim Points1() As Point = {New Point(9, 11), New Point(16, 17)}
    Dim Points2() As Point = {New Point(9, 22), New Point(16, 17)}
    Dim Points3() As Point = {New Point(16, 17), New Point(26, 7)}
    Dim Points4() As Point = {New Point(16, 17), New Point(25, 26)}

    Protected Overrides Sub OnPaint(e As PaintEventArgs)
        Dim G = e.Graphics
        With G
            .TextRenderingHint = TextRenderingHint.ClearTypeGridFit
            .SmoothingMode = SmoothingMode.AntiAlias
            .PixelOffsetMode = PixelOffsetMode.HighQuality
            .FillRectangle(New SolidBrush(_BaseColour), New Rectangle(0, 0, Width, Height))
            .DrawRectangle(New Pen(_BorderColour), New Rectangle(0, 0, Width, Height))
            Select Case State
                Case MouseState.Over
                    If MouseXLoc > Width - 30 AndAlso MouseXLoc < Width AndAlso MouseYLoc < 26 Then
                        .FillRectangle(New SolidBrush(_HoverColour), New Rectangle(Width - 30, 1, 29, 25))
                    ElseIf MouseXLoc > Width - 60 AndAlso MouseXLoc < Width - 30 AndAlso MouseYLoc < 26 Then
                        .FillRectangle(New SolidBrush(_HoverColour), New Rectangle(Width - 60, 1, 30, 25))
                    ElseIf MouseXLoc > Width - 90 AndAlso MouseXLoc < Width - 60 AndAlso MouseYLoc < 26 Then
                        .FillRectangle(New SolidBrush(_HoverColour), New Rectangle(Width - 90, 1, 30, 25))
                    End If
            End Select
            ''Close Button
            .DrawLine(New Pen(_ControlBoxColours, 2), Width - 20, 10, Width - 12, 18)
            .DrawLine(New Pen(_ControlBoxColours, 2), Width - 20, 18, Width - 12, 10)
            ''Minimize Button
            .FillRectangle(New SolidBrush(_ControlBoxColours), Width - 79, 17, 8, 2)
            ''Maximize Button
            If FindForm.WindowState = FormWindowState.Normal Then
                .DrawLine(New Pen(_ControlBoxColours), Width - 49, 18, Width - 40, 18)
                .DrawLine(New Pen(_ControlBoxColours), Width - 49, 18, Width - 49, 10)
                .DrawLine(New Pen(_ControlBoxColours), Width - 40, 18, Width - 40, 10)
                .DrawLine(New Pen(_ControlBoxColours), Width - 49, 10, Width - 40, 10)
                .DrawLine(New Pen(_ControlBoxColours), Width - 49, 11, Width - 40, 11)
            ElseIf FindForm.WindowState = FormWindowState.Maximized Then
                .DrawLine(New Pen(_ControlBoxColours), Width - 48, 16, Width - 39, 16)
                .DrawLine(New Pen(_ControlBoxColours), Width - 48, 16, Width - 48, 8)
                .DrawLine(New Pen(_ControlBoxColours), Width - 39, 16, Width - 39, 8)
                .DrawLine(New Pen(_ControlBoxColours), Width - 48, 8, Width - 39, 8)
                .DrawLine(New Pen(_ControlBoxColours), Width - 48, 9, Width - 39, 9)
                .FillRectangle(New SolidBrush(_BaseColour), New Rectangle(Width - 51, 12, 9, 8))
                .DrawLine(New Pen(_ControlBoxColours), Width - 51, 20, Width - 42, 20)
                .DrawLine(New Pen(_ControlBoxColours), Width - 51, 20, Width - 51, 12)
                .DrawLine(New Pen(_ControlBoxColours), Width - 42, 20, Width - 42, 12)
                .DrawLine(New Pen(_ControlBoxColours), Width - 51, 12, Width - 42, 12)
                .DrawLine(New Pen(_ControlBoxColours), Width - 51, 13, Width - 42, 13)
            End If
            If _ShowIcon Then
                Select Case _IconStyle
                    Case __IconStyle.FormIcon
                        .DrawIcon(FindForm.Icon, New Rectangle(6, 6, 22, 22))
                        .DrawString(Text, _Font, New SolidBrush(_FontColour), New RectangleF(37, 0, Width - 110, 32), New StringFormat With {.LineAlignment = StringAlignment.Center, .Alignment = StringAlignment.Near})
                    Case Else
                        .DrawLines(New Pen(_IconColour, 3), Points1)
                        .DrawLines(New Pen(_IconColour, 3), Points2)
                        .DrawLines(New Pen(_IconColour, 4), Points3)
                        .DrawLines(New Pen(_IconColour, 4), Points4)
                        .DrawLine(New Pen(_IconColour, 3), New Point(9, 11), New Point(9, 22))
                        .DrawLine(New Pen(_IconColour, 4), 26, 6, 26, 28)
                        .DrawString(Text, _Font, New SolidBrush(_FontColour), New RectangleF(37, 0, Width - 110, 32), New StringFormat With {.LineAlignment = StringAlignment.Center, .Alignment = StringAlignment.Near})
                End Select
            Else
                .DrawString(Text, _Font, New SolidBrush(_FontColour), New RectangleF(5, 0, Width - 110, 30), New StringFormat With {.LineAlignment = StringAlignment.Center, .Alignment = StringAlignment.Near})
            End If
            .InterpolationMode = InterpolationMode.HighQualityBicubic
        End With
    End Sub

#End Region

End Class

Public Class VisualStudioButton
    Inherits Control

#Region "Declarations"
    Private State As MouseState = MouseState.None
    Private _FontColour As Color = Color.FromArgb(153, 153, 153)
    Private _BaseColour As Color = Color.FromArgb(45, 45, 48)
    Private _IconColour As Color = Color.FromArgb(255, 255, 255)
    Private _BorderColour As Color = Color.FromArgb(15, 15, 18)
    Private _HoverColour As Color = Color.FromArgb(60, 60, 62)
    Private _PressedColour As Color = Color.FromArgb(37, 37, 39)
    Private _ShowBorder As Boolean = True
    Private _ShowImage As Boolean = False
    Private _ShowText As Boolean
    Private _Image As Image = Nothing
    Private _TextAlignment As StringAlignment = StringAlignment.Center
    Private _ImageAlignment As __ImageAlignment = __ImageAlignment.Left
#End Region

#Region "Properties"

    Enum __ImageAlignment
        Left
        Middle
        Right
    End Enum

    <Category("Control")>
    Public Property ImageAlignment As __ImageAlignment
        Get
            Return _ImageAlignment
        End Get
        Set(value As __ImageAlignment)
            If _ShowText AndAlso (value = __ImageAlignment.Middle) Then
                _ImageAlignment = __ImageAlignment.Left
            Else
                _ImageAlignment = value
            End If
            Invalidate()
        End Set
    End Property

    <Category("Control")>
    Public Property ImageChoice As Image
        Get
            Return _Image
        End Get
        Set(value As Image)
            _Image = value
            Invalidate()
        End Set
    End Property

    <Category("Control")>
    Public Property TextAlignment As StringAlignment
        Get
            Return _TextAlignment
        End Get
        Set(value As StringAlignment)
            _TextAlignment = value
            Invalidate()
        End Set
    End Property

    <Category("Control")>
    Public Property ShowImage As Boolean
        Get
            Return _ShowImage
        End Get
        Set(value As Boolean)
            _ShowImage = value
            Invalidate()
        End Set
    End Property

    <Category("Control")>
    Public Property ShowText As Boolean
        Get
            Return _ShowText
        End Get
        Set(value As Boolean)
            If (_ImageAlignment = __ImageAlignment.Middle) AndAlso (ShowImage = True) AndAlso (value = True) Then
                _ImageAlignment = __ImageAlignment.Left
            End If
            _ShowText = value
            Invalidate()
        End Set
    End Property

    <Category("Control")>
    Public Property ShowBorder As Boolean
        Get
            Return _ShowBorder
        End Get
        Set(value As Boolean)
            _ShowBorder = value
            Invalidate()
        End Set
    End Property

    <Category("Colours")>
    Public Property BorderColour As Color
        Get
            Return _BorderColour
        End Get
        Set(value As Color)
            _BorderColour = value
        End Set
    End Property

    <Category("Colours")>
    Public Property HoverColour As Color
        Get
            Return _HoverColour
        End Get
        Set(value As Color)
            _HoverColour = value
        End Set
    End Property

    <Category("Colours")>
    Public Property BaseColour As Color
        Get
            Return _BaseColour
        End Get
        Set(value As Color)
            _BaseColour = value
        End Set
    End Property

    <Category("Colours")>
    Public Property FontColour As Color
        Get
            Return _FontColour
        End Get
        Set(value As Color)
            _FontColour = value
        End Set
    End Property

    Protected Overrides Sub OnMouseUp(ByVal e As System.Windows.Forms.MouseEventArgs)
        MyBase.OnMouseUp(e)
        State = MouseState.Over
        Invalidate()
    End Sub

    Protected Overrides Sub OnMouseEnter(e As EventArgs)
        MyBase.OnMouseEnter(e)
        State = MouseState.Over
        Invalidate()
    End Sub

    Protected Overrides Sub OnMouseLeave(e As EventArgs)
        MyBase.OnMouseLeave(e)
        State = MouseState.None
        Invalidate()
    End Sub

    Protected Overrides Sub OnMouseDown(e As MouseEventArgs)
        MyBase.OnMouseDown(e)
        State = MouseState.Down
        Invalidate()
    End Sub

#End Region

#Region "Draw Control"

    Sub New()
        SetStyle(ControlStyles.AllPaintingInWmPaint Or ControlStyles.UserPaint Or
                ControlStyles.ResizeRedraw Or ControlStyles.OptimizedDoubleBuffer, True)
        Me.DoubleBuffered = True
        Me.BackColor = _BaseColour
    End Sub

    Protected Overrides Sub OnPaint(e As PaintEventArgs)
        Dim G = e.Graphics
        With G
            .TextRenderingHint = TextRenderingHint.ClearTypeGridFit
            .SmoothingMode = SmoothingMode.AntiAlias
            .PixelOffsetMode = PixelOffsetMode.HighQuality
            Select Case State
                Case MouseState.None
                    .FillRectangle(New SolidBrush(_BaseColour), New Rectangle(0, 0, Width, Height))
                Case MouseState.Over
                    .FillRectangle(New SolidBrush(_HoverColour), New Rectangle(0, 0, Width, Height))
                Case MouseState.Down
                    .FillRectangle(New SolidBrush(_PressedColour), New Rectangle(0, 0, Width, Height))
            End Select
            If _ShowBorder Then
                .DrawRectangle(New Pen(_BorderColour, 1), New Rectangle(0, 0, Width, Height))
            End If
            If _ShowImage Then
                If _ShowText Then
                    If (Width > 50) AndAlso (Height > 30) Then
                        If _ImageAlignment = __ImageAlignment.Left Then
                            .DrawImage(_Image, New Rectangle(10, 10, Height - 20, Height - 20))
                            .DrawString(Text, Font, New SolidBrush(_FontColour), New Rectangle(0 + (Height - 5), 0, (Width - 20) - (Height - 10), Height), New StringFormat With {.Alignment = _TextAlignment, .LineAlignment = StringAlignment.Center})
                        ElseIf _ImageAlignment = __ImageAlignment.Right Then
                            .DrawImage(_Image, New Rectangle((Width - 20) - (Height - 20), 10, Height - 20, Height - 20))
                            .DrawString(Text, Font, New SolidBrush(_FontColour), New Rectangle(10, 0, (Width - 20) - (Height - 20), Height), New StringFormat With {.Alignment = _TextAlignment, .LineAlignment = StringAlignment.Center})
                        End If
                    Else
                        .DrawString(Text, Font, New SolidBrush(_FontColour), New Rectangle(10, 0, Width - 20, Height), New StringFormat With {.Alignment = _TextAlignment, .LineAlignment = StringAlignment.Center})
                    End If
                Else
                    If _ImageAlignment = __ImageAlignment.Left Then
                        .DrawImage(_Image, New Rectangle(10, 10, Height - 20, Height - 20))
                    ElseIf _ImageAlignment = __ImageAlignment.Middle Then
                        .DrawImage(_Image, New Rectangle(CInt((Width / 2) - ((Height - 20) / 2)), 10, Height - 20, Height - 20))
                    Else
                        .DrawImage(_Image, New Rectangle((Width - 10) - (Height - 20), 10, Height - 20, Height - 20))
                    End If
                End If
            Else
                If _ShowText Then
                    .DrawString(Text, Font, New SolidBrush(_FontColour), New Rectangle(10, 0, Width - 20, Height), New StringFormat With {.Alignment = _TextAlignment, .LineAlignment = StringAlignment.Center})
                End If
            End If
            .InterpolationMode = InterpolationMode.HighQualityBicubic
        End With
    End Sub

#End Region

End Class

Public Class VisualStudioSeperator
    Inherits Control

#Region "Declarations"
    Private _FontColour As Color = Color.FromArgb(153, 153, 153)
    Private _LineColour As Color = Color.FromArgb(0, 122, 204)
    Private _Font As New Font("Microsoft Sans Serif", 8)
    Private _ShowText As Boolean
    Private _TextAlignment As StringAlignment = StringAlignment.Center
    Private _TextLocation As __TextLocation = __TextLocation.Left
    Private _AddEndNotch As Boolean = False
    Private _UnderlineText As Boolean = False
    Private _ShowTextAboveLine As Boolean = False
    Private _OnlyUnderlineText As Boolean = False
#End Region

#Region "Properties"

    <Category("Control")>
    Public Property TextLocation As __TextLocation
        Get
            Return _TextLocation
        End Get
        Set(value As __TextLocation)
            _TextLocation = value
            Invalidate()
        End Set
    End Property

    <Category("Control")>
    Public Property TextAlignment As StringAlignment
        Get
            Return _TextAlignment
        End Get
        Set(value As StringAlignment)
            _TextAlignment = value
            Invalidate()
        End Set
    End Property

    <Category("Control")>
    Public Property ShowTextAboveLine As Boolean
        Get
            Return _ShowTextAboveLine
        End Get
        Set(value As Boolean)
            _ShowTextAboveLine = value
            Invalidate()
        End Set
    End Property

    <Category("Control")>
    Public Property OnlyUnderlineText As Boolean
        Get
            Return _OnlyUnderlineText
        End Get
        Set(value As Boolean)
            _OnlyUnderlineText = value
            Invalidate()
        End Set
    End Property

    <Category("Control")>
    Public Property UnderlineText As Boolean
        Get
            Return _UnderlineText
        End Get
        Set(value As Boolean)
            _UnderlineText = value
            Invalidate()
        End Set
    End Property

    <Category("Control")>
    Public Property AddEndNotch As Boolean
        Get
            Return _AddEndNotch
        End Get
        Set(value As Boolean)
            _AddEndNotch = value
            Invalidate()
        End Set
    End Property

    <Category("Control")>
    Public Property ShowText As Boolean
        Get
            Return _ShowText
        End Get
        Set(value As Boolean)
            _ShowText = value
            Invalidate()
        End Set
    End Property

    <Category("Colours")>
    Public Property LineColour As Color
        Get
            Return _LineColour
        End Get
        Set(value As Color)
            _LineColour = value
        End Set
    End Property

    <Category("Colours")>
    Public Property FontColour As Color
        Get
            Return _FontColour
        End Get
        Set(value As Color)
            _FontColour = value
        End Set
    End Property

    Protected Overrides Sub OnSizeChanged(e As EventArgs)
        MyBase.OnSizeChanged(e)
        If _ShowText AndAlso (Height < Font.Size * 2 + 3) Then
            Me.Size = New Size(Width, CInt(Font.Size * 2 + 3))
        End If
        Invalidate()
    End Sub

    Enum __TextLocation
        Left
        Middle
        Right
    End Enum

#End Region

#Region "Draw Control"

    Sub New()
        SetStyle(ControlStyles.AllPaintingInWmPaint Or ControlStyles.UserPaint Or
                ControlStyles.ResizeRedraw Or ControlStyles.OptimizedDoubleBuffer Or ControlStyles.SupportsTransparentBackColor, True)
        Me.DoubleBuffered = True
        Me.BackColor = Color.Transparent
    End Sub

    Protected Overrides Sub OnPaint(e As PaintEventArgs)
        Dim G = e.Graphics
        With G
            .TextRenderingHint = TextRenderingHint.AntiAlias
            .SmoothingMode = SmoothingMode.AntiAlias
            .PixelOffsetMode = PixelOffsetMode.HighQuality
            If _ShowText AndAlso Not _ShowTextAboveLine Then
                Select Case _TextLocation
                    Case __TextLocation.Left
                        .DrawString(Text, Font, New SolidBrush(_FontColour), New Rectangle(0, 0, CInt(.MeasureString(Text, Font).Width + 10), Height), New StringFormat With {.Alignment = _TextAlignment, .LineAlignment = StringAlignment.Center})
                        .DrawLine(New Pen(_LineColour), New Point(CInt(.MeasureString(Text, Font).Width + 20), CInt(Height / 2)), New Point(CInt(Width), CInt(Height / 2)))
                        If _AddEndNotch Then
                            .DrawLine(New Pen(_LineColour), New Point(Width - 1, CInt((Height / 2) - .MeasureString(Text, Font).Height / 2)), New Point(Width - 1, CInt((Height / 2) + .MeasureString(Text, Font).Height / 2)))
                        End If
                        If _UnderlineText Then
                            .DrawLine(New Pen(_LineColour), 0, CInt((Height / 2) + .MeasureString(Text, Font).Height / 2) + 3, CInt(.MeasureString(Text, Font).Width + 20), CInt((Height / 2) + .MeasureString(Text, Font).Height / 2) + 3)
                            .DrawLine(New Pen(_LineColour), CInt(.MeasureString(Text, Font).Width + 20), CInt((Height / 2) + .MeasureString(Text, Font).Height / 2) + 3, CInt(.MeasureString(Text, Font).Width + 20), CInt(Height / 2))
                        End If
                    Case __TextLocation.Middle
                        .DrawString(Text, Font, New SolidBrush(_FontColour), New Rectangle(CInt((Width / 2) - (.MeasureString(Text, Font).Width / 2) - 10), 0, CInt(.MeasureString(Text, Font).Width) + 10, Height), New StringFormat With {.Alignment = _TextAlignment, .LineAlignment = StringAlignment.Center})
                        .DrawLine(New Pen(_LineColour), New Point(0, CInt(Height / 2)), New Point((CInt((Width / 2) - (.MeasureString(Text, Font).Width / 2) - 20)), CInt(Height / 2)))
                        .DrawLine(New Pen(_LineColour), New Point((CInt((Width / 2) + (.MeasureString(Text, Font).Width / 2) + 10)), CInt(Height / 2)), New Point(Width, CInt(Height / 2)))
                        If _AddEndNotch Then
                            .DrawLine(New Pen(_LineColour), New Point(Width - 1, CInt((Height / 2) - .MeasureString(Text, Font).Height / 2)), New Point(Width - 1, CInt((Height / 2) + .MeasureString(Text, Font).Height / 2)))
                            .DrawLine(New Pen(_LineColour), New Point(1, CInt((Height / 2) - .MeasureString(Text, Font).Height / 2)), New Point(1, CInt((Height / 2) + .MeasureString(Text, Font).Height / 2)))
                        End If
                        If _UnderlineText Then
                            .DrawLine(New Pen(_LineColour), (CInt((Width / 2) - (.MeasureString(Text, Font).Width / 2) - 20)), CInt(Height / 2), (CInt((Width / 2) - (.MeasureString(Text, Font).Width / 2) - 20)), CInt((Height / 2) + .MeasureString(Text, Font).Height / 2) + 3)
                            .DrawLine(New Pen(_LineColour), (CInt((Width / 2) + (.MeasureString(Text, Font).Width / 2) + 10)), CInt(Height / 2), (CInt((Width / 2) + (.MeasureString(Text, Font).Width / 2) + 10)), CInt((Height / 2) + .MeasureString(Text, Font).Height / 2) + 3)
                            .DrawLine(New Pen(_LineColour), (CInt((Width / 2) - (.MeasureString(Text, Font).Width / 2) - 20)), CInt((Height / 2) + .MeasureString(Text, Font).Height / 2) + 3, (CInt((Width / 2) + (.MeasureString(Text, Font).Width / 2) + 10)), CInt((Height / 2) + .MeasureString(Text, Font).Height / 2) + 3)
                        End If
                    Case __TextLocation.Right
                        .DrawString(Text, Font, New SolidBrush(_FontColour), New Rectangle(CInt(Width - .MeasureString(Text, Font).Width - 10), 0, CInt(.MeasureString(Text, Font).Width + 10), Height), New StringFormat With {.Alignment = _TextAlignment, .LineAlignment = StringAlignment.Center})
                        .DrawLine(New Pen(_LineColour), New Point(0, CInt(Height / 2)), New Point(CInt(Width - .MeasureString(Text, Font).Width - 20), CInt(Height / 2)))
                        If _AddEndNotch Then
                            .DrawLine(New Pen(_LineColour), New Point(1, CInt((Height / 2) - .MeasureString(Text, Font).Height / 2)), New Point(1, CInt((Height / 2) + .MeasureString(Text, Font).Height / 2)))
                        End If
                        If _UnderlineText Then
                            .DrawLine(New Pen(_LineColour), CInt(Width - .MeasureString(Text, Font).Width - 20), CInt((Height / 2) + .MeasureString(Text, Font).Height / 2) + 3, Width, CInt((Height / 2) + .MeasureString(Text, Font).Height / 2) + 3)
                            .DrawLine(New Pen(_LineColour), CInt(Width - .MeasureString(Text, Font).Width - 20), CInt((Height / 2) + .MeasureString(Text, Font).Height / 2) + 3, CInt(Width - .MeasureString(Text, Font).Width - 20), CInt(Height / 2))
                        End If
                End Select
            ElseIf (_ShowText) AndAlso (_ShowTextAboveLine) Then
                If _OnlyUnderlineText Then
                    .DrawLine(New Pen(_LineColour), New Point(5, CInt(Height / 2) + 6), New Point(CInt(.MeasureString(Text, Font).Width + 8), CInt(Height / 2) + 6))
                    .DrawString(Text, Font, New SolidBrush(_FontColour), New Rectangle(5, 0, Width - 10, CInt(Height / 2 + 3)), New StringFormat With {.Alignment = StringAlignment.Near, .LineAlignment = StringAlignment.Far})
                Else
                    .DrawLine(New Pen(_LineColour), New Point(0, CInt(Height / 2) + 6), New Point(Width, CInt(Height / 2) + 6))
                    If _AddEndNotch Then
                        .DrawLine(New Pen(_LineColour), New Point(Width - 1, CInt(Height / 2) - 5), New Point(Width - 1, CInt((Height / 2) + 5)))
                        .DrawLine(New Pen(_LineColour), New Point(1, CInt(Height / 2) - 5), New Point(1, CInt((Height / 2) + 5)))
                    End If
                    .DrawString(Text, Font, New SolidBrush(_FontColour), New Rectangle(5, 0, Width - 10, CInt(Height / 2 + 3)), New StringFormat With {.Alignment = _TextAlignment, .LineAlignment = StringAlignment.Far})
                End If
            Else
                If _OnlyUnderlineText Then
                    .DrawLine(New Pen(_LineColour), New Point(5, CInt(Height / 2) + 6), New Point(CInt(.MeasureString(Text, Font).Width + 8), CInt(Height / 2) + 6))
                    .DrawString(Text, Font, New SolidBrush(_FontColour), New Rectangle(5, 0, Width - 10, CInt(Height / 2 + 3)), New StringFormat With {.Alignment = StringAlignment.Near, .LineAlignment = StringAlignment.Far})
                Else
                    .DrawLine(New Pen(_LineColour), New Point(0, CInt(Height / 2)), New Point(Width, CInt(Height / 2)))
                    If _AddEndNotch Then
                        .DrawLine(New Pen(_LineColour), New Point(Width - 1, CInt((Height / 2) - .MeasureString(Text, Font).Height / 2)), New Point(Width - 1, CInt((Height / 2) + .MeasureString(Text, Font).Height / 2)))
                        .DrawLine(New Pen(_LineColour), New Point(1, CInt((Height / 2) - .MeasureString(Text, Font).Height / 2)), New Point(1, CInt((Height / 2) + .MeasureString(Text, Font).Height / 2)))
                    End If
                End If
            End If
            .InterpolationMode = InterpolationMode.HighQualityBicubic
        End With
    End Sub

#End Region

End Class

Public Class VisualStudioStatusBar
    Inherits Control

#Region "Variables"
    Private _TextColour As Color = Color.FromArgb(153, 153, 153)
    Private _BaseColour As Color = Color.FromArgb(45, 45, 48)
    Private _RectColour As Color = Color.FromArgb(0, 122, 204)
    Private _BorderColour As Color = Color.FromArgb(27, 27, 29)
    Private _SeperatorColour As Color = Color.FromArgb(45, 45, 48)
    Private _ShowLine As Boolean = True
    Private _LinesToShow As LinesCount = LinesCount.One
    Private _NumberOfStrings As AmountOfStrings = AmountOfStrings.One
    Private _ShowBorder As Boolean = True
    Private _FirstLabelStringFormat As StringFormat
    Private _FirstLabelText As String = "Label1"
    Private _FirstLabelAlignment As Alignments = Alignments.Left
    Private _SecondLabelStringFormat As StringFormat
    Private _SecondLabelText As String = "Label2"
    Private _SecondLabelAlignment As Alignments = Alignments.Center
    Private _ThirdLabelStringFormat As StringFormat
    Private _ThirdLabelText As String = "Label3"
    Private _ThirdLabelAlignment As Alignments = Alignments.Center
#End Region

#Region "Properties"

    <Category("First Label Options")>
    Public Property FirstLabelText As String
        Get
            Return _FirstLabelText
        End Get
        Set(value As String)
            _FirstLabelText = value
        End Set
    End Property

    <Category("First Label Options")>
    Public Property FirstLabelAlignment As Alignments
        Get
            Return _FirstLabelAlignment
        End Get
        Set(value As Alignments)
            Select Case value
                Case Alignments.Left
                    _FirstLabelStringFormat = New StringFormat With {.Alignment = StringAlignment.Near, .LineAlignment = StringAlignment.Center}
                    _FirstLabelAlignment = value
                Case Alignments.Center
                    _FirstLabelStringFormat = New StringFormat With {.Alignment = StringAlignment.Center, .LineAlignment = StringAlignment.Center}
                    _FirstLabelAlignment = value
                Case Alignments.Right
                    _FirstLabelStringFormat = New StringFormat With {.Alignment = StringAlignment.Far, .LineAlignment = StringAlignment.Center}
                    _FirstLabelAlignment = value
            End Select
        End Set
    End Property

    <Category("Second Label Options")>
    Public Property SecondLabelText As String
        Get
            Return _SecondLabelText
        End Get
        Set(value As String)
            _SecondLabelText = value
        End Set
    End Property

    <Category("Second Label Options")>
    Public Property SecondLabelAlignment As Alignments
        Get
            Return _SecondLabelAlignment
        End Get
        Set(value As Alignments)
            Select Case value
                Case Alignments.Left
                    _SecondLabelStringFormat = New StringFormat With {.Alignment = StringAlignment.Near, .LineAlignment = StringAlignment.Center}
                    _SecondLabelAlignment = value
                Case Alignments.Center
                    _SecondLabelStringFormat = New StringFormat With {.Alignment = StringAlignment.Center, .LineAlignment = StringAlignment.Center}
                    _SecondLabelAlignment = value
                Case Alignments.Right
                    _SecondLabelStringFormat = New StringFormat With {.Alignment = StringAlignment.Far, .LineAlignment = StringAlignment.Center}
                    _SecondLabelAlignment = value
            End Select
        End Set
    End Property

    <Category("Third Label Options")>
    Public Property ThirdLabelText As String
        Get
            Return _ThirdLabelText
        End Get
        Set(value As String)
            _ThirdLabelText = value
        End Set
    End Property

    <Category("Third Label Options")>
    Public Property ThirdLabelAlignment As Alignments
        Get
            Return _ThirdLabelAlignment
        End Get
        Set(value As Alignments)
            Select Case value
                Case Alignments.Left
                    _ThirdLabelStringFormat = New StringFormat With {.Alignment = StringAlignment.Near, .LineAlignment = StringAlignment.Center}
                    _ThirdLabelAlignment = value
                Case Alignments.Center
                    _ThirdLabelStringFormat = New StringFormat With {.Alignment = StringAlignment.Center, .LineAlignment = StringAlignment.Center}
                    _ThirdLabelAlignment = value
                Case Alignments.Right
                    _ThirdLabelStringFormat = New StringFormat With {.Alignment = StringAlignment.Far, .LineAlignment = StringAlignment.Center}
                    _ThirdLabelAlignment = value
            End Select
        End Set
    End Property

    <Category("Colours")>
    Public Property BaseColour As Color
        Get
            Return _BaseColour
        End Get
        Set(value As Color)
            _BaseColour = value
        End Set
    End Property

    <Category("Colours")>
    Public Property BorderColour As Color
        Get
            Return _BorderColour
        End Get
        Set(value As Color)
            _BorderColour = value
        End Set
    End Property

    <Category("Colours")>
    Public Property TextColour As Color
        Get
            Return _TextColour
        End Get
        Set(value As Color)
            _TextColour = value
        End Set
    End Property

    Enum LinesCount As Integer
        None = 0
        One = 1
        Two = 2
    End Enum

    Enum AmountOfStrings
        One
        Two
        Three
    End Enum

    Enum Alignments
        Left
        Center
        Right
    End Enum

    <Category("Control")>
    Public Property AmountOfString As AmountOfStrings
        Get
            Return _NumberOfStrings
        End Get
        Set(value As AmountOfStrings)
            _NumberOfStrings = value
        End Set
    End Property

    <Category("Control")>
    Public Property LinesToShow As LinesCount
        Get
            Return _LinesToShow
        End Get
        Set(value As LinesCount)
            _LinesToShow = value
        End Set
    End Property

    Public Property ShowBorder As Boolean
        Get
            Return _ShowBorder
        End Get
        Set(value As Boolean)
            _ShowBorder = value
        End Set
    End Property

    Protected Overrides Sub CreateHandle()
        MyBase.CreateHandle()
        Dock = DockStyle.Bottom
    End Sub

    <Category("Colours")>
    Public Property RectangleColor As Color
        Get
            Return _RectColour
        End Get
        Set(value As Color)
            _RectColour = value
        End Set
    End Property

    Public Property ShowLine As Boolean
        Get
            Return _ShowLine
        End Get
        Set(value As Boolean)
            _ShowLine = value
        End Set
    End Property

#End Region

#Region "Draw Control"

    Sub New()
        SetStyle(ControlStyles.AllPaintingInWmPaint Or ControlStyles.UserPaint Or
                 ControlStyles.ResizeRedraw Or ControlStyles.OptimizedDoubleBuffer, True)
        DoubleBuffered = True
        Font = New Font("Segoe UI", 9)
        Size = New Size(Width, 20)
        Cursor = Cursors.Arrow
    End Sub

    Protected Overrides Sub OnPaint(e As PaintEventArgs)
        Dim G = e.Graphics
        Dim Base As New Rectangle(0, 0, Width, Height)
        With G
            .SmoothingMode = SmoothingMode.HighQuality
            .PixelOffsetMode = PixelOffsetMode.HighQuality
            .TextRenderingHint = TextRenderingHint.ClearTypeGridFit
            .FillRectangle(New SolidBrush(BaseColour), Base)
            Select Case _LinesToShow
                Case LinesCount.None
                    If _NumberOfStrings = AmountOfStrings.One Then
                        .DrawString(_FirstLabelText, Font, New SolidBrush(_TextColour), New Rectangle(5, 1, Width - 5, Height), _FirstLabelStringFormat)
                    ElseIf _NumberOfStrings = AmountOfStrings.Two Then
                        .DrawString(_FirstLabelText, Font, New SolidBrush(_TextColour), New Rectangle(5, 1, CInt((Width / 2 - 6)), Height), _FirstLabelStringFormat)
                        .DrawString(_SecondLabelText, Font, New SolidBrush(_TextColour), New Rectangle(CInt(Width - (Width / 2 + 5)), 1, CInt(Width / 2 - 4), Height), _SecondLabelStringFormat)
                        .DrawLine(New Pen(_SeperatorColour, 1), New Point(CInt(Width / 2), 6), New Point(CInt(Width / 2), Height - 6))
                    Else
                        .DrawString(_FirstLabelText, Font, New SolidBrush(_TextColour), New Rectangle(5, 1, CInt((Width - (Width / 3) * 2) - 6), Height), _FirstLabelStringFormat)
                        .DrawString(_SecondLabelText, Font, New SolidBrush(_TextColour), New Rectangle(CInt(Width - (Width / 3) * 2 + 5), 1, CInt(Width - (Width / 3) * 2 - 6), Height), _SecondLabelStringFormat)
                        .DrawString(_ThirdLabelText, Font, New SolidBrush(_TextColour), New Rectangle(CInt(Width - (Width / 3) + 5), 1, CInt(Width / 3 - 6), Height), _ThirdLabelStringFormat)
                        .DrawLine(New Pen(_SeperatorColour, 1), New Point(CInt(Width - (Width / 3) * 2), 6), New Point(CInt(Width - (Width / 3) * 2), Height - 6))
                        .DrawLine(New Pen(_SeperatorColour, 1), New Point(CInt(Width - (Width / 3)), 6), New Point(CInt(Width - (Width / 3)), Height - 6))
                    End If
                Case LinesCount.One
                    If _NumberOfStrings = AmountOfStrings.One Then
                        .DrawString(_FirstLabelText, Font, New SolidBrush(_TextColour), New Rectangle(22, 1, Width, Height), _FirstLabelStringFormat)
                    ElseIf _NumberOfStrings = AmountOfStrings.Two Then
                        .DrawString(_FirstLabelText, Font, New SolidBrush(_TextColour), New Rectangle(22, 1, CInt((Width / 2 - 24)), Height), _FirstLabelStringFormat)
                        .DrawString(_SecondLabelText, Font, New SolidBrush(_TextColour), New Rectangle(CInt((Width / 2 + 5)), 1, CInt(Width / 2 - 10), Height), _SecondLabelStringFormat)
                        .DrawLine(New Pen(_SeperatorColour, 1), New Point(CInt(Width / 2), 6), New Point(CInt(Width / 2), Height - 6))
                    Else
                        .DrawString(_FirstLabelText, Font, New SolidBrush(_TextColour), New Rectangle(22, 1, CInt((Width - 78) / 3), Height), _FirstLabelStringFormat)
                        .DrawString(_SecondLabelText, Font, New SolidBrush(_TextColour), New Rectangle(CInt(Width - (Width / 3) * 2 + 5), 1, CInt(Width - (Width / 3) * 2 - 12), Height), _SecondLabelStringFormat)
                        .DrawString(_ThirdLabelText, Font, New SolidBrush(_TextColour), New Rectangle(CInt(Width - (Width / 3) + 6), 1, CInt(Width / 3 - 22), Height), _ThirdLabelStringFormat)
                        .DrawLine(New Pen(_SeperatorColour, 1), New Point(CInt(Width - (Width / 3) * 2), 6), New Point(CInt(Width - (Width / 3) * 2), Height - 6))
                        .DrawLine(New Pen(_SeperatorColour, 1), New Point(CInt(Width - (Width / 3)), 6), New Point(CInt(Width - (Width / 3)), Height - 6))
                    End If
                    .FillRectangle(New SolidBrush(_RectColour), New Rectangle(5, 10, 14, 3))
                Case LinesCount.Two
                    If _NumberOfStrings = AmountOfStrings.One Then
                        .DrawString(_FirstLabelText, Font, New SolidBrush(_TextColour), New Rectangle(22, 1, Width - 44, Height), _FirstLabelStringFormat)
                    ElseIf _NumberOfStrings = AmountOfStrings.Two Then
                        .DrawString(_FirstLabelText, Font, New SolidBrush(_TextColour), New Rectangle(22, 1, CInt((Width - 46) / 2), Height), _FirstLabelStringFormat)
                        .DrawString(_SecondLabelText, Font, New SolidBrush(_TextColour), New Rectangle(CInt((Width / 2 + 5)), 1, CInt(Width / 2 - 28), Height), _SecondLabelStringFormat)
                        .DrawLine(New Pen(_SeperatorColour, 1), New Point(CInt(Width / 2), 6), New Point(CInt(Width / 2), Height - 6))
                    Else
                        .DrawString(_FirstLabelText, Font, New SolidBrush(_TextColour), New Rectangle(22, 1, CInt((Width - 78) / 3), Height), _FirstLabelStringFormat)
                        .DrawString(_SecondLabelText, Font, New SolidBrush(_TextColour), New Rectangle(CInt(Width - (Width / 3) * 2 + 5), 1, CInt(Width - (Width / 3) * 2 - 12), Height), _SecondLabelStringFormat)
                        .DrawString(_ThirdLabelText, Font, New SolidBrush(_TextColour), New Rectangle(CInt(Width - (Width / 3) + 6), 1, CInt(Width / 3 - 22), Height), _ThirdLabelStringFormat)
                        .DrawLine(New Pen(_SeperatorColour, 1), New Point(CInt(Width - (Width / 3) * 2), 6), New Point(CInt(Width - (Width / 3) * 2), Height - 6))
                        .DrawLine(New Pen(_SeperatorColour, 1), New Point(CInt(Width - (Width / 3)), 6), New Point(CInt(Width - (Width / 3)), Height - 6))
                    End If
                    .FillRectangle(New SolidBrush(_SeperatorColour), New Rectangle(5, 10, 14, 3))
                    .FillRectangle(New SolidBrush(_SeperatorColour), New Rectangle(Width - 20, 10, 14, 3))
            End Select
            If _ShowBorder Then
                .DrawRectangle(New Pen(_BorderColour, 2), New Rectangle(0, 0, Width, Height))
            Else
            End If
            .InterpolationMode = InterpolationMode.HighQualityBicubic
        End With
    End Sub

#End Region

End Class

<DefaultEvent("Scroll")>
Public Class VisualStudioVerticalScrollBar
    Inherits Control

#Region "Declarations"

    Private _BaseColour As Color = Color.FromArgb(62, 62, 66)
    Private _ThumbNormalColour As Color = Color.FromArgb(104, 104, 104)
    Private _ThumbHoverColour As Color = Color.FromArgb(158, 158, 158)
    Private _ThumbPressedColour As Color = Color.FromArgb(239, 235, 239)
    Private _ArrowNormalColour As Color = Color.FromArgb(153, 153, 153)
    Private _ArrowHoveerColour As Color = Color.FromArgb(39, 123, 181)
    Private _ArrowPressedColour As Color = Color.FromArgb(0, 113, 171)
    Private _OuterBorderColour As Color
    Private _ThumbBorderColour As Color
    Public _Minimum As Integer = 0
    Public _Maximum As Integer = 100
    Private _Value As Integer = 0
    Public _SmallChange As Integer = 1
    Private _ButtonSize As Integer = 16
    Public _LargeChange As Integer = 10
    Private _ShowOuterBorder As Boolean = False
    Private _ShowThumbBorder As Boolean = False
    Private _AmountOfInnerLines As __InnerLineCount = __InnerLineCount.None
    Private _MousePos As New Point(_MouseXLoc, _MouseYLoc)
    Private _ThumbState As MouseState = MouseState.None
    Private _ArrowState As MouseState = MouseState.None
    Private _MouseXLoc As Integer
    Private _MouseYLoc As Integer
    Private ThumbMovement As Integer
    Private TSA As Rectangle
    Private BSA As Rectangle
    Private Shaft As Rectangle
    Private Thumb As Rectangle
    Private ShowThumb As Boolean
    Private ThumbPressed As Boolean
    Private _ThumbSize As Integer = 24

#End Region

#Region "Properties & Events"

    <Category("Colours")>
    Public Property BaseColour As Color
        Get
            Return _BaseColour
        End Get
        Set(value As Color)
            _BaseColour = value
        End Set
    End Property

    <Category("Colours")>
    Public Property ThumbNormalColour As Color
        Get
            Return _ThumbNormalColour
        End Get
        Set(value As Color)
            _ThumbNormalColour = value
        End Set
    End Property

    <Category("Colours")>
    Public Property ThumbHoverColour As Color
        Get
            Return _ThumbHoverColour
        End Get
        Set(value As Color)
            _ThumbHoverColour = value
        End Set
    End Property

    <Category("Colours")>
    Public Property ThumbPressedColour As Color
        Get
            Return _ThumbPressedColour
        End Get
        Set(value As Color)
            _ThumbPressedColour = value
        End Set
    End Property

    <Category("Colours")>
    Public Property ArrowNormalColour As Color
        Get
            Return _ArrowNormalColour
        End Get
        Set(value As Color)
            _ArrowNormalColour = value
        End Set
    End Property

    <Category("Colours")>
    Public Property ArrowHoveerColour As Color
        Get
            Return _ArrowHoveerColour
        End Get
        Set(value As Color)
            _ArrowHoveerColour = value
        End Set
    End Property

    <Category("Colours")>
    Public Property ArrowPressedColour As Color
        Get
            Return _ArrowPressedColour
        End Get
        Set(value As Color)
            _ArrowPressedColour = value
        End Set
    End Property

    <Category("Colours")>
    Public Property OuterBorderColour As Color
        Get
            Return _OuterBorderColour
        End Get
        Set(value As Color)
            _OuterBorderColour = value
        End Set
    End Property

    <Category("Colours")>
    Public Property ThumbBorderColour As Color
        Get
            Return _ThumbBorderColour
        End Get
        Set(value As Color)
            _ThumbBorderColour = value
        End Set
    End Property

    <Category("Control")>
    Property Minimum() As Integer
        Get
            Return _Minimum
        End Get
        Set(ByVal value As Integer)
            _Minimum = value
            If value > _Value Then _Value = value
            If value > _Maximum Then _Maximum = value
            InvalidateLayout()
        End Set
    End Property

    <Category("Control")>
    Property Maximum() As Integer
        Get
            Return _Maximum
        End Get
        Set(ByVal value As Integer)
            If value < _Value Then _Value = value
            If value < _Minimum Then _Minimum = value
            InvalidateLayout()
        End Set
    End Property

    <Category("Control")>
    Property Value() As Integer
        Get
            Return _Value
        End Get
        Set(ByVal value As Integer)
            Select Case value
                Case Is = _Value
                    Exit Property
                Case Is < _Minimum
                    _Value = _Minimum
                Case Is > _Maximum
                    _Value = _Maximum
                Case Else
                    _Value = value
            End Select
            InvalidatePosition()
            RaiseEvent Scroll(Me)
        End Set
    End Property

    <Category("Control")>
    Public Property SmallChange() As Integer
        Get
            Return _SmallChange
        End Get
        Set(ByVal value As Integer)
            Select Case value
                Case Is < 1
                Case Is >
                    CInt(_SmallChange = value)
            End Select
        End Set
    End Property

    <Category("Control")>
    Public Property LargeChange() As Integer
        Get
            Return _LargeChange
        End Get
        Set(ByVal value As Integer)
            Select Case value
                Case Is < 1
                Case Else
                    _LargeChange = value
            End Select
        End Set
    End Property

    <Category("Control")>
    Public Property ButtonSize As Integer
        Get
            Return _ButtonSize
        End Get
        Set(value As Integer)
            Select Case value
                Case Is < 16
                    _ButtonSize = 16
                Case Else
                    _ButtonSize = value
            End Select
        End Set
    End Property

    <Category("Control")>
    Property ShowOuterBorder As Boolean
        Get
            Return _ShowOuterBorder
        End Get
        Set(ByVal value As Boolean)
            _ShowOuterBorder = value
            Invalidate()
        End Set
    End Property

    <Category("Control")>
    Property ShowThumbBorder As Boolean
        Get
            Return _ShowThumbBorder
        End Get
        Set(ByVal value As Boolean)
            _ShowThumbBorder = value
            Invalidate()
        End Set
    End Property

    <Category("Control")>
    Property AmountOfInnerLines As __InnerLineCount
        Get
            Return _AmountOfInnerLines
        End Get
        Set(ByVal value As __InnerLineCount)
            _AmountOfInnerLines = value
        End Set
    End Property

    Protected Overrides Sub OnSizeChanged(e As EventArgs)
        InvalidateLayout()
    End Sub

    Private Sub InvalidateLayout()
        ''End Height here goes with end in invalidateposition() for starting height of thumb
        TSA = New Rectangle(0, 0, Width, 16)
        BSA = New Rectangle(0, Height - ButtonSize, Width, ButtonSize)
        ''End height here should be double the start for symetry
        Shaft = New Rectangle(0, TSA.Bottom + 1, Width, CInt(Height - Height / 8 - 8))
        ShowThumb = CBool(((_Maximum - _Minimum)))
        If ShowThumb Then
            Thumb = New Rectangle(4, 0, Width - 8, CInt(Height / 8))
        End If
        RaiseEvent Scroll(Me)
        InvalidatePosition()
    End Sub

    Enum __InnerLineCount
        None
        One
        Two
        Three
    End Enum

    Event Scroll(ByVal sender As Object)

    Public Sub InvalidatePosition()
        Thumb.Y = CInt(((_Value - _Minimum) / (_Maximum - _Minimum)) * (Shaft.Height - _ThumbSize) + 16)
        Invalidate()
    End Sub

    Protected Overrides Sub OnMouseDown(ByVal e As MouseEventArgs)
        If e.Button = Windows.Forms.MouseButtons.Left AndAlso ShowThumb Then
            If TSA.Contains(e.Location) Then
                _ArrowState = MouseState.Down
                ThumbMovement = _Value - _SmallChange
            ElseIf BSA.Contains(e.Location) Then
                ThumbMovement = _Value + _SmallChange
                _ArrowState = MouseState.Down
            Else
                If Thumb.Contains(e.Location) Then
                    _ThumbState = MouseState.Down
                    Invalidate()
                    Return
                Else
                    If e.Y < Thumb.Y Then
                        ThumbMovement = _Value - _LargeChange
                    Else
                        ThumbMovement = _Value + _LargeChange
                    End If
                End If
            End If
            Value = Math.Min(Math.Max(ThumbMovement, _Minimum), _Maximum)
            Invalidate()
            InvalidatePosition()
        End If
    End Sub

    Protected Overrides Sub OnMouseMove(ByVal e As MouseEventArgs)
        _MouseXLoc = e.Location.X
        _MouseYLoc = e.Location.Y
        If TSA.Contains(e.Location) Then
            _ArrowState = MouseState.Over
        ElseIf BSA.Contains(e.Location) Then
            _ArrowState = MouseState.Over
        ElseIf Not _ArrowState = MouseState.Down Then
            _ArrowState = MouseState.None
        End If
        If Thumb.Contains(e.Location) And Not _ThumbState = MouseState.Down Then
            _ThumbState = MouseState.Over
        ElseIf Not _ThumbState = MouseState.Down Then
            _ThumbState = MouseState.None
        End If
        Invalidate()
        If _ThumbState = MouseState.Down Or _ArrowState = MouseState.Down AndAlso ShowThumb Then
            Dim ThumbPosition As Integer = e.Y + 2 - TSA.Height - (_ThumbSize \ 2)
            Dim ThumbBounds As Integer = Shaft.Height - _ThumbSize
            ThumbMovement = CInt((ThumbPosition / ThumbBounds) * (_Maximum - _Minimum)) - _Minimum
            Value = Math.Min(Math.Max(ThumbMovement, _Minimum), _Maximum)
            InvalidatePosition()
        End If
    End Sub

    Protected Overrides Sub OnMouseUp(ByVal e As MouseEventArgs)
        If Thumb.Contains(e.Location) Then
            _ThumbState = MouseState.Over
        ElseIf Not Thumb.Contains(e.Location) Then
            _ThumbState = MouseState.None
        End If
        If e.Location.Y < 16 Or e.Location.Y > Width - 16 Then
            _ThumbState = MouseState.Over
        ElseIf Not e.Location.Y < 16 Or e.Location.Y > Width - 16 Then
            _ThumbState = MouseState.None
        End If
        Invalidate()
    End Sub

    Protected Overrides Sub OnMouseLeave(e As EventArgs)
        _ThumbState = MouseState.None
        _ArrowState = MouseState.None
        Invalidate()
    End Sub

    Protected Overrides Sub OnMouseEnter(e As EventArgs)
        MyBase.OnMouseEnter(e)
        Invalidate()
    End Sub

#End Region

#Region "Draw Control"

    Sub New()
        SetStyle(ControlStyles.OptimizedDoubleBuffer Or ControlStyles.AllPaintingInWmPaint Or ControlStyles.ResizeRedraw Or
                            ControlStyles.UserPaint Or ControlStyles.Selectable Or
                            ControlStyles.SupportsTransparentBackColor, True)
        DoubleBuffered = True
        Size = New Size(19, 50)
    End Sub

    Protected Overrides Sub OnPaint(e As System.Windows.Forms.PaintEventArgs)
        Dim g = e.Graphics
        With g
            .TextRenderingHint = TextRenderingHint.AntiAlias
            .SmoothingMode = SmoothingMode.HighQuality
            .PixelOffsetMode = PixelOffsetMode.HighQuality
            .Clear(_BaseColour)
            Dim TrianglePointTop() As Point = {New Point(CInt(Width / 2), 5), New Point(CInt(Width / 4), 11), New Point(CInt(Width / 2 + Width / 4), 11)}
            Dim TrianglePointBottom() As Point = {New Point(CInt(Width / 2), Height - 5), New Point(CInt(Width / 4), Height - 11), New Point(CInt(Width / 2 + Width / 4), Height - 11)}
            Select Case _ThumbState
                Case MouseState.None
                    Using SBrush As New SolidBrush(_ThumbNormalColour)
                        .FillRectangle(SBrush, Thumb)
                    End Using
                Case MouseState.Over
                    Using SBrush As New SolidBrush(_ThumbHoverColour)
                        .FillRectangle(SBrush, Thumb)
                    End Using
                Case MouseState.Down
                    Using SBrush As New SolidBrush(_ThumbPressedColour)
                        .FillRectangle(SBrush, Thumb)
                    End Using
            End Select
            Select Case _ArrowState
                Case MouseState.Down
                    If Not Thumb.Contains(_MousePos) Then
                        Using SBrush As New SolidBrush(_ThumbNormalColour)
                            .FillRectangle(SBrush, Thumb)
                        End Using
                    End If
                    If _MouseYLoc < 16 Then
                        .FillPolygon(New SolidBrush(_ArrowPressedColour), TrianglePointTop)
                        .FillPolygon(New SolidBrush(_ArrowNormalColour), TrianglePointBottom)

                    ElseIf _MouseXLoc > Width - 16 Then
                        .FillPolygon(New SolidBrush(_ArrowPressedColour), TrianglePointBottom)
                        .FillPolygon(New SolidBrush(_ArrowNormalColour), TrianglePointTop)
                    Else
                        .FillPolygon(New SolidBrush(_ArrowNormalColour), TrianglePointTop)
                        .FillPolygon(New SolidBrush(_ArrowNormalColour), TrianglePointBottom)
                    End If
                Case MouseState.Over

                    If _MouseYLoc < 16 Then
                        .FillPolygon(New SolidBrush(_ArrowHoveerColour), TrianglePointTop)
                        .FillPolygon(New SolidBrush(_ArrowNormalColour), TrianglePointBottom)
                    ElseIf _MouseXLoc > Width - 16 Then
                        .FillPolygon(New SolidBrush(_ArrowHoveerColour), TrianglePointBottom)
                        .FillPolygon(New SolidBrush(_ArrowNormalColour), TrianglePointTop)
                    Else
                        .FillPolygon(New SolidBrush(_ArrowNormalColour), TrianglePointTop)
                        .FillPolygon(New SolidBrush(_ArrowNormalColour), TrianglePointBottom)
                    End If
                Case MouseState.None

                    .FillPolygon(New SolidBrush(_ArrowNormalColour), TrianglePointTop)
                    .FillPolygon(New SolidBrush(_ArrowNormalColour), TrianglePointBottom)
            End Select
            .InterpolationMode = InterpolationMode.HighQualityBicubic
        End With
    End Sub

#End Region

End Class

Public Class VisualStudioHorizontalScrollBar
    Inherits Control

#Region "Declarations"

    Private _BaseColour As Color = Color.FromArgb(62, 62, 66)
    Private _ThumbNormalColour As Color = Color.FromArgb(104, 104, 104)
    Private _ThumbHoverColour As Color = Color.FromArgb(158, 158, 158)
    Private _ThumbPressedColour As Color = Color.FromArgb(239, 235, 239)
    Private _ArrowNormalColour As Color = Color.FromArgb(153, 153, 153)
    Private _ArrowHoveerColour As Color = Color.FromArgb(39, 123, 181)
    Private _ArrowPressedColour As Color = Color.FromArgb(0, 113, 171)
    Private _OuterBorderColour As Color
    Private _ThumbBorderColour As Color
    Private _Minimum As Integer = 0
    Private _Maximum As Integer = 100
    Private _Value As Integer = 0
    Private _SmallChange As Integer = 1
    Private _ButtonSize As Integer = 16
    Private _LargeChange As Integer = 10
    Private _ShowOuterBorder As Boolean = False
    Private _ShowThumbBorder As Boolean = False
    Private _AmountOfInnerLines As __InnerLineCount = __InnerLineCount.None
    Private _MousePos As New Point(_MouseXLoc, _MouseYLoc)
    Private _ThumbState As MouseState = MouseState.None
    Private _ArrowState As MouseState = MouseState.None
    Private _MouseXLoc As Integer
    Private _MouseYLoc As Integer
    Private ThumbMovement As Integer
    Private LSA As Rectangle
    Private RSA As Rectangle
    Private Shaft As Rectangle
    Private Thumb As Rectangle
    Private ShowThumb As Boolean
    Private ThumbPressed As Boolean
    Private _ThumbSize As Integer = 24


#End Region

#Region "Properties & Events"

    <Category("Colours")>
    Public Property BaseColour As Color
        Get
            Return _BaseColour
        End Get
        Set(value As Color)
            _BaseColour = value
        End Set
    End Property

    <Category("Colours")>
    Public Property ThumbNormalColour As Color
        Get
            Return _ThumbNormalColour
        End Get
        Set(value As Color)
            _ThumbNormalColour = value
        End Set
    End Property

    <Category("Colours")>
    Public Property ThumbHoverColour As Color
        Get
            Return _ThumbHoverColour
        End Get
        Set(value As Color)
            _ThumbHoverColour = value
        End Set
    End Property

    <Category("Colours")>
    Public Property ThumbPressedColour As Color
        Get
            Return _ThumbPressedColour
        End Get
        Set(value As Color)
            _ThumbPressedColour = value
        End Set
    End Property

    <Category("Colours")>
    Public Property ArrowNormalColour As Color
        Get
            Return _ArrowNormalColour
        End Get
        Set(value As Color)
            _ArrowNormalColour = value
        End Set
    End Property

    <Category("Colours")>
    Public Property ArrowHoveerColour As Color
        Get
            Return _ArrowHoveerColour
        End Get
        Set(value As Color)
            _ArrowHoveerColour = value
        End Set
    End Property

    <Category("Colours")>
    Public Property ArrowPressedColour As Color
        Get
            Return _ArrowPressedColour
        End Get
        Set(value As Color)
            _ArrowPressedColour = value
        End Set
    End Property

    <Category("Colours")>
    Public Property OuterBorderColour As Color
        Get
            Return _OuterBorderColour
        End Get
        Set(value As Color)
            _OuterBorderColour = value
        End Set
    End Property

    <Category("Colours")>
    Public Property ThumbBorderColour As Color
        Get
            Return _ThumbBorderColour
        End Get
        Set(value As Color)
            _ThumbBorderColour = value
        End Set
    End Property

    <Category("Control")>
    Property Minimum() As Integer
        Get
            Return _Minimum
        End Get
        Set(ByVal value As Integer)
            _Minimum = value
            If value > _Value Then _Value = value
            If value > _Maximum Then _Maximum = value
            InvalidateLayout()
        End Set
    End Property

    <Category("Control")>
    Property Maximum() As Integer
        Get
            Return _Maximum
        End Get
        Set(ByVal value As Integer)
            If value < _Value Then _Value = value
            If value < _Minimum Then _Minimum = value
            InvalidateLayout()
        End Set
    End Property

    <Category("Control")>
    Property Value() As Integer
        Get
            Return _Value
        End Get
        Set(ByVal value As Integer)
            Select Case value
                Case Is = _Value
                    Exit Property
                Case Is < _Minimum
                    _Value = _Minimum
                Case Is > _Maximum
                    _Value = _Maximum
                Case Else
                    _Value = value
            End Select
            InvalidatePosition()
            RaiseEvent Scroll(Me)
        End Set
    End Property

    <Category("Control")>
    Public Property SmallChange() As Integer
        Get
            Return _SmallChange
        End Get
        Set(ByVal value As Integer)
            Select Case value
                Case Is < 1
                Case Is >
                    CInt(_SmallChange = value)
            End Select
        End Set
    End Property

    <Category("Control")>
    Public Property LargeChange() As Integer
        Get
            Return _LargeChange
        End Get
        Set(ByVal value As Integer)
            Select Case value
                Case Is < 1
                Case Else
                    _LargeChange = value
            End Select
        End Set
    End Property

    <Category("Control")>
    Public Property ButtonSize As Integer
        Get
            Return _ButtonSize
        End Get
        Set(value As Integer)
            Select Case value
                Case Is < 16
                    _ButtonSize = 16
                Case Else
                    _ButtonSize = value
            End Select
        End Set
    End Property

    <Category("Control")>
    Property ShowOuterBorder As Boolean
        Get
            Return _ShowOuterBorder
        End Get
        Set(ByVal value As Boolean)
            _ShowOuterBorder = value
            Invalidate()
        End Set
    End Property

    <Category("Control")>
    Property ShowThumbBorder As Boolean
        Get
            Return _ShowThumbBorder
        End Get
        Set(ByVal value As Boolean)
            _ShowThumbBorder = value
            Invalidate()
        End Set
    End Property

    <Category("Control")>
    Property AmountOfInnerLines As __InnerLineCount
        Get
            Return _AmountOfInnerLines
        End Get
        Set(ByVal value As __InnerLineCount)
            _AmountOfInnerLines = value
        End Set
    End Property

    Protected Overrides Sub OnSizeChanged(e As EventArgs)
        InvalidateLayout()
    End Sub

    Private Sub InvalidateLayout()

        ''End width here goes with end in invalidateposition() for starting height of thumb
        LSA = New Rectangle(0, 0, 16, Height)
        RSA = New Rectangle(Width - ButtonSize, 0, ButtonSize, Height)
        ''End width here should be double the start for symetry
        Shaft = New Rectangle(LSA.Right + 1, 0, CInt(Width - Width / 8 - 8), Height)
        ShowThumb = CBool(((_Maximum - _Minimum)))
        If ShowThumb Then
            Thumb = New Rectangle(0, 4, CInt(Width / 8), Height - 8)
        End If
        RaiseEvent Scroll(Me)
        InvalidatePosition()
    End Sub

    Enum __InnerLineCount
        None
        One
        Two
        Three
    End Enum

    Event Scroll(ByVal sender As Object)

    Private Sub InvalidatePosition()
        Thumb.X = CInt(((_Value - _Minimum) / (_Maximum - _Minimum)) * (Shaft.Width - _ThumbSize) + 16)
        Invalidate()
    End Sub

    Protected Overrides Sub OnMouseDown(ByVal e As MouseEventArgs)
        If e.Button = Windows.Forms.MouseButtons.Left AndAlso ShowThumb Then
            If LSA.Contains(e.Location) Then
                _ArrowState = MouseState.Down
                ThumbMovement = _Value - _SmallChange
            ElseIf RSA.Contains(e.Location) Then
                ThumbMovement = _Value + _SmallChange
                _ArrowState = MouseState.Down
            Else
                If Thumb.Contains(e.Location) Then
                    _ThumbState = MouseState.Down
                    Invalidate()
                    Return
                Else
                    If e.X < Thumb.X Then
                        ThumbMovement = _Value - _LargeChange
                    Else
                        ThumbMovement = _Value + _LargeChange
                    End If
                End If
            End If
            Value = Math.Min(Math.Max(ThumbMovement, _Minimum), _Maximum)
            Invalidate()
            InvalidatePosition()
        End If
    End Sub

    Protected Overrides Sub OnMouseMove(ByVal e As MouseEventArgs)
        _MouseXLoc = e.Location.X
        _MouseYLoc = e.Location.Y
        If LSA.Contains(e.Location) Then
            _ArrowState = MouseState.Over
        ElseIf RSA.Contains(e.Location) Then
            _ArrowState = MouseState.Over
        ElseIf Not _ArrowState = MouseState.Down Then
            _ArrowState = MouseState.None
        End If
        If Thumb.Contains(e.Location) And Not _ThumbState = MouseState.Down Then
            _ThumbState = MouseState.Over
        ElseIf Not _ThumbState = MouseState.Down Then
            _ThumbState = MouseState.None
        End If
        Invalidate()
        If _ThumbState = MouseState.Down Or _ArrowState = MouseState.Down AndAlso ShowThumb Then
            Dim ThumbPosition As Integer = e.X + 2 - LSA.Width - (_ThumbSize \ 2)
            Dim ThumbBounds As Integer = Shaft.Width - _ThumbSize
            ThumbMovement = CInt((ThumbPosition / ThumbBounds) * (_Maximum - _Minimum)) - _Minimum
            Value = Math.Min(Math.Max(ThumbMovement, _Minimum), _Maximum)
            InvalidatePosition()
        End If
    End Sub

    Protected Overrides Sub OnMouseUp(ByVal e As MouseEventArgs)
        If Thumb.Contains(e.Location) Then
            _ThumbState = MouseState.Over
        ElseIf Not Thumb.Contains(e.Location) Then
            _ThumbState = MouseState.None
        End If
        If e.Location.X < 16 Or e.Location.X > Width - 16 Then
            _ThumbState = MouseState.Over
        ElseIf Not e.Location.X < 16 Or e.Location.X > Width - 16 Then
            _ThumbState = MouseState.None
        End If
        Invalidate()
    End Sub

    Protected Overrides Sub OnMouseLeave(e As EventArgs)
        _ThumbState = MouseState.None
        _ArrowState = MouseState.None
        Invalidate()
    End Sub

    Protected Overrides Sub OnMouseEnter(e As EventArgs)
        MyBase.OnMouseEnter(e)
        Invalidate()
    End Sub

#End Region

#Region "Draw Control"

    Sub New()
        SetStyle(ControlStyles.OptimizedDoubleBuffer Or ControlStyles.AllPaintingInWmPaint Or ControlStyles.ResizeRedraw Or
                            ControlStyles.UserPaint Or ControlStyles.Selectable Or
                            ControlStyles.SupportsTransparentBackColor, True)
        DoubleBuffered = True
        Size = New Size(50, 19)
    End Sub

    Protected Overrides Sub OnPaint(e As System.Windows.Forms.PaintEventArgs)
        Dim g = e.Graphics
        With g
            .TextRenderingHint = TextRenderingHint.ClearTypeGridFit
            .SmoothingMode = SmoothingMode.HighQuality
            .PixelOffsetMode = PixelOffsetMode.HighQuality
            .Clear(_BaseColour)
            Dim TrianglePointLeft() As Point = {New Point(5, CInt(Height / 2)), New Point(11, CInt(Height / 4)), New Point(11, CInt(Height / 2 + Height / 4))}
            Dim TrianglePointRight() As Point = {New Point(Width - 5, CInt(Height / 2)), New Point(Width - 11, CInt(Height / 4)), New Point(Width - 11, CInt(Height / 2 + Height / 4))}
            Select Case _ThumbState
                Case MouseState.None
                    Using SBrush As New SolidBrush(_ThumbNormalColour)
                        .FillRectangle(SBrush, Thumb)
                    End Using
                Case MouseState.Over
                    Using SBrush As New SolidBrush(_ThumbHoverColour)
                        .FillRectangle(SBrush, Thumb)
                    End Using
                Case MouseState.Down
                    Using SBrush As New SolidBrush(_ThumbPressedColour)
                        .FillRectangle(SBrush, Thumb)
                    End Using
            End Select
            Select Case _ArrowState
                Case MouseState.Down
                    If Not Thumb.Contains(_MousePos) Then
                        Using SBrush As New SolidBrush(_ThumbNormalColour)
                            .FillRectangle(SBrush, Thumb)
                        End Using
                    End If
                    If _MouseXLoc < 16 Then
                        .FillPolygon(New SolidBrush(_ArrowPressedColour), TrianglePointLeft)
                        .FillPolygon(New SolidBrush(_ArrowNormalColour), TrianglePointRight)

                    ElseIf _MouseXLoc > Width - 16 Then
                        .FillPolygon(New SolidBrush(_ArrowPressedColour), TrianglePointRight)
                        .FillPolygon(New SolidBrush(_ArrowNormalColour), TrianglePointLeft)
                    Else
                        .FillPolygon(New SolidBrush(_ArrowNormalColour), TrianglePointLeft)
                        .FillPolygon(New SolidBrush(_ArrowNormalColour), TrianglePointRight)
                    End If
                Case MouseState.Over

                    If _MouseXLoc < 16 Then
                        .FillPolygon(New SolidBrush(_ArrowHoveerColour), TrianglePointLeft)
                        .FillPolygon(New SolidBrush(_ArrowNormalColour), TrianglePointRight)
                    ElseIf _MouseXLoc > Width - 16 Then
                        .FillPolygon(New SolidBrush(_ArrowHoveerColour), TrianglePointRight)
                        .FillPolygon(New SolidBrush(_ArrowNormalColour), TrianglePointLeft)
                    Else
                        .FillPolygon(New SolidBrush(_ArrowNormalColour), TrianglePointLeft)
                        .FillPolygon(New SolidBrush(_ArrowNormalColour), TrianglePointRight)
                    End If
                Case MouseState.None

                    .FillPolygon(New SolidBrush(_ArrowNormalColour), TrianglePointLeft)
                    .FillPolygon(New SolidBrush(_ArrowNormalColour), TrianglePointRight)
            End Select
            .InterpolationMode = InterpolationMode.HighQualityBicubic
        End With
    End Sub

#End Region
End Class

Public Class VisualStudioListBoxWBuiltInScrollBar
    Inherits Control

#Region "Declarations"

    Private _Items As New List(Of VSListBoxItem)
    Private ReadOnly _SelectedItems As New List(Of VSListBoxItem)
    Private _MultiSelect As Boolean = True
    Private ItemHeight As Integer = 24
    Private VerticalScrollbar As VisualStudioVerticalScrollBar
    Private _BaseColour As Color = Color.FromArgb(37, 37, 38)
    Private _NonSelectedItemColour As Color = Color.FromArgb(62, 62, 64)
    Private _SelectedItemColour As Color = Color.FromArgb(47, 47, 47)
    Private _BorderColour As Color = Color.FromArgb(35, 35, 35)
    Private _FontColour As Color = Color.FromArgb(199, 199, 199)
    Private _SelectedWidth As Integer = 1
    Private _SelectedHeight As Integer = 1
    Private _DontShowInnerScrollbarBorder As Boolean = False
    Private _ShowWholeInnerBorder As Boolean = True

#End Region

#Region "Properties"

    <Category("Colours")>
    Public Property FontColour As Color
        Get
            Return _FontColour
        End Get
        Set(value As Color)
            _FontColour = value
        End Set
    End Property

    <Category("Colours")>
    Public Property BaseColour As Color
        Get
            Return _BaseColour
        End Get
        Set(value As Color)
            _BaseColour = value
        End Set
    End Property

    <Category("Colours")>
    Public Property SelectedItemColour As Color
        Get
            Return _SelectedItemColour
        End Get
        Set(value As Color)
            _SelectedItemColour = value
        End Set
    End Property

    <Category("Colours")>
    Public Property NonSelectedItemColour As Color
        Get
            Return _NonSelectedItemColour
        End Get
        Set(value As Color)
            _NonSelectedItemColour = value
        End Set
    End Property

    <Category("Colours")>
    Public Property BorderColour As Color
        Get
            Return _BorderColour
        End Get
        Set(value As Color)
            _BorderColour = value
        End Set
    End Property

    <Category("Control")>
    Public ReadOnly Property SelectedHeight As Integer
        Get
            Return _SelectedHeight
        End Get
    End Property

    <Category("Control")>
    Public ReadOnly Property SelectedWidth As Integer
        Get
            Return _SelectedWidth
        End Get
    End Property

    <Category("Control")>
    Public Property DontShowInnerScrollbarBorder As Boolean
        Get
            Return _DontShowInnerScrollbarBorder
        End Get
        Set(value As Boolean)
            _DontShowInnerScrollbarBorder = value
            Invalidate()
        End Set
    End Property

    <Category("Control")>
    Public Property ShowWholeInnerBorder As Boolean
        Get
            Return _ShowWholeInnerBorder
        End Get
        Set(value As Boolean)
            _ShowWholeInnerBorder = value
            Invalidate()
        End Set
    End Property

    <Category("Control")>
        <System.ComponentModel.DesignerSerializationVisibilityAttribute(System.ComponentModel.DesignerSerializationVisibility.Content)>
    Public Property Items() As VSListBoxItem()
        Get
            Return _Items.ToArray()
        End Get
        Set(ByVal value As VSListBoxItem())
            _Items = New List(Of VSListBoxItem)(value)
            Invalidate()
            InvalidateScroll()
        End Set
    End Property

    <Category("Control")>
    Public ReadOnly Property SelectedItems() As VSListBoxItem()
        Get
            Return _SelectedItems.ToArray()
        End Get
    End Property

    <Category("Control")>
    Public Property MultiSelect() As Boolean
        Get
            Return _MultiSelect
        End Get
        Set(ByVal value As Boolean)
            _MultiSelect = value

            If _SelectedItems.Count > 1 Then
                _SelectedItems.RemoveRange(1, _SelectedItems.Count - 1)
            End If

            Invalidate()
        End Set
    End Property

    Private Sub HandleScroll(ByVal sender As Object)
        Invalidate()
    End Sub

    Private Sub InvalidateScroll()
        If CInt(Math.Round(((_Items.Count) * ItemHeight) / _SelectedHeight)) < CDbl((((_Items.Count) * ItemHeight) / _SelectedHeight)) Then
            VerticalScrollbar._Maximum = CInt(Math.Ceiling(((_Items.Count) * ItemHeight) / _SelectedHeight))
        ElseIf CInt(Math.Round(((_Items.Count) * ItemHeight) / _SelectedHeight)) = 0 Then
            VerticalScrollbar._Maximum = 1
        Else
            VerticalScrollbar._Maximum = CInt(Math.Round(((_Items.Count) * ItemHeight) / _SelectedHeight))
        End If
        Invalidate()
    End Sub

    Private Sub InvalidateLayout()
        VerticalScrollbar.Location = New Point(Width - VerticalScrollbar.Width - 2, 2)
        VerticalScrollbar.Size = New Size(18, Height - 4)
        Invalidate()
    End Sub

    Public Class VSListBoxItem
        Property Text As String
        Public Overrides Function ToString() As String
            Return Text
        End Function
    End Class

    Public Overrides Property Font As Font
        Get
            Return MyBase.Font
        End Get
        Set(ByVal value As Font)
            ItemHeight = CInt(Graphics.FromHwnd(Handle).MeasureString("@", Font).Height)
            If VerticalScrollbar IsNot Nothing Then
                VerticalScrollbar._SmallChange = 1
                VerticalScrollbar._LargeChange = 1
            End If
            MyBase.Font = value
            InvalidateLayout()
        End Set
    End Property

    Public Sub AddItem(ByVal Items As String)
        Dim Item As New VSListBoxItem()
        Item.Text = Items
        _Items.Add(Item)
        Invalidate()
        InvalidateScroll()
    End Sub

    Public Sub AddItems(ByVal Items() As String)
        For Each I In Items
            Dim Item As New VSListBoxItem()
            Item.Text = I
            _Items.Add(Item)
        Next
        Invalidate()
        InvalidateScroll()
    End Sub

    Public Sub RemoveItemAt(ByVal index As Integer)
        _Items.RemoveAt(index)
        Invalidate()
        InvalidateScroll()
    End Sub

    Public Sub RemoveItem(ByVal item As VSListBoxItem)
        _Items.Remove(item)
        Invalidate()
        InvalidateScroll()
    End Sub

    Public Sub RemoveItems(ByVal items As VSListBoxItem())
        For Each I As VSListBoxItem In items
            _Items.Remove(I)
        Next
        Invalidate()
        InvalidateScroll()
    End Sub

    Protected Overrides Sub OnSizeChanged(ByVal e As EventArgs)
        _SelectedWidth = Width
        _SelectedHeight = Height
        InvalidateScroll()
        InvalidateLayout()
        MyBase.OnSizeChanged(e)
    End Sub

    Private Sub Vertical_MouseDown(ByVal sender As Object, ByVal e As MouseEventArgs)
        Focus()
    End Sub

    Protected Overrides Sub OnMouseDown(ByVal e As MouseEventArgs)
        Focus()
        If e.Button = MouseButtons.Left Then
            Dim Offset As Integer = CInt(VerticalScrollbar.Value * (VerticalScrollbar.Maximum + (Height - (ItemHeight))))
            Dim Index As Integer = ((e.Y + Offset) \ ItemHeight)
            If Index > _Items.Count - 1 Then Index = -1
            If Not Index = -1 Then
                If ModifierKeys = Keys.Control AndAlso _MultiSelect Then
                    If _SelectedItems.Contains(_Items(Index)) Then
                        _SelectedItems.Remove(_Items(Index))
                    Else
                        _SelectedItems.Add(_Items(Index))
                    End If
                Else
                    _SelectedItems.Clear()
                    _SelectedItems.Add(_Items(Index))
                End If
            End If
            Invalidate()
        End If
        MyBase.OnMouseDown(e)
    End Sub

    Protected Overrides Sub OnMouseWheel(ByVal e As MouseEventArgs)
        Dim Move As Integer = -((e.Delta * SystemInformation.MouseWheelScrollLines \ 120) * (2 \ 2))
        Dim Value As Integer = Math.Max(Math.Min(VerticalScrollbar.Value + Move, VerticalScrollbar.Maximum), VerticalScrollbar.Minimum)
        VerticalScrollbar.Value = Value
        MyBase.OnMouseWheel(e)
    End Sub

#End Region

#Region "Draw Control"

    Sub New()
        SetStyle(ControlStyles.OptimizedDoubleBuffer Or ControlStyles.AllPaintingInWmPaint Or ControlStyles.ResizeRedraw Or
                    ControlStyles.UserPaint Or ControlStyles.Selectable Or
                    ControlStyles.SupportsTransparentBackColor, True)
        DoubleBuffered = True
        VerticalScrollbar = New VisualStudioVerticalScrollBar
        VerticalScrollbar._SmallChange = 1
        VerticalScrollbar._LargeChange = 1
        AddHandler VerticalScrollbar.Scroll, AddressOf HandleScroll
        AddHandler VerticalScrollbar.MouseDown, AddressOf Vertical_MouseDown
        Controls.Add(VerticalScrollbar)
        InvalidateLayout()
    End Sub

    Protected Overrides Sub OnPaint(ByVal e As PaintEventArgs)

        Dim G = e.Graphics
        With G
            .TextRenderingHint = TextRenderingHint.ClearTypeGridFit
            .SmoothingMode = SmoothingMode.HighQuality
            .PixelOffsetMode = PixelOffsetMode.HighQuality
            .Clear(_BaseColour)
            Dim AllItems As VSListBoxItem
            Dim Offset As Integer = CInt(VerticalScrollbar.Value * (VerticalScrollbar.Maximum + (Height - (ItemHeight))))
            Dim StartIndex As Integer
            If Offset = 0 Then StartIndex = 0 Else StartIndex = CInt(Offset \ ItemHeight \ VerticalScrollbar.Maximum)
            Dim EndIndex As Integer = Math.Min(StartIndex + (Height \ ItemHeight), _Items.Count - 1)
            If Not _DontShowInnerScrollbarBorder AndAlso Not _ShowWholeInnerBorder Then
                .DrawLine(New Pen(_BorderColour, 2), VerticalScrollbar.Location.X - 1, 0, VerticalScrollbar.Location.X - 1, Height)
            End If
            For I As Integer = StartIndex To _Items.Count - 1
                AllItems = Items(I)
                Dim Y As Integer = ((I * ItemHeight) + 1 - Offset) + CInt((ItemHeight / 2) - 8)
                If _SelectedItems.Contains(AllItems) Then
                    .FillRectangle(New SolidBrush(_SelectedItemColour), New Rectangle(0, (I * ItemHeight) + 1 - Offset, Width - 19, ItemHeight - 1))
                Else
                    .FillRectangle(New SolidBrush(_NonSelectedItemColour), New Rectangle(0, (I * ItemHeight) + 1 - Offset, Width - 19, ItemHeight - 1))
                End If
                .DrawLine(New Pen(_BorderColour), 0, ((I * ItemHeight) + 1 - Offset) + ItemHeight - 1, Width - 18, ((I * ItemHeight) + 1 - Offset) + ItemHeight - 1)
                If .MeasureString(AllItems.Text, New Font("Segoe UI", 8)).Width > (_SelectedWidth) - 30 Then
                    .DrawString(AllItems.Text, New Font("Segoe UI", 8), New SolidBrush(_FontColour), New Rectangle(7, Y, Width - 35, 15))
                    .DrawString("...", New Font("Segoe UI", 8), New SolidBrush(_FontColour), New Rectangle(Width - 32, Y, 15, 15))
                Else
                    .DrawString(AllItems.Text, New Font("Segoe UI", 8), New SolidBrush(_FontColour), New Rectangle(7, Y, Width - 34, Y + 10))
                End If
                .ResetClip()
            Next
            .DrawRectangle(New Pen(Color.FromArgb(35, 35, 35), 2), 1, 1, Width - 2, Height - 2)
            .InterpolationMode = CType(7, InterpolationMode)
            If _ShowWholeInnerBorder Then
                .DrawLine(New Pen(_BorderColour, 2), VerticalScrollbar.Location.X - 1, 0, VerticalScrollbar.Location.X - 1, Height)
            End If
        End With
    End Sub

#End Region

End Class

Public Class VisualStudioRadialProgressBar
    Inherits Control

#Region "Declarations"
    Private _BorderColour As Color = Color.FromArgb(28, 28, 28)
    Private _BaseColour As Color = Color.FromArgb(45, 45, 48)
    Private _ProgressColour As Color = Color.FromArgb(62, 62, 66)
    Private _TextColour As Color = Color.FromArgb(153, 153, 153)
    Private _Value As Integer = 0
    Private _Maximum As Integer = 100
    Private _StartingAngle As Integer = 110
    Private _RotationAngle As Integer = 255
    Private _Font As Font = New Font("Segoe UI", 20)
#End Region

#Region "Properties"

    <Category("Control")>
    Public Property Maximum() As Integer
        Get
            Return _Maximum
        End Get
        Set(V As Integer)
            Select Case V
                Case Is < _Value
                    _Value = V
            End Select
            _Maximum = V
            Invalidate()
        End Set
    End Property

    <Category("Control")>
    Public Property Value() As Integer
        Get
            Select Case _Value
                Case 0
                    Return 0
                    Invalidate()
                Case Else
                    Return _Value
                    Invalidate()
            End Select
        End Get

        Set(V As Integer)
            Select Case V
                Case Is > _Maximum
                    V = _Maximum
                    Invalidate()
            End Select
            _Value = V
            Invalidate()
        End Set
    End Property

    Public Sub Increment(ByVal Amount As Integer)
        Value += Amount
    End Sub

    <Category("Colours")>
    Public Property BorderColour As Color
        Get
            Return _BorderColour
        End Get
        Set(value As Color)
            _BorderColour = value
            Invalidate()
        End Set
    End Property

    <Category("Colours")>
    Public Property TextColour As Color
        Get
            Return _TextColour
        End Get
        Set(value As Color)
            _TextColour = value
            Invalidate()

        End Set
    End Property

    <Category("Colours")>
    Public Property ProgressColour As Color
        Get
            Return _ProgressColour
        End Get
        Set(value As Color)
            _ProgressColour = value
            Invalidate()

        End Set
    End Property

    <Category("Colours")>
    Public Property BaseColour As Color
        Get
            Return _BaseColour
        End Get
        Set(value As Color)
            _BaseColour = value
            Invalidate()

        End Set
    End Property

    <Category("Control")>
    Public Property StartingAngle As Integer
        Get
            Return _StartingAngle
        End Get
        Set(value As Integer)
            _StartingAngle = value
        End Set
    End Property

    <Category("Control")>
    Public Property RotationAngle As Integer
        Get
            Return _RotationAngle
        End Get
        Set(value As Integer)
            _RotationAngle = value
        End Set
    End Property

    'Protected Overrides Sub OnSizeChanged(e As EventArgs)
    '    Dim g As Graphics
    '    If Height < g.MeasureString(CStr(_Value), Font).Height * 2 Then
    '        Me.Size = New Size(CInt(g.MeasureString(CStr(_Value), Font).Height * 2), CInt(g.MeasureString(CStr(_Value), Font).Height * 2))
    '    End If
    '    MyBase.OnSizeChanged(e)
    'End Sub

#End Region

#Region "Draw Control"
    Sub New()
        SetStyle(ControlStyles.AllPaintingInWmPaint Or ControlStyles.UserPaint Or
                ControlStyles.ResizeRedraw Or ControlStyles.OptimizedDoubleBuffer Or
                ControlStyles.SupportsTransparentBackColor, True)
        DoubleBuffered = True
        Size = New Size(78, 78)
        BackColor = Color.Transparent
    End Sub

    Protected Overrides Sub OnPaint(e As PaintEventArgs)
        Dim B As New Bitmap(Width, Height)
        Dim G = Graphics.FromImage(B)
        With G
            .TextRenderingHint = TextRenderingHint.AntiAliasGridFit
            .SmoothingMode = SmoothingMode.HighQuality
            .PixelOffsetMode = PixelOffsetMode.HighQuality
            .Clear(BackColor)
            Select Case _Value
                Case 0
                    .DrawArc(New Pen(New SolidBrush(_BorderColour), 1 + 6), CInt(3 / 2) + 1, CInt(3 / 2) + 1, Width - 3 - 4, Height - 3 - 3, _StartingAngle - 3, _RotationAngle + 5)
                    .DrawArc(New Pen(New SolidBrush(_BaseColour), 1 + 3), CInt(3 / 2) + 1, CInt(3 / 2) + 1, Width - 3 - 4, Height - 3 - 3, _StartingAngle, _RotationAngle)
                    .DrawString(CStr(_Value), _Font, New SolidBrush(_TextColour), New Point(CInt(Width / 2), CInt(Height / 2 - 1)), New StringFormat With {.Alignment = StringAlignment.Center, .LineAlignment = StringAlignment.Center})
                Case _Maximum
                    .DrawArc(New Pen(New SolidBrush(_BorderColour), 1 + 6), CInt(3 / 2) + 1, CInt(3 / 2) + 1, Width - 3 - 4, Height - 3 - 3, _StartingAngle - 3, _RotationAngle + 5)
                    .DrawArc(New Pen(New SolidBrush(_BaseColour), 1 + 3), CInt(3 / 2) + 1, CInt(3 / 2) + 1, Width - 3 - 4, Height - 3 - 3, _StartingAngle, _RotationAngle)
                    .DrawArc(New Pen(New SolidBrush(_ProgressColour), 1 + 3), CInt(3 / 2) + 1, CInt(3 / 2) + 1, Width - 3 - 4, Height - 3 - 3, _StartingAngle, _RotationAngle)
                    .DrawString(CStr(_Value), _Font, New SolidBrush(_TextColour), New Point(CInt(Width / 2), CInt(Height / 2 - 1)), New StringFormat With {.Alignment = StringAlignment.Center, .LineAlignment = StringAlignment.Center})
                Case Else
                    .DrawArc(New Pen(New SolidBrush(_BorderColour), 1 + 6), CInt(3 / 2) + 1, CInt(3 / 2) + 1, Width - 3 - 4, Height - 3 - 3, _StartingAngle - 3, _RotationAngle + 5)
                    .DrawArc(New Pen(New SolidBrush(_BaseColour), 1 + 3), CInt(3 / 2) + 1, CInt(3 / 2) + 1, Width - 3 - 4, Height - 3 - 3, _StartingAngle, _RotationAngle)
                    .DrawArc(New Pen(New SolidBrush(_ProgressColour), 1 + 3), CInt(3 / 2) + 1, CInt(3 / 2) + 1, Width - 3 - 4, Height - 3 - 3, _StartingAngle, CInt((_RotationAngle / _Maximum) * _Value))
                    .DrawString(CStr(_Value), _Font, New SolidBrush(_TextColour), New Point(CInt(Width / 2), CInt(Height / 2 - 1)), New StringFormat With {.Alignment = StringAlignment.Center, .LineAlignment = StringAlignment.Center})
            End Select
        End With
        MyBase.OnPaint(e)
        e.Graphics.InterpolationMode = InterpolationMode.HighQualityBicubic
        e.Graphics.DrawImageUnscaled(B, 0, 0)
        B.Dispose()
    End Sub
#End Region

End Class

Public Class VisualStudioTabControl
    Inherits TabControl

#Region "Declarations"

    Private _TextColour As Color = Color.FromArgb(255, 255, 255)
    Private _BackTabColour As Color = Color.FromArgb(28, 28, 28)
    Private _BaseColour As Color = Color.FromArgb(45, 45, 48)
    Private _ActiveColour As Color = Color.FromArgb(0, 122, 204)
    Private _BorderColour As Color = Color.FromArgb(30, 30, 30)
    Private _HorizLineColour As Color = Color.FromArgb(0, 122, 204)
    Private CenterSF As New StringFormat With {.Alignment = StringAlignment.Near, .LineAlignment = StringAlignment.Center}

#End Region

#Region "Properties"

    <Category("Colours")>
    Public Property BorderColour As Color
        Get
            Return _BorderColour
        End Get
        Set(value As Color)
            _BorderColour = value
        End Set
    End Property

    <Category("Colours")>
    Public Property HorizontalLineColour As Color
        Get
            Return _HorizLineColour
        End Get
        Set(value As Color)
            _HorizLineColour = value
        End Set
    End Property

    <Category("Colours")>
    Public Property TextColour As Color
        Get
            Return _TextColour
        End Get
        Set(value As Color)
            _TextColour = value
        End Set
    End Property

    <Category("Colours")>
    Public Property BackTabColour As Color
        Get
            Return _BackTabColour
        End Get
        Set(value As Color)
            _BackTabColour = value
        End Set
    End Property

    <Category("Colours")>
    Public Property BaseColour As Color
        Get
            Return _BaseColour
        End Get
        Set(value As Color)
            _BaseColour = value
        End Set
    End Property

    <Category("Colours")>
    Public Property ActiveColour As Color
        Get
            Return _ActiveColour
        End Get
        Set(value As Color)
            _ActiveColour = value
        End Set
    End Property

    Protected Overrides Sub CreateHandle()
        MyBase.CreateHandle()
        Alignment = TabAlignment.Top
    End Sub

    Private predraggedTab As TabPage

    Protected Overrides Sub OnMouseDown(e As MouseEventArgs)
        predraggedTab = getPointedTab()
        MyBase.OnMouseDown(e)
    End Sub

    Protected Overrides Sub OnMouseUp(e As MouseEventArgs)
        predraggedTab = Nothing
        MyBase.OnMouseUp(e)
    End Sub

    Protected Overrides Sub OnMouseMove(e As MouseEventArgs)
        If e.Button = MouseButtons.Left AndAlso predraggedTab IsNot Nothing Then
            Me.DoDragDrop(predraggedTab, DragDropEffects.Move)
        End If
        MyBase.OnMouseMove(e)
    End Sub

    Protected Overrides Sub OnDragOver(drgevent As DragEventArgs)
        Dim draggedTab As TabPage = DirectCast(drgevent.Data.GetData(GetType(TabPage)), TabPage)
        Dim pointedTab As TabPage = getPointedTab()

        If draggedTab Is predraggedTab AndAlso pointedTab IsNot Nothing Then
            drgevent.Effect = DragDropEffects.Move

            If Not pointedTab Is draggedTab Then
                swapTabPages(draggedTab, pointedTab)
            End If
        End If

        MyBase.OnDragOver(drgevent)
    End Sub

    Private Function getPointedTab() As TabPage
        For i As Integer = 0 To Me.TabPages.Count - 1
            If Me.GetTabRect(i).Contains(Me.PointToClient(Cursor.Position)) Then
                Return Me.TabPages(i)
            End If
        Next

        Return Nothing
    End Function

    Private Sub swapTabPages(src As TabPage, dst As TabPage)
        Dim srci As Integer = Me.TabPages.IndexOf(src)
        Dim dsti As Integer = Me.TabPages.IndexOf(dst)

        Me.TabPages(dsti) = src
        Me.TabPages(srci) = dst

        If Me.SelectedIndex = srci Then
            Me.SelectedIndex = dsti
        ElseIf Me.SelectedIndex = dsti Then
            Me.SelectedIndex = srci
        End If

        Me.Refresh()
    End Sub

#End Region

#Region "Draw Control"

    Sub New()
        SetStyle(ControlStyles.AllPaintingInWmPaint Or ControlStyles.UserPaint Or
                 ControlStyles.ResizeRedraw Or ControlStyles.OptimizedDoubleBuffer, True)
        DoubleBuffered = True
        SizeMode = TabSizeMode.Normal
        ItemSize = New Size(240, 16)
        AllowDrop = True
    End Sub

    Protected Overrides Sub OnPaint(e As PaintEventArgs)
        Dim g = e.Graphics
        With g
            .SmoothingMode = SmoothingMode.HighQuality
            .PixelOffsetMode = PixelOffsetMode.HighQuality
            .TextRenderingHint = TextRenderingHint.ClearTypeGridFit
            .Clear(_BaseColour)
            Try : SelectedTab.BackColor = _BackTabColour : Catch : End Try
            Try : SelectedTab.BorderStyle = BorderStyle.None : Catch : End Try
            For i = 0 To TabCount - 1
                Dim Base As New Rectangle(New Point(GetTabRect(i).Location.X + 2, GetTabRect(i).Location.Y), New Size(GetTabRect(i).Width, GetTabRect(i).Height))
                Dim BaseSize As New Rectangle(Base.Location, New Size(Base.Width, Base.Height))
                If i = SelectedIndex Then
                    .FillRectangle(New SolidBrush(_BaseColour), BaseSize)
                    .FillRectangle(New SolidBrush(_ActiveColour), New Rectangle(Base.X - 5, Base.Y - 3, Base.Width, Base.Height + 5))
                    .DrawString(TabPages(i).Text, Font, New SolidBrush(_TextColour), BaseSize, CenterSF)
                Else
                    .DrawString(TabPages(i).Text, Font, New SolidBrush(_TextColour), BaseSize, CenterSF)
                End If
            Next
            .DrawLine(New Pen(_HorizLineColour, 2), New Point(0, 19), New Point(Width, 19))
            .FillRectangle(New SolidBrush(_BackTabColour), New Rectangle(0, 20, Width, Height - 20))
            .DrawRectangle(New Pen(_BorderColour, 2), New Rectangle(0, 0, Width, Height))
            .InterpolationMode = InterpolationMode.HighQualityBicubic
        End With
    End Sub

#End Region

End Class

Public Class VisualStudioNormalTextBox
    Inherits Control

#Region "Declarations"
    Private State As MouseState = MouseState.None
    Private WithEvents TB As Windows.Forms.TextBox
    Private _BaseColour As Color = Color.FromArgb(51, 51, 55)
    Private _TextColour As Color = Color.FromArgb(153, 153, 153)
    Private _BorderColour As Color = Color.FromArgb(35, 35, 35)
    Private _Style As Styles = Styles.NotRounded
    Private _TextAlign As HorizontalAlignment = HorizontalAlignment.Left
    Private _MaxLength As Integer = 32767
    Private _ReadOnly As Boolean
    Private _UseSystemPasswordChar As Boolean
    Private _Multiline As Boolean
#End Region

#Region "TextBox Properties"

    Enum Styles
        Rounded
        NotRounded
    End Enum

    <Category("Options")>
    Property TextAlign() As HorizontalAlignment
        Get
            Return _TextAlign
        End Get
        Set(ByVal value As HorizontalAlignment)
            _TextAlign = value
            If TB IsNot Nothing Then
                TB.TextAlign = value
            End If
        End Set
    End Property

    <Category("Options")>
    Property MaxLength() As Integer
        Get
            Return _MaxLength
        End Get
        Set(ByVal value As Integer)
            _MaxLength = value
            If TB IsNot Nothing Then
                TB.MaxLength = value
            End If
        End Set
    End Property

    <Category("Options")>
    Property [ReadOnly]() As Boolean
        Get
            Return _ReadOnly
        End Get
        Set(ByVal value As Boolean)
            _ReadOnly = value
            If TB IsNot Nothing Then
                TB.ReadOnly = value
            End If
        End Set
    End Property

    <Category("Options")>
    Property UseSystemPasswordChar() As Boolean
        Get
            Return _UseSystemPasswordChar
        End Get
        Set(ByVal value As Boolean)
            _UseSystemPasswordChar = value
            If TB IsNot Nothing Then
                TB.UseSystemPasswordChar = value
            End If
        End Set
    End Property

    <Category("Options")>
    Property Multiline() As Boolean
        Get
            Return _Multiline
        End Get
        Set(ByVal value As Boolean)
            _Multiline = value
            If TB IsNot Nothing Then
                TB.Multiline = value

                If value Then
                    TB.Height = Height - 7
                Else
                    Height = TB.Height + 7
                End If

            End If
        End Set
    End Property

    <Category("Options")>
    Overrides Property Text As String
        Get
            Return MyBase.Text
        End Get
        Set(ByVal value As String)
            MyBase.Text = value
            If TB IsNot Nothing Then
                TB.Text = value
            End If
        End Set
    End Property

    <Category("Options")>
    Overrides Property Font As Font
        Get
            Return MyBase.Font
        End Get
        Set(ByVal value As Font)
            MyBase.Font = value
            If TB IsNot Nothing Then
                TB.Font = value
                TB.Location = New Point(3, 5)
                TB.Width = Width - 6

                If Not _Multiline Then
                    Height = TB.Height + 7
                End If
            End If
        End Set
    End Property

    Protected Overrides Sub OnCreateControl()
        MyBase.OnCreateControl()
        If Not Controls.Contains(TB) Then
            Controls.Add(TB)
        End If
    End Sub

    Private Sub OnBaseTextChanged(ByVal s As Object, ByVal e As EventArgs)
        Text = TB.Text
    End Sub

    Private Sub OnBaseKeyDown(ByVal s As Object, ByVal e As KeyEventArgs)
        If e.Control AndAlso e.KeyCode = Keys.A Then
            TB.SelectAll()
            e.SuppressKeyPress = True
        End If
        If e.Control AndAlso e.KeyCode = Keys.C Then
            TB.Copy()
            e.SuppressKeyPress = True
        End If
    End Sub

    Protected Overrides Sub OnResize(ByVal e As EventArgs)
        TB.Location = New Point(5, 5)
        TB.Width = Width - 10

        If _Multiline Then
            TB.Height = Height - 7
        Else
            Height = TB.Height + 7
        End If

        MyBase.OnResize(e)
    End Sub

    Public Property Style As Styles
        Get
            Return _Style
        End Get
        Set(value As Styles)
            _Style = value
            Invalidate()
        End Set
    End Property

    Public Sub SelectAll()
        TB.Focus()
        TB.SelectAll()
    End Sub


#End Region

#Region "Colour Properties"

    <Category("Colours")>
    Public Property BackgroundColour As Color
        Get
            Return _BaseColour
        End Get
        Set(value As Color)
            _BaseColour = value
        End Set
    End Property

    <Category("Colours")>
    Public Property TextColour As Color
        Get
            Return _TextColour
        End Get
        Set(value As Color)
            _TextColour = value
        End Set
    End Property

    <Category("Colours")>
    Public Property BorderColour As Color
        Get
            Return _BorderColour
        End Get
        Set(value As Color)
            _BorderColour = value
        End Set
    End Property

#End Region

#Region "Mouse States"

    Protected Overrides Sub OnMouseDown(e As MouseEventArgs)
        MyBase.OnMouseDown(e)
        State = MouseState.Down : Invalidate()
    End Sub
    Protected Overrides Sub OnMouseUp(e As MouseEventArgs)
        MyBase.OnMouseUp(e)
        State = MouseState.Over : TB.Focus() : Invalidate()
    End Sub
    Protected Overrides Sub OnMouseLeave(e As EventArgs)
        MyBase.OnMouseLeave(e)
        State = MouseState.None : Invalidate()
    End Sub

#End Region

#Region "Draw Control"
    Sub New()
        SetStyle(ControlStyles.AllPaintingInWmPaint Or ControlStyles.UserPaint Or
                 ControlStyles.ResizeRedraw Or ControlStyles.OptimizedDoubleBuffer Or
                 ControlStyles.SupportsTransparentBackColor, True)
        DoubleBuffered = True
        BackColor = Color.Transparent
        TB = New Windows.Forms.TextBox
        TB.Height = 20
        TB.Font = New Font("Segoe UI", 10)
        TB.Text = Text
        TB.BackColor = _BaseColour
        TB.ForeColor = _TextColour
        TB.MaxLength = _MaxLength
        TB.Multiline = False
        TB.ReadOnly = _ReadOnly
        TB.UseSystemPasswordChar = _UseSystemPasswordChar
        TB.BorderStyle = BorderStyle.None
        TB.Location = New Point(5, 5)
        TB.Width = Width - 35
        AddHandler TB.TextChanged, AddressOf OnBaseTextChanged
        AddHandler TB.KeyDown, AddressOf OnBaseKeyDown
    End Sub

    Protected Overrides Sub OnPaint(e As PaintEventArgs)
        Dim g = e.Graphics
        Dim GP As GraphicsPath
        Dim Base As New Rectangle(0, 0, Width, Height)
        With g
            .TextRenderingHint = TextRenderingHint.ClearTypeGridFit
            .SmoothingMode = SmoothingMode.HighQuality
            .PixelOffsetMode = PixelOffsetMode.HighQuality
            .Clear(BackColor)
            TB.BackColor = _BaseColour
            TB.ForeColor = _TextColour
            Select Case _Style
                Case Styles.Rounded
                    GP = RoundRectangle(Base, 6)
                    .FillPath(New SolidBrush(Color.FromArgb(42, 42, 42)), GP)
                    .DrawPath(New Pen(New SolidBrush(Color.FromArgb(35, 35, 35)), 2), GP)
                    GP.Dispose()
                Case Styles.NotRounded
                    .FillRectangle(New SolidBrush(_BaseColour), New Rectangle(0, 0, Width - 1, Height - 1))
                    .DrawRectangle(New Pen(Color.FromArgb(63, 63, 70), 2), New Rectangle(0, 0, Width, Height))
            End Select
            .InterpolationMode = CType(7, InterpolationMode)
        End With
    End Sub

#End Region

End Class

Public Class VisualStudioGroupBox
    Inherits ContainerControl

#Region "Declarations"
    Private _MainColour As Color = Color.FromArgb(37, 37, 38)
    Private _HeaderColour As Color = Color.FromArgb(45, 45, 48)
    Private _TextColour As Color = Color.FromArgb(129, 129, 131)
    Private _BorderColour As Color = Color.FromArgb(2, 118, 196)
#End Region

#Region "Properties"

    <Category("Colours")>
    Public Property BorderColour As Color
        Get
            Return _BorderColour
        End Get
        Set(value As Color)
            _BorderColour = value
        End Set
    End Property

    <Category("Colours")>
    Public Property TextColour As Color
        Get
            Return _TextColour
        End Get
        Set(value As Color)
            _TextColour = value
        End Set
    End Property

    <Category("Colours")>
    Public Property HeaderColour As Color
        Get
            Return _HeaderColour
        End Get
        Set(value As Color)
            _HeaderColour = value
        End Set
    End Property

    <Category("Colours")>
    Public Property MainColour As Color
        Get
            Return _MainColour
        End Get
        Set(value As Color)
            _MainColour = value
        End Set
    End Property

#End Region

#Region "Draw Control"
    Sub New()
        SetStyle(ControlStyles.AllPaintingInWmPaint Or ControlStyles.UserPaint Or
               ControlStyles.ResizeRedraw Or ControlStyles.OptimizedDoubleBuffer Or
               ControlStyles.SupportsTransparentBackColor, True)
        DoubleBuffered = True
        Size = New Size(160, 110)
        Font = New Font("Segoe UI", 10, FontStyle.Regular)
    End Sub

    Protected Overrides Sub OnPaint(e As PaintEventArgs)
        Dim g = e.Graphics
        With g
            .TextRenderingHint = TextRenderingHint.ClearTypeGridFit
            .SmoothingMode = SmoothingMode.HighQuality
            .PixelOffsetMode = PixelOffsetMode.HighQuality
            .FillRectangle(New SolidBrush(_MainColour), New Rectangle(0, 28, Width, Height))
            .FillRectangle(New SolidBrush(_HeaderColour), New Rectangle(0, 0, Width, 28))
            .FillRectangle(New SolidBrush(Color.FromArgb(33, 33, 33)), New Rectangle(0, 28, Width, 1))
            .DrawString(Text, Font, New SolidBrush(_TextColour), New Point(5, 5))
            .DrawRectangle(New Pen(_BorderColour, 2), New Rectangle(0, 0, Width, Height))
            .InterpolationMode = CType(7, InterpolationMode)
        End With
    End Sub
#End Region

End Class

