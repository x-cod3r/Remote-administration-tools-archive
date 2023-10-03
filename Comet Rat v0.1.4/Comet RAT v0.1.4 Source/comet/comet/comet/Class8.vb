Imports System.Drawing.Drawing2D


Public Class clsVistaToolStripRenderer
    Inherits System.Windows.Forms.ToolStripSystemRenderer

#Region "- Color Table -"
    ' List of all colors

    'Main background
    Public clrBGTop1 As Color = Color.FromArgb(255, 127, 166, 191)
    Public clrBGTop2 As Color = Color.FromArgb(255, 4, 72, 117)
    Public clrBGBottom1 As Color = Color.FromArgb(255, 57, 117, 156)
    Public clrBGBottom2 As Color = Color.FromArgb(150, 255, 255, 255)
    Public clrBGBorder As Color = Color.FromArgb(200, 176, 200, 216)
    Public clrBGGreen As Color = Color.FromArgb(100, 57, 161, 133)

    'MenuBar Background
    Public clrMBTop As Color = Color.FromArgb(255, 255, 255, 255)
    Public clrMBTopMid As Color = Color.FromArgb(255, 229, 234, 245)
    Public clrMBBottomMid As Color = Color.FromArgb(255, 212, 219, 237)
    Public clrMBBottom As Color = Color.FromArgb(255, 225, 230, 246)
    Public clrMBUpperBottomLine As Color = Color.FromArgb(255, 182, 188, 204)
    Public clrMBLowerBottomLine As Color = Color.FromArgb(255, 240, 240, 240)

    'MenuBar Buttons
    Public clrMBButtonLight As Color = Color.FromArgb(35, 0, 0, 0)
    Public clrMBButtonDark As Color = Color.FromArgb(35, 0, 0, 0)
    Public clrMBButtonLightBorder As Color = Color.FromArgb(200, 150, 150, 150)
    Public clrMBButtonDarkBorder As Color = Color.FromArgb(200, 0, 0, 0)

    'Buttons
    Public clrBtnDarkBorder As Color = Color.FromArgb(200, 3, 50, 81)
    Public clrBtnLightBorder As Color = Color.FromArgb(200, 216, 228, 236)

    'Context Menus
    Public clrSelectedBorder As Color = Color.FromArgb(200, 168, 216, 235)
    Public clrSelectGradTop As Color = Color.FromArgb(125, 216, 232, 245)
    Public clrSelectGradBottom As Color = Color.FromArgb(125, 198, 225, 243)
    Public clrMenuBorder As Color = Color.FromArgb(255, 160, 160, 160)

    'Checks in Menus
    Public clrCheckBG As Color = Color.FromArgb(150, 210, 229, 244)
    Public clrCheckBorder As Color = Color.FromArgb(150, 195, 201, 230)
    Public clrImageMarginLine As Color = Color.FromArgb(255, 226, 227, 227)
