#Region "Themebase"
Imports System, System.IO, System.Collections.Generic
Imports System.Drawing, System.Drawing.Drawing2D
Imports System.ComponentModel, System.Windows.Forms
Imports System.Runtime.InteropServices
Imports System.Drawing.Imaging

'------------------
'Creator: aeonhack
'Site: elitevs.net
'Created: 08/02/2011
'Changed: 12/06/2011
'Version: 1.5.4
'------------------

MustInherit Class ThemeContainer154
    Inherits ContainerControl

#Region " Initialization "

    Protected G As Graphics, B As Bitmap

    Sub New()
        SetStyle(DirectCast(139270, ControlStyles), True)

        _ImageSize = Size.Empty
        Font = New Font("Verdana", 8S)

        MeasureBitmap = New Bitmap(1, 1)
        MeasureGraphics = Graphics.FromImage(MeasureBitmap)

        DrawRadialPath = New GraphicsPath

        InvalidateCustimization()
    End Sub

    Protected NotOverridable Overrides Sub OnHandleCreated(ByVal e As EventArgs)
        If DoneCreation Then InitializeMessages()

        InvalidateCustimization()
        ColorHook()

        If Not _LockWidth = 0 Then Width = _LockWidth
        If Not _LockHeight = 0 Then Height = _LockHeight
        If Not _ControlMode Then MyBase.Dock = DockStyle.Fill

        Transparent = _Transparent
        If _Transparent AndAlso _BackColor Then BackColor = Color.Transparent

        MyBase.OnHandleCreated(e)
    End Sub

    Private DoneCreation As Boolean
    Protected NotOverridable Overrides Sub OnParentChanged(ByVal e As EventArgs)
        MyBase.OnParentChanged(e)

        If Parent Is Nothing Then Return
        _IsParentForm = TypeOf Parent Is Form

        If Not _ControlMode Then
            InitializeMessages()

            If _IsParentForm Then
                ParentForm.FormBorderStyle = _BorderStyle
                ParentForm.TransparencyKey = _TransparencyKey

                If Not DesignMode Then
                    AddHandler ParentForm.Shown, AddressOf FormShown
                End If
            End If

            Parent.BackColor = BackColor
        End If

        OnCreation()
        DoneCreation = True
        InvalidateTimer()
    End Sub

#End Region

    Private Sub DoAnimation(ByVal i As Boolean)
        OnAnimation()
        If i Then Invalidate()
    End Sub

    Protected NotOverridable Overrides Sub OnPaint(ByVal e As PaintEventArgs)
        If Width = 0 OrElse Height = 0 Then Return

        If _Transparent AndAlso _ControlMode Then
            PaintHook()
            e.Graphics.DrawImage(B, 0, 0)
        Else
            G = e.Graphics
            PaintHook()
        End If
    End Sub

    Protected Overrides Sub OnHandleDestroyed(ByVal e As EventArgs)
        RemoveAnimationCallback(AddressOf DoAnimation)
        MyBase.OnHandleDestroyed(e)
    End Sub

    Private HasShown As Boolean
    Private Sub FormShown(ByVal sender As Object, ByVal e As EventArgs)
        If _ControlMode OrElse HasShown Then Return

        If _StartPosition = FormStartPosition.CenterParent OrElse _StartPosition = FormStartPosition.CenterScreen Then
            Dim SB As Rectangle = Screen.PrimaryScreen.Bounds
            Dim CB As Rectangle = ParentForm.Bounds
            ParentForm.Location = New Point(SB.Width \ 2 - CB.Width \ 2, SB.Height \ 2 - CB.Width \ 2)
        End If

        HasShown = True
    End Sub


#Region " Size Handling "

    Private Frame As Rectangle
    Protected NotOverridable Overrides Sub OnSizeChanged(ByVal e As EventArgs)
        If _Movable AndAlso Not _ControlMode Then
            Frame = New Rectangle(7, 7, Width - 14, _Header - 7)
        End If

        InvalidateBitmap()
        Invalidate()

        MyBase.OnSizeChanged(e)
    End Sub

    Protected Overrides Sub SetBoundsCore(ByVal x As Integer, ByVal y As Integer, ByVal width As Integer, ByVal height As Integer, ByVal specified As BoundsSpecified)
        If Not _LockWidth = 0 Then width = _LockWidth
        If Not _LockHeight = 0 Then height = _LockHeight
        MyBase.SetBoundsCore(x, y, width, height, specified)
    End Sub

#End Region

#Region " State Handling "

    Protected State As MouseState
    Private Sub SetState(ByVal current As MouseState)
        State = current
        Invalidate()
    End Sub

    Protected Overrides Sub OnMouseMove(ByVal e As MouseEventArgs)
        If Not (_IsParentForm AndAlso ParentForm.WindowState = FormWindowState.Maximized) Then
            If _Sizable AndAlso Not _ControlMode Then InvalidateMouse()
        End If

        MyBase.OnMouseMove(e)
    End Sub

    Protected Overrides Sub OnEnabledChanged(ByVal e As EventArgs)
        If Enabled Then SetState(MouseState.None) Else SetState(MouseState.Block)
        MyBase.OnEnabledChanged(e)
    End Sub

    Protected Overrides Sub OnMouseEnter(ByVal e As EventArgs)
        SetState(MouseState.Over)
        MyBase.OnMouseEnter(e)
    End Sub

    Protected Overrides Sub OnMouseUp(ByVal e As MouseEventArgs)
        SetState(MouseState.Over)
        MyBase.OnMouseUp(e)
    End Sub

    Protected Overrides Sub OnMouseLeave(ByVal e As EventArgs)
        SetState(MouseState.None)

        If GetChildAtPoint(PointToClient(MousePosition)) IsNot Nothing Then
            If _Sizable AndAlso Not _ControlMode Then
                Cursor = Cursors.Default
                Previous = 0
            End If
        End If

        MyBase.OnMouseLeave(e)
    End Sub

    Protected Overrides Sub OnMouseDown(ByVal e As MouseEventArgs)
        If e.Button = Windows.Forms.MouseButtons.Left Then SetState(MouseState.Down)

        If Not (_IsParentForm AndAlso ParentForm.WindowState = FormWindowState.Maximized OrElse _ControlMode) Then
            If _Movable AndAlso Frame.Contains(e.Location) Then
                Capture = False
                WM_LMBUTTONDOWN = True
                DefWndProc(Messages(0))
            ElseIf _Sizable AndAlso Not Previous = 0 Then
                Capture = False
                WM_LMBUTTONDOWN = True
                DefWndProc(Messages(Previous))
            End If
        End If

        MyBase.OnMouseDown(e)
    End Sub

    Private WM_LMBUTTONDOWN As Boolean
    Protected Overrides Sub WndProc(ByRef m As Message)
        MyBase.WndProc(m)

        If WM_LMBUTTONDOWN AndAlso m.Msg = 513 Then
            WM_LMBUTTONDOWN = False

            SetState(MouseState.Over)
            If Not _SmartBounds Then Return

            If IsParentMdi Then
                CorrectBounds(New Rectangle(Point.Empty, Parent.Parent.Size))
            Else
                CorrectBounds(Screen.FromControl(Parent).WorkingArea)
            End If
        End If
    End Sub

    Private GetIndexPoint As Point
    Private B1, B2, B3, B4 As Boolean
    Private Function GetIndex() As Integer
        GetIndexPoint = PointToClient(MousePosition)
        B1 = GetIndexPoint.X < 7
        B2 = GetIndexPoint.X > Width - 7
        B3 = GetIndexPoint.Y < 7
        B4 = GetIndexPoint.Y > Height - 7

        If B1 AndAlso B3 Then Return 4
        If B1 AndAlso B4 Then Return 7
        If B2 AndAlso B3 Then Return 5
        If B2 AndAlso B4 Then Return 8
        If B1 Then Return 1
        If B2 Then Return 2
        If B3 Then Return 3
        If B4 Then Return 6
        Return 0
    End Function

    Private Current, Previous As Integer
    Private Sub InvalidateMouse()
        Current = GetIndex()
        If Current = Previous Then Return

        Previous = Current
        Select Case Previous
            Case 0
                Cursor = Cursors.Default
            Case 1, 2
                Cursor = Cursors.SizeWE
            Case 3, 6
                Cursor = Cursors.SizeNS
            Case 4, 8
                Cursor = Cursors.SizeNWSE
            Case 5, 7
                Cursor = Cursors.SizeNESW
        End Select
    End Sub

    Private Messages(8) As Message
    Private Sub InitializeMessages()
        Messages(0) = Message.Create(Parent.Handle, 161, New IntPtr(2), IntPtr.Zero)
        For I As Integer = 1 To 8
            Messages(I) = Message.Create(Parent.Handle, 161, New IntPtr(I + 9), IntPtr.Zero)
        Next
    End Sub

    Private Sub CorrectBounds(ByVal bounds As Rectangle)
        If Parent.Width > bounds.Width Then Parent.Width = bounds.Width
        If Parent.Height > bounds.Height Then Parent.Height = bounds.Height

        Dim X As Integer = Parent.Location.X
        Dim Y As Integer = Parent.Location.Y

        If X < bounds.X Then X = bounds.X
        If Y < bounds.Y Then Y = bounds.Y

        Dim Width As Integer = bounds.X + bounds.Width
        Dim Height As Integer = bounds.Y + bounds.Height

        If X + Parent.Width > Width Then X = Width - Parent.Width
        If Y + Parent.Height > Height Then Y = Height - Parent.Height

        Parent.Location = New Point(X, Y)
    End Sub

#End Region


#Region " Base Properties "

    Overrides Property Dock As DockStyle
        Get
            Return MyBase.Dock
        End Get
        Set(ByVal value As DockStyle)
            If Not _ControlMode Then Return
            MyBase.Dock = value
        End Set
    End Property

    Private _BackColor As Boolean
    <Category("Misc")> _
    Overrides Property BackColor() As Color
        Get
            Return MyBase.BackColor
        End Get
        Set(ByVal value As Color)
            If value = MyBase.BackColor Then Return

            If Not IsHandleCreated AndAlso _ControlMode AndAlso value = Color.Transparent Then
                _BackColor = True
                Return
            End If

            MyBase.BackColor = value
            If Parent IsNot Nothing Then
                If Not _ControlMode Then Parent.BackColor = value
                ColorHook()
            End If
        End Set
    End Property

    Overrides Property MinimumSize As Size
        Get
            Return MyBase.MinimumSize
        End Get
        Set(ByVal value As Size)
            MyBase.MinimumSize = value
            If Parent IsNot Nothing Then Parent.MinimumSize = value
        End Set
    End Property

    Overrides Property MaximumSize As Size
        Get
            Return MyBase.MaximumSize
        End Get
        Set(ByVal value As Size)
            MyBase.MaximumSize = value
            If Parent IsNot Nothing Then Parent.MaximumSize = value
        End Set
    End Property

    Overrides Property Text() As String
        Get
            Return MyBase.Text
        End Get
        Set(ByVal value As String)
            MyBase.Text = value
            Invalidate()
        End Set
    End Property

    Overrides Property Font() As Font
        Get
            Return MyBase.Font
        End Get
        Set(ByVal value As Font)
            MyBase.Font = value
            Invalidate()
        End Set
    End Property

    <Browsable(False), EditorBrowsable(EditorBrowsableState.Never), DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)> _
    Overrides Property ForeColor() As Color
        Get
            Return Color.Empty
        End Get
        Set(ByVal value As Color)
        End Set
    End Property
    <Browsable(False), EditorBrowsable(EditorBrowsableState.Never), DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)> _
    Overrides Property BackgroundImage() As Image
        Get
            Return Nothing
        End Get
        Set(ByVal value As Image)
        End Set
    End Property
    <Browsable(False), EditorBrowsable(EditorBrowsableState.Never), DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)> _
    Overrides Property BackgroundImageLayout() As ImageLayout
        Get
            Return ImageLayout.None
        End Get
        Set(ByVal value As ImageLayout)
        End Set
    End Property

