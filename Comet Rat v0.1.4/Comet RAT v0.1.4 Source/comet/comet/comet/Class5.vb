
Imports System.Drawing.Text
Imports System.IO
Imports System.Drawing.Drawing2D
Imports System.ComponentModel
Imports System.ComponentModel.Design
Imports System.Drawing.Design
Imports System.Windows.Forms

Public Class AVTheme
    Inherits ContainerControl

    Private C1 As Color = Color.FromArgb(242, 242, 242)
    Private C2 As Color = Color.FromArgb(0, 166, 208)

    Private B1 As New SolidBrush(C1)
    Private B2 As New SolidBrush(C2)

    Private F As Font

    Private T As String


    Private _PageName As String = "Scan"
    Private _PageImage As Image


    Private MouseP As Point = New Point(0, 0)
    Private Cap As Boolean = False
    Private MoveHeight As Integer = 48


    Public Property PageName() As String
        Get
            Return _PageName
        End Get
        Set(v As String)
            _PageName = v : Invalidate()
        End Set
    End Property

    Public Property PageImage() As Image
        Get
            Return _PageImage
        End Get
        Set(v As Image)
            _PageImage = v
        End Set
    End Property

    Sub New()
        MyBase.New()
        Me.BackColor = C1

        DoubleBuffered = True
        Me.Dock = DockStyle.Fill

        F = New Font("Segoe UI", 13, FontStyle.Regular)
    End Sub
    Protected Overrides Sub OnMouseDown(ByVal e As System.Windows.Forms.MouseEventArgs)
        MyBase.OnMouseDown(e)
        If e.Button = Windows.Forms.MouseButtons.Left And New Rectangle(0, 0, Width, MoveHeight).Contains(e.Location) Then
            Cap = True : MouseP = e.Location
        End If
    End Sub
    Protected Overrides Sub OnMouseUp(ByVal e As System.Windows.Forms.MouseEventArgs)
        MyBase.OnMouseUp(e) : Cap = False
    End Sub
    Protected Overrides Sub OnMouseMove(ByVal e As System.Windows.Forms.MouseEventArgs)
        MyBase.OnMouseMove(e)
        If Cap Then
            Parent.Location = MousePosition - MouseP
        End If
    End Sub

    Protected Overrides Sub OnPaint(e As System.Windows.Forms.PaintEventArgs)
        MyBase.OnPaint(e)
        Dim G As Graphics
        G = e.Graphics

        G.SmoothingMode = SmoothingMode.None

        Dim I As Bitmap = Me.ParentForm.Icon.ToBitmap
        Dim IM As Image = I
        T = Me.ParentForm.Text

        G.FillRectangle(B2, New Rectangle(0, 48, Me.Width, 70))
        G.DrawLine(New Pen(New SolidBrush(Color.FromArgb(203, 203, 203))), New Point(0, Me.Height - 49), New Point(Me.Width, Me.Height - 49))

        G.DrawString(T, F, Brushes.Black, Me.Width / 2 - G.MeasureString(T, F).Width / 2, 24 - G.MeasureString(T, F).Height / 2)
        G.DrawImage(IM, New Point(Me.Width / 2 - G.MeasureString(T, F).Width / 2 - IM.Width - 2, IM.Height / 2 - 7))

        If Not Me.ParentForm.FormBorderStyle = FormBorderStyle.None Then
            Me.ParentForm.FormBorderStyle = FormBorderStyle.None
        End If

        G.TextRenderingHint = TextRenderingHint.AntiAlias
        G.DrawString(_PageName, New Font("Verdana", 17, FontStyle.Regular), Brushes.White, 105, 70)

        If Not _PageImage Is Nothing Then
            G.DrawImage(_PageImage, New Point(70, 84 - _PageImage.Height / 2))
        End If
    End Sub
End Class

