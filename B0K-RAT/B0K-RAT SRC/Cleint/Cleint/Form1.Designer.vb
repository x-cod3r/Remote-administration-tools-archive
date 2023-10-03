<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class Form1
    Inherits System.Windows.Forms.Form

    'Form overrides dispose to clean up the component list.
    <System.Diagnostics.DebuggerNonUserCode()> _
    Protected Overrides Sub Dispose(ByVal disposing As Boolean)
        Try
            If disposing AndAlso components IsNot Nothing Then
                components.Dispose()
            End If
        Finally
            MyBase.Dispose(disposing)
        End Try
    End Sub

    'Required by the Windows Form Designer
    Private components As System.ComponentModel.IContainer

    'NOTE: The following procedure is required by the Windows Form Designer
    'It can be modified using the Windows Form Designer.  
    'Do not modify it using the code editor.
    <System.Diagnostics.DebuggerStepThrough()> _
    Private Sub InitializeComponent()
        Me.components = New System.ComponentModel.Container()
        Dim resources As System.ComponentModel.ComponentResourceManager = New System.ComponentModel.ComponentResourceManager(GetType(Form1))
        Me.l1 = New System.Windows.Forms.ListView()
        Me.ColumnHeader1 = CType(New System.Windows.Forms.ColumnHeader(), System.Windows.Forms.ColumnHeader)
        Me.ColumnHeader2 = CType(New System.Windows.Forms.ColumnHeader(), System.Windows.Forms.ColumnHeader)
        Me.ColumnHeader3 = CType(New System.Windows.Forms.ColumnHeader(), System.Windows.Forms.ColumnHeader)
        Me.ColumnHeader7 = CType(New System.Windows.Forms.ColumnHeader(), System.Windows.Forms.ColumnHeader)
        Me.ColumnHeader8 = CType(New System.Windows.Forms.ColumnHeader(), System.Windows.Forms.ColumnHeader)
        Me.ColumnHeader9 = CType(New System.Windows.Forms.ColumnHeader(), System.Windows.Forms.ColumnHeader)
        Me.ColumnHeader10 = CType(New System.Windows.Forms.ColumnHeader(), System.Windows.Forms.ColumnHeader)
        Me.ContextMenuStrip1 = New System.Windows.Forms.ContextMenuStrip(Me.components)
        Me.FileManagerToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.RemoteDesktopToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.ProcessManagerToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.BuliderToolStripMenuItem = New System.Windows.Forms.ToolStripMenuItem()
        Me.ImageList1 = New System.Windows.Forms.ImageList(Me.components)
        Me.ContextMenuStrip1.SuspendLayout()
        Me.SuspendLayout()
        '
        'l1
        '
        Me.l1.Columns.AddRange(New System.Windows.Forms.ColumnHeader() {Me.ColumnHeader1, Me.ColumnHeader2, Me.ColumnHeader3, Me.ColumnHeader7, Me.ColumnHeader8, Me.ColumnHeader9, Me.ColumnHeader10})
        Me.l1.ContextMenuStrip = Me.ContextMenuStrip1
        Me.l1.Dock = System.Windows.Forms.DockStyle.Fill
        Me.l1.FullRowSelect = True
        Me.l1.Location = New System.Drawing.Point(0, 0)
        Me.l1.Name = "l1"
        Me.l1.Size = New System.Drawing.Size(717, 262)
        Me.l1.TabIndex = 2
        Me.l1.UseCompatibleStateImageBehavior = False
        Me.l1.View = System.Windows.Forms.View.Details
        '
        'ColumnHeader1
        '
        Me.ColumnHeader1.Text = "ID"
        Me.ColumnHeader1.Width = 100
        '
        'ColumnHeader2
        '
        Me.ColumnHeader2.Text = "IP"
        Me.ColumnHeader2.Width = 100
        '
        'ColumnHeader3
        '
        Me.ColumnHeader3.Text = "Compter"
        Me.ColumnHeader3.Width = 100
        '
        'ColumnHeader7
        '
        Me.ColumnHeader7.Text = "User"
        Me.ColumnHeader7.Width = 100
        '
        'ColumnHeader8
        '
        Me.ColumnHeader8.Text = "OS"
        Me.ColumnHeader8.Width = 164
        '
        'ColumnHeader9
        '
        Me.ColumnHeader9.Text = "Country"
        Me.ColumnHeader9.Width = 66
        '
        'ColumnHeader10
        '
        Me.ColumnHeader10.Text = "AV.."
        Me.ColumnHeader10.Width = 82
        '
        'ContextMenuStrip1
        '
        Me.ContextMenuStrip1.Font = New System.Drawing.Font("Segoe UI", 9.0!, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, CType(0, Byte))
        Me.ContextMenuStrip1.Items.AddRange(New System.Windows.Forms.ToolStripItem() {Me.FileManagerToolStripMenuItem, Me.RemoteDesktopToolStripMenuItem, Me.ProcessManagerToolStripMenuItem, Me.BuliderToolStripMenuItem})
        Me.ContextMenuStrip1.Name = "ContextMenuStrip1"
        Me.ContextMenuStrip1.Size = New System.Drawing.Size(170, 92)
        '
        'FileManagerToolStripMenuItem
        '
        Me.FileManagerToolStripMenuItem.Name = "FileManagerToolStripMenuItem"
        Me.FileManagerToolStripMenuItem.Size = New System.Drawing.Size(169, 22)
        Me.FileManagerToolStripMenuItem.Text = "File Manager"
        '
        'RemoteDesktopToolStripMenuItem
        '
        Me.RemoteDesktopToolStripMenuItem.Name = "RemoteDesktopToolStripMenuItem"
        Me.RemoteDesktopToolStripMenuItem.Size = New System.Drawing.Size(169, 22)
        Me.RemoteDesktopToolStripMenuItem.Text = "Remote Desktop"
        '
        'ProcessManagerToolStripMenuItem
        '
        Me.ProcessManagerToolStripMenuItem.Name = "ProcessManagerToolStripMenuItem"
        Me.ProcessManagerToolStripMenuItem.Size = New System.Drawing.Size(169, 22)
        Me.ProcessManagerToolStripMenuItem.Text = "Process Manager"
        '
        'BuliderToolStripMenuItem
        '
        Me.BuliderToolStripMenuItem.Name = "BuliderToolStripMenuItem"
        Me.BuliderToolStripMenuItem.Size = New System.Drawing.Size(169, 22)
        Me.BuliderToolStripMenuItem.Text = "Bulider"
        '
        'ImageList1
        '
        Me.ImageList1.ImageStream = CType(resources.GetObject("ImageList1.ImageStream"), System.Windows.Forms.ImageListStreamer)
        Me.ImageList1.TransparentColor = System.Drawing.Color.Transparent
        Me.ImageList1.Images.SetKeyName(0, "ad.png")
        Me.ImageList1.Images.SetKeyName(1, "ae.png")
        Me.ImageList1.Images.SetKeyName(2, "af.png")
        Me.ImageList1.Images.SetKeyName(3, "africanunion.png")
        Me.ImageList1.Images.SetKeyName(4, "ag.png")
        Me.ImageList1.Images.SetKeyName(5, "ai.png")
        Me.ImageList1.Images.SetKeyName(6, "al.png")
        Me.ImageList1.Images.SetKeyName(7, "am.png")
        Me.ImageList1.Images.SetKeyName(8, "an.png")
        Me.ImageList1.Images.SetKeyName(9, "ao.png")
        Me.ImageList1.Images.SetKeyName(10, "aq.png")
        Me.ImageList1.Images.SetKeyName(11, "ar.png")
        Me.ImageList1.Images.SetKeyName(12, "arableague.png")
        Me.ImageList1.Images.SetKeyName(13, "as.png")
        Me.ImageList1.Images.SetKeyName(14, "asean.png")
        Me.ImageList1.Images.SetKeyName(15, "at.png")
        Me.ImageList1.Images.SetKeyName(16, "au.png")
        Me.ImageList1.Images.SetKeyName(17, "aw.png")
        Me.ImageList1.Images.SetKeyName(18, "az.png")
        Me.ImageList1.Images.SetKeyName(19, "ba.png")
        Me.ImageList1.Images.SetKeyName(20, "bb.png")
        Me.ImageList1.Images.SetKeyName(21, "bd.png")
        Me.ImageList1.Images.SetKeyName(22, "be.png")
        Me.ImageList1.Images.SetKeyName(23, "bf.png")
        Me.ImageList1.Images.SetKeyName(24, "bg.png")
        Me.ImageList1.Images.SetKeyName(25, "bh.png")
        Me.ImageList1.Images.SetKeyName(26, "bi.png")
        Me.ImageList1.Images.SetKeyName(27, "bj.png")
        Me.ImageList1.Images.SetKeyName(28, "bm.png")
        Me.ImageList1.Images.SetKeyName(29, "bn.png")
        Me.ImageList1.Images.SetKeyName(30, "bo.png")
        Me.ImageList1.Images.SetKeyName(31, "br.png")
        Me.ImageList1.Images.SetKeyName(32, "bs.png")
        Me.ImageList1.Images.SetKeyName(33, "bt.png")
        Me.ImageList1.Images.SetKeyName(34, "bw.png")
        Me.ImageList1.Images.SetKeyName(35, "by.png")
        Me.ImageList1.Images.SetKeyName(36, "bz.png")
        Me.ImageList1.Images.SetKeyName(37, "ca.png")
        Me.ImageList1.Images.SetKeyName(38, "caricom.png")
        Me.ImageList1.Images.SetKeyName(39, "cd.png")
        Me.ImageList1.Images.SetKeyName(40, "cf.png")
        Me.ImageList1.Images.SetKeyName(41, "cg.png")
        Me.ImageList1.Images.SetKeyName(42, "ch.png")
        Me.ImageList1.Images.SetKeyName(43, "ci.png")
        Me.ImageList1.Images.SetKeyName(44, "cis.png")
        Me.ImageList1.Images.SetKeyName(45, "ck.png")
        Me.ImageList1.Images.SetKeyName(46, "cl.png")
        Me.ImageList1.Images.SetKeyName(47, "cm.png")
        Me.ImageList1.Images.SetKeyName(48, "cn.png")
        Me.ImageList1.Images.SetKeyName(49, "co.png")
        Me.ImageList1.Images.SetKeyName(50, "commonwealth.png")
        Me.ImageList1.Images.SetKeyName(51, "cr.png")
        Me.ImageList1.Images.SetKeyName(52, "cu.png")
        Me.ImageList1.Images.SetKeyName(53, "cv.png")
        Me.ImageList1.Images.SetKeyName(54, "cy.png")
        Me.ImageList1.Images.SetKeyName(55, "cz.png")
        Me.ImageList1.Images.SetKeyName(56, "de.png")
        Me.ImageList1.Images.SetKeyName(57, "dj.png")
        Me.ImageList1.Images.SetKeyName(58, "dk.png")
        Me.ImageList1.Images.SetKeyName(59, "dm.png")
        Me.ImageList1.Images.SetKeyName(60, "do.png")
        Me.ImageList1.Images.SetKeyName(61, "dz.png")
        Me.ImageList1.Images.SetKeyName(62, "ec.png")
        Me.ImageList1.Images.SetKeyName(63, "ee.png")
        Me.ImageList1.Images.SetKeyName(64, "eg.png")
        Me.ImageList1.Images.SetKeyName(65, "eh.png")
        Me.ImageList1.Images.SetKeyName(66, "england.png")
        Me.ImageList1.Images.SetKeyName(67, "er.png")
        Me.ImageList1.Images.SetKeyName(68, "es.png")
        Me.ImageList1.Images.SetKeyName(69, "et.png")
        Me.ImageList1.Images.SetKeyName(70, "europeanunion.png")
        Me.ImageList1.Images.SetKeyName(71, "fi.png")
        Me.ImageList1.Images.SetKeyName(72, "fj.png")
        Me.ImageList1.Images.SetKeyName(73, "fm.png")
        Me.ImageList1.Images.SetKeyName(74, "fo.png")
        Me.ImageList1.Images.SetKeyName(75, "fr.png")
        Me.ImageList1.Images.SetKeyName(76, "ga.png")
        Me.ImageList1.Images.SetKeyName(77, "gb.png")
        Me.ImageList1.Images.SetKeyName(78, "gd.png")
        Me.ImageList1.Images.SetKeyName(79, "ge.png")
        Me.ImageList1.Images.SetKeyName(80, "gg.png")
        Me.ImageList1.Images.SetKeyName(81, "gh.png")
        Me.ImageList1.Images.SetKeyName(82, "gi.png")
        Me.ImageList1.Images.SetKeyName(83, "gl.png")
        Me.ImageList1.Images.SetKeyName(84, "gm.png")
        Me.ImageList1.Images.SetKeyName(85, "gn.png")
        Me.ImageList1.Images.SetKeyName(86, "gp.png")
        Me.ImageList1.Images.SetKeyName(87, "gq.png")
        Me.ImageList1.Images.SetKeyName(88, "gr.png")
        Me.ImageList1.Images.SetKeyName(89, "gt.png")
        Me.ImageList1.Images.SetKeyName(90, "gu.png")
        Me.ImageList1.Images.SetKeyName(91, "gw.png")
        Me.ImageList1.Images.SetKeyName(92, "gy.png")
        Me.ImageList1.Images.SetKeyName(93, "hk.png")
        Me.ImageList1.Images.SetKeyName(94, "hn.png")
        Me.ImageList1.Images.SetKeyName(95, "hr.png")
        Me.ImageList1.Images.SetKeyName(96, "ht.png")
        Me.ImageList1.Images.SetKeyName(97, "hu.png")
        Me.ImageList1.Images.SetKeyName(98, "id.png")
        Me.ImageList1.Images.SetKeyName(99, "ie.png")
        Me.ImageList1.Images.SetKeyName(100, "il.png")
        Me.ImageList1.Images.SetKeyName(101, "im.png")
        Me.ImageList1.Images.SetKeyName(102, "in.png")
        Me.ImageList1.Images.SetKeyName(103, "iq.png")
        Me.ImageList1.Images.SetKeyName(104, "ir.png")
        Me.ImageList1.Images.SetKeyName(105, "is.png")
        Me.ImageList1.Images.SetKeyName(106, "islamicconference.png")
        Me.ImageList1.Images.SetKeyName(107, "it.png")
        Me.ImageList1.Images.SetKeyName(108, "je.png")
        Me.ImageList1.Images.SetKeyName(109, "jm.png")
        Me.ImageList1.Images.SetKeyName(110, "jo.png")
        Me.ImageList1.Images.SetKeyName(111, "jp.png")
        Me.ImageList1.Images.SetKeyName(112, "ke.png")
        Me.ImageList1.Images.SetKeyName(113, "kg.png")
        Me.ImageList1.Images.SetKeyName(114, "kh.png")
        Me.ImageList1.Images.SetKeyName(115, "ki.png")
        Me.ImageList1.Images.SetKeyName(116, "km.png")
        Me.ImageList1.Images.SetKeyName(117, "kn.png")
        Me.ImageList1.Images.SetKeyName(118, "kosovo.png")
        Me.ImageList1.Images.SetKeyName(119, "kp.png")
        Me.ImageList1.Images.SetKeyName(120, "kr.png")
        Me.ImageList1.Images.SetKeyName(121, "kw.png")
        Me.ImageList1.Images.SetKeyName(122, "ky.png")
        Me.ImageList1.Images.SetKeyName(123, "kz.png")
        Me.ImageList1.Images.SetKeyName(124, "la.png")
        Me.ImageList1.Images.SetKeyName(125, "lb.png")
        Me.ImageList1.Images.SetKeyName(126, "lc.png")
        Me.ImageList1.Images.SetKeyName(127, "li.png")
        Me.ImageList1.Images.SetKeyName(128, "lk.png")
        Me.ImageList1.Images.SetKeyName(129, "lr.png")
        Me.ImageList1.Images.SetKeyName(130, "ls.png")
        Me.ImageList1.Images.SetKeyName(131, "lt.png")
        Me.ImageList1.Images.SetKeyName(132, "lu.png")
        Me.ImageList1.Images.SetKeyName(133, "lv.png")
        Me.ImageList1.Images.SetKeyName(134, "ly.png")
        Me.ImageList1.Images.SetKeyName(135, "ma.png")
        Me.ImageList1.Images.SetKeyName(136, "mc.png")
        Me.ImageList1.Images.SetKeyName(137, "md.png")
        Me.ImageList1.Images.SetKeyName(138, "me.png")
        Me.ImageList1.Images.SetKeyName(139, "mg.png")
        Me.ImageList1.Images.SetKeyName(140, "mh.png")
        Me.ImageList1.Images.SetKeyName(141, "mk.png")
        Me.ImageList1.Images.SetKeyName(142, "ml.png")
        Me.ImageList1.Images.SetKeyName(143, "mm.png")
        Me.ImageList1.Images.SetKeyName(144, "mn.png")
        Me.ImageList1.Images.SetKeyName(145, "mo.png")
        Me.ImageList1.Images.SetKeyName(146, "mq.png")
        Me.ImageList1.Images.SetKeyName(147, "mr.png")
        Me.ImageList1.Images.SetKeyName(148, "ms.png")
        Me.ImageList1.Images.SetKeyName(149, "mt.png")
        Me.ImageList1.Images.SetKeyName(150, "mu.png")
        Me.ImageList1.Images.SetKeyName(151, "mv.png")
        Me.ImageList1.Images.SetKeyName(152, "mw.png")
        Me.ImageList1.Images.SetKeyName(153, "mx.png")
        Me.ImageList1.Images.SetKeyName(154, "my.png")
        Me.ImageList1.Images.SetKeyName(155, "mz.png")
        Me.ImageList1.Images.SetKeyName(156, "na.png")
        Me.ImageList1.Images.SetKeyName(157, "nato.png")
        Me.ImageList1.Images.SetKeyName(158, "nc.png")
        Me.ImageList1.Images.SetKeyName(159, "ne.png")
        Me.ImageList1.Images.SetKeyName(160, "ng.png")
        Me.ImageList1.Images.SetKeyName(161, "ni.png")
        Me.ImageList1.Images.SetKeyName(162, "nl.png")
        Me.ImageList1.Images.SetKeyName(163, "no.png")
        Me.ImageList1.Images.SetKeyName(164, "northerncyprus.png")
        Me.ImageList1.Images.SetKeyName(165, "northernireland.png")
        Me.ImageList1.Images.SetKeyName(166, "np.png")
        Me.ImageList1.Images.SetKeyName(167, "nr.png")
        Me.ImageList1.Images.SetKeyName(168, "nz.png")
        Me.ImageList1.Images.SetKeyName(169, "olimpicmovement.png")
        Me.ImageList1.Images.SetKeyName(170, "om.png")
        Me.ImageList1.Images.SetKeyName(171, "opec.png")
        Me.ImageList1.Images.SetKeyName(172, "pa.png")
        Me.ImageList1.Images.SetKeyName(173, "pe.png")
        Me.ImageList1.Images.SetKeyName(174, "pf.png")
        Me.ImageList1.Images.SetKeyName(175, "pg.png")
        Me.ImageList1.Images.SetKeyName(176, "ph.png")
        Me.ImageList1.Images.SetKeyName(177, "pk.png")
        Me.ImageList1.Images.SetKeyName(178, "pl.png")
        Me.ImageList1.Images.SetKeyName(179, "pr.png")
        Me.ImageList1.Images.SetKeyName(180, "ps.png")
        Me.ImageList1.Images.SetKeyName(181, "pt.png")
        Me.ImageList1.Images.SetKeyName(182, "pw.png")
        Me.ImageList1.Images.SetKeyName(183, "py.png")
        Me.ImageList1.Images.SetKeyName(184, "qa.png")
        Me.ImageList1.Images.SetKeyName(185, "re.png")
        Me.ImageList1.Images.SetKeyName(186, "redcross.png")
        Me.ImageList1.Images.SetKeyName(187, "ro.png")
        Me.ImageList1.Images.SetKeyName(188, "rs.png")
        Me.ImageList1.Images.SetKeyName(189, "ru.png")
        Me.ImageList1.Images.SetKeyName(190, "rw.png")
        Me.ImageList1.Images.SetKeyName(191, "sa.png")
        Me.ImageList1.Images.SetKeyName(192, "sb.png")
        Me.ImageList1.Images.SetKeyName(193, "sc.png")
        Me.ImageList1.Images.SetKeyName(194, "scotland.png")
        Me.ImageList1.Images.SetKeyName(195, "sd.png")
        Me.ImageList1.Images.SetKeyName(196, "se.png")
        Me.ImageList1.Images.SetKeyName(197, "sg.png")
        Me.ImageList1.Images.SetKeyName(198, "si.png")
        Me.ImageList1.Images.SetKeyName(199, "sk.png")
        Me.ImageList1.Images.SetKeyName(200, "sl.png")
        Me.ImageList1.Images.SetKeyName(201, "sm.png")
        Me.ImageList1.Images.SetKeyName(202, "sn.png")
        Me.ImageList1.Images.SetKeyName(203, "so.png")
        Me.ImageList1.Images.SetKeyName(204, "somaliland.png")
        Me.ImageList1.Images.SetKeyName(205, "sr.png")
        Me.ImageList1.Images.SetKeyName(206, "st.png")
        Me.ImageList1.Images.SetKeyName(207, "sv.png")
        Me.ImageList1.Images.SetKeyName(208, "sy.png")
        Me.ImageList1.Images.SetKeyName(209, "sz.png")
        Me.ImageList1.Images.SetKeyName(210, "tc.png")
        Me.ImageList1.Images.SetKeyName(211, "td.png")
        Me.ImageList1.Images.SetKeyName(212, "tg.png")
        Me.ImageList1.Images.SetKeyName(213, "th.png")
        Me.ImageList1.Images.SetKeyName(214, "tj.png")
        Me.ImageList1.Images.SetKeyName(215, "tl.png")
        Me.ImageList1.Images.SetKeyName(216, "tm.png")
        Me.ImageList1.Images.SetKeyName(217, "tn.png")
        Me.ImageList1.Images.SetKeyName(218, "to.png")
        Me.ImageList1.Images.SetKeyName(219, "tr.png")
        Me.ImageList1.Images.SetKeyName(220, "tt.png")
        Me.ImageList1.Images.SetKeyName(221, "tv.png")
        Me.ImageList1.Images.SetKeyName(222, "tw.png")
        Me.ImageList1.Images.SetKeyName(223, "tz.png")
        Me.ImageList1.Images.SetKeyName(224, "ua.png")
        Me.ImageList1.Images.SetKeyName(225, "ug.png")
        Me.ImageList1.Images.SetKeyName(226, "unitednations.png")
        Me.ImageList1.Images.SetKeyName(227, "unknown.png")
        Me.ImageList1.Images.SetKeyName(228, "us.png")
        Me.ImageList1.Images.SetKeyName(229, "uy.png")
        Me.ImageList1.Images.SetKeyName(230, "uz.png")
        Me.ImageList1.Images.SetKeyName(231, "va.png")
        Me.ImageList1.Images.SetKeyName(232, "vc.png")
        Me.ImageList1.Images.SetKeyName(233, "ve.png")
        Me.ImageList1.Images.SetKeyName(234, "vg.png")
        Me.ImageList1.Images.SetKeyName(235, "vi.png")
        Me.ImageList1.Images.SetKeyName(236, "vn.png")
        Me.ImageList1.Images.SetKeyName(237, "vu.png")
        Me.ImageList1.Images.SetKeyName(238, "wales.png")
        Me.ImageList1.Images.SetKeyName(239, "ws.png")
        Me.ImageList1.Images.SetKeyName(240, "ye.png")
        Me.ImageList1.Images.SetKeyName(241, "za.png")
        Me.ImageList1.Images.SetKeyName(242, "zm.png")
        Me.ImageList1.Images.SetKeyName(243, "zw.png")
        '
        'Form1
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(717, 262)
        Me.Controls.Add(Me.l1)
        Me.Icon = CType(resources.GetObject("$this.Icon"), System.Drawing.Icon)
        Me.Name = "Form1"
        Me.StartPosition = System.Windows.Forms.FormStartPosition.CenterScreen
        Me.Text = "B0-K RAT v0.1.3 # Majdi SaaD"
        Me.ContextMenuStrip1.ResumeLayout(False)
        Me.ResumeLayout(False)

    End Sub
    Friend WithEvents ColumnHeader1 As System.Windows.Forms.ColumnHeader
    Friend WithEvents ColumnHeader2 As System.Windows.Forms.ColumnHeader
    Friend WithEvents ColumnHeader3 As System.Windows.Forms.ColumnHeader
    Friend WithEvents ColumnHeader7 As System.Windows.Forms.ColumnHeader
    Friend WithEvents ColumnHeader8 As System.Windows.Forms.ColumnHeader
    Friend WithEvents ColumnHeader9 As System.Windows.Forms.ColumnHeader
    Friend WithEvents ColumnHeader10 As System.Windows.Forms.ColumnHeader
    Friend WithEvents l1 As System.Windows.Forms.ListView
    Friend WithEvents ContextMenuStrip1 As System.Windows.Forms.ContextMenuStrip
    Friend WithEvents FileManagerToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents RemoteDesktopToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents ProcessManagerToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents BuliderToolStripMenuItem As System.Windows.Forms.ToolStripMenuItem
    Friend WithEvents ImageList1 As System.Windows.Forms.ImageList

End Class