#End Region

#Region " Public Properties "

    Private _SmartBounds As Boolean = True
    Property SmartBounds() As Boolean
        Get
            Return _SmartBounds
        End Get
        Set(ByVal value As Boolean)
            _SmartBounds = value
        End Set
    End Property

    Private _Movable As Boolean = True
    Property Movable() As Boolean
        Get
            Return _Movable
        End Get
        Set(ByVal value As Boolean)
            _Movable = value
        End Set
    End Property

    Private _Sizable As Boolean = True
    Property Sizable() As Boolean
        Get
            Return _Sizable
        End Get
        Set(ByVal value As Boolean)
            _Sizable = value
        End Set
    End Property

    Private _TransparencyKey As Color
    Property TransparencyKey() As Color
        Get
            If _IsParentForm AndAlso Not _ControlMode Then Return ParentForm.TransparencyKey Else Return _TransparencyKey
        End Get
        Set(ByVal value As Color)
            If value = _TransparencyKey Then Return
            _TransparencyKey = value

            If _IsParentForm AndAlso Not _ControlMode Then
                ParentForm.TransparencyKey = value
                ColorHook()
            End If
        End Set
    End Property

    Private _BorderStyle As FormBorderStyle
    Property BorderStyle() As FormBorderStyle
        Get
            If _IsParentForm AndAlso Not _ControlMode Then Return ParentForm.FormBorderStyle Else Return _BorderStyle
        End Get
        Set(ByVal value As FormBorderStyle)
            _BorderStyle = value

            If _IsParentForm AndAlso Not _ControlMode Then
                ParentForm.FormBorderStyle = value

                If Not value = FormBorderStyle.None Then
                    Movable = False
                    Sizable = False
                End If
            End If
        End Set
    End Property

    Private _StartPosition As FormStartPosition
    Property StartPosition As FormStartPosition
        Get
            If _IsParentForm AndAlso Not _ControlMode Then Return ParentForm.StartPosition Else Return _StartPosition
        End Get
        Set(ByVal value As FormStartPosition)
            _StartPosition = value

            If _IsParentForm AndAlso Not _ControlMode Then
                ParentForm.StartPosition = value
            End If
        End Set
    End Property

    Private _NoRounding As Boolean
    Property NoRounding() As Boolean
        Get
            Return _NoRounding
        End Get
        Set(ByVal v As Boolean)
            _NoRounding = v
            Invalidate()
        End Set
    End Property

    Private _Image As Image
    Property Image() As Image
        Get
            Return _Image
        End Get
        Set(ByVal value As Image)
            If value Is Nothing Then _ImageSize = Size.Empty Else _ImageSize = value.Size

            _Image = value
            Invalidate()
        End Set
    End Property

    Private Items As New Dictionary(Of String, Color)
    Property Colors() As Bloom()
        Get
            Dim T As New List(Of Bloom)
            Dim E As Dictionary(Of String, Color).Enumerator = Items.GetEnumerator

            While E.MoveNext
                T.Add(New Bloom(E.Current.Key, E.Current.Value))
            End While

            Return T.ToArray
        End Get
        Set(ByVal value As Bloom())
            For Each B As Bloom In value
                If Items.ContainsKey(B.Name) Then Items(B.Name) = B.Value
            Next

            InvalidateCustimization()
            ColorHook()
            Invalidate()
        End Set
    End Property

    Private _Customization As String
    Property Customization() As String
        Get
            Return _Customization
        End Get
        Set(ByVal value As String)
            If value = _Customization Then Return

            Dim Data As Byte()
            Dim Items As Bloom() = Colors

            Try
                Data = Convert.FromBase64String(value)
                For I As Integer = 0 To Items.Length - 1
                    Items(I).Value = Color.FromArgb(BitConverter.ToInt32(Data, I * 4))
                Next
            Catch
                Return
            End Try

            _Customization = value

            Colors = Items
            ColorHook()
            Invalidate()
        End Set
    End Property

    Private _Transparent As Boolean
    Property Transparent() As Boolean
        Get
            Return _Transparent
        End Get
        Set(ByVal value As Boolean)
            _Transparent = value
            If Not (IsHandleCreated OrElse _ControlMode) Then Return

            If Not value AndAlso Not BackColor.A = 255 Then
                Throw New Exception("Unable to change value to false while a transparent BackColor is in use.")
            End If

            SetStyle(ControlStyles.Opaque, Not value)
            SetStyle(ControlStyles.SupportsTransparentBackColor, value)

            InvalidateBitmap()
            Invalidate()
        End Set
    End Property

#End Region

#Region " Private Properties "

    Private _ImageSize As Size
    Protected ReadOnly Property ImageSize() As Size
        Get
            Return _ImageSize
        End Get
    End Property

    Private _IsParentForm As Boolean
    Protected ReadOnly Property IsParentForm As Boolean
        Get
            Return _IsParentForm
        End Get
    End Property

    Protected ReadOnly Property IsParentMdi As Boolean
        Get
            If Parent Is Nothing Then Return False
            Return Parent.Parent IsNot Nothing
        End Get
    End Property

    Private _LockWidth As Integer
    Protected Property LockWidth() As Integer
        Get
            Return _LockWidth
        End Get
        Set(ByVal value As Integer)
            _LockWidth = value
            If Not LockWidth = 0 AndAlso IsHandleCreated Then Width = LockWidth
        End Set
    End Property

    Private _LockHeight As Integer
    Protected Property LockHeight() As Integer
        Get
            Return _LockHeight
        End Get
        Set(ByVal value As Integer)
            _LockHeight = value
            If Not LockHeight = 0 AndAlso IsHandleCreated Then Height = LockHeight
        End Set
    End Property

    Private _Header As Integer = 24
    Protected Property Header() As Integer
        Get
            Return _Header
        End Get
        Set(ByVal v As Integer)
            _Header = v

            If Not _ControlMode Then
                Frame = New Rectangle(7, 7, Width - 14, v - 7)
                Invalidate()
            End If
        End Set
    End Property

    Private _ControlMode As Boolean
    Protected Property ControlMode() As Boolean
        Get
            Return _ControlMode
        End Get
        Set(ByVal v As Boolean)
            _ControlMode = v

            Transparent = _Transparent
            If _Transparent AndAlso _BackColor Then BackColor = Color.Transparent

            InvalidateBitmap()
            Invalidate()
        End Set
    End Property

    Private _IsAnimated As Boolean
    Protected Property IsAnimated() As Boolean
        Get
            Return _IsAnimated
        End Get
        Set(ByVal value As Boolean)
            _IsAnimated = value
            InvalidateTimer()
        End Set
    End Property

#End Region


#Region " Property Helpers "

    Protected Function GetPen(ByVal name As String) As Pen
        Return New Pen(Items(name))
    End Function
    Protected Function GetPen(ByVal name As String, ByVal width As Single) As Pen
        Return New Pen(Items(name), width)
    End Function

    Protected Function GetBrush(ByVal name As String) As SolidBrush
        Return New SolidBrush(Items(name))
    End Function

    Protected Function GetColor(ByVal name As String) As Color
        Return Items(name)
    End Function

    Protected Sub SetColor(ByVal name As String, ByVal value As Color)
        If Items.ContainsKey(name) Then Items(name) = value Else Items.Add(name, value)
    End Sub
    Protected Sub SetColor(ByVal name As String, ByVal r As Byte, ByVal g As Byte, ByVal b As Byte)
        SetColor(name, Color.FromArgb(r, g, b))
    End Sub
    Protected Sub SetColor(ByVal name As String, ByVal a As Byte, ByVal r As Byte, ByVal g As Byte, ByVal b As Byte)
        SetColor(name, Color.FromArgb(a, r, g, b))
    End Sub
    Protected Sub SetColor(ByVal name As String, ByVal a As Byte, ByVal value As Color)
        SetColor(name, Color.FromArgb(a, value))
    End Sub

    Private Sub InvalidateBitmap()
        If _Transparent AndAlso _ControlMode Then
            If Width = 0 OrElse Height = 0 Then Return
            B = New Bitmap(Width, Height, PixelFormat.Format32bppPArgb)
            G = Graphics.FromImage(B)
        Else
            G = Nothing
            B = Nothing
        End If
    End Sub

    Private Sub InvalidateCustimization()
        Dim M As New MemoryStream(Items.Count * 4)

        For Each B As Bloom In Colors
            M.Write(BitConverter.GetBytes(B.Value.ToArgb), 0, 4)
        Next

        M.Close()
        _Customization = Convert.ToBase64String(M.ToArray)
    End Sub

    Private Sub InvalidateTimer()
        If DesignMode OrElse Not DoneCreation Then Return

        If _IsAnimated Then
            AddAnimationCallback(AddressOf DoAnimation)
        Else
            RemoveAnimationCallback(AddressOf DoAnimation)
        End If
    End Sub

#End Region


#Region " User Hooks "

    Protected MustOverride Sub ColorHook()
    Protected MustOverride Sub PaintHook()

    Protected Overridable Sub OnCreation()
    End Sub

    Protected Overridable Sub OnAnimation()
    End Sub

#End Region


#Region " Offset "

    Private OffsetReturnRectangle As Rectangle
    Protected Function Offset(ByVal r As Rectangle, ByVal amount As Integer) As Rectangle
        OffsetReturnRectangle = New Rectangle(r.X + amount, r.Y + amount, r.Width - (amount * 2), r.Height - (amount * 2))
        Return OffsetReturnRectangle
    End Function

    Private OffsetReturnSize As Size
    Protected Function Offset(ByVal s As Size, ByVal amount As Integer) As Size
        OffsetReturnSize = New Size(s.Width + amount, s.Height + amount)
        Return OffsetReturnSize
    End Function

    Private OffsetReturnPoint As Point
    Protected Function Offset(ByVal p As Point, ByVal amount As Integer) As Point
        OffsetReturnPoint = New Point(p.X + amount, p.Y + amount)
        Return OffsetReturnPoint
    End Function

#End Region

#Region " Center "

    Private CenterReturn As Point

    Protected Function Center(ByVal p As Rectangle, ByVal c As Rectangle) As Point
        CenterReturn = New Point((p.Width \ 2 - c.Width \ 2) + p.X + c.X, (p.Height \ 2 - c.Height \ 2) + p.Y + c.Y)
        Return CenterReturn
    End Function
    Protected Function Center(ByVal p As Rectangle, ByVal c As Size) As Point
        CenterReturn = New Point((p.Width \ 2 - c.Width \ 2) + p.X, (p.Height \ 2 - c.Height \ 2) + p.Y)
        Return CenterReturn
    End Function

    Protected Function Center(ByVal child As Rectangle) As Point
        Return Center(Width, Height, child.Width, child.Height)
    End Function
    Protected Function Center(ByVal child As Size) As Point
        Return Center(Width, Height, child.Width, child.Height)
    End Function
    Protected Function Center(ByVal childWidth As Integer, ByVal childHeight As Integer) As Point
        Return Center(Width, Height, childWidth, childHeight)
    End Function

    Protected Function Center(ByVal p As Size, ByVal c As Size) As Point
        Return Center(p.Width, p.Height, c.Width, c.Height)
    End Function

    Protected Function Center(ByVal pWidth As Integer, ByVal pHeight As Integer, ByVal cWidth As Integer, ByVal cHeight As Integer) As Point
        CenterReturn = New Point(pWidth \ 2 - cWidth \ 2, pHeight \ 2 - cHeight \ 2)
        Return CenterReturn
    End Function