Public Class AVWindowButton : Inherits Control

    Private Hover As Color = Color.FromArgb(242, 242, 242)

    Private _SetImage As String = "Close"

    Sub New()
        Me.Size = New Size(33, 33)
        Me.DoubleBuffered = True
        SetStyle(ControlStyles.SupportsTransparentBackColor, True)
        Me.BackColor = Color.Transparent
    End Sub

    <TypeConverter(GetType(btnimProperty)), Category("Misc"), Description("Select Image from the list")>
    Public Property SetImage() As String
        Get
            Return _SetImage
        End Get
        Set(value As String)
            _SetImage = value
        End Set
    End Property

    Protected Overrides Sub OnMouseEnter(ByVal e As EventArgs)
        Hover = Color.FromArgb(228, 228, 228)
        MyBase.Invalidate()
        MyBase.OnMouseEnter(e)
    End Sub
    Protected Overrides Sub OnMouseLeave(ByVal e As EventArgs)
        Hover = Color.FromArgb(242, 242, 242)
        MyBase.Invalidate()
        MyBase.OnMouseEnter(e)
    End Sub
    Protected Overrides Sub OnMouseUp(ByVal e As MouseEventArgs)
        Hover = Color.FromArgb(214, 214, 214)
        MyBase.Invalidate()
        MyBase.OnMouseUp(e)
    End Sub
    Protected Overrides Sub OnMouseDown(ByVal e As MouseEventArgs)
        Hover = Color.FromArgb(151, 151, 151)
        MyBase.Invalidate()
        MyBase.OnMouseClick(e)
    End Sub

    Public Function RoundRect(ByVal Rectangle As Rectangle, ByVal Curve As Integer) As GraphicsPath
        Dim P As GraphicsPath = New GraphicsPath()
        Dim ArcRectangleWidth As Integer = Curve * 2
        P.AddArc(New Rectangle(Rectangle.X, Rectangle.Y, ArcRectangleWidth, ArcRectangleWidth), -180, 90)
        P.AddArc(New Rectangle(Rectangle.Width - ArcRectangleWidth + Rectangle.X, Rectangle.Y, ArcRectangleWidth, ArcRectangleWidth), -90, 90)
        P.AddArc(New Rectangle(Rectangle.Width - ArcRectangleWidth + Rectangle.X, Rectangle.Height - ArcRectangleWidth + Rectangle.Y, ArcRectangleWidth, ArcRectangleWidth), 0, 90)
        P.AddArc(New Rectangle(Rectangle.X, Rectangle.Height - ArcRectangleWidth + Rectangle.Y, ArcRectangleWidth, ArcRectangleWidth), 90, 90)
        P.AddLine(New Point(Rectangle.X, Rectangle.Height - ArcRectangleWidth + Rectangle.Y), New Point(Rectangle.X, Curve + Rectangle.Y))
        Return P
    End Function

    Protected Overrides Sub OnPaint(e As System.Windows.Forms.PaintEventArgs)
        MyBase.OnPaint(e)
        Dim G As Graphics
        G = e.Graphics

        G.SmoothingMode = SmoothingMode.HighQuality

        G.FillPath(New SolidBrush(Color.FromArgb(Hover.ToArgb)), RoundRect(New Rectangle(0, 0, Width - 1, Height - 1), 3))


        G.SmoothingMode = SmoothingMode.None

        If _SetImage = "Close" Then
            Using P1 As New Pen(Brushes.DimGray, 2)
                P1.StartCap = LineCap.Triangle : P1.EndCap = LineCap.Triangle
                G.DrawLine(P1, 6, 6, Me.Width - 6, Me.Height - 6)
                G.DrawLine(P1, Me.Width - 6, 6, 6, Me.Height - 6)
            End Using
        ElseIf _SetImage = "Minimize" Then
            Using P1 As New Pen(Brushes.DimGray, 2)
                P1.StartCap = LineCap.Triangle : P1.EndCap = LineCap.Triangle
                G.DrawLine(P1, 6, Me.Height - 6, Me.Width - 6, Me.Height - 6)
            End Using
        ElseIf _SetImage = "Maximize" Then
            Using P1 As New Pen(Brushes.DimGray, 2)
                P1.StartCap = LineCap.Triangle : P1.EndCap = LineCap.Triangle
                G.FillRectangle(New SolidBrush(Color.FromArgb(Hover.ToArgb)), 6, 8, 16, 13)
                G.DrawRectangle(P1, 6, 8, 16, 13)
                G.FillRectangle(New SolidBrush(Color.FromArgb(Hover.ToArgb)), 12, Me.Height - 19, 16, 13)
                G.DrawRectangle(P1, 12, Me.Height - 19, 16, 13)
            End Using
        ElseIf _SetImage = "Stop" Then
            Dim R1 As New Rectangle(Me.Height / 2 - 6, Me.Width / 2 - 6, 12, 12)
            G.FillRectangle(New SolidBrush(Color.DimGray), R1)
        ElseIf _SetImage = "Play" Then
            G.SmoothingMode = SmoothingMode.AntiAlias
            Dim ptsArray As PointF() = {New PointF(10, 10), New PointF(Me.Width - 10, Me.Height / 2), New PointF(10, Me.Height - 10), New PointF(10, 10)}
            Dim gp As New Drawing2D.GraphicsPath(Drawing2D.FillMode.Alternate)
            gp.AddLines(ptsArray)
            gp.CloseFigure()
            G.FillPath(Brushes.DimGray, gp)
        End If
    End Sub
