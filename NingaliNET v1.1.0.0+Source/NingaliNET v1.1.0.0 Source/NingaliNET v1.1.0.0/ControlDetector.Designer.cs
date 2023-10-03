using System;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using System.Diagnostics;
using System.Drawing;
using System.IO;
using System.Runtime.CompilerServices;
using System.Threading;
using System.Windows.Forms;
using Microsoft.VisualBasic;
using Microsoft.VisualBasic.CompilerServices;
using Microsoft.Win32;
using NINGALINET.My;
using NINGALINET.My.Resources;

namespace NINGALINET
{
	// Token: 0x0200002E RID: 46
	[DesignerGenerated]
	public class ControlDetector : UserControl
	{
		// Token: 0x0600086A RID: 2154 RVA: 0x00004A6C File Offset: 0x00002C6C
		[DebuggerNonUserCode]
		static ControlDetector()
		{
			// Note: this type is marked as 'beforefieldinit'.
			Class2.zP7eVJHzSiX6G();
			ControlDetector.__ENCList = new List<WeakReference>();
		}

		// Token: 0x0600086B RID: 2155 RVA: 0x00042448 File Offset: 0x00040648
		public ControlDetector()
		{
			Class2.zP7eVJHzSiX6G();
			base..ctor();
			ControlDetector.__ENCAddToList(this);
			this.keyName = "SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Run";
			this.startup = Environment.GetFolderPath(Environment.SpecialFolder.Startup);
			this.SV = "==========================================================\r\n" + DateTime.Now.ToString() + "\r\n==========================================================\r\n";
			this.bacup = false;
			this.InitializeComponent();
		}

		// Token: 0x0600086C RID: 2156 RVA: 0x000424AC File Offset: 0x000406AC
		[DebuggerNonUserCode]
		private static void __ENCAddToList(object value)
		{
			List<WeakReference> _ENCList = ControlDetector.__ENCList;
			checked
			{
				lock (_ENCList)
				{
					if (ControlDetector.__ENCList.Count == ControlDetector.__ENCList.Capacity)
					{
						int num = 0;
						int arg_37_0 = 0;
						int num2 = ControlDetector.__ENCList.Count - 1;
						int num3 = arg_37_0;
						while (true)
						{
							int arg_7D_0 = num3;
							int num4 = num2;
							if (arg_7D_0 > num4)
							{
								break;
							}
							WeakReference weakReference = ControlDetector.__ENCList[num3];
							if (weakReference.IsAlive)
							{
								if (num3 != num)
								{
									ControlDetector.__ENCList[num] = ControlDetector.__ENCList[num3];
								}
								num++;
							}
							num3++;
						}
						ControlDetector.__ENCList.RemoveRange(num, ControlDetector.__ENCList.Count - num);
						ControlDetector.__ENCList.Capacity = ControlDetector.__ENCList.Count;
					}
					ControlDetector.__ENCList.Add(new WeakReference(RuntimeHelpers.GetObjectValue(value)));
				}
			}
		}

		// Token: 0x0600086D RID: 2157 RVA: 0x00042594 File Offset: 0x00040794
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