#End Region

#Region " Measure "

    Private MeasureBitmap As Bitmap
    Private MeasureGraphics As Graphics

    Protected Function Measure() As Size
        SyncLock MeasureGraphics
            Return MeasureGraphics.MeasureString(Text, Font, Width).ToSize
        End SyncLock
    End Function
    Protected Function Measure(ByVal text As String) As Size
        SyncLock MeasureGraphics
            Return MeasureGraphics.MeasureString(text, Font, Width).ToSize
        End SyncLock
    End Function

#End Region


#Region " DrawPixel "

    Private DrawPixelBrush As SolidBrush

    Protected Sub DrawPixel(ByVal c1 As Color, ByVal x As Integer, ByVal y As Integer)
        If _Transparent Then
            B.SetPixel(x, y, c1)
        Else
            DrawPixelBrush = New SolidBrush(c1)
            G.FillRectangle(DrawPixelBrush, x, y, 1, 1)
        End If
    End Sub

#End Region

#Region " DrawCorners "

    Private DrawCornersBrush As SolidBrush

    Protected Sub DrawCorners(ByVal c1 As Color, ByVal offset As Integer)
        DrawCorners(c1, 0, 0, Width, Height, offset)
    End Sub
    Protected Sub DrawCorners(ByVal c1 As Color, ByVal r1 As Rectangle, ByVal offset As Integer)
        DrawCorners(c1, r1.X, r1.Y, r1.Width, r1.Height, offset)
    End Sub
    Protected Sub DrawCorners(ByVal c1 As Color, ByVal x As Integer, ByVal y As Integer, ByVal width As Integer, ByVal height As Integer, ByVal offset As Integer)
        DrawCorners(c1, x + offset, y + offset, width - (offset * 2), height - (offset * 2))
    End Sub

    Protected Sub DrawCorners(ByVal c1 As Color)
        DrawCorners(c1, 0, 0, Width, Height)
    End Sub
    Protected Sub DrawCorners(ByVal c1 As Color, ByVal r1 As Rectangle)
        DrawCorners(c1, r1.X, r1.Y, r1.Width, r1.Height)
    End Sub
    Protected Sub DrawCorners(ByVal c1 As Color, ByVal x As Integer, ByVal y As Integer, ByVal width As Integer, ByVal height As Integer)
        If _NoRounding Then Return

        If _Transparent Then
            B.SetPixel(x, y, c1)
            B.SetPixel(x + (width - 1), y, c1)
            B.SetPixel(x, y + (height - 1), c1)
            B.SetPixel(x + (width - 1), y + (height - 1), c1)
        Else
            DrawCornersBrush = New SolidBrush(c1)
            G.FillRectangle(DrawCornersBrush, x, y, 1, 1)
            G.FillRectangle(DrawCornersBrush, x + (width - 1), y, 1, 1)
            G.FillRectangle(DrawCornersBrush, x, y + (height - 1), 1, 1)
            G.FillRectangle(DrawCornersBrush, x + (width - 1), y + (height - 1), 1, 1)
        End If
    End Sub

#End Region

#Region " DrawBorders "

    Protected Sub DrawBorders(ByVal p1 As Pen, ByVal offset As Integer)
        DrawBorders(p1, 0, 0, Width, Height, offset)
    End Sub
    Protected Sub DrawBorders(ByVal p1 As Pen, ByVal r As Rectangle, ByVal offset As Integer)
        DrawBorders(p1, r.X, r.Y, r.Width, r.Height, offset)
    End Sub
    Protected Sub DrawBorders(ByVal p1 As Pen, ByVal x As Integer, ByVal y As Integer, ByVal width As Integer, ByVal height As Integer, ByVal offset As Integer)
        DrawBorders(p1, x + offset, y + offset, width - (offset * 2), height - (offset * 2))
    End Sub

    Protected Sub DrawBorders(ByVal p1 As Pen)
        DrawBorders(p1, 0, 0, Width, Height)
    End Sub
    Protected Sub DrawBorders(ByVal p1 As Pen, ByVal r As Rectangle)
        DrawBorders(p1, r.X, r.Y, r.Width, r.Height)
    End Sub
    Protected Sub DrawBorders(ByVal p1 As Pen, ByVal x As Integer, ByVal y As Integer, ByVal width As Integer, ByVal height As Integer)
        G.DrawRectangle(p1, x, y, width - 1, height - 1)
    End Sub

#End Region

#Region " DrawText "

    Private DrawTextPoint As Point
    Private DrawTextSize As Size

    Protected Sub DrawText(ByVal b1 As Brush, ByVal a As HorizontalAlignment, ByVal x As Integer, ByVal y As Integer)
        DrawText(b1, Text, a, x, y)
    End Sub
    Protected Sub DrawText(ByVal b1 As Brush, ByVal text As String, ByVal a As HorizontalAlignment, ByVal x As Integer, ByVal y As Integer)
        If text.Length = 0 Then Return

        DrawTextSize = Measure(text)
        DrawTextPoint = New Point(Width \ 2 - DrawTextSize.Width \ 2, Header \ 2 - DrawTextSize.Height \ 2)

        Select Case a
            Case HorizontalAlignment.Left
                G.DrawString(text, Font, b1, x, DrawTextPoint.Y + y)
            Case HorizontalAlignment.Center
                G.DrawString(text, Font, b1, DrawTextPoint.X + x, DrawTextPoint.Y + y)
            Case HorizontalAlignment.Right
                G.DrawString(text, Font, b1, Width - DrawTextSize.Width - x, DrawTextPoint.Y + y)
        End Select
    End Sub

    Protected Sub DrawText(ByVal b1 As Brush, ByVal p1 As Point)
        If Text.Length = 0 Then Return
        G.DrawString(Text, Font, b1, p1)
    End Sub
    Protected Sub DrawText(ByVal b1 As Brush, ByVal x As Integer, ByVal y As Integer)
        If Text.Length = 0 Then Return
        G.DrawString(Text, Font, b1, x, y)
    End Sub

#End Region

#Region " DrawImage "

    Private DrawImagePoint As Point

    Protected Sub DrawImage(ByVal a As HorizontalAlignment, ByVal x As Integer, ByVal y As Integer)
        DrawImage(_Image, a, x, y)
    End Sub
    Protected Sub DrawImage(ByVal image As Image, ByVal a As HorizontalAlignment, ByVal x As Integer, ByVal y As Integer)
        If image Is Nothing Then Return
        DrawImagePoint = New Point(Width \ 2 - image.Width \ 2, Header \ 2 - image.Height \ 2)

        Select Case a
            Case HorizontalAlignment.Left
                G.DrawImage(image, x, DrawImagePoint.Y + y, image.Width, image.Height)
            Case HorizontalAlignment.Center
                G.DrawImage(image, DrawImagePoint.X + x, DrawImagePoint.Y + y, image.Width, image.Height)
            Case HorizontalAlignment.Right
                G.DrawImage(image, Width - image.Width - x, DrawImagePoint.Y + y, image.Width, image.Height)
        End Select
    End Sub

    Protected Sub DrawImage(ByVal p1 As Point)
        DrawImage(_Image, p1.X, p1.Y)
    End Sub
    Protected Sub DrawImage(ByVal x As Integer, ByVal y As Integer)
        DrawImage(_Image, x, y)
    End Sub

    Protected Sub DrawImage(ByVal image As Image, ByVal p1 As Point)
        DrawImage(image, p1.X, p1.Y)
    End Sub
    Protected Sub DrawImage(ByVal image As Image, ByVal x As Integer, ByVal y As Integer)
        If image Is Nothing Then Return
        G.DrawImage(image, x, y, image.Width, image.Height)
    End Sub

#End Region

#Region " DrawGradient "

    Private DrawGradientBrush As LinearGradientBrush
    Private DrawGradientRectangle As Rectangle

    Protected Sub DrawGradient(ByVal blend As ColorBlend, ByVal x As Integer, ByVal y As Integer, ByVal width As Integer, ByVal height As Integer)
        DrawGradientRectangle = New Rectangle(x, y, width, height)
        DrawGradient(blend, DrawGradientRectangle)
    End Sub
    Protected Sub DrawGradient(ByVal blend As ColorBlend, ByVal x As Integer, ByVal y As Integer, ByVal width As Integer, ByVal height As Integer, ByVal angle As Single)
        DrawGradientRectangle = New Rectangle(x, y, width, height)
        DrawGradient(blend, DrawGradientRectangle, angle)
    End Sub

    Protected Sub DrawGradient(ByVal blend As ColorBlend, ByVal r As Rectangle)
        DrawGradientBrush = New LinearGradientBrush(r, Color.Empty, Color.Empty, 90.0F)
        DrawGradientBrush.InterpolationColors = blend
        G.FillRectangle(DrawGradientBrush, r)
    End Sub
    Protected Sub DrawGradient(ByVal blend As ColorBlend, ByVal r As Rectangle, ByVal angle As Single)
        DrawGradientBrush = New LinearGradientBrush(r, Color.Empty, Color.Empty, angle)
        DrawGradientBrush.InterpolationColors = blend
        G.FillRectangle(DrawGradientBrush, r)
    End Sub


    Protected Sub DrawGradient(ByVal c1 As Color, ByVal c2 As Color, ByVal x As Integer, ByVal y As Integer, ByVal width As Integer, ByVal height As Integer)
        DrawGradientRectangle = New Rectangle(x, y, width, height)
        DrawGradient(c1, c2, DrawGradientRectangle)
    End Sub
    Protected Sub DrawGradient(ByVal c1 As Color, ByVal c2 As Color, ByVal x As Integer, ByVal y As Integer, ByVal width As Integer, ByVal height As Integer, ByVal angle As Single)
        DrawGradientRectangle = New Rectangle(x, y, width, height)
        DrawGradient(c1, c2, DrawGradientRectangle, angle)
    End Sub

    Protected Sub DrawGradient(ByVal c1 As Color, ByVal c2 As Color, ByVal r As Rectangle)
        DrawGradientBrush = New LinearGradientBrush(r, c1, c2, 90.0F)
        G.FillRectangle(DrawGradientBrush, r)
    End Sub
    Protected Sub DrawGradient(ByVal c1 As Color, ByVal c2 As Color, ByVal r As Rectangle, ByVal angle As Single)
        DrawGradientBrush = New LinearGradientBrush(r, c1, c2, angle)
        G.FillRectangle(DrawGradientBrush, r)
    End Sub

#End Region

