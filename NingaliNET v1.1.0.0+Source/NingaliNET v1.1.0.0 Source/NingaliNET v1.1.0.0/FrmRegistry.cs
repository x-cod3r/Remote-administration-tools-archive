using System;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using System.Diagnostics;
using System.Drawing;
using System.Runtime.CompilerServices;
using System.Windows.Forms;
using Microsoft.VisualBasic;
using Microsoft.VisualBasic.CompilerServices;
using NINGALINET.My.Resources;

namespace NINGALINET
{
	// Token: 0x02000021 RID: 33
	[DesignerGenerated]
	public partial class FrmRegistry : Form
	{
		// Token: 0x060006B9 RID: 1721 RVA: 0x00004269 File Offset: 0x00002469
		[DebuggerNonUserCode]
		static FrmRegistry()
		{
			// Note: this type is marked as 'beforefieldinit'.
			Class2.zP7eVJHzSiX6G();
			FrmRegistry.__ENCList = new List<WeakReference>();
		}

		// Token: 0x060006BA RID: 1722 RVA: 0x0000427A File Offset: 0x0000247A
		[DebuggerNonUserCode]
		public FrmRegistry()
		{
			Class2.zP7eVJHzSiX6G();
			base..ctor();
			base.Load += new EventHandler(this.Reg_Load);
			base.FormClosing += new FormClosingEventHandler(this.Reg_FormClosing);
			FrmRegistry.__ENCAddToList(this);
			this.InitializeComponent();
		}

		// Token: 0x060006BB RID: 1723 RVA: 0x00037998 File Offset: 0x00035B98
		[DebuggerNonUserCode]
		private static void __ENCAddToList(object value)
		{
			List<WeakReference> _ENCList = FrmRegistry.__ENCList;
			checked
			{
				lock (_ENCList)
				{
					if (FrmRegistry.__ENCList.Count == FrmRegistry.__ENCList.Capacity)
					{
						int num = 0;
						int arg_37_0 = 0;
						int num2 = FrmRegistry.__ENCList.Count - 1;
						int num3 = arg_37_0;
						while (true)
						{
							int arg_7D_0 = num3;
							int num4 = num2;
							if (arg_7D_0 > num4)
							{
								break;
							}
							WeakReference weakReference = FrmRegistry.__ENCList[num3];
							if (weakReference.IsAlive)
							{
								if (num3 != num)
								{
									FrmRegistry.__ENCList[num] = FrmRegistry.__ENCList[num3];
								}
								num++;
							}
							num3++;
						}
						FrmRegistry.__ENCList.RemoveRange(num, FrmRegistry.__ENCList.Count - num);
						FrmRegistry.__ENCList.Capacity = FrmRegistry.__ENCList.Count;
					}
					FrmRegistry.__ENCList.Add(new WeakReference(RuntimeHelpers.GetObjectValue(value)));
				}
			}
		}

		// Token: 0x1700027E RID: 638
		// (get) Token: 0x060006BE RID: 1726 RVA: 0x000383FC File Offset: 0x000365FC
		// (set) Token: 0x060006BF RID: 1727 RVA: 0x000042B9 File Offset: 0x000024B9
		internal virtual ContextMenuStrip crg
		{
			[DebuggerNonUserCode]
			get
			{
				return this._crg;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._crg = value;
			}
		}

		// Token: 0x1700027F RID: 639
		// (get) Token: 0x060006C0 RID: 1728 RVA: 0x00038414 File Offset: 0x00036614
		// (set) Token: 0x060006C1 RID: 1729 RVA: 0x0003842C File Offset: 0x0003662C
		internal virtual ToolStripMenuItem RefreshToolStripMenuItem1
		{
			[DebuggerNonUserCode]
			get
			{
				return this._RefreshToolStripMenuItem1;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.RefreshToolStripMenuItem1_Click);
				if (this._RefreshToolStripMenuItem1 != null)
				{
					this._RefreshToolStripMenuItem1.Click -= value2;
				}
				this._RefreshToolStripMenuItem1 = value;
				if (this._RefreshToolStripMenuItem1 != null)
				{
					this._RefreshToolStripMenuItem1.Click += value2;
				}
			}
		}

