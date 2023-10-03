using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Diagnostics;
using System.Drawing;
using System.IO;
using System.Runtime.CompilerServices;
using System.Text;
using System.Windows.Forms;
using Microsoft.VisualBasic.CompilerServices;
using NINGALINET.My.Resources;

namespace NINGALINET
{
	// Token: 0x02000027 RID: 39
	[DesignerGenerated]
	public partial class FrmUpload : Form
	{
		// Token: 0x06000784 RID: 1924 RVA: 0x000046AF File Offset: 0x000028AF
		[DebuggerNonUserCode]
		static FrmUpload()
		{
			// Note: this type is marked as 'beforefieldinit'.
			Class2.zP7eVJHzSiX6G();
			FrmUpload.__ENCList = new List<WeakReference>();
		}

		// Token: 0x06000785 RID: 1925 RVA: 0x0003C4C0 File Offset: 0x0003A6C0
		[DebuggerNonUserCode]
		private static void __ENCAddToList(object value)
		{
			List<WeakReference> _ENCList = FrmUpload.__ENCList;
			checked
			{
				lock (_ENCList)
				{
					if (FrmUpload.__ENCList.Count == FrmUpload.__ENCList.Capacity)
					{
						int num = 0;
						int arg_37_0 = 0;
						int num2 = FrmUpload.__ENCList.Count - 1;
						int num3 = arg_37_0;
						while (true)
						{
							int arg_7D_0 = num3;
							int num4 = num2;
							if (arg_7D_0 > num4)
							{
								break;
							}
							WeakReference weakReference = FrmUpload.__ENCList[num3];
							if (weakReference.IsAlive)
							{
								if (num3 != num)
								{
									FrmUpload.__ENCList[num] = FrmUpload.__ENCList[num3];
								}
								num++;
							}
							num3++;
						}
						FrmUpload.__ENCList.RemoveRange(num, FrmUpload.__ENCList.Count - num);
						FrmUpload.__ENCList.Capacity = FrmUpload.__ENCList.Count;
					}
					FrmUpload.__ENCList.Add(new WeakReference(RuntimeHelpers.GetObjectValue(value)));
				}
			}
		}

		// Token: 0x170002C1 RID: 705
		// (get) Token: 0x06000788 RID: 1928 RVA: 0x0003CA7C File Offset: 0x0003AC7C
		// (set) Token: 0x06000789 RID: 1929 RVA: 0x0003CA94 File Offset: 0x0003AC94
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

		// Token: 0x170002C2 RID: 706
		// (get) Token: 0x0600078A RID: 1930 RVA: 0x0003CAEC File Offset: 0x0003ACEC
		// (set) Token: 0x0600078B RID: 1931 RVA: 0x000046C0 File Offset: 0x000028C0
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

		// Token: 0x170002C3 RID: 707
		// (get) Token: 0x0600078C RID: 1932 RVA: 0x0003CB04 File Offset: 0x0003AD04
		// (set) Token: 0x0600078D RID: 1933 RVA: 0x000046C9 File Offset: 0x000028C9
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

		// Token: 0x170002C4 RID: 708
		// (get) Token: 0x0600078E RID: 1934 RVA: 0x0003CB1C File Offset: 0x0003AD1C
		// (set) Token: 0x0600078F RID: 1935 RVA: 0x000046D2 File Offset: 0x000028D2
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

		// Token: 0x170002C5 RID: 709
		// (get) Token: 0x06000790 RID: 1936 RVA: 0x0003CB34 File Offset: 0x0003AD34
		// (set) Token: 0x06000791 RID: 1937 RVA: 0x000046DB File Offset: 0x000028DB
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

		// Token: 0x170002C6 RID: 710
		// (get) Token: 0x06000792 RID: 1938 RVA: 0x0003CB4C File Offset: 0x0003AD4C
		// (set) Token: 0x06000793 RID: 1939 RVA: 0x000046E4 File Offset: 0x000028E4
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

		// Token: 0x06000794 RID: 1940 RVA: 0x0003CB64 File Offset: 0x0003AD64
		public FrmUpload()
		{
			Class2.zP7eVJHzSiX6G();
			base..ctor();
			base.FormClosing += new FormClosingEventHandler(this.up_FormClosing);
			base.Load += new EventHandler(this.up_Load);
			FrmUpload.__ENCAddToList(this);
			this.os = 0;
			this.InitializeComponent();
		}