#Region " DrawRadial "

    Private DrawRadialPath As GraphicsPath
    Private DrawRadialBrush1 As PathGradientBrush
    Private DrawRadialBrush2 As LinearGradientBrush
    Private DrawRadialRectangle As Rectangle

    Sub DrawRadial(ByVal blend As ColorBlend, ByVal x As Integer, ByVal y As Integer, ByVal width As Integer, ByVal height As Integer)
        DrawRadialRectangle = New Rectangle(x, y, width, height)
        DrawRadial(blend, DrawRadialRectangle, width \ 2, height \ 2)
    End Sub
    Sub DrawRadial(ByVal blend As ColorBlend, ByVal x As Integer, ByVal y As Integer, ByVal width As Integer, ByVal height As Integer, ByVal center As Point)
        DrawRadialRectangle = New Rectangle(x, y, width, height)
        DrawRadial(blend, DrawRadialRectangle, center.X, center.Y)
    End Sub
    Sub DrawRadial(ByVal blend As ColorBlend, ByVal x As Integer, ByVal y As Integer, ByVal width As Integer, ByVal height As Integer, ByVal cx As Integer, ByVal cy As Integer)
        DrawRadialRectangle = New Rectangle(x, y, width, height)
        DrawRadial(blend, DrawRadialRectangle, cx, cy)
    End Sub

    Sub DrawRadial(ByVal blend As ColorBlend, ByVal r As Rectangle)
        DrawRadial(blend, r, r.Width \ 2, r.Height \ 2)
    End Sub
    Sub DrawRadial(ByVal blend As ColorBlend, ByVal r As Rectangle, ByVal center As Point)
        DrawRadial(blend, r, center.X, center.Y)
    End Sub
    Sub DrawRadial(ByVal blend As ColorBlend, ByVal r As Rectangle, ByVal cx As Integer, ByVal cy As Integer)
        DrawRadialPath.Reset()
        DrawRadialPath.AddEllipse(r.X, r.Y, r.Width - 1, r.Height - 1)

        DrawRadialBrush1 = New PathGradientBrush(DrawRadialPath)
        DrawRadialBrush1.CenterPoint = New Point(r.X + cx, r.Y + cy)
        DrawRadialBrush1.InterpolationColors = blend

        If G.SmoothingMode = SmoothingMode.AntiAlias Then
            G.FillEllipse(DrawRadialBrush1, r.X + 1, r.Y + 1, r.Width - 3, r.Height - 3)
        Else
            G.FillEllipse(DrawRadialBrush1, r)
        End If
    End Sub


    Protected Sub DrawRadial(ByVal c1 As Color, ByVal c2 As Color, ByVal x As Integer, ByVal y As Integer, ByVal width As Integer, ByVal height As Integer)
        DrawRadialRectangle = New Rectangle(x, y, width, height)
        DrawRadial(c1, c2, DrawGradientRectangle)
    End Sub
    Protected Sub DrawRadial(ByVal c1 As Color, ByVal c2 As Color, ByVal x As Integer, ByVal y As Integer, ByVal width As Integer, ByVal height As Integer, ByVal angle As Single)
        DrawRadialRectangle = New Rectangle(x, y, width, height)
        DrawRadial(c1, c2, DrawGradientRectangle, angle)
    End Sub

    Protected Sub DrawRadial(ByVal c1 As Color, ByVal c2 As Color, ByVal r As Rectangle)
        DrawRadialBrush2 = New LinearGradientBrush(r, c1, c2, 90.0F)
        G.FillRectangle(DrawGradientBrush, r)
    End Sub
    Protected Sub DrawRadial(ByVal c1 As Color, ByVal c2 As Color, ByVal r As Rectangle, ByVal angle As Single)
        DrawRadialBrush2 = New LinearGradientBrush(r, c1, c2, angle)
        G.FillEllipse(DrawGradientBrush, r)
    End Sub

#End Region

#Region " CreateRound "

    Private CreateRoundPath As GraphicsPath
    Private CreateRoundRectangle As Rectangle

    Function CreateRound(ByVal x As Integer, ByVal y As Integer, ByVal width As Integer, ByVal height As Integer, ByVal slope As Integer) As GraphicsPath
        CreateRoundRectangle = New Rectangle(x, y, width, height)
        Return CreateRound(CreateRoundRectangle, slope)
    End Function

    Function CreateRound(ByVal r As Rectangle, ByVal slope As Integer) As GraphicsPath
        CreateRoundPath = New GraphicsPath(FillMode.Winding)
        CreateRoundPath.AddArc(r.X, r.Y, slope, slope, 180.0F, 90.0F)
        CreateRoundPath.AddArc(r.Right - slope, r.Y, slope, slope, 270.0F, 90.0F)
        CreateRoundPath.AddArc(r.Right - slope, r.Bottom - slope, slope, slope, 0.0F, 90.0F)
        CreateRoundPath.AddArc(r.X, r.Bottom - slope, slope, slope, 90.0F, 90.0F)
        CreateRoundPath.CloseFigure()
        Return CreateRoundPath
    End Function

#End Region

End Class

MustInherit Class ThemeControl154
    Inherits Control


#Region " Initialization "

    Protected G As Graphics, B As Bitmap

    Sub New()
        SetStyle(DirectCast(139270, ControlStyles), True)

        _ImageSize = Size.Empty
        Font = New Font("Verdana", 8S)

        MeasureBitmap = New Bitmap(1, 1)
        MeasureGraphics = Graphics.FromImage(MeasureBitmap)

        DrawRadialPath = New GraphicsPath

        InvalidateCustimization() 'Remove?
    End Sub

    Protected NotOverridable Overrides Sub OnHandleCreated(ByVal e As EventArgs)
        InvalidateCustimization()
        ColorHook()

        If Not _LockWidth = 0 Then Width = _LockWidth
        If Not _LockHeight = 0 Then Height = _LockHeight

        Transparent = _Transparent
        If _Transparent AndAlso _BackColor Then BackColor = Color.Transparent

        MyBase.OnHandleCreated(e)
    End Sub

    Private DoneCreation As Boolean
    Protected NotOverridable Overrides Sub OnParentChanged(ByVal e As EventArgs)
        If Parent IsNot Nothing Then
            OnCreation()
            DoneCreation = True
            InvalidateTimer()
        End If

        MyBase.OnParentChanged(e)
    End Sub

#End Region

    Private Sub DoAnimation(ByVal i As Boolean)
        OnAnimation()
        If i Then Invalidate()
    End Sub

    Protected NotOverridable Overrides Sub OnPaint(ByVal e As PaintEventArgs)
        If Width = 0 OrElse Height = 0 Then Return

        If _Transparent Then
            PaintHook()
            e.Graphics.DrawImage(B, 0, 0)
        Else
            G = e.Graphics
            PaintHook()
        End If
    End Sub

    Protected Overrides Sub OnHandleDestroyed(ByVal e As EventArgs)
        RemoveAnimationCallback(AddressOf DoAnimation)
        MyBase.OnHandleDestroyed(e)
    End Sub

#Region " Size Handling "

    Protected NotOverridable Overrides Sub OnSizeChanged(ByVal e As EventArgs)
        If _Transparent Then
            InvalidateBitmap()
        End If

        Invalidate()
        MyBase.OnSizeChanged(e)
    End Sub

    Protected Overrides Sub SetBoundsCore(ByVal x As Integer, ByVal y As Integer, ByVal width As Integer, ByVal height As Integer, ByVal specified As BoundsSpecified)
        If Not _LockWidth = 0 Then width = _LockWidth
        If Not _LockHeight = 0 Then height = _LockHeight
        MyBase.SetBoundsCore(x, y, width, height, specified)
    End Sub

#End Region

#Region " State Handling "

    Private InPosition As Boolean
    Protected Overrides Sub OnMouseEnter(ByVal e As EventArgs)
        InPosition = True
        SetState(MouseState.Over)
        MyBase.OnMouseEnter(e)
    End Sub

    Protected Overrides Sub OnMouseUp(ByVal e As MouseEventArgs)
        If InPosition Then SetState(MouseState.Over)
        MyBase.OnMouseUp(e)
    End Sub

    Protected Overrides Sub OnMouseDown(ByVal e As MouseEventArgs)
        If e.Button = Windows.Forms.MouseButtons.Left Then SetState(MouseState.Down)
        MyBase.OnMouseDown(e)
    End Sub

    Protected Overrides Sub OnMouseLeave(ByVal e As EventArgs)
        InPosition = False
        SetState(MouseState.None)
        MyBase.OnMouseLeave(e)
    End Sub

    Protected Overrides Sub OnEnabledChanged(ByVal e As EventArgs)
        If Enabled Then SetState(MouseState.None) Else SetState(MouseState.Block)
        MyBase.OnEnabledChanged(e)
    End Sub

    Protected State As MouseState
    Private Sub SetState(ByVal current As MouseState)
        State = current
        Invalidate()
    End Sub

#End Region


#Region " Base Properties "

    <Browsable(False), EditorBrowsable(EditorBrowsableState.Never), DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)> _
    Overrides Property ForeColor() As Color
        Get
            Return Color.Empty
        End Get
        Set(ByVal value As Color)
        End Set
    End Property
    <Browsable(False), EditorBrowsable(EditorBrowsableState.Never), DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)> _
    Overrides Property BackgroundImage() As Image
        Get
            Return Nothing
        End Get
        Set(ByVal value As Image)
        End Set
    End Property
    <Browsable(False), EditorBrowsable(EditorBrowsableState.Never), DesignerSerializationVisibility(DesignerSerializationVisibility.Hidden)> _
    Overrides Property BackgroundImageLayout() As ImageLayout
        Get
            Return ImageLayout.None
        End Get
        Set(ByVal value As ImageLayout)
        End Set
    End Property

    Overrides Property Text() As String
        Get
            Return MyBase.Text
        End Get
        Set(ByVal value As String)
            MyBase.Text = value
            Invalidate()
        End Set
    End Property
    Overrides Property Font() As Font
        Get
            Return MyBase.Font
        End Get
        Set(ByVal value As Font)
            MyBase.Font = value
            Invalidate()
        End Set
    End Property

    Private _BackColor As Boolean
    <Category("Misc")> _
    Overrides Property BackColor() As Color
        Get
            Return MyBase.BackColor
        End Get
        Set(ByVal value As Color)
            If Not IsHandleCreated AndAlso value = Color.Transparent Then
                _BackColor = True
                Return
            End If

            MyBase.BackColor = value
            If Parent IsNot Nothing Then ColorHook()
        End Set
    End Property

#End Region