#End Region

    Public Sub DrawRoundedRectangle(ByVal objGraphics As Graphics, _
                                ByVal m_intxAxis As Integer, _
                                ByVal m_intyAxis As Integer, _
                                ByVal m_intWidth As Integer, _
                                ByVal m_intHeight As Integer, _
                                ByVal m_diameter As Integer, ByVal color As Color)

        Dim pen As New Pen(color)

        'Dim g As Graphics
        Dim BaseRect As New RectangleF(m_intxAxis, m_intyAxis, m_intWidth, m_intHeight)
        Dim ArcRect As New RectangleF(BaseRect.Location, New SizeF(m_diameter, m_diameter))
        'top left Arc
        objGraphics.DrawArc(pen, ArcRect, 180, 90)
        objGraphics.DrawLine(pen, m_intxAxis + CInt(m_diameter / 2), m_intyAxis, m_intxAxis + m_intWidth - CInt(m_diameter / 2), m_intyAxis)

        ' top right arc
        ArcRect.X = BaseRect.Right - m_diameter
        objGraphics.DrawArc(pen, ArcRect, 270, 90)
        objGraphics.DrawLine(pen, m_intxAxis + m_intWidth, m_intyAxis + CInt(m_diameter / 2), m_intxAxis + m_intWidth, m_intyAxis + m_intHeight - CInt(m_diameter / 2))

        ' bottom right arc
        ArcRect.Y = BaseRect.Bottom - m_diameter
        objGraphics.DrawArc(pen, ArcRect, 0, 90)
        objGraphics.DrawLine(pen, m_intxAxis + CInt(m_diameter / 2), m_intyAxis + m_intHeight, m_intxAxis + m_intWidth - CInt(m_diameter / 2), m_intyAxis + m_intHeight)

        ' bottom left arc
        ArcRect.X = BaseRect.Left
        objGraphics.DrawArc(pen, ArcRect, 90, 90)
        objGraphics.DrawLine(pen, m_intxAxis, m_intyAxis + CInt(m_diameter / 2), m_intxAxis, m_intyAxis + m_intHeight - CInt(m_diameter / 2))

    End Sub

    Protected Overrides Sub Initialize(ByVal toolStrip As System.Windows.Forms.ToolStrip)
        MyBase.Initialize(toolStrip)
        If TypeOf toolStrip Is MenuStrip Then
            toolStrip.ForeColor = Color.Black
        ElseIf TypeOf toolStrip Is ToolStripDropDownMenu Then
            toolStrip.ForeColor = Color.Black
        ElseIf TypeOf toolStrip Is ToolStrip Then
            toolStrip.ForeColor = Color.White
        End If
        toolStrip.Padding = New Padding(5, 2, 5, 2)
    End Sub

    Protected Overrides Sub OnRenderToolStripBorder(ByVal e As System.Windows.Forms.ToolStripRenderEventArgs)
        MyBase.OnRenderToolStripBorder(e)
        ' e.Graphics.DrawRectangle(New Pen(clrBGBorder, 1), e.AffectedBounds)
    End Sub

    Protected Overrides Sub OnRenderItemText(ByVal e As System.Windows.Forms.ToolStripItemTextRenderEventArgs)
        MyBase.OnRenderItemText(e)
        'e.Graphics.DrawString(e.Text, e.Item.Font, Brushes.Gray, 20, 6)
    End Sub

    Protected Overrides Sub OnRenderItemBackground(ByVal e As System.Windows.Forms.ToolStripItemRenderEventArgs)
        MyBase.OnRenderItemBackground(e)
        'e.Item.

    End Sub

    Protected Overrides Sub OnRenderToolStripBackground(ByVal e As System.Windows.Forms.ToolStripRenderEventArgs)
        'MyBase.OnRenderToolStripBackground(e)
        If (TypeOf e.ToolStrip Is ToolStripDropDownMenu) OrElse (TypeOf e.ToolStrip Is ContextMenuStrip) Then

        ElseIf (TypeOf e.ToolStrip Is MenuStrip) Then
            Dim topRect As New Rectangle(0, 0, e.ToolStrip.Width + 2, e.ToolStrip.Height / 3)
            Dim bottomRect As New Rectangle(0, e.ToolStrip.Height / 3, e.ToolStrip.Width + 2, e.ToolStrip.Height / 1.5)

            Dim topBrush As New LinearGradientBrush(topRect, clrMBTop, clrMBTopMid, LinearGradientMode.Vertical)
            Dim bottomBrush As New LinearGradientBrush(bottomRect, clrMBBottomMid, clrMBBottom, LinearGradientMode.Vertical)

            e.Graphics.FillRectangle(topBrush, topRect)
            e.Graphics.FillRectangle(bottomBrush, bottomRect)
            e.Graphics.FillRectangle(New SolidBrush(clrMBUpperBottomLine), New Rectangle(0, e.ToolStrip.Height - 3, e.ToolStrip.Width, 1))
            e.Graphics.FillRectangle(New SolidBrush(clrMBLowerBottomLine), New Rectangle(0, e.ToolStrip.Height - 1, e.ToolStrip.Width, 1))

        ElseIf (TypeOf e.ToolStrip Is ToolStrip) Then
            Dim topRect As New Rectangle(0, 0, e.ToolStrip.Width + 2, e.ToolStrip.Height / 2)
            Dim bottomRect As New Rectangle(0, e.ToolStrip.Height / 2, e.ToolStrip.Width + 2, e.ToolStrip.Height / 2)
            'Dim bottomGradRect As New Rectangle(0, 23, e.ToolStrip.Width + 2, 7)

            Dim topBrush As New LinearGradientBrush(topRect, clrBGTop1, clrBGBottom1, LinearGradientMode.Vertical)
            Dim bottomBrush As New LinearGradientBrush(bottomRect, clrBGTop2, clrBGBottom2, LinearGradientMode.Vertical)
            'Dim bottomBrush As New SolidBrush(clrBGTop2)
            'Dim bottomGradBrush As New LinearGradientBrush(bottomGradRect, clrBGTop2, clrBGBottom2, LinearGradientMode.Vertical)
            Dim horGradBrush As New LinearGradientBrush(e.AffectedBounds, Color.Transparent, clrBGGreen, LinearGradientMode.Horizontal)

            e.Graphics.FillRectangle(New SolidBrush(clrBGTop2), e.AffectedBounds)
            e.Graphics.FillRectangle(topBrush, topRect)
            e.Graphics.FillRectangle(bottomBrush, bottomRect)
            'e.Graphics.FillRectangle(bottomGradBrush, bottomGradRect)
            e.Graphics.FillRectangle(horGradBrush, e.AffectedBounds)
            e.Graphics.DrawRectangle(New Pen(clrBGBorder, 1), New Rectangle(0, 1, e.ToolStrip.Width - 1, e.ToolStrip.Height - 1))
        End If
    End Sub

    Protected Overrides Sub OnRenderToolStripPanelBackground(ByVal e As System.Windows.Forms.ToolStripPanelRenderEventArgs)
        MyBase.OnRenderToolStripPanelBackground(e)
        Dim topRect As New Rectangle(0, 0, e.ToolStripPanel.Width, 15)
        Dim bottomRect As New Rectangle(0, 15, e.ToolStripPanel.Width, 15)

        Dim topBrush As New LinearGradientBrush(topRect, clrBGTop1, clrBGBottom1, LinearGradientMode.Vertical)
        Dim bottomBrush As New LinearGradientBrush(bottomRect, clrBGTop2, clrBGBottom2, LinearGradientMode.Vertical)

        e.Graphics.FillRectangle(topBrush, topRect)
        e.Graphics.FillRectangle(bottomBrush, bottomRect)
    End Sub

    Protected Overrides Sub OnRenderMenuItemBackground(ByVal e As System.Windows.Forms.ToolStripItemRenderEventArgs)
        'MyBase.OnRenderMenuItemBackground(e)

        If TypeOf e.ToolStrip Is ToolStripDropDownMenu Then
            If e.Item.Selected Then
                Dim rect As New Rectangle(4, 2, e.Item.Width - 6, e.Item.Height - 4)
                Dim b As New Drawing2D.LinearGradientBrush(rect, clrSelectGradTop, clrSelectGradBottom, Drawing2D.LinearGradientMode.Vertical)
                Dim b2 As New Drawing.SolidBrush(clrSelectedBorder)

                e.Graphics.FillRectangle(b, rect)
                DrawRoundedRectangle(e.Graphics, rect.Left - 1, rect.Top - 1, rect.Width, rect.Height + 1, 6, clrSelectedBorder)
                e.Item.ForeColor = Color.Black
            End If
        ElseIf (TypeOf e.ToolStrip Is MenuStrip) Then
            If e.Item.IsOnDropDown = False AndAlso e.Item.Selected Then

                Dim rect As New Rectangle(4, 2, e.Item.Width - 6, e.Item.Height - 4)
                Dim rect2 As New Rectangle(4, e.Item.Height / 2, e.Item.Width - 6, (e.Item.Height / 2) - 1)
                Dim b As New Drawing2D.LinearGradientBrush(rect, clrSelectGradTop, clrSelectGradBottom, Drawing2D.LinearGradientMode.Vertical)
                Dim b2 As New Drawing2D.LinearGradientBrush(rect, clrMBButtonLight, Color.FromArgb(0, 0, 0, 0), Drawing2D.LinearGradientMode.Vertical)

                'e.Graphics.FillRectangle(b, rect)
                DrawRoundedRectangle(e.Graphics, rect.Left - 1, rect.Top - 1, rect.Width, rect.Height + 1, 6, clrMBButtonLightBorder)
                e.Graphics.FillRectangle(b2, rect2)
                e.Item.ForeColor = Color.Black
            ElseIf e.Item.IsOnDropDown AndAlso e.Item.Selected Then

            End If

            If CType(e.Item, ToolStripMenuItem).DropDown.Visible AndAlso e.Item.IsOnDropDown = False Then
                Dim rect As New Rectangle(4, 2, e.Item.Width - 6, e.Item.Height - 4)
                Dim rect2 As New Rectangle(4, 2, e.Item.Width - 6, e.Item.Height - 4)
                Dim b2 As New SolidBrush(clrMBButtonDark)

                'e.Graphics.FillRectangle(b, rect)
                DrawRoundedRectangle(e.Graphics, rect.Left - 1, rect.Top - 1, rect.Width, rect.Height + 1, 6, clrMBButtonDarkBorder)
                e.Graphics.FillRectangle(b2, rect2)
                e.Item.ForeColor = Color.Black
            End If
        End If
    End Sub

    '// Render arrow
    Protected Overrides Sub OnRenderArrow(ByVal e As System.Windows.Forms.ToolStripArrowRenderEventArgs)
        e.ArrowColor = Color.Black
        MyBase.OnRenderArrow(e)
    End Sub

    '// Render separator
    Protected Overrides Sub OnRenderSeparator(ByVal e As System.Windows.Forms.ToolStripSeparatorRenderEventArgs)
        'MyBase.OnRenderSeparator(e)

        Dim DarkLine As New SolidBrush(clrImageMarginLine)
        Dim WhiteLine As New SolidBrush(Color.White)
        Dim rect As New Rectangle(25, 3, e.Item.Width - 25, 1)
        Dim rect2 As New Rectangle(25, 4, e.Item.Width - 25, 1)
        e.Graphics.FillRectangle(DarkLine, rect)
        e.Graphics.FillRectangle(WhiteLine, rect2)
    End Sub

    '// Render Checkmark 
    Protected Overrides Sub OnRenderItemCheck(ByVal e As System.Windows.Forms.ToolStripItemImageRenderEventArgs)
        MyBase.OnRenderItemCheck(e)

        Dim rect As New Rectangle(3, 1, 20, 20)
        Dim rect2 As New Rectangle(4, 2, e.Item.Height - 3, e.Item.Height - 4)
        'Dim b As New Drawing.SolidBrush(clrCheckBorder)
        Dim b2 As New Drawing.SolidBrush(clrCheckBG)

        'e.Graphics.FillRectangle(b, rect)
        e.Graphics.FillRectangle(b2, rect2)
        DrawRoundedRectangle(e.Graphics, rect2.Left - 1, rect2.Top - 1, rect2.Width, rect2.Height + 1, 6, clrCheckBorder)
        e.Graphics.DrawImage(e.Image, New System.Drawing.Point(5, 3))
    End Sub

    '// Render Image Margin and gray itembackground
    Protected Overrides Sub OnRenderImageMargin(ByVal e As System.Windows.Forms.ToolStripRenderEventArgs)
        MyBase.OnRenderImageMargin(e)

        '// Shadow at the right of image margin
        Dim DarkLine As New Drawing.SolidBrush(clrImageMarginLine)
        Dim WhiteLine As New Drawing.SolidBrush(Color.White)
        Dim rect As New Rectangle(e.AffectedBounds.Width, 2, 1, e.AffectedBounds.Height)
        Dim rect2 As New Rectangle(e.AffectedBounds.Width + 1, 2, 1, e.AffectedBounds.Height)

        '// Border
        Dim borderPen As New Pen(clrMenuBorder)
        Dim rect4 As New Rectangle(0, 0, e.ToolStrip.Width - 1, e.ToolStrip.Height - 2)

        e.Graphics.FillRectangle(DarkLine, rect)
        e.Graphics.FillRectangle(WhiteLine, rect2)
        e.Graphics.DrawRectangle(borderPen, rect4)
    End Sub
End Class