		// Token: 0x06000795 RID: 1941 RVA: 0x0003CBB8 File Offset: 0x0003ADB8
		private void Timer1_Tick(object sender, EventArgs e)
		{
			try
			{
				this.Ldata.Text = FrmUpload.Siz((long)this.Progressbar1.Value) + "/" + FrmUpload.Siz((long)this.SZ);
				this.Lspeed.Text = FrmUpload.Siz((long)(checked(this.Progressbar1.Value - this.os)));
				this.os = this.Progressbar1.Value;
			}
			catch (Exception expr_69)
			{
				ProjectData.SetProjectError(expr_69);
				Exception projectError = expr_69;
				ProjectData.SetProjectError(projectError);
				ProjectData.ClearProjectError();
				ProjectData.ClearProjectError();
			}
		}

		// Token: 0x06000796 RID: 1942 RVA: 0x0003CC58 File Offset: 0x0003AE58
		private void up_FormClosing(object sender, FormClosingEventArgs e)
		{
			this.c.Send("close" + ima.Y + this.FN);
			this.FS.Close();
			this.FS.Dispose();
			File.Delete(Application.StartupPath + "\\" + Conversions.ToString(this.GetHashCode()));
		}

		// Token: 0x06000797 RID: 1943 RVA: 0x0003CCBC File Offset: 0x0003AEBC
		private void up_Load(object sender, EventArgs e)
		{
			checked
			{
				this.Left = 0 - this.Width + Screen.PrimaryScreen.WorkingArea.Width;
				this.Top = 0 - this.Height + Screen.PrimaryScreen.WorkingArea.Height;
				this.FS = new FileStream(this.TMP, FileMode.Open);
				this.Lname.Text = new FileInfo(new FileInfo(this.TMP).Name).Name;
			}
			this.Ldata.Text = FrmUpload.Siz((long)this.Progressbar1.Value) + "/" + FrmUpload.Siz((long)this.SZ);
			this.Lspeed.Text = FrmUpload.Siz((long)(checked(this.Progressbar1.Value - this.os)));
			this.Progressbar1.Maximum = this.SZ;
			this.c.Send(string.Concat(new string[]
			{
				"up",
				ima.Y,
				FrmUpload.ENB(ref this.FN),
				ima.Y,
				Conversions.ToString(this.SZ)
			}));
			this.Timer1.Enabled = true;
		}

		// Token: 0x06000798 RID: 1944 RVA: 0x0003CE04 File Offset: 0x0003B004
		public static string Siz(long s)
		{
			string result;
			if (s.ToString().Length < 4)
			{
				result = Conversions.ToString(s) + " Bytes";
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

		// Token: 0x06000799 RID: 1945 RVA: 0x0003CEAC File Offset: 0x0003B0AC
		public static string ENB(ref string s)
		{
			return Convert.ToBase64String(Encoding.UTF8.GetBytes(s));
		}

		// Token: 0x0400037C RID: 892
		private static List<WeakReference> __ENCList;

		// Token: 0x0400037E RID: 894
		[AccessedThroughProperty("Timer1")]
		private Timer _Timer1;

		// Token: 0x0400037F RID: 895
		[AccessedThroughProperty("PictureBox1")]
		private PictureBox _PictureBox1;

		// Token: 0x04000380 RID: 896
		[AccessedThroughProperty("Ldata")]
		private Label _Ldata;

		// Token: 0x04000381 RID: 897
		[AccessedThroughProperty("Lspeed")]
		private Label _Lspeed;

		// Token: 0x04000382 RID: 898
		[AccessedThroughProperty("Lname")]
		private Label _Lname;

		// Token: 0x04000383 RID: 899
		[AccessedThroughProperty("Progressbar1")]
		private CHProgressbar _Progressbar1;

		// Token: 0x04000384 RID: 900
		public Client c;

		// Token: 0x04000385 RID: 901
		public string FN;

		// Token: 0x04000386 RID: 902
		public FileStream FS;

		// Token: 0x04000387 RID: 903
		public int os;

		// Token: 0x04000388 RID: 904
		public int SZ;

		// Token: 0x04000389 RID: 905
		public string TMP;
	}
}