End Class

Public Class btnimProperty
    Inherits System.ComponentModel.StringConverter

    Public Overrides Function GetStandardValues(context As System.ComponentModel.ITypeDescriptorContext) As System.ComponentModel.TypeConverter.StandardValuesCollection
        Return New StandardValuesCollection(myList)
    End Function

    Public Overrides Function GetStandardValuesSupported(context As System.ComponentModel.ITypeDescriptorContext) As Boolean
        Return True
    End Function

    Public Overrides Function GetStandardValuesExclusive(context As System.ComponentModel.ITypeDescriptorContext) As Boolean
        Return True
    End Function

    Private Function myList() As Collections.IList
        Dim imgList As New Collection

        With imgList
            .Add("Close")
            .Add("Minimize")
            .Add("Maximize")
            .Add("Stop")
            .Add("Play")
        End With
        Return imgList
    End Function
End Class

Public Class AVTextbox
    Inherits Control

    Dim WithEvents txtbox As New TextBox

    Private _passmask As Boolean = False
    Public Shadows Property UseSystemPasswordChar() As Boolean
        Get
            Return _passmask
        End Get
        Set(ByVal v As Boolean)
            txtbox.UseSystemPasswordChar = UseSystemPasswordChar
            _passmask = v
            Invalidate()
        End Set
    End Property
    Private _maxchars As Integer = 32767
    Public Shadows Property MaxLength() As Integer
        Get
            Return _maxchars
        End Get
        Set(ByVal v As Integer)
            _maxchars = v
            txtbox.MaxLength = MaxLength
            Invalidate()
        End Set
    End Property
    Private _align As HorizontalAlignment
    Public Shadows Property TextAlignment() As HorizontalAlignment
        Get
            Return _align
        End Get
        Set(ByVal v As HorizontalAlignment)
            _align = v
            Invalidate()
        End Set
    End Property
    Private _multiline As Boolean = False
    Public Shadows Property MultiLine() As Boolean
        Get
            Return _multiline
        End Get
        Set(ByVal value As Boolean)
            _multiline = value
            Invalidate()
        End Set
    End Property


    Protected Overrides Sub OnTextChanged(ByVal e As System.EventArgs)
        MyBase.OnTextChanged(e)
        Invalidate()
    End Sub
    Protected Overrides Sub OnBackColorChanged(ByVal e As System.EventArgs)
        MyBase.OnBackColorChanged(e)
        txtbox.BackColor = BackColor
        Invalidate()
    End Sub
    Protected Overrides Sub OnForeColorChanged(ByVal e As System.EventArgs)
        MyBase.OnForeColorChanged(e)
        txtbox.ForeColor = ForeColor
        Invalidate()
    End Sub
    Protected Overrides Sub OnFontChanged(ByVal e As System.EventArgs)
        MyBase.OnFontChanged(e)
        txtbox.Font = Font
    End Sub
    Protected Overrides Sub OnGotFocus(ByVal e As System.EventArgs)
        MyBase.OnGotFocus(e)
        txtbox.Focus()
    End Sub
    Sub TextChngTxtBox() Handles txtbox.TextChanged
        Text = txtbox.Text
    End Sub
    Sub TextChng() Handles MyBase.TextChanged
        txtbox.Text = Text
    End Sub
    Sub NewTextBox()
        With txtbox
            .Multiline = False
            .BackColor = Color.FromArgb(43, 43, 43)
            .ForeColor = ForeColor
            .Text = String.Empty
            .TextAlign = HorizontalAlignment.Center
            .BorderStyle = BorderStyle.None
            .Location = New Point(7, 5)
            .Font = New Font("Verdana", 10)
            .Size = New Size(Width - 10, 33)
            .UseSystemPasswordChar = UseSystemPasswordChar
        End With

    End Sub

    Sub New()
        MyBase.New()

        NewTextBox()
        Controls.Add(txtbox)

        SetStyle(ControlStyles.UserPaint, True)
        SetStyle(ControlStyles.SupportsTransparentBackColor, True)

        Text = ""
        BackColor = Color.White
        ForeColor = Color.Gray
        Font = New Font("Verdana", 10)
        Size = New Size(135, 33)
        DoubleBuffered = True
    End Sub

    Protected Overrides Sub OnPaint(ByVal e As System.Windows.Forms.PaintEventArgs)
        Dim B As New Bitmap(Width, Height)
        Dim G As Graphics = Graphics.FromImage(B)
        G.SmoothingMode = SmoothingMode.HighQuality
        Height = 33
        With txtbox
            .Width = Width - 10
            .TextAlign = TextAlignment
            .UseSystemPasswordChar = UseSystemPasswordChar
            .Height = 33
        End With

        G.Clear(Color.Transparent)
        G.DrawRectangle(New Pen(New SolidBrush(Color.FromArgb(216, 216, 216))), New Rectangle(0, 0, Width - 1, Height - 1))

        e.Graphics.DrawImage(B.Clone(), 0, 0)
        G.Dispose() : B.Dispose()
    End Sub