#Region " Public Properties "

    Private _NoRounding As Boolean
    Property NoRounding() As Boolean
        Get
            Return _NoRounding
        End Get
        Set(ByVal v As Boolean)
            _NoRounding = v
            Invalidate()
        End Set
    End Property

    Private _Image As Image
    Property Image() As Image
        Get
            Return _Image
        End Get
        Set(ByVal value As Image)
            If value Is Nothing Then
                _ImageSize = Size.Empty
            Else
                _ImageSize = value.Size
            End If

            _Image = value
            Invalidate()
        End Set
    End Property

    Private _Transparent As Boolean
    Property Transparent() As Boolean
        Get
            Return _Transparent
        End Get
        Set(ByVal value As Boolean)
            _Transparent = value
            If Not IsHandleCreated Then Return

            If Not value AndAlso Not BackColor.A = 255 Then
                Throw New Exception("Unable to change value to false while a transparent BackColor is in use.")
            End If

            SetStyle(ControlStyles.Opaque, Not value)
            SetStyle(ControlStyles.SupportsTransparentBackColor, value)

            If value Then InvalidateBitmap() Else B = Nothing
            Invalidate()
        End Set
    End Property

    Private Items As New Dictionary(Of String, Color)
    Property Colors() As Bloom()
        Get
            Dim T As New List(Of Bloom)
            Dim E As Dictionary(Of String, Color).Enumerator = Items.GetEnumerator

            While E.MoveNext
                T.Add(New Bloom(E.Current.Key, E.Current.Value))
            End While

            Return T.ToArray
        End Get
        Set(ByVal value As Bloom())
            For Each B As Bloom In value
                If Items.ContainsKey(B.Name) Then Items(B.Name) = B.Value
            Next

            InvalidateCustimization()
            ColorHook()
            Invalidate()
        End Set
    End Property

    Private _Customization As String
    Property Customization() As String
        Get
            Return _Customization
        End Get
        Set(ByVal value As String)
            If value = _Customization Then Return

            Dim Data As Byte()
            Dim Items As Bloom() = Colors

            Try
                Data = Convert.FromBase64String(value)
                For I As Integer = 0 To Items.Length - 1
                    Items(I).Value = Color.FromArgb(BitConverter.ToInt32(Data, I * 4))
                Next
            Catch
                Return
            End Try

            _Customization = value

            Colors = Items
            ColorHook()
            Invalidate()
        End Set
    End Property

#End Region

#Region " Private Properties "

    Private _ImageSize As Size
    Protected ReadOnly Property ImageSize() As Size
        Get
            Return _ImageSize
        End Get
    End Property

    Private _LockWidth As Integer
    Protected Property LockWidth() As Integer
        Get
            Return _LockWidth
        End Get
        Set(ByVal value As Integer)
            _LockWidth = value
            If Not LockWidth = 0 AndAlso IsHandleCreated Then Width = LockWidth
        End Set
    End Property

    Private _LockHeight As Integer
    Protected Property LockHeight() As Integer
        Get
            Return _LockHeight
        End Get
        Set(ByVal value As Integer)
            _LockHeight = value
            If Not LockHeight = 0 AndAlso IsHandleCreated Then Height = LockHeight
        End Set
    End Property

    Private _IsAnimated As Boolean
    Protected Property IsAnimated() As Boolean
        Get
            Return _IsAnimated
        End Get
        Set(ByVal value As Boolean)
            _IsAnimated = value
            InvalidateTimer()
        End Set
    End Property

#End Region


#Region " Property Helpers "

    Protected Function GetPen(ByVal name As String) As Pen
        Return New Pen(Items(name))
    End Function
    Protected Function GetPen(ByVal name As String, ByVal width As Single) As Pen
        Return New Pen(Items(name), width)
    End Function

    Protected Function GetBrush(ByVal name As String) As SolidBrush
        Return New SolidBrush(Items(name))
    End Function

    Protected Function GetColor(ByVal name As String) As Color
        Return Items(name)
    End Function

    Protected Sub SetColor(ByVal name As String, ByVal value As Color)
        If Items.ContainsKey(name) Then Items(name) = value Else Items.Add(name, value)
    End Sub
    Protected Sub SetColor(ByVal name As String, ByVal r As Byte, ByVal g As Byte, ByVal b As Byte)
        SetColor(name, Color.FromArgb(r, g, b))
    End Sub
    Protected Sub SetColor(ByVal name As String, ByVal a As Byte, ByVal r As Byte, ByVal g As Byte, ByVal b As Byte)
        SetColor(name, Color.FromArgb(a, r, g, b))
    End Sub
    Protected Sub SetColor(ByVal name As String, ByVal a As Byte, ByVal value As Color)
        SetColor(name, Color.FromArgb(a, value))
    End Sub

    Private Sub InvalidateBitmap()
        If Width = 0 OrElse Height = 0 Then Return
        B = New Bitmap(Width, Height, PixelFormat.Format32bppPArgb)
        G = Graphics.FromImage(B)
    End Sub

    Private Sub InvalidateCustimization()
        Dim M As New MemoryStream(Items.Count * 4)

        For Each B As Bloom In Colors
            M.Write(BitConverter.GetBytes(B.Value.ToArgb), 0, 4)
        Next

        M.Close()
        _Customization = Convert.ToBase64String(M.ToArray)
    End Sub

    Private Sub InvalidateTimer()
        If DesignMode OrElse Not DoneCreation Then Return

        If _IsAnimated Then
            AddAnimationCallback(AddressOf DoAnimation)
        Else
            RemoveAnimationCallback(AddressOf DoAnimation)
        End If
    End Sub
#End Region


#Region " User Hooks "

    Protected MustOverride Sub ColorHook()
    Protected MustOverride Sub PaintHook()

    Protected Overridable Sub OnCreation()
    End Sub

    Protected Overridable Sub OnAnimation()
    End Sub

#End Region


#Region " Offset "

    Private OffsetReturnRectangle As Rectangle
    Protected Function Offset(ByVal r As Rectangle, ByVal amount As Integer) As Rectangle
        OffsetReturnRectangle = New Rectangle(r.X + amount, r.Y + amount, r.Width - (amount * 2), r.Height - (amount * 2))
        Return OffsetReturnRectangle
    End Function

    Private OffsetReturnSize As Size
    Protected Function Offset(ByVal s As Size, ByVal amount As Integer) As Size
        OffsetReturnSize = New Size(s.Width + amount, s.Height + amount)
        Return OffsetReturnSize
    End Function

    Private OffsetReturnPoint As Point
    Protected Function Offset(ByVal p As Point, ByVal amount As Integer) As Point
        OffsetReturnPoint = New Point(p.X + amount, p.Y + amount)
        Return OffsetReturnPoint
    End Function

#End Region

#Region " Center "

    Private CenterReturn As Point

    Protected Function Center(ByVal p As Rectangle, ByVal c As Rectangle) As Point
        CenterReturn = New Point((p.Width \ 2 - c.Width \ 2) + p.X + c.X, (p.Height \ 2 - c.Height \ 2) + p.Y + c.Y)
        Return CenterReturn
    End Function
    Protected Function Center(ByVal p As Rectangle, ByVal c As Size) As Point
        CenterReturn = New Point((p.Width \ 2 - c.Width \ 2) + p.X, (p.Height \ 2 - c.Height \ 2) + p.Y)
        Return CenterReturn
    End Function

    Protected Function Center(ByVal child As Rectangle) As Point
        Return Center(Width, Height, child.Width, child.Height)
    End Function
    Protected Function Center(ByVal child As Size) As Point
        Return Center(Width, Height, child.Width, child.Height)
    End Function
    Protected Function Center(ByVal childWidth As Integer, ByVal childHeight As Integer) As Point
        Return Center(Width, Height, childWidth, childHeight)
    End Function

    Protected Function Center(ByVal p As Size, ByVal c As Size) As Point
        Return Center(p.Width, p.Height, c.Width, c.Height)
    End Function

    Protected Function Center(ByVal pWidth As Integer, ByVal pHeight As Integer, ByVal cWidth As Integer, ByVal cHeight As Integer) As Point
        CenterReturn = New Point(pWidth \ 2 - cWidth \ 2, pHeight \ 2 - cHeight \ 2)
        Return CenterReturn
    End Function

#End Region

#Region " Measure "

    Private MeasureBitmap As Bitmap
    Private MeasureGraphics As Graphics 'TODO: Potential issues during multi-threading.

    Protected Function Measure() As Size
        Return MeasureGraphics.MeasureString(Text, Font, Width).ToSize
    End Function
    Protected Function Measure(ByVal text As String) As Size
        Return MeasureGraphics.MeasureString(text, Font, Width).ToSize
    End Function

#End Region


#Region " DrawPixel "

    Private DrawPixelBrush As SolidBrush

    Protected Sub DrawPixel(ByVal c1 As Color, ByVal x As Integer, ByVal y As Integer)
        If _Transparent Then
            B.SetPixel(x, y, c1)
        Else
            DrawPixelBrush = New SolidBrush(c1)
            G.FillRectangle(DrawPixelBrush, x, y, 1, 1)
        End If
    End Sub

#End Region

#Region " DrawCorners "

    Private DrawCornersBrush As SolidBrush

    Protected Sub DrawCorners(ByVal c1 As Color, ByVal offset As Integer)
        DrawCorners(c1, 0, 0, Width, Height, offset)
    End Sub
    Protected Sub DrawCorners(ByVal c1 As Color, ByVal r1 As Rectangle, ByVal offset As Integer)
        DrawCorners(c1, r1.X, r1.Y, r1.Width, r1.Height, offset)
    End Sub
    Protected Sub DrawCorners(ByVal c1 As Color, ByVal x As Integer, ByVal y As Integer, ByVal width As Integer, ByVal height As Integer, ByVal offset As Integer)
        DrawCorners(c1, x + offset, y + offset, width - (offset * 2), height - (offset * 2))
    End Sub

    Protected Sub DrawCorners(ByVal c1 As Color)
        DrawCorners(c1, 0, 0, Width, Height)
    End Sub
    Protected Sub DrawCorners(ByVal c1 As Color, ByVal r1 As Rectangle)
        DrawCorners(c1, r1.X, r1.Y, r1.Width, r1.Height)
    End Sub
    Protected Sub DrawCorners(ByVal c1 As Color, ByVal x As Integer, ByVal y As Integer, ByVal width As Integer, ByVal height As Integer)
        If _NoRounding Then Return

        If _Transparent Then
            B.SetPixel(x, y, c1)
            B.SetPixel(x + (width - 1), y, c1)
            B.SetPixel(x, y + (height - 1), c1)
            B.SetPixel(x + (width - 1), y + (height - 1), c1)
        Else
            DrawCornersBrush = New SolidBrush(c1)
            G.FillRectangle(DrawCornersBrush, x, y, 1, 1)
            G.FillRectangle(DrawCornersBrush, x + (width - 1), y, 1, 1)
            G.FillRectangle(DrawCornersBrush, x, y + (height - 1), 1, 1)
            G.FillRectangle(DrawCornersBrush, x + (width - 1), y + (height - 1), 1, 1)
        End If
    End Sub

#End Region

#Region " DrawBorders "

    Protected Sub DrawBorders(ByVal p1 As Pen, ByVal offset As Integer)
        DrawBorders(p1, 0, 0, Width, Height, offset)
    End Sub
    Protected Sub DrawBorders(ByVal p1 As Pen, ByVal r As Rectangle, ByVal offset As Integer)
        DrawBorders(p1, r.X, r.Y, r.Width, r.Height, offset)
    End Sub
    Protected Sub DrawBorders(ByVal p1 As Pen, ByVal x As Integer, ByVal y As Integer, ByVal width As Integer, ByVal height As Integer, ByVal offset As Integer)
        DrawBorders(p1, x + offset, y + offset, width - (offset * 2), height - (offset * 2))
    End Sub

    Protected Sub DrawBorders(ByVal p1 As Pen)
        DrawBorders(p1, 0, 0, Width, Height)
    End Sub
    Protected Sub DrawBorders(ByVal p1 As Pen, ByVal r As Rectangle)
        DrawBorders(p1, r.X, r.Y, r.Width, r.Height)
    End Sub
    Protected Sub DrawBorders(ByVal p1 As Pen, ByVal x As Integer, ByVal y As Integer, ByVal width As Integer, ByVal height As Integer)
        G.DrawRectangle(p1, x, y, width - 1, height - 1)
    End Sub

#End Region

