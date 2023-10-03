using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Diagnostics;
using System.Drawing;
using System.Net;
using System.Runtime.CompilerServices;
using System.Threading;
using System.Windows.Forms;
using Microsoft.VisualBasic;
using Microsoft.VisualBasic.CompilerServices;
using NINGALINET.My.Resources;

namespace NINGALINET
{
	// Token: 0x02000031 RID: 49
	[DesignerGenerated]
	public class ControNe : UserControl
	{
		// Token: 0x06000910 RID: 2320 RVA: 0x00004CF9 File Offset: 0x00002EF9
		[DebuggerNonUserCode]
		static ControNe()
		{
			// Note: this type is marked as 'beforefieldinit'.
			Class2.zP7eVJHzSiX6G();
			ControNe.__ENCList = new List<WeakReference>();
		}

		// Token: 0x06000911 RID: 2321 RVA: 0x00004D0A File Offset: 0x00002F0A
		public ControNe()
		{
			Class2.zP7eVJHzSiX6G();
			base..ctor();
			ControNe.__ENCAddToList(this);
			this.refressub = true;
			this.InitializeComponent();
		}

		// Token: 0x06000912 RID: 2322 RVA: 0x000479D8 File Offset: 0x00045BD8
		[DebuggerNonUserCode]
		private static void __ENCAddToList(object value)
		{
			List<WeakReference> _ENCList = ControNe.__ENCList;
			checked
			{
				lock (_ENCList)
				{
					if (ControNe.__ENCList.Count == ControNe.__ENCList.Capacity)
					{
						int num = 0;
						int arg_37_0 = 0;
						int num2 = ControNe.__ENCList.Count - 1;
						int num3 = arg_37_0;
						while (true)
						{
							int arg_7D_0 = num3;
							int num4 = num2;
							if (arg_7D_0 > num4)
							{
								break;
							}
							WeakReference weakReference = ControNe.__ENCList[num3];
							if (weakReference.IsAlive)
							{
								if (num3 != num)
								{
									ControNe.__ENCList[num] = ControNe.__ENCList[num3];
								}
								num++;
							}
							num3++;
						}
						ControNe.__ENCList.RemoveRange(num, ControNe.__ENCList.Count - num);
						ControNe.__ENCList.Capacity = ControNe.__ENCList.Count;
					}
					ControNe.__ENCList.Add(new WeakReference(RuntimeHelpers.GetObjectValue(value)));
				}
			}
		}

		// Token: 0x06000913 RID: 2323 RVA: 0x00047AC0 File Offset: 0x00045CC0
		[DebuggerNonUserCode]
		protected override void Dispose(bool disposing)
		{
			try
			{
				if (disposing && this.components != null)
				{
					this.components.Dispose();
				}
			}
			finally
			{
				base.Dispose(disposing);
			}
		}