End Class

Class AVTabControl
    Inherits Windows.Forms.TabControl

    Private _DrawBottomBorder As Boolean
    Public Property DrawBottomBorder() As Boolean
        Get
            Return _DrawBottomBorder
        End Get
        Set(ByVal value As Boolean)
            _DrawBottomBorder = value
            Invalidate()
        End Set
    End Property

    Private _BorderColor As Pen = Pens.Black
    Public Property BorderColor() As Color
        Get
            Return _BorderColor.Color
        End Get
        Set(ByVal value As Color)
            _BorderColor = New Pen(value)
            Invalidate()
        End Set
    End Property

    Private _TextAlignment As StringAlignment = StringAlignment.Near
    Public Property TextAlignment() As StringAlignment
        Get
            Return _TextAlignment
        End Get
        Set(ByVal value As StringAlignment)
            _TextAlignment = value
            Invalidate()
        End Set
    End Property

    Sub New()
        SetStyle(DirectCast(139286, ControlStyles), True)

        SizeMode = TabSizeMode.Fixed
        Alignment = TabAlignment.Left
        ItemSize = New Size(50, 50)
        Font = New Font("Segoe UI", 9, FontStyle.Regular, GraphicsUnit.Point)
        DrawMode = TabDrawMode.OwnerDrawFixed

        P1 = New Pen(Color.FromArgb(94, 94, 94))
        P2 = New Pen(Color.FromArgb(17, 17, 17))

        B1 = New SolidBrush(Color.FromArgb(38, 38, 38))
        B2 = New SolidBrush(Color.FromArgb(35, 35, 35))
        B3 = New SolidBrush(Color.FromArgb(5, Color.White))

        SF1 = New StringFormat()
        SF1.LineAlignment = StringAlignment.Center

        For Each pg As TabPage In Me.TabPages
            pg.BackColor = Color.FromArgb(242, 242, 242)
        Next
    End Sub

    Protected Overrides Sub OnControlAdded(ByVal e As ControlEventArgs)
        If TypeOf e.Control Is TabPage Then
            For Each i As TabPage In Me.Controls
                i = New TabPage
            Next
            e.Control.BackColor = Color.FromArgb(242, 242, 242)
        End If

        MyBase.OnControlAdded(e)
    End Sub

    Private R1, R2 As Rectangle

    Private P1, P2 As Pen
    Private B1, B2, B3 As SolidBrush

    Private GB1 As LinearGradientBrush
    Private GB2 As LinearGradientBrush

    Private TP1 As TabPage
    Private SF1 As StringFormat

    Private ItemHeight As Integer

    Dim S1 As Size
    Dim REC As New Rectangle
    Dim BR1 As LinearGradientBrush

    Private G As Graphics

    Protected Overrides Sub OnPaint(ByVal e As PaintEventArgs)
        Dim F1 As New System.Drawing.Font("Segoe UI", 9, FontStyle.Bold, GraphicsUnit.Point)

        G = e.Graphics
        G.TextRenderingHint = TextRenderingHint.ClearTypeGridFit
        G.SmoothingMode = SmoothingMode.AntiAlias

        G.Clear(Color.FromArgb(242, 242, 242))


        ItemHeight = ItemSize.Height + 2
        G.FillRectangle(B1, 0, 0, ItemHeight, Height)
        G.DrawRectangle(Pens.Black, 0, 0, ItemHeight, Height)
        Dim B5 As New SolidBrush(Color.FromArgb(51, 51, 51))
        Dim P5 As New Pen(B5)
        For I As Integer = 0 To TabCount - 1
            R1 = GetTabRect(I)
            R1.Y -= 1
            R1.Width += 1
            R1.X -= 1
            TP1 = TabPages(I)
            If SelectedIndex = I Then
                Using GB1 As New LinearGradientBrush(R1, Color.FromArgb(26, 26, 26), Color.FromArgb(17, 17, 17), 90.0F)

                    Dim ColorBlend As New ColorBlend()
                    ColorBlend.Colors = {Color.FromArgb(25, 25, 25), Color.FromArgb(17, 17, 17), Color.FromArgb(25, 25, 25)}
                    ColorBlend.Positions = {0.0F, 0.5F, 1.0F}
                    GB1.InterpolationColors = ColorBlend
                    G.FillRectangle(GB1, R1)
                End Using

                G.DrawLine(P5, R1.Left, R1.Y - 1, R1.Width + 1, R1.Y - 1)
                If HoverIndex = I Then
                    G.FillRectangle(B3, R1)
                End If
                R1.X += 5
                R1.Width -= 14

                R2 = R1
                R2.Y += 1
                R2.X += 1

                SF1.Alignment = _TextAlignment
                G.DrawString(TP1.Text, Font, Brushes.White, New Rectangle(R2.Left + 33, R2.Top - 1, R2.Width - 43, R2.Height), SF1)
                Try
                    G.DrawImage(Me.ImageList.Images.Item(TabPages(I).ImageIndex), R1.X + 1, R1.Y + 11, 32, 32)
                Catch
                End Try
            Else
                Dim BR2 As New SolidBrush(Color.FromArgb(38, 38, 38))
                R1.Y -= 1
                G.FillRectangle(BR2, R1)
                G.DrawLine(P5, R1.X, R1.Y, R1.Right, R1.Y)
                If HoverIndex = I Then
                    G.FillRectangle(B3, R1)
                End If
                Dim BR As New SolidBrush(Color.FromArgb(140, Color.Black))
                G.DrawLine(P2, R1.X, R1.Bottom - 1, R1.Right, R1.Bottom - 1)
                R1.X += 5
                R1.Width -= 14
                R2 = R1
                R2.Y += 1
                R2.X += 1
                SF1.Alignment = _TextAlignment
                G.DrawString(TP1.Text, Font, Brushes.Gray, New Rectangle(R2.Left + 33, R2.Top - 1, R2.Width - 43, R2.Height), SF1)
                Try
                    G.DrawImage(Me.ImageList.Images.Item(TabPages(I).ImageIndex), R1.X + 2, R1.Y + 11, 32, 32)
                Catch
                End Try
            End If
            G.DrawLine(P5, R1.Right + 8, R1.Top, R1.Right + 8, R1.Bottom - 3)
        Next

        G.DrawLine(Pens.Black, 0, 0, R2.Height - 9, 0)
        G.DrawLine(_BorderColor, ItemHeight, 0, ItemHeight, Height)
        G.DrawLine(P5, R1.Left - 5, ItemSize.Width * (TabCount), R1.Right + 8, ItemSize.Width * (TabCount))

        If _DrawBottomBorder Then
            G.DrawLine(_BorderColor, 0, Height - 1, Width, Height - 1)
        End If
        G.DrawLine(P5, R1.Left - 5, ((TabCount) * (R1.Width + 12)) + (TabCount * 2), R1.Left - 5, 1)
    End Sub

    Private HoverIndex As Integer = -1

    Protected Overrides Sub OnMouseMove(ByVal e As MouseEventArgs)
        For I As Integer = 0 To TabPages.Count - 1
            If GetTabRect(I).Contains(e.Location) Then
                HoverIndex = I
                Exit For
            End If
        Next

        Invalidate()
        MyBase.OnMouseMove(e)
    End Sub

    Protected Overrides Sub OnMouseLeave(ByVal e As EventArgs)
        HoverIndex = -1
        Invalidate()
        MyBase.OnMouseLeave(e)
    End Sub