#Region " DrawText "

    Private DrawTextPoint As Point
    Private DrawTextSize As Size

    Protected Sub DrawText(ByVal b1 As Brush, ByVal a As HorizontalAlignment, ByVal x As Integer, ByVal y As Integer)
        DrawText(b1, Text, a, x, y)
    End Sub
    Protected Sub DrawText(ByVal b1 As Brush, ByVal text As String, ByVal a As HorizontalAlignment, ByVal x As Integer, ByVal y As Integer)
        If text.Length = 0 Then Return

        DrawTextSize = Measure(text)
        DrawTextPoint = Center(DrawTextSize)

        Select Case a
            Case HorizontalAlignment.Left
                G.DrawString(text, Font, b1, x, DrawTextPoint.Y + y)
            Case HorizontalAlignment.Center
                G.DrawString(text, Font, b1, DrawTextPoint.X + x, DrawTextPoint.Y + y)
            Case HorizontalAlignment.Right
                G.DrawString(text, Font, b1, Width - DrawTextSize.Width - x, DrawTextPoint.Y + y)
        End Select
    End Sub

    Protected Sub DrawText(ByVal b1 As Brush, ByVal p1 As Point)
        If Text.Length = 0 Then Return
        G.DrawString(Text, Font, b1, p1)
    End Sub
    Protected Sub DrawText(ByVal b1 As Brush, ByVal x As Integer, ByVal y As Integer)
        If Text.Length = 0 Then Return
        G.DrawString(Text, Font, b1, x, y)
    End Sub

#End Region

#Region " DrawImage "

    Private DrawImagePoint As Point

    Protected Sub DrawImage(ByVal a As HorizontalAlignment, ByVal x As Integer, ByVal y As Integer)
        DrawImage(_Image, a, x, y)
    End Sub
    Protected Sub DrawImage(ByVal image As Image, ByVal a As HorizontalAlignment, ByVal x As Integer, ByVal y As Integer)
        If image Is Nothing Then Return
        DrawImagePoint = Center(image.Size)

        Select Case a
            Case HorizontalAlignment.Left
                G.DrawImage(image, x, DrawImagePoint.Y + y, image.Width, image.Height)
            Case HorizontalAlignment.Center
                G.DrawImage(image, DrawImagePoint.X + x, DrawImagePoint.Y + y, image.Width, image.Height)
            Case HorizontalAlignment.Right
                G.DrawImage(image, Width - image.Width - x, DrawImagePoint.Y + y, image.Width, image.Height)
        End Select
    End Sub

    Protected Sub DrawImage(ByVal p1 As Point)
        DrawImage(_Image, p1.X, p1.Y)
    End Sub
    Protected Sub DrawImage(ByVal x As Integer, ByVal y As Integer)
        DrawImage(_Image, x, y)
    End Sub

    Protected Sub DrawImage(ByVal image As Image, ByVal p1 As Point)
        DrawImage(image, p1.X, p1.Y)
    End Sub
    Protected Sub DrawImage(ByVal image As Image, ByVal x As Integer, ByVal y As Integer)
        If image Is Nothing Then Return
        G.DrawImage(image, x, y, image.Width, image.Height)
    End Sub

#End Region

#Region " DrawGradient "

    Private DrawGradientBrush As LinearGradientBrush
    Private DrawGradientRectangle As Rectangle

    Protected Sub DrawGradient(ByVal blend As ColorBlend, ByVal x As Integer, ByVal y As Integer, ByVal width As Integer, ByVal height As Integer)
        DrawGradientRectangle = New Rectangle(x, y, width, height)
        DrawGradient(blend, DrawGradientRectangle)
    End Sub
    Protected Sub DrawGradient(ByVal blend As ColorBlend, ByVal x As Integer, ByVal y As Integer, ByVal width As Integer, ByVal height As Integer, ByVal angle As Single)
        DrawGradientRectangle = New Rectangle(x, y, width, height)
        DrawGradient(blend, DrawGradientRectangle, angle)
    End Sub

    Protected Sub DrawGradient(ByVal blend As ColorBlend, ByVal r As Rectangle)
        DrawGradientBrush = New LinearGradientBrush(r, Color.Empty, Color.Empty, 90.0F)
        DrawGradientBrush.InterpolationColors = blend
        G.FillRectangle(DrawGradientBrush, r)
    End Sub
    Protected Sub DrawGradient(ByVal blend As ColorBlend, ByVal r As Rectangle, ByVal angle As Single)
        DrawGradientBrush = New LinearGradientBrush(r, Color.Empty, Color.Empty, angle)
        DrawGradientBrush.InterpolationColors = blend
        G.FillRectangle(DrawGradientBrush, r)
    End Sub


    Protected Sub DrawGradient(ByVal c1 As Color, ByVal c2 As Color, ByVal x As Integer, ByVal y As Integer, ByVal width As Integer, ByVal height As Integer)
        DrawGradientRectangle = New Rectangle(x, y, width, height)
        DrawGradient(c1, c2, DrawGradientRectangle)
    End Sub
    Protected Sub DrawGradient(ByVal c1 As Color, ByVal c2 As Color, ByVal x As Integer, ByVal y As Integer, ByVal width As Integer, ByVal height As Integer, ByVal angle As Single)
        DrawGradientRectangle = New Rectangle(x, y, width, height)
        DrawGradient(c1, c2, DrawGradientRectangle, angle)
    End Sub

    Protected Sub DrawGradient(ByVal c1 As Color, ByVal c2 As Color, ByVal r As Rectangle)
        DrawGradientBrush = New LinearGradientBrush(r, c1, c2, 90.0F)
        G.FillRectangle(DrawGradientBrush, r)
    End Sub
    Protected Sub DrawGradient(ByVal c1 As Color, ByVal c2 As Color, ByVal r As Rectangle, ByVal angle As Single)
        DrawGradientBrush = New LinearGradientBrush(r, c1, c2, angle)
        G.FillRectangle(DrawGradientBrush, r)
    End Sub

#End Region

#Region " DrawRadial "

    Private DrawRadialPath As GraphicsPath
    Private DrawRadialBrush1 As PathGradientBrush
    Private DrawRadialBrush2 As LinearGradientBrush
    Private DrawRadialRectangle As Rectangle

    Sub DrawRadial(ByVal blend As ColorBlend, ByVal x As Integer, ByVal y As Integer, ByVal width As Integer, ByVal height As Integer)
        DrawRadialRectangle = New Rectangle(x, y, width, height)
        DrawRadial(blend, DrawRadialRectangle, width \ 2, height \ 2)
    End Sub
    Sub DrawRadial(ByVal blend As ColorBlend, ByVal x As Integer, ByVal y As Integer, ByVal width As Integer, ByVal height As Integer, ByVal center As Point)
        DrawRadialRectangle = New Rectangle(x, y, width, height)
        DrawRadial(blend, DrawRadialRectangle, center.X, center.Y)
    End Sub
    Sub DrawRadial(ByVal blend As ColorBlend, ByVal x As Integer, ByVal y As Integer, ByVal width As Integer, ByVal height As Integer, ByVal cx As Integer, ByVal cy As Integer)
        DrawRadialRectangle = New Rectangle(x, y, width, height)
        DrawRadial(blend, DrawRadialRectangle, cx, cy)
    End Sub

    Sub DrawRadial(ByVal blend As ColorBlend, ByVal r As Rectangle)
        DrawRadial(blend, r, r.Width \ 2, r.Height \ 2)
    End Sub
    Sub DrawRadial(ByVal blend As ColorBlend, ByVal r As Rectangle, ByVal center As Point)
        DrawRadial(blend, r, center.X, center.Y)
    End Sub
    Sub DrawRadial(ByVal blend As ColorBlend, ByVal r As Rectangle, ByVal cx As Integer, ByVal cy As Integer)
        DrawRadialPath.Reset()
        DrawRadialPath.AddEllipse(r.X, r.Y, r.Width - 1, r.Height - 1)

        DrawRadialBrush1 = New PathGradientBrush(DrawRadialPath)
        DrawRadialBrush1.CenterPoint = New Point(r.X + cx, r.Y + cy)
        DrawRadialBrush1.InterpolationColors = blend

        If G.SmoothingMode = SmoothingMode.AntiAlias Then
            G.FillEllipse(DrawRadialBrush1, r.X + 1, r.Y + 1, r.Width - 3, r.Height - 3)
        Else
            G.FillEllipse(DrawRadialBrush1, r)
        End If
    End Sub


    Protected Sub DrawRadial(ByVal c1 As Color, ByVal c2 As Color, ByVal x As Integer, ByVal y As Integer, ByVal width As Integer, ByVal height As Integer)
        DrawRadialRectangle = New Rectangle(x, y, width, height)
        DrawRadial(c1, c2, DrawRadialRectangle)
    End Sub
    Protected Sub DrawRadial(ByVal c1 As Color, ByVal c2 As Color, ByVal x As Integer, ByVal y As Integer, ByVal width As Integer, ByVal height As Integer, ByVal angle As Single)
        DrawRadialRectangle = New Rectangle(x, y, width, height)
        DrawRadial(c1, c2, DrawRadialRectangle, angle)
    End Sub

    Protected Sub DrawRadial(ByVal c1 As Color, ByVal c2 As Color, ByVal r As Rectangle)
        DrawRadialBrush2 = New LinearGradientBrush(r, c1, c2, 90.0F)
        G.FillEllipse(DrawRadialBrush2, r)
    End Sub
    Protected Sub DrawRadial(ByVal c1 As Color, ByVal c2 As Color, ByVal r As Rectangle, ByVal angle As Single)
        DrawRadialBrush2 = New LinearGradientBrush(r, c1, c2, angle)
        G.FillEllipse(DrawRadialBrush2, r)
    End Sub

#End Region

#Region " CreateRound "

    Private CreateRoundPath As GraphicsPath
    Private CreateRoundRectangle As Rectangle

    Function CreateRound(ByVal x As Integer, ByVal y As Integer, ByVal width As Integer, ByVal height As Integer, ByVal slope As Integer) As GraphicsPath
        CreateRoundRectangle = New Rectangle(x, y, width, height)
        Return CreateRound(CreateRoundRectangle, slope)
    End Function

    Function CreateRound(ByVal r As Rectangle, ByVal slope As Integer) As GraphicsPath
        CreateRoundPath = New GraphicsPath(FillMode.Winding)
        CreateRoundPath.AddArc(r.X, r.Y, slope, slope, 180.0F, 90.0F)
        CreateRoundPath.AddArc(r.Right - slope, r.Y, slope, slope, 270.0F, 90.0F)
        CreateRoundPath.AddArc(r.Right - slope, r.Bottom - slope, slope, slope, 0.0F, 90.0F)
        CreateRoundPath.AddArc(r.X, r.Bottom - slope, slope, slope, 90.0F, 90.0F)
        CreateRoundPath.CloseFigure()
        Return CreateRoundPath
    End Function

#End Region

End Class

Module ThemeShare