		// Token: 0x06000914 RID: 2324 RVA: 0x00047B04 File Offset: 0x00045D04
		[DebuggerStepThrough]
		private void InitializeComponent()
		{
			this.components = new Container();
			ComponentResourceManager componentResourceManager = new ComponentResourceManager(typeof(ControNe));
			this.IMGNEWS = new ImageList(this.components);
			this.News = new RichTextBox();
			this.ContextMenuStrip1 = new ContextMenuStrip(this.components);
			this.RefreshToolStripMenuItem = new ToolStripMenuItem();
			this.Lvii1 = new LVII();
			this.ColumnHeader16 = new ColumnHeader();
			this.ColumnHeader17 = new ColumnHeader();
			this.ContextMenuStrip1.SuspendLayout();
			this.SuspendLayout();
			this.IMGNEWS.ImageStream = (ImageListStreamer)componentResourceManager.GetObject("IMGNEWS.ImageStream");
			this.IMGNEWS.TransparentColor = Color.Transparent;
			this.IMGNEWS.Images.SetKeyName(0, "Goals.png");
			this.IMGNEWS.Images.SetKeyName(1, "Notice.png");
			this.IMGNEWS.Images.SetKeyName(2, "Other.png");
			this.IMGNEWS.Images.SetKeyName(3, "Repair.png");
			this.IMGNEWS.Images.SetKeyName(4, "Tutorial.png");
			this.IMGNEWS.Images.SetKeyName(5, "Update.png");
			this.News.BackColor = Color.FromArgb(40, 40, 40);
			this.News.BorderStyle = BorderStyle.None;
			this.News.ContextMenuStrip = this.ContextMenuStrip1;
			this.News.Dock = DockStyle.Fill;
			this.News.ForeColor = Color.WhiteSmoke;
			Control arg_193_0 = this.News;
			Point location = new Point(0, 0);
			arg_193_0.Location = location;
			this.News.Name = "News";
			this.News.ReadOnly = true;
			Control arg_1CC_0 = this.News;
			Size size = new Size(634, 226);
			arg_1CC_0.Size = size;
			this.News.TabIndex = 57;
			this.News.Text = Resources.notf;
			this.ContextMenuStrip1.Items.AddRange(new ToolStripItem[]
			{
				this.RefreshToolStripMenuItem
			});
			this.ContextMenuStrip1.Name = "ContextMenuStrip1";
			Control arg_234_0 = this.ContextMenuStrip1;
			size = new Size(153, 48);
			arg_234_0.Size = size;
			this.RefreshToolStripMenuItem.Image = (Image)componentResourceManager.GetObject("RefreshToolStripMenuItem.Image");
			this.RefreshToolStripMenuItem.Name = "RefreshToolStripMenuItem";
			ToolStripItem arg_279_0 = this.RefreshToolStripMenuItem;
			size = new Size(152, 22);
			arg_279_0.Size = size;
			this.RefreshToolStripMenuItem.Text = "Refresh";
			this.Lvii1.BackColor = Color.FromArgb(10, 10, 10);
			this.Lvii1.BorderStyle = BorderStyle.None;
			this.Lvii1.Columns.AddRange(new ColumnHeader[]
			{
				this.ColumnHeader16,
				this.ColumnHeader17
			});
			this.Lvii1.ContextMenuStrip = this.ContextMenuStrip1;
			this.Lvii1.Cursor = Cursors.Hand;
			this.Lvii1.Dock = DockStyle.Bottom;
			this.Lvii1.Font = new Font("Arial", 8.25f);
			this.Lvii1.ForeColor = Color.WhiteSmoke;
			this.Lvii1.FullRowSelect = true;
			this.Lvii1.HeaderStyle = ColumnHeaderStyle.None;
			this.Lvii1.LargeImageList = this.IMGNEWS;
			Control arg_372_0 = this.Lvii1;
			location = new Point(0, 226);
			arg_372_0.Location = location;
			this.Lvii1.Name = "Lvii1";
			this.Lvii1.OwnerDraw = true;
			Control arg_3AB_0 = this.Lvii1;
			size = new Size(634, 142);
			arg_3AB_0.Size = size;
			this.Lvii1.SmallImageList = this.IMGNEWS;
			this.Lvii1.TabIndex = 56;
			this.Lvii1.UseCompatibleStateImageBehavior = false;
			this.Lvii1.View = View.Details;
			SizeF autoScaleDimensions = new SizeF(6f, 13f);
			this.AutoScaleDimensions = autoScaleDimensions;
			this.AutoScaleMode = AutoScaleMode.Font;
			this.Controls.Add(this.News);
			this.Controls.Add(this.Lvii1);
			this.Name = "ControNe";
			size = new Size(634, 368);
			this.Size = size;
			this.ContextMenuStrip1.ResumeLayout(false);
			this.ResumeLayout(false);
		}

		// Token: 0x1700034C RID: 844
		// (get) Token: 0x06000915 RID: 2325 RVA: 0x00047F70 File Offset: 0x00046170
		// (set) Token: 0x06000916 RID: 2326 RVA: 0x00004D2A File Offset: 0x00002F2A
		internal virtual ImageList IMGNEWS
		{
			[DebuggerNonUserCode]
			get
			{
				return this._IMGNEWS;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._IMGNEWS = value;
			}
		}