End Class


Public Class AVProgressBar
    Inherits Control

    Private _Value As Integer = 50
    Private _Thickness As Integer = 5
    Private _Angle As Integer = 0
    Private _Symbol As String = "%"

    Sub New()
        Size = New Size(65, 65)
        Invalidate()
    End Sub

    Public Property Angle() As Integer
        Get
            Return _Angle
        End Get
        Set(ByVal v As Integer)
            _Angle = v : Invalidate()
        End Set
    End Property

    Public Property Symbol() As String
        Get
            Return _Symbol
        End Get
        Set(ByVal v As String)
            _Symbol = v : Invalidate()
        End Set
    End Property

    Public Property Thickness() As Integer
        Get
            Return _Thickness
        End Get
        Set(ByVal v As Integer)
            _Thickness = v : Invalidate()
        End Set
    End Property

    Protected Overrides Sub OnPaintBackground(ByVal p As PaintEventArgs)
    End Sub

    Protected Overrides Sub OnPaint(ByVal e As PaintEventArgs)
        MyBase.OnPaint(e)
        Me.Width = Me.Height
        Using B1 As New Bitmap(Width, Height)

            Using G As Graphics = Graphics.FromImage(B1)
                G.SmoothingMode = SmoothingMode.AntiAlias


                G.Clear(BackColor)

                Using LGB As New LinearGradientBrush(ClientRectangle, Color.FromArgb(217, 217, 217), Color.FromArgb(217, 217, 217), LinearGradientMode.Vertical)
                    Using P1 As New Pen(LGB, Thickness + 3)
                        G.DrawArc(P1, CInt(Thickness / 2) + 2, CInt(Thickness / 2) + 2, Width - Thickness - 4, Height - Thickness - 4, -90, 360)
                    End Using
                End Using

                Using LGB As New LinearGradientBrush(ClientRectangle, Color.FromArgb(0, 166, 208), Color.FromArgb(0, 166, 208), LinearGradientMode.Vertical)
                    Using P1 As New Pen(LGB, Thickness + 3)
                        G.DrawArc(P1, CInt(Thickness / 2) + 9, CInt(Thickness / 2) + 9, Width - Thickness - 18, Height - Thickness - 18, -90, 360)
                    End Using
                End Using

                Using LGB As New LinearGradientBrush(ClientRectangle, Color.FromArgb(255, 255, 255), Color.FromArgb(255, 255, 255), LinearGradientMode.Vertical)
                    Using P1 As New Pen(LGB, Thickness - 2)
                        Dim i As Integer = 360 / 100 * _Value
                        G.DrawArc(P1, CInt(Thickness / 2) + 9, CInt(Thickness / 2) + 9, Width - Thickness - 18, Height - Thickness - 18, -90, i)
                    End Using
                End Using


                G.DrawString(_Value & _Symbol, New Font("Arial", 13), Brushes.Black, New Point(Me.Width / 2 - G.MeasureString(_Value & _Symbol, New Font("Arial", 13)).Width / 2 + 1, Me.Height / 2 - G.MeasureString(_Value & "%", New Font("Arial", 13)).Height / 2 + 1))
            End Using
            e.Graphics.DrawImage(B1, 0, 0)
        End Using
    End Sub