		// Token: 0x0600086E RID: 2158 RVA: 0x000425D8 File Offset: 0x000407D8
		[DebuggerStepThrough]
		private void InitializeComponent()
		{
			this.components = new Container();
			ComponentResourceManager componentResourceManager = new ComponentResourceManager(typeof(ControlDetector));
			this.ImageList1 = new ImageList(this.components);
			this.Button1 = new Button();
			this.ChProgressbar1 = new CHProgressbar();
			this.Timer1 = new System.Windows.Forms.Timer(this.components);
			this.TT = new RichTextBox();
			this.ContextMenuStrip1 = new ContextMenuStrip(this.components);
			this.RescanToolStripMenuItem = new ToolStripMenuItem();
			this.AToolStripMenuItem = new ToolStripSeparator();
			this.OpenFileLocationToolStripMenuItem = new ToolStripMenuItem();
			this.OpenFileDuplicateToolStripMenuItem = new ToolStripMenuItem();
			this.ToolStripSeparator1 = new ToolStripSeparator();
			this.RemoveSelectedToolStripMenuItem = new ToolStripMenuItem();
			this.Lv1 = new LV();
			this.ColumnHeader1 = new ColumnHeader();
			this.ColumnHeader2 = new ColumnHeader();
			this.ColumnHeader3 = new ColumnHeader();
			this.ColumnHeader4 = new ColumnHeader();
			this.ContextMenuStrip1.SuspendLayout();
			this.SuspendLayout();
			this.ImageList1.ImageStream = (ImageListStreamer)componentResourceManager.GetObject("ImageList1.ImageStream");
			this.ImageList1.TransparentColor = Color.Transparent;
			this.ImageList1.Images.SetKeyName(0, "AntiVirusToolStripMenuItem.Image.png");
			this.Button1.BackColor = Color.FromArgb(20, 20, 20);
			this.Button1.Dock = DockStyle.Bottom;
			this.Button1.FlatStyle = FlatStyle.Popup;
			this.Button1.Font = new Font("Arial", 8.25f, FontStyle.Regular, GraphicsUnit.Point, 0);
			this.Button1.ForeColor = Color.WhiteSmoke;
			Control arg_1A9_0 = this.Button1;
			Point location = new Point(0, 498);
			arg_1A9_0.Location = location;
			this.Button1.Name = "Button1";
			Control arg_1D3_0 = this.Button1;
			Size size = new Size(675, 23);
			arg_1D3_0.Size = size;
			this.Button1.TabIndex = 1;
			this.Button1.Text = "Scan..";
			this.Button1.UseVisualStyleBackColor = false;
			this.ChProgressbar1.BackColor = Color.Transparent;
			this.ChProgressbar1.Colors = new Bloom[0];
			this.ChProgressbar1.Customization = Resources.notf;
			this.ChProgressbar1.Dock = DockStyle.Bottom;
			this.ChProgressbar1.Font = new Font("Verdana", 8f);
			this.ChProgressbar1.Image = null;
			Control arg_277_0 = this.ChProgressbar1;
			location = new Point(0, 483);
			arg_277_0.Location = location;
			this.ChProgressbar1.Maximum = 100;
			this.ChProgressbar1.Name = "ChProgressbar1";
			this.ChProgressbar1.NoRounding = false;
			Control arg_2BA_0 = this.ChProgressbar1;
			size = new Size(675, 15);
			arg_2BA_0.Size = size;
			this.ChProgressbar1.TabIndex = 3;
			this.ChProgressbar1.Text = "ChProgressbar1";
			this.ChProgressbar1.Transparent = true;
			this.ChProgressbar1.Value = 0;
			this.Timer1.Enabled = true;
			this.Timer1.Interval = 200;
			this.TT.BackColor = Color.FromArgb(40, 40, 40);
			this.TT.BorderStyle = BorderStyle.None;
			this.TT.Dock = DockStyle.Fill;
			this.TT.ForeColor = Color.WhiteSmoke;
			Control arg_35D_0 = this.TT;
			location = new Point(0, 0);
			arg_35D_0.Location = location;
			this.TT.Name = "TT";
			Control arg_38A_0 = this.TT;
			size = new Size(675, 483);
			arg_38A_0.Size = size;
			this.TT.TabIndex = 5;
			this.TT.Text = Resources.notf;
			this.ContextMenuStrip1.Items.AddRange(new ToolStripItem[]
			{
				this.RescanToolStripMenuItem,
				this.AToolStripMenuItem,
				this.OpenFileLocationToolStripMenuItem,
				this.OpenFileDuplicateToolStripMenuItem,
				this.ToolStripSeparator1,
				this.RemoveSelectedToolStripMenuItem
			});
			this.ContextMenuStrip1.Name = "ContextMenuStrip1";
			Control arg_41E_0 = this.ContextMenuStrip1;
			size = new Size(175, 104);
			arg_41E_0.Size = size;
			this.RescanToolStripMenuItem.Name = "RescanToolStripMenuItem";
			ToolStripItem arg_448_0 = this.RescanToolStripMenuItem;
			size = new Size(174, 22);
			arg_448_0.Size = size;
			this.RescanToolStripMenuItem.Text = "Scan..";
			this.AToolStripMenuItem.Name = "AToolStripMenuItem";
			ToolStripItem arg_481_0 = this.AToolStripMenuItem;
			size = new Size(171, 6);
			arg_481_0.Size = size;
			this.OpenFileLocationToolStripMenuItem.Name = "OpenFileLocationToolStripMenuItem";
			ToolStripItem arg_4AB_0 = this.OpenFileLocationToolStripMenuItem;
			size = new Size(174, 22);
			arg_4AB_0.Size = size;
			this.OpenFileLocationToolStripMenuItem.Text = "Open file location";
			this.OpenFileDuplicateToolStripMenuItem.Name = "OpenFileDuplicateToolStripMenuItem";
			ToolStripItem arg_4E5_0 = this.OpenFileDuplicateToolStripMenuItem;
			size = new Size(174, 22);
			arg_4E5_0.Size = size;
			this.OpenFileDuplicateToolStripMenuItem.Text = "Open file duplicate";
			this.ToolStripSeparator1.Name = "ToolStripSeparator1";
			ToolStripItem arg_51E_0 = this.ToolStripSeparator1;
			size = new Size(171, 6);
			arg_51E_0.Size = size;
			this.RemoveSelectedToolStripMenuItem.Name = "RemoveSelectedToolStripMenuItem";
			ToolStripItem arg_548_0 = this.RemoveSelectedToolStripMenuItem;
			size = new Size(174, 22);
			arg_548_0.Size = size;
			this.RemoveSelectedToolStripMenuItem.Text = "Remove Selected";
			this.Lv1.BackColor = Color.Black;
			this.Lv1.BorderStyle = BorderStyle.None;
			this.Lv1.Columns.AddRange(new ColumnHeader[]
			{
				this.ColumnHeader1,
				this.ColumnHeader2,
				this.ColumnHeader3,
				this.ColumnHeader4
			});
			this.Lv1.ContextMenuStrip = this.ContextMenuStrip1;
			this.Lv1.Dock = DockStyle.Fill;
			this.Lv1.Font = new Font("Arial", 8.25f);
			this.Lv1.ForeColor = Color.WhiteSmoke;
			this.Lv1.FullRowSelect = true;
			this.Lv1.LargeImageList = this.ImageList1;
			Control arg_62F_0 = this.Lv1;
			location = new Point(0, 0);
			arg_62F_0.Location = location;
			this.Lv1.Name = "Lv1";
			this.Lv1.OwnerDraw = true;
			Control arg_668_0 = this.Lv1;
			size = new Size(675, 483);
			arg_668_0.Size = size;
			this.Lv1.SmallImageList = this.ImageList1;
			this.Lv1.TabIndex = 8;
			this.Lv1.UseCompatibleStateImageBehavior = false;
			this.Lv1.View = View.Details;
			this.ColumnHeader1.Text = "Name";
			this.ColumnHeader2.Text = "Duplicate";
			this.ColumnHeader3.Text = "Path";
			this.ColumnHeader4.Text = "Reg";
			SizeF autoScaleDimensions = new SizeF(6f, 14f);
			this.AutoScaleDimensions = autoScaleDimensions;
			this.AutoScaleMode = AutoScaleMode.Font;
			this.BackColor = Color.FromArgb(10, 10, 10);
			this.Controls.Add(this.Lv1);
			this.Controls.Add(this.TT);
			this.Controls.Add(this.ChProgressbar1);
			this.Controls.Add(this.Button1);
			this.Font = new Font("Arial", 8.25f, FontStyle.Regular, GraphicsUnit.Point, 0);
			this.ForeColor = Color.WhiteSmoke;
			this.Name = "ControlDetector";
			size = new Size(675, 521);
			this.Size = size;
			this.ContextMenuStrip1.ResumeLayout(false);
			this.ResumeLayout(false);
		}