#Region " Animation "

    Private Frames As Integer
    Private Invalidate As Boolean
    Public ThemeTimer As New PrecisionTimer

    Private Const FPS As Integer = 50 '1000 / 50 = 20 FPS
    Private Const Rate As Integer = 10

    Public Delegate Sub AnimationDelegate(ByVal invalidate As Boolean)

    Private Callbacks As New List(Of AnimationDelegate)

    Private Sub HandleCallbacks(ByVal state As IntPtr, ByVal reserve As Boolean)
        Invalidate = (Frames >= FPS)
        If Invalidate Then Frames = 0

        SyncLock Callbacks
            For I As Integer = 0 To Callbacks.Count - 1
                Callbacks(I).Invoke(Invalidate)
            Next
        End SyncLock

        Frames += Rate
    End Sub

    Private Sub InvalidateThemeTimer()
        If Callbacks.Count = 0 Then
            ThemeTimer.Delete()
        Else
            ThemeTimer.Create(0, Rate, AddressOf HandleCallbacks)
        End If
    End Sub

    Sub AddAnimationCallback(ByVal callback As AnimationDelegate)
        SyncLock Callbacks
            If Callbacks.Contains(callback) Then Return

            Callbacks.Add(callback)
            InvalidateThemeTimer()
        End SyncLock
    End Sub

    Sub RemoveAnimationCallback(ByVal callback As AnimationDelegate)
        SyncLock Callbacks
            If Not Callbacks.Contains(callback) Then Return

            Callbacks.Remove(callback)
            InvalidateThemeTimer()
        End SyncLock
    End Sub

#End Region

End Module

'Enum MouseState As Byte
'    None = 0
'    Over = 1
'    Down = 2
'    Block = 3
'End Enum

Structure Bloom

    Public _Name As String
    ReadOnly Property Name() As String
        Get
            Return _Name
        End Get
    End Property

    Private _Value As Color
    Property Value() As Color
        Get
            Return _Value
        End Get
        Set(ByVal value As Color)
            _Value = value
        End Set
    End Property

    Property ValueHex() As String
        Get
            Return String.Concat("#", _
            _Value.R.ToString("X2", Nothing), _
            _Value.G.ToString("X2", Nothing), _
            _Value.B.ToString("X2", Nothing))
        End Get
        Set(ByVal value As String)
            Try
                _Value = ColorTranslator.FromHtml(value)
            Catch
                Return
            End Try
        End Set
    End Property


    Sub New(ByVal name As String, ByVal value As Color)
        _Name = name
        _Value = value
    End Sub
End Structure

'------------------
'Creator: aeonhack
'Site: elitevs.net
'Created: 11/30/2011
'Changed: 11/30/2011
'Version: 1.0.0
'------------------
Class PrecisionTimer
    Implements IDisposable

    Private _Enabled As Boolean
    ReadOnly Property Enabled() As Boolean
        Get
            Return _Enabled
        End Get
    End Property

    Private Handle As IntPtr
    Private TimerCallback As TimerDelegate

    <DllImport("kernel32.dll", EntryPoint:="CreateTimerQueueTimer")> _
    Private Shared Function CreateTimerQueueTimer( _
    ByRef handle As IntPtr, _
    ByVal queue As IntPtr, _
    ByVal callback As TimerDelegate, _
    ByVal state As IntPtr, _
    ByVal dueTime As UInteger, _
    ByVal period As UInteger, _
    ByVal flags As UInteger) As Boolean
    End Function

    <DllImport("kernel32.dll", EntryPoint:="DeleteTimerQueueTimer")> _
    Private Shared Function DeleteTimerQueueTimer( _
    ByVal queue As IntPtr, _
    ByVal handle As IntPtr, _
    ByVal callback As IntPtr) As Boolean
    End Function

    Delegate Sub TimerDelegate(ByVal r1 As IntPtr, ByVal r2 As Boolean)

    Sub Create(ByVal dueTime As UInteger, ByVal period As UInteger, ByVal callback As TimerDelegate)
        If _Enabled Then Return

        TimerCallback = callback
        Dim Success As Boolean = CreateTimerQueueTimer(Handle, IntPtr.Zero, TimerCallback, IntPtr.Zero, dueTime, period, 0)

        If Not Success Then ThrowNewException("CreateTimerQueueTimer")
        _Enabled = Success
    End Sub

    Sub Delete()
        If Not _Enabled Then Return
        Dim Success As Boolean = DeleteTimerQueueTimer(IntPtr.Zero, Handle, IntPtr.Zero)

        If Not Success AndAlso Not Marshal.GetLastWin32Error = 997 Then
            ThrowNewException("DeleteTimerQueueTimer")
        End If

        _Enabled = Not Success
    End Sub

    Private Sub ThrowNewException(ByVal name As String)
        Throw New Exception(String.Format("{0} failed. Win32Error: {1}", name, Marshal.GetLastWin32Error))
    End Sub

    Public Sub Dispose() Implements IDisposable.Dispose
        Delete()
    End Sub
End Class

#End Region



'------------------
'Creator: Himler
'Created: 16/11/2012
'Version: 1.0.0
'------------------
Class clsNeoBuxTheme
    Inherits ThemeContainer154

    Sub New()
        TransparencyKey = Color.Fuchsia
        BackColor = Color.FromArgb(239, 239, 242)
        Font = New Font("Segoe UI", 9)
        SetColor("Text", Color.Black)

    End Sub

    Dim TextBrush As Brush


    Protected Overrides Sub ColorHook()
        TextBrush = GetBrush("Text")
    End Sub

    Protected Overrides Sub PaintHook()
        G.Clear(Color.Gray)

        'MenuTop
        G.FillRectangle(New SolidBrush(BackColor), New Rectangle(1, 1, Width - 2, Height - 2))

        'Border
        G.FillRectangle(New SolidBrush(Color.LightGray), New Rectangle(1, 35, Width - 2, Height - 38))

        'MainForm
        G.FillRectangle(New SolidBrush(Color.WhiteSmoke), New Rectangle(1, 36, Width - 2, Height - 39))


        'ColorLine
        Dim LGB As New LinearGradientBrush(New Rectangle(1, 36, Width - 2, Height - 255), Color.FromArgb(0, 177, 253), Color.FromArgb(46, 202, 56), 180.0F)
        G.DrawRectangle(New Pen(Color.LightGray), 1, 35, Width - 3, 4)
        G.FillRectangle(LGB, New Rectangle(1, 35, Width - 2, 4))

        'MenuItems
        G.DrawString(FindForm.Text, Font, TextBrush, New Point(35, 10))
        G.DrawIcon(FindForm.Icon, New Rectangle(10, 10, 16, 16))
        DrawCorners(Color.Fuchsia)

    End Sub
End Class

Class clsControlMenu
    Inherits ThemeControl154
    Private X As Integer
    Dim BG, Edge As Color
    Dim BEdge As Pen
    Protected Overrides Sub ColorHook()
        BG = GetColor("Background")
        Edge = GetColor("Edge color")
        BEdge = New Pen(GetColor("Button edge color"))
    End Sub

    Sub New()
        SetColor("Background", Color.FromArgb(239, 239, 242))
        SetColor("Edge color", Color.Transparent)
        SetColor("Button edge color", Color.Transparent)
        Me.Size = New Size(71, 19)
        Me.Anchor = AnchorStyles.Top Or AnchorStyles.Right
    End Sub

    Protected Overrides Sub OnMouseMove(e As System.Windows.Forms.MouseEventArgs)
        MyBase.OnMouseMove(e)
        X = e.X
        Invalidate()
    End Sub

    Protected Overrides Sub OnClick(e As System.EventArgs)
        MyBase.OnClick(e)
        If X <= 22 Then
            FindForm.WindowState = FormWindowState.Minimized
        ElseIf X > 22 And X <= 44 Then
            If FindForm.WindowState <> FormWindowState.Maximized Then FindForm.WindowState = FormWindowState.Maximized Else FindForm.WindowState = FormWindowState.Normal
        ElseIf X > 44 Then
            FindForm.Close()
        End If
    End Sub

    Protected Overrides Sub PaintHook()
        'Draw outer edge
        G.Clear(Color.FromArgb(239, 239, 242))

        'Fill buttons
        'Dim SB As New LinearGradientBrush(New Rectangle(New Point(1, 1), New Size(Width - 2, Height - 2)), BG, Color.FromArgb(30, 30, 30), 90.0F)
        G.FillRectangle(New SolidBrush(Color.FromArgb(239, 239, 242)), New Rectangle(New Point(1, 1), New Size(Width - 2, Height - 2)))

        'Draw icons
        G.DrawString("0", New Font("Marlett", 8.25), Brushes.Black, New Point(5, 5))
        If FindForm.WindowState <> FormWindowState.Maximized Then G.DrawString("1", New Font("Marlett", 8.25), Brushes.Black, New Point(27, 4)) Else G.DrawString("2", New Font("Marlett", 8.25), Brushes.Black, New Point(27, 4))
        G.DrawString("r", New Font("Marlett", 10), Brushes.Black, New Point(49, 3))

        'Glassy effect
        'Dim CBlend As New ColorBlend(2)
        'CBlend.Colors = {Color.FromArgb(100, Color.Black), Color.Transparent}
        'CBlend.Positions = {0, 1}
        'DrawGradient(CBlend, New Rectangle(New Point(1, 8), New Size(68, 8)), 90.0F)

        'Draw button outlines
        G.DrawRectangle(BEdge, New Rectangle(New Point(1, 1), New Size(20, 16)))
        G.DrawRectangle(BEdge, New Rectangle(New Point(23, 1), New Size(20, 16)))
        G.DrawRectangle(BEdge, New Rectangle(New Point(45, 1), New Size(24, 16)))

        'Mouse states
        Select Case State
            Case MouseState.Over
                If X <= 22 Then
                    G.FillRectangle(New SolidBrush(Color.FromArgb(40, Color.White)), New Rectangle(New Point(1, 1), New Size(21, Height - 2)))
                ElseIf X > 22 And X <= 44 Then
                    G.FillRectangle(New SolidBrush(Color.FromArgb(40, Color.White)), New Rectangle(New Point(23, 1), New Size(21, Height - 2)))
                ElseIf X > 44 Then
                    G.FillRectangle(New SolidBrush(Color.FromArgb(40, Color.White)), New Rectangle(New Point(45, 1), New Size(25, Height - 2)))
                End If
            Case MouseState.Down
                If X <= 22 Then
                    G.FillRectangle(New SolidBrush(Color.FromArgb(20, Color.Black)), New Rectangle(New Point(1, 1), New Size(21, Height - 2)))
                ElseIf X > 22 And X <= 44 Then
                    G.FillRectangle(New SolidBrush(Color.FromArgb(20, Color.Black)), New Rectangle(New Point(23, 1), New Size(21, Height - 2)))
                ElseIf X > 44 Then
                    G.FillRectangle(New SolidBrush(Color.FromArgb(20, Color.Black)), New Rectangle(New Point(45, 1), New Size(25, Height - 2)))
                End If
        End Select
    End Sub
End Class