End Class

Public Class AVLabel : Inherits Control

    Sub New()
        Me.Size = New Size(175, 25)
    End Sub


    Private _String1 As String = "Quick Scan"
    Private _String2 As String = "/ Scan running..."
    Private _Img As Image

    Public Property String1() As String
        Get
            Return _String1
        End Get
        Set(v As String)
            _String1 = v : Invalidate()
        End Set
    End Property

    Public Property String2() As String
        Get
            Return _String2
        End Get
        Set(v As String)
            _String2 = v : Invalidate()
        End Set
    End Property

    Public Property Image As Image
        Get
            Return _Img
        End Get
        Set(v As Image)
            _Img = v : Invalidate()
        End Set
    End Property

    Protected Overrides Sub OnPaint(e As System.Windows.Forms.PaintEventArgs)
        MyBase.OnPaint(e)

        Dim G As Graphics
        G = e.Graphics

        G.TextRenderingHint = Drawing.Text.TextRenderingHint.AntiAlias

        G.DrawString(_String1, New Font("Segoe UI", 9, FontStyle.Bold), Brushes.DimGray, 32, 6)
        G.DrawString(_String2, New Font("Segoe UI", 9), Brushes.DimGray, 33 + G.MeasureString(_String1, New Font("Segoe UI", 9, FontStyle.Bold)).Width, 6)
        If Not _Img Is Nothing Then
            G.DrawImage(_Img, 0, 0)
        End If
    End Sub
End Class