		// Token: 0x1700034D RID: 845
		// (get) Token: 0x06000917 RID: 2327 RVA: 0x00047F88 File Offset: 0x00046188
		// (set) Token: 0x06000918 RID: 2328 RVA: 0x00004D33 File Offset: 0x00002F33
		internal virtual RichTextBox News
		{
			[DebuggerNonUserCode]
			get
			{
				return this._News;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._News = value;
			}
		}

		// Token: 0x1700034E RID: 846
		// (get) Token: 0x06000919 RID: 2329 RVA: 0x00047FA0 File Offset: 0x000461A0
		// (set) Token: 0x0600091A RID: 2330 RVA: 0x00047FB8 File Offset: 0x000461B8
		internal virtual LVII Lvii1
		{
			[DebuggerNonUserCode]
			get
			{
				return this._Lvii1;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.Lvii1_SelectedIndexChanged);
				if (this._Lvii1 != null)
				{
					this._Lvii1.SelectedIndexChanged -= value2;
				}
				this._Lvii1 = value;
				if (this._Lvii1 != null)
				{
					this._Lvii1.SelectedIndexChanged += value2;
				}
			}
		}

		// Token: 0x1700034F RID: 847
		// (get) Token: 0x0600091B RID: 2331 RVA: 0x00048010 File Offset: 0x00046210
		// (set) Token: 0x0600091C RID: 2332 RVA: 0x00004D3C File Offset: 0x00002F3C
		internal virtual ColumnHeader ColumnHeader16
		{
			[DebuggerNonUserCode]
			get
			{
				return this._ColumnHeader16;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._ColumnHeader16 = value;
			}
		}

		// Token: 0x17000350 RID: 848
		// (get) Token: 0x0600091D RID: 2333 RVA: 0x00048028 File Offset: 0x00046228
		// (set) Token: 0x0600091E RID: 2334 RVA: 0x00004D45 File Offset: 0x00002F45
		internal virtual ColumnHeader ColumnHeader17
		{
			[DebuggerNonUserCode]
			get
			{
				return this._ColumnHeader17;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._ColumnHeader17 = value;
			}
		}

		// Token: 0x17000351 RID: 849
		// (get) Token: 0x0600091F RID: 2335 RVA: 0x00048040 File Offset: 0x00046240
		// (set) Token: 0x06000920 RID: 2336 RVA: 0x00004D4E File Offset: 0x00002F4E
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

		// Token: 0x17000352 RID: 850
		// (get) Token: 0x06000921 RID: 2337 RVA: 0x00048058 File Offset: 0x00046258
		// (set) Token: 0x06000922 RID: 2338 RVA: 0x00048070 File Offset: 0x00046270
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

		// Token: 0x06000923 RID: 2339 RVA: 0x000480C8 File Offset: 0x000462C8
		private void Lvii1_SelectedIndexChanged(object sender, EventArgs e)
		{
			if (this.Lvii1.SelectedItems.Count != 0)
			{
				try
				{
					if (Operators.CompareString(this.Lvii1.SelectedItems[0].SubItems[2].Text, "", false) != 0)
					{
						Process.Start(this.Lvii1.SelectedItems[0].SubItems[2].Text);
					}
				}
				catch (Exception expr_73)
				{
					ProjectData.SetProjectError(expr_73);
					ProjectData.ClearProjectError();
				}
			}
		}

		// Token: 0x06000924 RID: 2340 RVA: 0x00048168 File Offset: 0x00046368
		public void mulai()
		{
			Thread thread = new Thread(new ThreadStart(this.newss));
			thread.Start();
		}

		// Token: 0x06000925 RID: 2341 RVA: 0x00004D57 File Offset: 0x00002F57
		private void RefreshToolStripMenuItem_Click(object sender, EventArgs e)
		{
			this.refressub = true;
		}