		// Token: 0x17000280 RID: 640
		// (get) Token: 0x060006C2 RID: 1730 RVA: 0x00038484 File Offset: 0x00036684
		// (set) Token: 0x060006C3 RID: 1731 RVA: 0x0003849C File Offset: 0x0003669C
		internal virtual ToolStripMenuItem EditToolStripMenuItem
		{
			[DebuggerNonUserCode]
			get
			{
				return this._EditToolStripMenuItem;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.EditToolStripMenuItem_Click);
				if (this._EditToolStripMenuItem != null)
				{
					this._EditToolStripMenuItem.Click -= value2;
				}
				this._EditToolStripMenuItem = value;
				if (this._EditToolStripMenuItem != null)
				{
					this._EditToolStripMenuItem.Click += value2;
				}
			}
		}

		// Token: 0x17000281 RID: 641
		// (get) Token: 0x060006C4 RID: 1732 RVA: 0x000384F4 File Offset: 0x000366F4
		// (set) Token: 0x060006C5 RID: 1733 RVA: 0x0003850C File Offset: 0x0003670C
		internal virtual ToolStripMenuItem NewValueToolStripMenuItem
		{
			[DebuggerNonUserCode]
			get
			{
				return this._NewValueToolStripMenuItem;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.NewValueToolStripMenuItem_Click);
				if (this._NewValueToolStripMenuItem != null)
				{
					this._NewValueToolStripMenuItem.Click -= value2;
				}
				this._NewValueToolStripMenuItem = value;
				if (this._NewValueToolStripMenuItem != null)
				{
					this._NewValueToolStripMenuItem.Click += value2;
				}
			}
		}

		// Token: 0x17000282 RID: 642
		// (get) Token: 0x060006C6 RID: 1734 RVA: 0x00038564 File Offset: 0x00036764
		// (set) Token: 0x060006C7 RID: 1735 RVA: 0x0003857C File Offset: 0x0003677C
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

		// Token: 0x17000283 RID: 643
		// (get) Token: 0x060006C8 RID: 1736 RVA: 0x000385D4 File Offset: 0x000367D4
		// (set) Token: 0x060006C9 RID: 1737 RVA: 0x000385EC File Offset: 0x000367EC
		internal virtual TreeView RGk
		{
			[DebuggerNonUserCode]
			get
			{
				return this._RGk;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.RGk_DoubleClick);
				if (this._RGk != null)
				{
					this._RGk.DoubleClick -= value2;
				}
				this._RGk = value;
				if (this._RGk != null)
				{
					this._RGk.DoubleClick += value2;
				}
			}
		}

		// Token: 0x17000284 RID: 644
		// (get) Token: 0x060006CA RID: 1738 RVA: 0x00038644 File Offset: 0x00036844
		// (set) Token: 0x060006CB RID: 1739 RVA: 0x000042C2 File Offset: 0x000024C2
		internal virtual ContextMenuStrip crgk
		{
			[DebuggerNonUserCode]
			get
			{
				return this._crgk;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._crgk = value;
			}
		}

		// Token: 0x17000285 RID: 645
		// (get) Token: 0x060006CC RID: 1740 RVA: 0x0003865C File Offset: 0x0003685C
		// (set) Token: 0x060006CD RID: 1741 RVA: 0x00038674 File Offset: 0x00036874
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

		// Token: 0x17000286 RID: 646
		// (get) Token: 0x060006CE RID: 1742 RVA: 0x000386CC File Offset: 0x000368CC
		// (set) Token: 0x060006CF RID: 1743 RVA: 0x000386E4 File Offset: 0x000368E4
		internal virtual ToolStripMenuItem CreateKeyToolStripMenuItem
		{
			[DebuggerNonUserCode]
			get
			{
				return this._CreateKeyToolStripMenuItem;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.CreateKeyToolStripMenuItem_Click);
				if (this._CreateKeyToolStripMenuItem != null)
				{
					this._CreateKeyToolStripMenuItem.Click -= value2;
				}
				this._CreateKeyToolStripMenuItem = value;
				if (this._CreateKeyToolStripMenuItem != null)
				{
					this._CreateKeyToolStripMenuItem.Click += value2;
				}
			}
		}

		// Token: 0x17000287 RID: 647
		// (get) Token: 0x060006D0 RID: 1744 RVA: 0x0003873C File Offset: 0x0003693C
		// (set) Token: 0x060006D1 RID: 1745 RVA: 0x00038754 File Offset: 0x00036954
		internal virtual ToolStripMenuItem DeleteKeyToolStripMenuItem
		{
			[DebuggerNonUserCode]
			get
			{
				return this._DeleteKeyToolStripMenuItem;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.DeleteKeyToolStripMenuItem_Click);
				if (this._DeleteKeyToolStripMenuItem != null)
				{
					this._DeleteKeyToolStripMenuItem.Click -= value2;
				}
				this._DeleteKeyToolStripMenuItem = value;
				if (this._DeleteKeyToolStripMenuItem != null)
				{
					this._DeleteKeyToolStripMenuItem.Click += value2;
				}
			}
		}

		// Token: 0x17000288 RID: 648
		// (get) Token: 0x060006D2 RID: 1746 RVA: 0x000387AC File Offset: 0x000369AC
		// (set) Token: 0x060006D3 RID: 1747 RVA: 0x000042CB File Offset: 0x000024CB
		internal virtual ImageList l1
		{
			[DebuggerNonUserCode]
			get
			{
				return this._l1;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._l1 = value;
			}
		}

		// Token: 0x17000289 RID: 649
		// (get) Token: 0x060006D4 RID: 1748 RVA: 0x000387C4 File Offset: 0x000369C4
		// (set) Token: 0x060006D5 RID: 1749 RVA: 0x000387DC File Offset: 0x000369DC
		internal virtual Timer Timer1
		{
			[DebuggerNonUserCode]
			get
			{
				return this._Timer1;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.Timer1_Tick);
				if (this._Timer1 != null)
				{
					this._Timer1.Tick -= value2;
				}
				this._Timer1 = value;
				if (this._Timer1 != null)
				{
					this._Timer1.Tick += value2;
				}
			}
		}

		// Token: 0x1700028A RID: 650
		// (get) Token: 0x060006D6 RID: 1750 RVA: 0x00038834 File Offset: 0x00036A34
		// (set) Token: 0x060006D7 RID: 1751 RVA: 0x0003884C File Offset: 0x00036A4C
		internal virtual LV RGLIST
		{
			[DebuggerNonUserCode]
			get
			{
				return this._RGLIST;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				MouseEventHandler value2 = new MouseEventHandler(this.RGLIST_MouseDoubleClick);
				if (this._RGLIST != null)
				{
					this._RGLIST.MouseDoubleClick -= value2;
				}
				this._RGLIST = value;
				if (this._RGLIST != null)
				{
					this._RGLIST.MouseDoubleClick += value2;
				}
			}
		}

		// Token: 0x1700028B RID: 651
		// (get) Token: 0x060006D8 RID: 1752 RVA: 0x000388A4 File Offset: 0x00036AA4
		// (set) Token: 0x060006D9 RID: 1753 RVA: 0x000042D4 File Offset: 0x000024D4
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

		// Token: 0x1700028C RID: 652
		// (get) Token: 0x060006DA RID: 1754 RVA: 0x000388BC File Offset: 0x00036ABC
		// (set) Token: 0x060006DB RID: 1755 RVA: 0x000042DD File Offset: 0x000024DD
		internal virtual ColumnHeader ColumnHeader5
		{
			[DebuggerNonUserCode]
			get
			{
				return this._ColumnHeader5;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._ColumnHeader5 = value;
			}
		}

		// Token: 0x1700028D RID: 653
		// (get) Token: 0x060006DC RID: 1756 RVA: 0x000388D4 File Offset: 0x00036AD4
		// (set) Token: 0x060006DD RID: 1757 RVA: 0x000042E6 File Offset: 0x000024E6
		internal virtual ColumnHeader ColumnHeader6
		{
			[DebuggerNonUserCode]
			get
			{
				return this._ColumnHeader6;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._ColumnHeader6 = value;
			}
		}

		// Token: 0x1700028E RID: 654
		// (get) Token: 0x060006DE RID: 1758 RVA: 0x000388EC File Offset: 0x00036AEC
		// (set) Token: 0x060006DF RID: 1759 RVA: 0x000042EF File Offset: 0x000024EF
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

		// Token: 0x1700028F RID: 655
		// (get) Token: 0x060006E0 RID: 1760 RVA: 0x00038904 File Offset: 0x00036B04
		// (set) Token: 0x060006E1 RID: 1761 RVA: 0x000042F8 File Offset: 0x000024F8
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

		// Token: 0x17000290 RID: 656
		// (get) Token: 0x060006E2 RID: 1762 RVA: 0x0003891C File Offset: 0x00036B1C
		// (set) Token: 0x060006E3 RID: 1763 RVA: 0x00004301 File Offset: 0x00002501
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

		// Token: 0x060006E4 RID: 1764 RVA: 0x00038934 File Offset: 0x00036B34
		private void CreateKeyToolStripMenuItem_Click(object sender, EventArgs e)
		{
			if (this.RGk.SelectedNode != null && this.RGk.SelectedNode.FullPath.Contains("\\"))
			{
				string text = Interaction.InputBox("Key Name?", "Create New Key", "Name", -1, -1);
				if (text.Length != 0)
				{
					this.sk.Send(string.Concat(new string[]
					{
						"RG",
						ima.Y,
						"#",
						ima.Y,
						this.RGk.SelectedNode.FullPath,
						"\\",
						ima.Y,
						text
					}));
				}
			}
		}

		// Token: 0x060006E5 RID: 1765 RVA: 0x000389F8 File Offset: 0x00036BF8
		private void RefreshToolStripMenuItem_Click(object sender, EventArgs e)
		{
			if (this.RGk.SelectedNode != null)
			{
				this.sk.Send(string.Concat(new string[]
				{
					"RG",
					ima.Y,
					"~",
					ima.Y,
					this.RGk.SelectedNode.FullPath,
					"\\"
				}));
				this.RGLIST.Enabled = false;
				this.RGk.Enabled = false;
			}
		}

		// Token: 0x060006E6 RID: 1766 RVA: 0x00038A84 File Offset: 0x00036C84
		private void DeleteKeyToolStripMenuItem_Click(object sender, EventArgs e)
		{
			checked
			{
				if (this.RGk.SelectedNode != null)
				{
					string fullPath = this.RGk.SelectedNode.FullPath;
					if (fullPath.Contains("\\"))
					{
						string text = Strings.Split(fullPath, "\\", -1, CompareMethod.Binary)[Strings.Split(fullPath, "\\", -1, CompareMethod.Binary).Length - 1];
						string text2 = "";
						int num = Strings.Split(fullPath, "\\", -1, CompareMethod.Binary).Length - 2;
						for (int i = 0; i <= num; i++)
						{
							text2 = text2 + Strings.Split(fullPath, "\\", -1, CompareMethod.Binary)[i] + "\\";
						}
						this.sk.Send(string.Concat(new string[]
						{
							"RG",
							ima.Y,
							"$",
							ima.Y,
							text2,
							ima.Y,
							text
						}));
						this.RGk.SelectedNode.Remove();
					}
				}
			}
		}

		// Token: 0x060006E7 RID: 1767 RVA: 0x00038B94 File Offset: 0x00036D94
		private void RefreshToolStripMenuItem1_Click(object sender, EventArgs e)
		{
			if (this.RGk.SelectedNode != null)
			{
				this.sk.Send(string.Concat(new string[]
				{
					"RG",
					ima.Y,
					"~",
					ima.Y,
					this.RGk.SelectedNode.FullPath,
					"\\"
				}));
			}
		}

		// Token: 0x060006E8 RID: 1768 RVA: 0x0000430A File Offset: 0x0000250A
		private void EditToolStripMenuItem_Click(object sender, EventArgs e)
		{
			this.RGLIST_MouseDoubleClick(RuntimeHelpers.GetObjectValue(RuntimeHelpers.GetObjectValue(RuntimeHelpers.GetObjectValue(sender))), (MouseEventArgs)e);
		}

		// Token: 0x060006E9 RID: 1769 RVA: 0x00038C08 File Offset: 0x00036E08
		private void NewValueToolStripMenuItem_Click(object sender, EventArgs e)
		{
			FrmRegEdit frmRegEdit = new FrmRegEdit();
			frmRegEdit.Path = this.RGk.SelectedNode.FullPath + "\\";
			frmRegEdit.sk = this.sk;
			frmRegEdit.TextBox1.Text = "Name";
			frmRegEdit.ComboBox1.SelectedIndex = frmRegEdit.ComboBox1.Items.IndexOf("String");
			frmRegEdit.TextBox3.Text = "Value";
			frmRegEdit.Text = frmRegEdit.Path;
			frmRegEdit.ShowDialog(this);
		}

		// Token: 0x060006EA RID: 1770 RVA: 0x00038C9C File Offset: 0x00036E9C
		private void DeleteToolStripMenuItem_Click(object sender, EventArgs e)
		{
			IEnumerator enumerator = null;
			try
			{
				enumerator = this.RGLIST.SelectedItems.GetEnumerator();
				while (enumerator.MoveNext())
				{
					ListViewItem listViewItem = (ListViewItem)enumerator.Current;
					this.sk.Send(string.Concat(new string[]
					{
						"RG",
						ima.Y,
						"@",
						ima.Y,
						this.RGk.SelectedNode.FullPath,
						"\\",
						ima.Y,
						listViewItem.Text
					}));
				}
			}
			finally
			{
				if (enumerator is IDisposable)
				{
					(enumerator as IDisposable).Dispose();
				}
			}
		}

		// Token: 0x060006EB RID: 1771 RVA: 0x00038B94 File Offset: 0x00036D94
		private void RGk_DoubleClick(object sender, EventArgs e)
		{
			if (this.RGk.SelectedNode != null)
			{
				this.sk.Send(string.Concat(new string[]
				{
					"RG",
					ima.Y,
					"~",
					ima.Y,
					this.RGk.SelectedNode.FullPath,
					"\\"
				}));
			}
		}

		// Token: 0x060006EC RID: 1772 RVA: 0x00038D60 File Offset: 0x00036F60
		private void Timer1_Tick(object sender, EventArgs e)
		{
			if (this.osk == null | this.sk == null)
			{
				this.Close();
			}
			if (!this.osk.CN | !this.sk.CN)
			{
				this.Close();
			}
		}

		// Token: 0x060006ED RID: 1773 RVA: 0x00004328 File Offset: 0x00002528
		private void Reg_FormClosing(object sender, FormClosingEventArgs e)
		{
			this.sk.CN = false;
		}

		// Token: 0x060006EE RID: 1774 RVA: 0x00004336 File Offset: 0x00002536
		private void Reg_Load(object sender, EventArgs e)
		{
			this.Text = "Remote Registry - " + Conversions.ToString(RuntimeHelpers.GetObjectValue(ima.vno(this.osk.L)));
			this.Timer1.Start();
		}

		// Token: 0x060006EF RID: 1775 RVA: 0x00038DB0 File Offset: 0x00036FB0
		private void RGLIST_MouseDoubleClick(object sender, MouseEventArgs e)
		{
			if (this.RGLIST.SelectedItems.Count != 0)
			{
				ListViewItem listViewItem = this.RGLIST.SelectedItems[0];
				FrmRegEdit frmRegEdit = new FrmRegEdit();
				frmRegEdit.Path = this.RGk.SelectedNode.FullPath + "\\";
				frmRegEdit.sk = this.sk;
				frmRegEdit.TextBox1.Text = listViewItem.Text;
				frmRegEdit.ComboBox1.SelectedIndex = frmRegEdit.ComboBox1.Items.IndexOf(listViewItem.SubItems[1].Text);
				try
				{
					frmRegEdit.TextBox3.Text = listViewItem.SubItems[2].Text;
				}
				catch (Exception expr_BA)
				{
					ProjectData.SetProjectError(expr_BA);
					Exception projectError = expr_BA;
					ProjectData.SetProjectError(projectError);
					ProjectData.ClearProjectError();
					ProjectData.ClearProjectError();
				}
				frmRegEdit.Text = frmRegEdit.Path;
				frmRegEdit.TextBox1.ReadOnly = true;
				frmRegEdit.ShowDialog(this);
			}
		}

		// Token: 0x0400031B RID: 795
		private static List<WeakReference> __ENCList;

		// Token: 0x0400031D RID: 797
		[AccessedThroughProperty("crg")]
		private ContextMenuStrip _crg;

		// Token: 0x0400031E RID: 798
		[AccessedThroughProperty("RefreshToolStripMenuItem1")]
		private ToolStripMenuItem _RefreshToolStripMenuItem1;

		// Token: 0x0400031F RID: 799
		[AccessedThroughProperty("EditToolStripMenuItem")]
		private ToolStripMenuItem _EditToolStripMenuItem;

		// Token: 0x04000320 RID: 800
		[AccessedThroughProperty("NewValueToolStripMenuItem")]
		private ToolStripMenuItem _NewValueToolStripMenuItem;

		// Token: 0x04000321 RID: 801
		[AccessedThroughProperty("DeleteToolStripMenuItem")]
		private ToolStripMenuItem _DeleteToolStripMenuItem;

		// Token: 0x04000322 RID: 802
		[AccessedThroughProperty("RGk")]
		private TreeView _RGk;

		// Token: 0x04000323 RID: 803
		[AccessedThroughProperty("crgk")]
		private ContextMenuStrip _crgk;

		// Token: 0x04000324 RID: 804
		[AccessedThroughProperty("RefreshToolStripMenuItem")]
		private ToolStripMenuItem _RefreshToolStripMenuItem;

		// Token: 0x04000325 RID: 805
		[AccessedThroughProperty("CreateKeyToolStripMenuItem")]
		private ToolStripMenuItem _CreateKeyToolStripMenuItem;

		// Token: 0x04000326 RID: 806
		[AccessedThroughProperty("DeleteKeyToolStripMenuItem")]
		private ToolStripMenuItem _DeleteKeyToolStripMenuItem;

		// Token: 0x04000327 RID: 807
		[AccessedThroughProperty("l1")]
		private ImageList _l1;

		// Token: 0x04000328 RID: 808
		[AccessedThroughProperty("Timer1")]
		private Timer _Timer1;

		// Token: 0x04000329 RID: 809
		[AccessedThroughProperty("RGLIST")]
		private LV _RGLIST;

		// Token: 0x0400032A RID: 810
		[AccessedThroughProperty("ColumnHeader4")]
		private ColumnHeader _ColumnHeader4;

		// Token: 0x0400032B RID: 811
		[AccessedThroughProperty("ColumnHeader5")]
		private ColumnHeader _ColumnHeader5;

		// Token: 0x0400032C RID: 812
		[AccessedThroughProperty("ColumnHeader6")]
		private ColumnHeader _ColumnHeader6;

		// Token: 0x0400032D RID: 813
		[AccessedThroughProperty("pr")]
		private CHProgressbar _pr;

		// Token: 0x0400032E RID: 814
		[AccessedThroughProperty("AToolStripMenuItem1")]
		private ToolStripSeparator _AToolStripMenuItem1;

		// Token: 0x0400032F RID: 815
		[AccessedThroughProperty("AToolStripMenuItem")]
		private ToolStripSeparator _AToolStripMenuItem;

		// Token: 0x04000330 RID: 816
		public Client sk;

		// Token: 0x04000331 RID: 817
		public Client osk;
	}
}