Public Class AVComboBox
    Inherits ComboBox

    Private _StartIndex As Integer = 0
    Private C1 As Color = Color.FromArgb(254, 254, 254)
    Private C2 As Color = Color.FromArgb(244, 244, 244)

    Public Property StartIndex As Integer
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
                e.Graphics.FillRectangle(New SolidBrush(Color.LightGray), e.Bounds)
                Using b As New SolidBrush(e.ForeColor)
                    e.Graphics.DrawString(MyBase.GetItemText(MyBase.Items(e.Index)), New Font("Verdana", 10), b, 1, e.Bounds.Top + 5)
                End Using
            Else
                e.Graphics.DrawString(MyBase.GetItemText(MyBase.Items(e.Index)), New Font("Verdana", 10), Brushes.Gray, 1, e.Bounds.Top + 5)
            End If
        Catch
        End Try
        e.DrawFocusRectangle()
        Me.Invalidate()
    End Sub

    Protected Sub DrawTriangle(ByVal Clr As Color, ByVal FirstPoint As Point, ByVal SecondPoint As Point, ByVal ThirdPoint As Point, ByVal G As Graphics)
        Dim points As New List(Of Point)()
        points.Add(FirstPoint)
        points.Add(SecondPoint)
        points.Add(ThirdPoint)
        G.FillPolygon(New SolidBrush(Clr), points.ToArray)
    End Sub

    Sub New()
        Me.Width = 163
        Me.Font = New Font("Verdana", 15)
        Me.SetStyle(ControlStyles.AllPaintingInWmPaint Or _
        ControlStyles.ResizeRedraw Or _
        ControlStyles.UserPaint Or _
        ControlStyles.DoubleBuffer, True)
        Me.DrawMode = Windows.Forms.DrawMode.OwnerDrawFixed
        Me.BackColor = C1
        Me.ForeColor = C1
        Me.DropDownStyle = ComboBoxStyle.DropDownList
        Me.DoubleBuffered = True
    End Sub

    Protected Overrides Sub OnTextChanged(e As System.EventArgs)
        MyBase.OnTextChanged(e)
        Invalidate()
    End Sub

    Protected Overrides Sub OnMouseDown(ByVal e As MouseEventArgs)
        C2 = Color.FromArgb(233, 233, 233)
        MyBase.Invalidate()
        MyBase.OnMouseClick(e)
    End Sub

    Protected Overrides Sub OnMouseUp(e As System.Windows.Forms.MouseEventArgs)
        C2 = Color.FromArgb(244, 244, 244)
        MyBase.Invalidate()
        MyBase.OnMouseUp(e)
    End Sub

    Protected Overrides Sub OnPaint(ByVal e As PaintEventArgs)
        MyBase.OnPaint(e)
        Dim G As Graphics
        G = e.Graphics

        G.FillRectangle(New SolidBrush(Color.FromArgb(C2.ToArgb)), New Rectangle(Width - 20, 2, 17, Height - 5))
        G.SmoothingMode = SmoothingMode.HighQuality
        Try
            G.DrawRectangle(New Pen(New SolidBrush(Color.FromArgb(216, 216, 216))), New Rectangle(Width - 20, 2, 17, Height - 5))

            Try
                G.DrawString(Text, New Font("Verdana", 10), Brushes.Gray, New Rectangle(3, 0, Width - 20, Height), New StringFormat With {.LineAlignment = StringAlignment.Center, .Alignment = StringAlignment.Near})
            Catch : End Try

            G.DrawLine(New Pen(New SolidBrush(Color.FromArgb(216, 216, 216))), 0, 0, 0, 0)
            G.DrawRectangle(New Pen(New SolidBrush(Color.FromArgb(216, 216, 216))), New Rectangle(0, 0, Width - 1, Height - 1))

            DrawTriangle(Color.FromArgb(216, 216, 216), New Point(Width - 15, 14), New Point(Width - 8, 14), New Point(Width - 12, 17), G)
        Catch
        End Try
    End Sub
End Class