		// Token: 0x06000926 RID: 2342 RVA: 0x00048190 File Offset: 0x00046390
		public void newss()
		{
			checked
			{
				while (true)
				{
					if (this.refressub)
					{
						this.refressub = false;
						string text = "";
						string expression = "";
						WebClient webClient = new WebClient();
						this.Lvii1.Items.Clear();
						this.News.Text = "";
						try
						{
							text = webClient.DownloadString("http://chatftp.890m.com/News1.txt");
							expression = webClient.DownloadString("http://chatftp.890m.com/News2.txt");
							goto IL_1DA;
						}
						catch (Exception expr_68)
						{
							ProjectData.SetProjectError(expr_68);
							text = "";
							ProjectData.ClearProjectError();
							goto IL_1DA;
						}
						IL_7F:
						int i;
						string[] array;
						while (i < array.Length)
						{
							string text2 = array[i];
							try
							{
								if (Operators.CompareString(text2, "", false) != 0)
								{
									string[] array2 = Strings.Split(text2, "[,]", -1, CompareMethod.Binary);
									ListViewItem listViewItem = new ListViewItem();
									listViewItem.Text = array2[1];
									listViewItem.SubItems.Add(array2[2]);
									listViewItem.SubItems.Add(array2[3]);
									if (Operators.CompareString(array2[0], "GOALS", false) == 0)
									{
										listViewItem.ImageIndex = 0;
									}
									else if (Operators.CompareString(array2[0], "NOTICE", false) == 0)
									{
										listViewItem.ImageIndex = 1;
									}
									else if (Operators.CompareString(array2[0], "REPAIR", false) == 0)
									{
										listViewItem.ImageIndex = 2;
									}
									else if (Operators.CompareString(array2[0], "OTHER", false) == 0)
									{
										listViewItem.ImageIndex = 3;
									}
									else if (Operators.CompareString(array2[0], "TUTORIAL", false) == 0)
									{
										listViewItem.ImageIndex = 4;
									}
									else if (Operators.CompareString(array2[0], "UPDATE", false) == 0)
									{
										listViewItem.ImageIndex = 5;
									}
									this.Lvii1.Items.Add(listViewItem);
								}
								this.Lvii1.FX();
							}
							catch (Exception expr_1C1)
							{
								ProjectData.SetProjectError(expr_1C1);
								ProjectData.ClearProjectError();
							}
							i++;
						}
						goto IL_09;
						IL_1DA:
						this.News.Text = text;
						string[] array3 = Strings.Split(expression, "[+]", -1, CompareMethod.Binary);
						array = array3;
						i = 0;
						goto IL_7F;
					}
					IL_09:
					Thread.Sleep(100);
				}
			}
		}

		// Token: 0x0400043F RID: 1087
		private static List<WeakReference> __ENCList;

		// Token: 0x04000440 RID: 1088
		private IContainer components;

		// Token: 0x04000441 RID: 1089
		[AccessedThroughProperty("IMGNEWS")]
		private ImageList _IMGNEWS;

		// Token: 0x04000442 RID: 1090
		[AccessedThroughProperty("News")]
		private RichTextBox _News;

		// Token: 0x04000443 RID: 1091
		[AccessedThroughProperty("Lvii1")]
		private LVII _Lvii1;

		// Token: 0x04000444 RID: 1092
		[AccessedThroughProperty("ColumnHeader16")]
		private ColumnHeader _ColumnHeader16;

		// Token: 0x04000445 RID: 1093
		[AccessedThroughProperty("ColumnHeader17")]
		private ColumnHeader _ColumnHeader17;

		// Token: 0x04000446 RID: 1094
		[AccessedThroughProperty("ContextMenuStrip1")]
		private ContextMenuStrip _ContextMenuStrip1;

		// Token: 0x04000447 RID: 1095
		[AccessedThroughProperty("RefreshToolStripMenuItem")]
		private ToolStripMenuItem _RefreshToolStripMenuItem;

		// Token: 0x04000448 RID: 1096
		private bool refressub;
	}
}