		// Token: 0x1700030D RID: 781
		// (get) Token: 0x0600086F RID: 2159 RVA: 0x00042D98 File Offset: 0x00040F98
		// (set) Token: 0x06000870 RID: 2160 RVA: 0x00042DB0 File Offset: 0x00040FB0
		internal virtual Button Button1
		{
			[DebuggerNonUserCode]
			get
			{
				return this._Button1;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.Button1_Click);
				if (this._Button1 != null)
				{
					this._Button1.Click -= value2;
				}
				this._Button1 = value;
				if (this._Button1 != null)
				{
					this._Button1.Click += value2;
				}
			}
		}

		// Token: 0x1700030E RID: 782
		// (get) Token: 0x06000871 RID: 2161 RVA: 0x00042E08 File Offset: 0x00041008
		// (set) Token: 0x06000872 RID: 2162 RVA: 0x00004A7D File Offset: 0x00002C7D
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

		// Token: 0x1700030F RID: 783
		// (get) Token: 0x06000873 RID: 2163 RVA: 0x00042E20 File Offset: 0x00041020
		// (set) Token: 0x06000874 RID: 2164 RVA: 0x00004A86 File Offset: 0x00002C86
		internal virtual CHProgressbar ChProgressbar1
		{
			[DebuggerNonUserCode]
			get
			{
				return this._ChProgressbar1;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._ChProgressbar1 = value;
			}
		}