Class clsButtonGreen
    Inherits ThemeControl154

    Dim TextColor As Brush
    Dim Border As Pen

    Sub New()
        SetColor("Text", Color.WhiteSmoke)
        SetColor("Border", Color.DarkGray)
    End Sub

    Protected Overrides Sub ColorHook()
        TextColor = GetBrush("Text")
        Border = GetPen("Border")
    End Sub

    Protected Overrides Sub PaintHook()
        DrawCorners(Color.Fuchsia)
        G.Clear(BackColor)
        Select Case State
            Case MouseState.None
                Dim LGB1 As New LinearGradientBrush(New Rectangle(0, 0, Width - 1, Height - 1), Color.FromArgb(23, 178, 23), Color.FromArgb(1, 156, 1), 90.0F)

                G.SmoothingMode = SmoothingMode.HighQuality
                G.FillPath(LGB1, CreateRound(0, 1, Width - 1, Height - 2, 3))
                G.DrawPath(New Pen(Color.FromArgb(0, 124, 0)), CreateRound(0, 0, Width - 1, Height - 1, 5))

                DrawText(TextColor, HorizontalAlignment.Center, 0, 0)


            Case MouseState.Over
                Dim LGBO1 As New LinearGradientBrush(New Rectangle(0, 0, Width - 1, Height - 1), Color.FromArgb(49, 188, 49), Color.FromArgb(26, 180, 26), 90.0F)

                G.SmoothingMode = SmoothingMode.HighQuality
                G.FillPath(LGBO1, CreateRound(0, 1, Width - 1, Height - 2, 3))
                G.DrawPath(New Pen(Color.FromArgb(0, 124, 0)), CreateRound(0, 0, Width - 1, Height - 1, 5))

                DrawText(TextColor, HorizontalAlignment.Center, 0, 0)

            Case MouseState.Down
                Dim LGBD1 As New LinearGradientBrush(New Rectangle(0, 0, Width - 1, Height - 1), Color.FromArgb(49, 188, 49), Color.FromArgb(26, 180, 26), 90.0F)

                G.SmoothingMode = SmoothingMode.HighQuality
                G.FillPath(LGBD1, CreateRound(0, 1, Width - 1, Height - 2, 3))
                G.DrawPath(New Pen(Color.FromArgb(0, 124, 0)), CreateRound(0, 0, Width - 1, Height - 1, 5))

                DrawText(TextColor, HorizontalAlignment.Center, 0, 1)
        End Select
    End Sub
End Class

Class clsButtonBlue
    Inherits ThemeControl154

    Dim TextColor As Brush
    Dim Border As Pen

    Sub New()
        SetColor("Text", Color.WhiteSmoke)
        SetColor("Border", Color.DarkGray)
    End Sub

    Protected Overrides Sub ColorHook()
        TextColor = GetBrush("Text")
        Border = GetPen("Border")
    End Sub

    Protected Overrides Sub PaintHook()
        DrawCorners(Color.Fuchsia)
        G.Clear(BackColor)
        Select Case State
            Case MouseState.None
                Dim LGB1 As New LinearGradientBrush(New Rectangle(0, 0, Width - 1, Height - 1), Color.FromArgb(23, 167, 237), Color.FromArgb(1, 145, 215), 90.0F)

                G.SmoothingMode = SmoothingMode.HighQuality
                G.FillPath(LGB1, CreateRound(0, 1, Width - 1, Height - 2, 3))
                G.DrawPath(New Pen(Color.FromArgb(0, 116, 172)), CreateRound(0, 0, Width - 1, Height - 1, 5))

                DrawText(TextColor, HorizontalAlignment.Center, 0, 0)


            Case MouseState.Over
                Dim LGBO1 As New LinearGradientBrush(New Rectangle(0, 0, Width - 1, Height - 1), Color.FromArgb(49, 178, 241), Color.FromArgb(26, 169, 239), 90.0F)

                G.SmoothingMode = SmoothingMode.HighQuality
                G.FillPath(LGBO1, CreateRound(0, 1, Width - 1, Height - 2, 3))
                G.DrawPath(New Pen(Color.FromArgb(0, 116, 172)), CreateRound(0, 0, Width - 1, Height - 1, 5))

                DrawText(TextColor, HorizontalAlignment.Center, 0, 0)

            Case MouseState.Down
                Dim LGBD1 As New LinearGradientBrush(New Rectangle(0, 0, Width - 1, Height - 1), Color.FromArgb(49, 178, 241), Color.FromArgb(26, 169, 239), 90.0F)

                G.SmoothingMode = SmoothingMode.HighQuality
                G.FillPath(LGBD1, CreateRound(0, 1, Width - 1, Height - 2, 3))
                G.DrawPath(New Pen(Color.FromArgb(0, 116, 172)), CreateRound(0, 0, Width - 1, Height - 1, 5))
                DrawText(TextColor, HorizontalAlignment.Center, 0, 1)
        End Select
    End Sub
End Class

Class clsButtonOrange
    Inherits ThemeControl154

    Dim TextColor As Brush
    Dim Border As Pen

    Sub New()
        SetColor("Text", Color.WhiteSmoke)
        SetColor("Border", Color.DarkGray)
    End Sub

    Protected Overrides Sub ColorHook()
        TextColor = GetBrush("Text")
        Border = GetPen("Border")
    End Sub

    Protected Overrides Sub PaintHook()
        DrawCorners(Color.Fuchsia)
        G.Clear(BackColor)
        Select Case State
            Case MouseState.None
                Dim LGB1 As New LinearGradientBrush(New Rectangle(0, 0, Width - 1, Height - 1), Color.FromArgb(253, 163, 23), Color.FromArgb(231, 141, 1), 90.0F)

                G.SmoothingMode = SmoothingMode.HighQuality
                G.FillPath(LGB1, CreateRound(0, 1, Width - 1, Height - 2, 3))
                G.DrawPath(New Pen(Color.FromArgb(184, 112, 0)), CreateRound(0, 0, Width - 1, Height - 1, 5))

                DrawText(TextColor, HorizontalAlignment.Center, 0, 0)


            Case MouseState.Over
                Dim LGBO1 As New LinearGradientBrush(New Rectangle(0, 0, Width - 1, Height - 1), Color.FromArgb(255, 175, 49), Color.FromArgb(255, 166, 26), 90.0F)

                G.SmoothingMode = SmoothingMode.HighQuality
                G.FillPath(LGBO1, CreateRound(0, 1, Width - 1, Height - 2, 3))
                G.DrawPath(New Pen(Color.FromArgb(184, 112, 0)), CreateRound(0, 0, Width - 1, Height - 1, 5))

                DrawText(TextColor, HorizontalAlignment.Center, 0, 0)

            Case MouseState.Down
                Dim LGBD1 As New LinearGradientBrush(New Rectangle(0, 0, Width - 1, Height - 1), Color.FromArgb(255, 175, 49), Color.FromArgb(255, 166, 26), 90.0F)

                G.SmoothingMode = SmoothingMode.HighQuality
                G.FillPath(LGBD1, CreateRound(0, 1, Width - 1, Height - 2, 3))
                G.DrawPath(New Pen(Color.FromArgb(184, 112, 0)), CreateRound(0, 0, Width - 1, Height - 1, 5))


                DrawText(TextColor, HorizontalAlignment.Center, 0, 1)
        End Select
    End Sub
End Class

Class clsButtonPurple
    Inherits ThemeControl154

    Dim TextColor As Brush
    Dim Border As Pen

    Sub New()
        SetColor("Text", Color.WhiteSmoke)
        SetColor("Border", Color.DarkGray)
    End Sub

    Protected Overrides Sub ColorHook()
        TextColor = GetBrush("Text")
        Border = GetPen("Border")
    End Sub

    Protected Overrides Sub PaintHook()
        DrawCorners(Color.Fuchsia)
        G.Clear(BackColor)
        Select Case State
            Case MouseState.None
                Dim LGB1 As New LinearGradientBrush(New Rectangle(0, 0, Width - 1, Height - 1), Color.FromArgb(229, 43, 245), Color.FromArgb(207, 21, 223), 90.0F)

                G.SmoothingMode = SmoothingMode.HighQuality
                G.FillPath(LGB1, CreateRound(0, 1, Width - 1, Height - 2, 3))
                G.DrawPath(New Pen(Color.FromArgb(165, 16, 178)), CreateRound(0, 0, Width - 1, Height - 1, 5))

                DrawText(TextColor, HorizontalAlignment.Center, 0, 0)


            Case MouseState.Over
                Dim LGBO1 As New LinearGradientBrush(New Rectangle(0, 0, Width - 1, Height - 1), Color.FromArgb(234, 67, 248), Color.FromArgb(231, 46, 247), 90.0F)

                G.SmoothingMode = SmoothingMode.HighQuality
                G.FillPath(LGBO1, CreateRound(0, 1, Width - 1, Height - 2, 3))
                G.DrawPath(New Pen(Color.FromArgb(165, 16, 178)), CreateRound(0, 0, Width - 1, Height - 1, 5))


                DrawText(TextColor, HorizontalAlignment.Center, 0, 0)

            Case MouseState.Down
                Dim LGBD1 As New LinearGradientBrush(New Rectangle(0, 0, Width - 1, Height - 1), Color.FromArgb(234, 67, 248), Color.FromArgb(231, 46, 247), 90.0F)

                G.SmoothingMode = SmoothingMode.HighQuality
                G.FillPath(LGBD1, CreateRound(0, 1, Width - 1, Height - 2, 3))
                G.DrawPath(New Pen(Color.FromArgb(165, 16, 178)), CreateRound(0, 0, Width - 1, Height - 1, 5))

                DrawText(TextColor, HorizontalAlignment.Center, 0, 1)
        End Select
    End Sub
End Class

Class clsButtonGrey
    Inherits ThemeControl154

    Dim TextColor As Brush
    Dim Border As Pen

    Sub New()
        SetColor("Text", Color.WhiteSmoke)
        SetColor("Border", Color.DarkGray)
    End Sub

    Protected Overrides Sub ColorHook()
        TextColor = GetBrush("Text")
        Border = GetPen("Border")
    End Sub

    Protected Overrides Sub PaintHook()
        DrawCorners(Color.Fuchsia)
        G.Clear(BackColor)
        Select Case State
            Case MouseState.None
                Dim LGB1 As New LinearGradientBrush(New Rectangle(0, 0, Width - 1, Height - 1), Color.FromArgb(161, 161, 161), Color.FromArgb(139, 139, 139), 90.0F)

                G.SmoothingMode = SmoothingMode.HighQuality
                G.FillPath(LGB1, CreateRound(0, 1, Width - 1, Height - 2, 3))
                G.DrawPath(New Pen(Color.FromArgb(111, 111, 111)), CreateRound(0, 0, Width - 1, Height - 1, 5))

                DrawText(TextColor, HorizontalAlignment.Center, 0, 0)


            Case MouseState.Over
                Dim LGBO1 As New LinearGradientBrush(New Rectangle(0, 0, Width - 1, Height - 1), Color.FromArgb(172, 172, 172), Color.FromArgb(163, 163, 163), 90.0F)

                G.SmoothingMode = SmoothingMode.HighQuality
                G.FillPath(LGBO1, CreateRound(0, 1, Width - 1, Height - 2, 3))
                G.DrawPath(New Pen(Color.FromArgb(111, 111, 111)), CreateRound(0, 0, Width - 1, Height - 1, 5))

                DrawText(TextColor, HorizontalAlignment.Center, 0, 0)

            Case MouseState.Down
                Dim LGBD1 As New LinearGradientBrush(New Rectangle(0, 0, Width - 1, Height - 1), Color.FromArgb(172, 172, 172), Color.FromArgb(163, 163, 163), 90.0F)

                G.SmoothingMode = SmoothingMode.HighQuality
                G.FillPath(LGBD1, CreateRound(0, 1, Width - 1, Height - 2, 3))
                G.DrawPath(New Pen(Color.FromArgb(111, 111, 111)), CreateRound(0, 0, Width - 1, Height - 1, 5))

                DrawText(TextColor, HorizontalAlignment.Center, 0, 1)
        End Select
    End Sub
End Class