Public Class AVButton
    Inherits Control

    Private Hover As Color
    Private _MainColor As String
    Private Loaded As Boolean

    Sub New()
        Me.Size = New Size(33, 33)
        Me.DoubleBuffered = True
        SetStyle(ControlStyles.SupportsTransparentBackColor, True)
        Me.BackColor = Color.Transparent
    End Sub

    <TypeConverter(GetType(btnColorProperty)), Category("Misc"), Description("Select color from the list")>
    Public Property MainColor() As String
        Get
            Return _MainColor
        End Get
        Set(value As String)
            _MainColor = value
        End Set
    End Property

    Protected Overrides Sub OnMouseEnter(ByVal e As EventArgs)

        Hover = Color.FromArgb(228, 228, 228)

        If _MainColor = "Light" Then
            Hover = Color.FromArgb(228, 228, 228)
        Else
            Hover = Color.FromArgb(117, 117, 117)
        End If

        MyBase.Invalidate()
        MyBase.OnMouseEnter(e)
    End Sub
    Protected Overrides Sub OnMouseLeave(ByVal e As EventArgs)

        Hover = Color.FromArgb(242, 242, 242)

        If _MainColor = "Light" Then
            Hover = Color.FromArgb(242, 242, 242)
        Else
            Hover = Color.DimGray
        End If

        MyBase.Invalidate()
        MyBase.OnMouseEnter(e)
    End Sub
    Protected Overrides Sub OnMouseUp(ByVal e As MouseEventArgs)
        If _MainColor = "Light" Then
            Hover = Color.FromArgb(228, 228, 228)
        Else
            Hover = Color.FromArgb(117, 117, 117)
        End If
        MyBase.Invalidate()
        MyBase.OnMouseUp(e)
    End Sub
    Protected Overrides Sub OnMouseDown(ByVal e As MouseEventArgs)
        If _MainColor = "Light" Then
            Hover = Color.FromArgb(151, 151, 151)
        Else
            Hover = Color.FromArgb(66, 66, 66)
        End If
        MyBase.Invalidate()
        MyBase.OnMouseClick(e)
    End Sub


    Public Function RoundRect(ByVal Rectangle As Rectangle, ByVal Curve As Integer) As GraphicsPath
        Dim P As GraphicsPath = New GraphicsPath()
        Dim ArcRectangleWidth As Integer = Curve * 2
        P.AddArc(New Rectangle(Rectangle.X, Rectangle.Y, ArcRectangleWidth, ArcRectangleWidth), -180, 90)
        P.AddArc(New Rectangle(Rectangle.Width - ArcRectangleWidth + Rectangle.X, Rectangle.Y, ArcRectangleWidth, ArcRectangleWidth), -90, 90)
        P.AddArc(New Rectangle(Rectangle.Width - ArcRectangleWidth + Rectangle.X, Rectangle.Height - ArcRectangleWidth + Rectangle.Y, ArcRectangleWidth, ArcRectangleWidth), 0, 90)
        P.AddArc(New Rectangle(Rectangle.X, Rectangle.Height - ArcRectangleWidth + Rectangle.Y, ArcRectangleWidth, ArcRectangleWidth), 90, 90)
        P.AddLine(New Point(Rectangle.X, Rectangle.Height - ArcRectangleWidth + Rectangle.Y), New Point(Rectangle.X, Curve + Rectangle.Y))
        Return P
    End Function

    Protected Overrides Sub OnPaint(e As System.Windows.Forms.PaintEventArgs)
        MyBase.OnPaint(e)
        Dim G As Graphics
        G = e.Graphics

        If Loaded = False Then
            If MainColor = "Light" Then
                Hover = Color.FromArgb(242, 242, 242)
            Else
                Hover = Color.DimGray
            End If
            Loaded = True
        End If

        G.SmoothingMode = SmoothingMode.HighQuality

        If MainColor = "Light" Then
            G.FillPath(New SolidBrush(Color.FromArgb(Hover.ToArgb)), RoundRect(New Rectangle(0, 0, Width - 1, Height - 1), 5))
        Else
            G.FillPath(New SolidBrush(Color.FromArgb(Hover.ToArgb)), RoundRect(New Rectangle(0, 0, Width - 1, Height - 1), 5))
        End If

        G.DrawString(Text, New Font("Verdana", 10), Brushes.Black, Me.Width / 2 - G.MeasureString(Text, New Font("Verdana", 10)).Width / 2, Me.Height / 2 - G.MeasureString(Text, New Font("Verdana", 10)).Height / 2)

        G.SmoothingMode = SmoothingMode.None
    End Sub
End Class

Public Class btnColorProperty
    Inherits System.ComponentModel.StringConverter

    Public Overrides Function GetStandardValues(context As System.ComponentModel.ITypeDescriptorContext) As System.ComponentModel.TypeConverter.StandardValuesCollection
        Return New StandardValuesCollection(myList)
    End Function

    Public Overrides Function GetStandardValuesSupported(context As System.ComponentModel.ITypeDescriptorContext) As Boolean
        Return True
    End Function

    Public Overrides Function GetStandardValuesExclusive(context As System.ComponentModel.ITypeDescriptorContext) As Boolean
        Return True
    End Function

    Private Function myList() As Collections.IList
        Dim imgList As New Collection

        With imgList
            .Add("Light")
            .Add("Dark")
        End With
        Return imgList
    End Function
End Class