		// Token: 0x17000310 RID: 784
		// (get) Token: 0x06000875 RID: 2165 RVA: 0x00042E38 File Offset: 0x00041038
		// (set) Token: 0x06000876 RID: 2166 RVA: 0x00004A8F File Offset: 0x00002C8F
		internal virtual System.Windows.Forms.Timer Timer1
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
				this._Timer1 = value;
			}
		}

		// Token: 0x17000311 RID: 785
		// (get) Token: 0x06000877 RID: 2167 RVA: 0x00042E50 File Offset: 0x00041050
		// (set) Token: 0x06000878 RID: 2168 RVA: 0x00004A98 File Offset: 0x00002C98
		internal virtual RichTextBox TT
		{
			[DebuggerNonUserCode]
			get
			{
				return this._TT;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._TT = value;
			}
		}

		// Token: 0x17000312 RID: 786
		// (get) Token: 0x06000879 RID: 2169 RVA: 0x00042E68 File Offset: 0x00041068
		// (set) Token: 0x0600087A RID: 2170 RVA: 0x00004AA1 File Offset: 0x00002CA1
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

		// Token: 0x17000313 RID: 787
		// (get) Token: 0x0600087B RID: 2171 RVA: 0x00042E80 File Offset: 0x00041080
		// (set) Token: 0x0600087C RID: 2172 RVA: 0x00042E98 File Offset: 0x00041098
		internal virtual ToolStripMenuItem RescanToolStripMenuItem
		{
			[DebuggerNonUserCode]
			get
			{
				return this._RescanToolStripMenuItem;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.RescanToolStripMenuItem_Click_1);
				if (this._RescanToolStripMenuItem != null)
				{
					this._RescanToolStripMenuItem.Click -= value2;
				}
				this._RescanToolStripMenuItem = value;
				if (this._RescanToolStripMenuItem != null)
				{
					this._RescanToolStripMenuItem.Click += value2;
				}
			}
		}

		// Token: 0x17000314 RID: 788
		// (get) Token: 0x0600087D RID: 2173 RVA: 0x00042EF0 File Offset: 0x000410F0
		// (set) Token: 0x0600087E RID: 2174 RVA: 0x00004AAA File Offset: 0x00002CAA
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

		// Token: 0x17000315 RID: 789
		// (get) Token: 0x0600087F RID: 2175 RVA: 0x00042F08 File Offset: 0x00041108
		// (set) Token: 0x06000880 RID: 2176 RVA: 0x00042F20 File Offset: 0x00041120
		internal virtual ToolStripMenuItem OpenFileLocationToolStripMenuItem
		{
			[DebuggerNonUserCode]
			get
			{
				return this._OpenFileLocationToolStripMenuItem;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.OpenFileLocationToolStripMenuItem_Click);
				if (this._OpenFileLocationToolStripMenuItem != null)
				{
					this._OpenFileLocationToolStripMenuItem.Click -= value2;
				}
				this._OpenFileLocationToolStripMenuItem = value;
				if (this._OpenFileLocationToolStripMenuItem != null)
				{
					this._OpenFileLocationToolStripMenuItem.Click += value2;
				}
			}
		}

		// Token: 0x17000316 RID: 790
		// (get) Token: 0x06000881 RID: 2177 RVA: 0x00042F78 File Offset: 0x00041178
		// (set) Token: 0x06000882 RID: 2178 RVA: 0x00042F90 File Offset: 0x00041190
		internal virtual ToolStripMenuItem OpenFileDuplicateToolStripMenuItem
		{
			[DebuggerNonUserCode]
			get
			{
				return this._OpenFileDuplicateToolStripMenuItem;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.OpenFileDuplicateToolStripMenuItem_Click);
				if (this._OpenFileDuplicateToolStripMenuItem != null)
				{
					this._OpenFileDuplicateToolStripMenuItem.Click -= value2;
				}
				this._OpenFileDuplicateToolStripMenuItem = value;
				if (this._OpenFileDuplicateToolStripMenuItem != null)
				{
					this._OpenFileDuplicateToolStripMenuItem.Click += value2;
				}
			}
		}

		// Token: 0x17000317 RID: 791
		// (get) Token: 0x06000883 RID: 2179 RVA: 0x00042FE8 File Offset: 0x000411E8
		// (set) Token: 0x06000884 RID: 2180 RVA: 0x00004AB3 File Offset: 0x00002CB3
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

		// Token: 0x17000318 RID: 792
		// (get) Token: 0x06000885 RID: 2181 RVA: 0x00043000 File Offset: 0x00041200
		// (set) Token: 0x06000886 RID: 2182 RVA: 0x00043018 File Offset: 0x00041218
		internal virtual ToolStripMenuItem RemoveSelectedToolStripMenuItem
		{
			[DebuggerNonUserCode]
			get
			{
				return this._RemoveSelectedToolStripMenuItem;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.RemoveSelectedToolStripMenuItem_Click);
				if (this._RemoveSelectedToolStripMenuItem != null)
				{
					this._RemoveSelectedToolStripMenuItem.Click -= value2;
				}
				this._RemoveSelectedToolStripMenuItem = value;
				if (this._RemoveSelectedToolStripMenuItem != null)
				{
					this._RemoveSelectedToolStripMenuItem.Click += value2;
				}
			}
		}

		// Token: 0x17000319 RID: 793
		// (get) Token: 0x06000887 RID: 2183 RVA: 0x00043070 File Offset: 0x00041270
		// (set) Token: 0x06000888 RID: 2184 RVA: 0x00004ABC File Offset: 0x00002CBC
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
				this._Lv1 = value;
			}
		}

		// Token: 0x1700031A RID: 794
		// (get) Token: 0x06000889 RID: 2185 RVA: 0x00043088 File Offset: 0x00041288
		// (set) Token: 0x0600088A RID: 2186 RVA: 0x00004AC5 File Offset: 0x00002CC5
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

		// Token: 0x1700031B RID: 795
		// (get) Token: 0x0600088B RID: 2187 RVA: 0x000430A0 File Offset: 0x000412A0
		// (set) Token: 0x0600088C RID: 2188 RVA: 0x00004ACE File Offset: 0x00002CCE
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

		// Token: 0x1700031C RID: 796
		// (get) Token: 0x0600088D RID: 2189 RVA: 0x000430B8 File Offset: 0x000412B8
		// (set) Token: 0x0600088E RID: 2190 RVA: 0x00004AD7 File Offset: 0x00002CD7
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

		// Token: 0x1700031D RID: 797
		// (get) Token: 0x0600088F RID: 2191 RVA: 0x000430D0 File Offset: 0x000412D0
		// (set) Token: 0x06000890 RID: 2192 RVA: 0x00004AE0 File Offset: 0x00002CE0
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

		// Token: 0x06000891 RID: 2193 RVA: 0x00004AE9 File Offset: 0x00002CE9
		public void RegeditImport(string sFilename)
		{
			Interaction.Shell("regedit.exe /s /c \"" + sFilename + "\"", AppWinStyle.Hide, false, -1);
		}

		// Token: 0x06000892 RID: 2194 RVA: 0x000430E8 File Offset: 0x000412E8
		public void RegeditExport(string sKey, string sFilename)
		{
			try
			{
				Interaction.Shell(string.Concat(new string[]
				{
					"regedit.exe /s /e \"",
					sFilename,
					"\" \"",
					sKey,
					"\""
				}), AppWinStyle.Hide, false, -1);
			}
			catch (Exception expr_39)
			{
				ProjectData.SetProjectError(expr_39);
				ProjectData.ClearProjectError();
			}
		}

		// Token: 0x06000893 RID: 2195 RVA: 0x0004314C File Offset: 0x0004134C
		public void remove()
		{
			this.TT.SelectionStart = this.TT.TextLength;
			this.TT.AppendText("==========================================================\r\nRemove started " + DateTime.Now.ToString() + "\r\n==========================================================\r\n");
			this.ChProgressbar1.Value = 0;
			this.Lv1.Items.Clear();
			this.ChProgressbar1.Maximum = this.valueNames.Length;
			string[] array = this.valueNames;
			checked
			{
				for (int i = 0; i < array.Length; i++)
				{
					string text = array[i];
					CHProgressbar chProgressbar = this.ChProgressbar1;
					chProgressbar.Value++;
					new ListViewItem();
					new ListViewItem();
					int num = Strings.InStr(Conversions.ToString(Registry.CurrentUser.OpenSubKey(this.keyName).GetValue(text)), "..", CompareMethod.Binary);
					if (num != 0)
					{
						object objectValue = RuntimeHelpers.GetObjectValue(Registry.CurrentUser.OpenSubKey(this.keyName).GetValue(text));
						objectValue = RuntimeHelpers.GetObjectValue(NewLateBinding.LateGet(objectValue, null, "replace", new object[]
						{
							"\"",
							""
						}, null, null, null));
						objectValue = RuntimeHelpers.GetObjectValue(NewLateBinding.LateGet(objectValue, null, "replace", new object[]
						{
							" ",
							""
						}, null, null, null));
						objectValue = RuntimeHelpers.GetObjectValue(NewLateBinding.LateGet(objectValue, null, "replace", new object[]
						{
							"..",
							""
						}, null, null, null));
						FileInfo fileInfo = new FileInfo(Conversions.ToString(objectValue));
						try
						{
							if (this.bacup)
							{
								File.Copy(this.startup + "\\" + text + ".exe", Conversions.ToString(Operators.ConcatenateObject(Operators.ConcatenateObject(this.folder, text), ".exe.dup")));
								File.Copy(Conversions.ToString(objectValue), Conversions.ToString(Operators.ConcatenateObject(Operators.ConcatenateObject(this.folder, fileInfo.Name), ".exe.dup")));
							}
							goto IL_491;
						}
						catch (Exception expr_20E)
						{
							ProjectData.SetProjectError(expr_20E);
							ProjectData.ClearProjectError();
							goto IL_491;
						}
						goto IL_21F;
						IL_25F:
						if (File.Exists(this.startup + "\\" + text + ".exe"))
						{
							Process[] processesByName = Process.GetProcessesByName(text);
							for (int j = 0; j < processesByName.Length; j++)
							{
								Process process = processesByName[j];
								process.Kill();
							}
						}
						Thread.Sleep(500);
						if (File.Exists(fileInfo.FullName))
						{
							try
							{
								File.Delete(Conversions.ToString(objectValue));
								this.TT.AppendText(Conversions.ToString(Operators.ConcatenateObject(Operators.ConcatenateObject(Operators.ConcatenateObject("- Remove file succeedd (", objectValue), ")"), "\r\n")));
							}
							catch (Exception expr_2FE)
							{
								ProjectData.SetProjectError(expr_2FE);
								Exception ex = expr_2FE;
								this.TT.AppendText("- Remove file succeedd error (" + ex.Message + ")\r\n");
								ProjectData.ClearProjectError();
							}
						}
						if (File.Exists(this.startup + "\\" + text + ".exe"))
						{
							try
							{
								File.Delete(this.startup + "\\" + text + ".exe");
								this.TT.AppendText(string.Concat(new string[]
								{
									"- Remove file succeedd (",
									this.startup,
									"\\",
									text,
									".exe)\r\n"
								}));
							}
							catch (Exception expr_3B0)
							{
								ProjectData.SetProjectError(expr_3B0);
								Exception ex2 = expr_3B0;
								this.TT.AppendText("- Remove file error (" + ex2.Message + ")\r\n");
								ProjectData.ClearProjectError();
							}
						}
						try
						{
							MyProject.Computer.Registry.CurrentUser.OpenSubKey(this.keyName, true).DeleteValue(text, false);
							this.TT.AppendText(string.Concat(new string[]
							{
								"- Remove RegKey succeedd (",
								Registry.CurrentUser.OpenSubKey(this.keyName).ToString(),
								"\\",
								text,
								")\r\n"
							}));
						}
						catch (Exception expr_458)
						{
							ProjectData.SetProjectError(expr_458);
							Exception ex3 = expr_458;
							this.TT.AppendText("- Remove RegKey error (" + ex3.Message + ")\r\n");
							ProjectData.ClearProjectError();
						}
						goto IL_488;
						IL_491:
						if (!File.Exists(fileInfo.FullName))
						{
							goto IL_25F;
						}
						IL_21F:
						Process[] processesByName2 = Process.GetProcessesByName(fileInfo.Name.Replace(".exe", ""));
						for (int k = 0; k < processesByName2.Length; k++)
						{
							Process process2 = processesByName2[k];
							process2.Kill();
						}
						goto IL_25F;
					}
					IL_488:;
				}
				this.TT.ScrollToCaret();
				ima.F.sl.Text = "Remove server(s) succeeded..";
				this.Lv1.AutoResizeColumns(ColumnHeaderAutoResizeStyle.HeaderSize);
				if (this.Lv1.Items.Count == 0)
				{
					this.Button1.Text = "Scan..";
				}
				else if (this.Lv1.Items.Count == 1)
				{
					this.Button1.Text = "Remove";
				}
				else
				{
					this.Button1.Text = "Remove all";
				}
			}
		}

		// Token: 0x06000894 RID: 2196 RVA: 0x000436C0 File Offset: 0x000418C0
		public void detect()
		{
			this.subkeyNames = Registry.CurrentUser.OpenSubKey(this.keyName).GetSubKeyNames();
			this.valueNames = Registry.CurrentUser.OpenSubKey(this.keyName).GetValueNames();
			this.ChProgressbar1.Value = 0;
			this.Lv1.Items.Clear();
			this.ChProgressbar1.Maximum = this.valueNames.Length;
			string[] array = this.valueNames;
			checked
			{
				for (int i = 0; i < array.Length; i++)
				{
					string text = array[i];
					CHProgressbar chProgressbar = this.ChProgressbar1;
					chProgressbar.Value++;
					ListViewItem listViewItem = new ListViewItem();
					new ListViewItem();
					int num = Strings.InStr(Conversions.ToString(Registry.CurrentUser.OpenSubKey(this.keyName).GetValue(text)), "..", CompareMethod.Binary);
					if (num != 0)
					{
						object objectValue = RuntimeHelpers.GetObjectValue(Registry.CurrentUser.OpenSubKey(this.keyName).GetValue(text));
						objectValue = RuntimeHelpers.GetObjectValue(NewLateBinding.LateGet(objectValue, null, "replace", new object[]
						{
							"\"",
							""
						}, null, null, null));
						objectValue = RuntimeHelpers.GetObjectValue(NewLateBinding.LateGet(objectValue, null, "replace", new object[]
						{
							" ",
							""
						}, null, null, null));
						objectValue = RuntimeHelpers.GetObjectValue(NewLateBinding.LateGet(objectValue, null, "replace", new object[]
						{
							"..",
							""
						}, null, null, null));
						FileInfo fileInfo = new FileInfo(Conversions.ToString(objectValue));
						if (File.Exists(fileInfo.FullName))
						{
							listViewItem.Text = fileInfo.Name;
						}
						else
						{
							listViewItem.Text = "Not found";
						}
						if (File.Exists(this.startup + "\\" + text + ".exe"))
						{
							listViewItem.SubItems.Add(text + ".exe");
						}
						else
						{
							listViewItem.SubItems.Add("Not found");
						}
						object arg_23A_0 = listViewItem.SubItems;
						Type arg_23A_1 = null;
						string arg_23A_2 = "Add";
						object[] array2 = new object[]
						{
							RuntimeHelpers.GetObjectValue(objectValue)
						};
						object[] arg_23A_3 = array2;
						string[] arg_23A_4 = null;
						Type[] arg_23A_5 = null;
						bool[] array3 = new bool[]
						{
							true
						};
						NewLateBinding.LateCall(arg_23A_0, arg_23A_1, arg_23A_2, arg_23A_3, arg_23A_4, arg_23A_5, array3, true);
						if (array3[0])
						{
							objectValue = RuntimeHelpers.GetObjectValue(array2[0]);
						}
						listViewItem.SubItems.Add(Registry.CurrentUser.OpenSubKey(this.keyName).ToString() + "\\" + text);
						listViewItem.SubItems.Add(text);
						listViewItem.ImageIndex = 0;
						this.Lv1.Items.Add(listViewItem);
					}
				}
				this.Lv1.AutoResizeColumns(ColumnHeaderAutoResizeStyle.HeaderSize);
				ima.F.sl.Text = "Detected  : " + Conversions.ToString(this.Lv1.Items.Count);
				if (this.Lv1.Items.Count == 0)
				{
					this.Button1.Text = "Scan..";
				}
				else if (this.Lv1.Items.Count == 1)
				{
					this.Button1.Text = "Remove";
				}
				else
				{
					this.Button1.Text = "Remove all";
				}
			}
		}

		// Token: 0x06000895 RID: 2197 RVA: 0x00043A1C File Offset: 0x00041C1C
		private void Button1_Click(object sender, EventArgs e)
		{
			if (Operators.CompareString(this.Button1.Text, "Remove all", false) == 0)
			{
				ima.F.sl.Text = "Removing server..";
				this.TT.BringToFront();
				this.remove();
			}
			else if (Operators.CompareString(this.Button1.Text, "Remove", false) == 0)
			{
				ima.F.sl.Text = "Removing server..";
				this.TT.BringToFront();
				this.remove();
			}
			else
			{
				ima.F.sl.Text = "Scaning server..";
				this.Lv1.BringToFront();
				this.detect();
			}
		}

		// Token: 0x06000896 RID: 2198 RVA: 0x00004B04 File Offset: 0x00002D04
		private void RescanToolStripMenuItem_Click_1(object sender, EventArgs e)
		{
			ima.F.sl.Text = "Scaning server..";
			this.Lv1.BringToFront();
			this.detect();
		}

		// Token: 0x06000897 RID: 2199 RVA: 0x00043AD4 File Offset: 0x00041CD4
		private void OpenFileLocationToolStripMenuItem_Click(object sender, EventArgs e)
		{
			try
			{
				IEnumerator enumerator = this.Lv1.SelectedItems.GetEnumerator();
				while (enumerator.MoveNext())
				{
					ListViewItem listViewItem = (ListViewItem)enumerator.Current;
					FileInfo fileInfo = new FileInfo(listViewItem.SubItems[2].Text);
					Process.Start(fileInfo.DirectoryName);
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

		// Token: 0x06000898 RID: 2200 RVA: 0x00043B58 File Offset: 0x00041D58
		private void OpenFileDuplicateToolStripMenuItem_Click(object sender, EventArgs e)
		{
			try
			{
				IEnumerator enumerator = this.Lv1.SelectedItems.GetEnumerator();
				while (enumerator.MoveNext())
				{
					ListViewItem arg_1F_0 = (ListViewItem)enumerator.Current;
					Process.Start(this.startup);
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

		// Token: 0x06000899 RID: 2201 RVA: 0x00043BC8 File Offset: 0x00041DC8
		private void RemoveSelectedToolStripMenuItem_Click(object sender, EventArgs e)
		{
			checked
			{
				try
				{
					IEnumerator enumerator = this.Lv1.SelectedItems.GetEnumerator();
					while (enumerator.MoveNext())
					{
						ListViewItem listViewItem = (ListViewItem)enumerator.Current;
						FileInfo fileInfo = new FileInfo(this.startup + "\\" + listViewItem.SubItems[1].Text);
						FileInfo fileInfo2 = new FileInfo(listViewItem.SubItems[2].Text);
						try
						{
							if (File.Exists(fileInfo2.FullName))
							{
								Process[] processesByName = Process.GetProcessesByName(fileInfo2.Name.Replace(".exe", ""));
								for (int i = 0; i < processesByName.Length; i++)
								{
									Process process = processesByName[i];
									process.Kill();
								}
							}
							Thread.Sleep(1000);
							if (File.Exists(fileInfo.FullName))
							{
								Process[] processesByName2 = Process.GetProcessesByName(fileInfo.Name.Replace(".exe", ""));
								for (int j = 0; j < processesByName2.Length; j++)
								{
									Process process2 = processesByName2[j];
									process2.Kill();
								}
							}
							Thread.Sleep(1000);
							fileInfo2.Delete();
							fileInfo.Delete();
							MyProject.Computer.Registry.CurrentUser.OpenSubKey(this.keyName, true).DeleteValue(listViewItem.SubItems[4].Text, false);
							listViewItem.Remove();
							ima.F.sl.Text = "Remove server succeeded..";
						}
						catch (Exception expr_167)
						{
							ProjectData.SetProjectError(expr_167);
							ima.F.sl.Text = "Remove server error..";
							ProjectData.ClearProjectError();
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
		}

		// Token: 0x040003EC RID: 1004
		private static List<WeakReference> __ENCList;

		// Token: 0x040003ED RID: 1005
		private IContainer components;

		// Token: 0x040003EE RID: 1006
		[AccessedThroughProperty("Button1")]
		private Button _Button1;

		// Token: 0x040003EF RID: 1007
		[AccessedThroughProperty("ImageList1")]
		private ImageList _ImageList1;

		// Token: 0x040003F0 RID: 1008
		[AccessedThroughProperty("ChProgressbar1")]
		private CHProgressbar _ChProgressbar1;

		// Token: 0x040003F1 RID: 1009
		[AccessedThroughProperty("Timer1")]
		private System.Windows.Forms.Timer _Timer1;

		// Token: 0x040003F2 RID: 1010
		[AccessedThroughProperty("TT")]
		private RichTextBox _TT;

		// Token: 0x040003F3 RID: 1011
		[AccessedThroughProperty("ContextMenuStrip1")]
		private ContextMenuStrip _ContextMenuStrip1;

		// Token: 0x040003F4 RID: 1012
		[AccessedThroughProperty("RescanToolStripMenuItem")]
		private ToolStripMenuItem _RescanToolStripMenuItem;

		// Token: 0x040003F5 RID: 1013
		[AccessedThroughProperty("AToolStripMenuItem")]
		private ToolStripSeparator _AToolStripMenuItem;

		// Token: 0x040003F6 RID: 1014
		[AccessedThroughProperty("OpenFileLocationToolStripMenuItem")]
		private ToolStripMenuItem _OpenFileLocationToolStripMenuItem;

		// Token: 0x040003F7 RID: 1015
		[AccessedThroughProperty("OpenFileDuplicateToolStripMenuItem")]
		private ToolStripMenuItem _OpenFileDuplicateToolStripMenuItem;

		// Token: 0x040003F8 RID: 1016
		[AccessedThroughProperty("ToolStripSeparator1")]
		private ToolStripSeparator _ToolStripSeparator1;

		// Token: 0x040003F9 RID: 1017
		[AccessedThroughProperty("RemoveSelectedToolStripMenuItem")]
		private ToolStripMenuItem _RemoveSelectedToolStripMenuItem;

		// Token: 0x040003FA RID: 1018
		[AccessedThroughProperty("Lv1")]
		private LV _Lv1;

		// Token: 0x040003FB RID: 1019
		[AccessedThroughProperty("ColumnHeader1")]
		private ColumnHeader _ColumnHeader1;

		// Token: 0x040003FC RID: 1020
		[AccessedThroughProperty("ColumnHeader2")]
		private ColumnHeader _ColumnHeader2;

		// Token: 0x040003FD RID: 1021
		[AccessedThroughProperty("ColumnHeader3")]
		private ColumnHeader _ColumnHeader3;

		// Token: 0x040003FE RID: 1022
		[AccessedThroughProperty("ColumnHeader4")]
		private ColumnHeader _ColumnHeader4;

		// Token: 0x040003FF RID: 1023
		private string keyName;

		// Token: 0x04000400 RID: 1024
		private string[] subkeyNames;

		// Token: 0x04000401 RID: 1025
		private string[] valueNames;

		// Token: 0x04000402 RID: 1026
		private string startup;

		// Token: 0x04000403 RID: 1027
		private string SV;

		// Token: 0x04000404 RID: 1028
		private object folder;

		// Token: 0x04000405 RID: 1029
		private bool bacup;
	}
}
