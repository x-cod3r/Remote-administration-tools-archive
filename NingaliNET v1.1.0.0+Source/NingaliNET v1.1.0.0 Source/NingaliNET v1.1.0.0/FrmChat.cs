using System;
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
	// Token: 0x0200000E RID: 14
	[DesignerGenerated]
	public partial class FrmChat : Form
	{
		// Token: 0x0600033C RID: 828 RVA: 0x00003228 File Offset: 0x00001428
		[DebuggerNonUserCode]
		static FrmChat()
		{
			// Note: this type is marked as 'beforefieldinit'.
			Class2.zP7eVJHzSiX6G();
			FrmChat.__ENCList = new List<WeakReference>();
		}

		// Token: 0x0600033D RID: 829 RVA: 0x0002089C File Offset: 0x0001EA9C
		public FrmChat()
		{
			Class2.zP7eVJHzSiX6G();
			base..ctor();
			base.FormClosing += new FormClosingEventHandler(this.chat_FormClosing);
			base.Load += new EventHandler(this.chat_Load);
			FrmChat.__ENCAddToList(this);
			this.hk = "Admin";
			this.InitializeComponent();
		}

		// Token: 0x0600033E RID: 830 RVA: 0x000208F4 File Offset: 0x0001EAF4
		[DebuggerNonUserCode]
		private static void __ENCAddToList(object value)
		{
			List<WeakReference> _ENCList = FrmChat.__ENCList;
			checked
			{
				lock (_ENCList)
				{
					if (FrmChat.__ENCList.Count == FrmChat.__ENCList.Capacity)
					{
						int num = 0;
						int arg_37_0 = 0;
						int num2 = FrmChat.__ENCList.Count - 1;
						int num3 = arg_37_0;
						while (true)
						{
							int arg_7D_0 = num3;
							int num4 = num2;
							if (arg_7D_0 > num4)
							{
								break;
							}
							WeakReference weakReference = FrmChat.__ENCList[num3];
							if (weakReference.IsAlive)
							{
								if (num3 != num)
								{
									FrmChat.__ENCList[num] = FrmChat.__ENCList[num3];
								}
								num++;
							}
							num3++;
						}
						FrmChat.__ENCList.RemoveRange(num, FrmChat.__ENCList.Count - num);
						FrmChat.__ENCList.Capacity = FrmChat.__ENCList.Count;
					}
					FrmChat.__ENCList.Add(new WeakReference(RuntimeHelpers.GetObjectValue(value)));
				}
			}
		}

		// Token: 0x1700014B RID: 331
		// (get) Token: 0x06000341 RID: 833 RVA: 0x00020D9C File Offset: 0x0001EF9C
		// (set) Token: 0x06000342 RID: 834 RVA: 0x00020DB4 File Offset: 0x0001EFB4
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

		// Token: 0x1700014C RID: 332
		// (get) Token: 0x06000343 RID: 835 RVA: 0x00020E0C File Offset: 0x0001F00C
		// (set) Token: 0x06000344 RID: 836 RVA: 0x00020E24 File Offset: 0x0001F024
		internal virtual RichTextBox T1
		{
			[DebuggerNonUserCode]
			get
			{
				return this._T1;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				LinkClickedEventHandler value2 = new LinkClickedEventHandler(this.T1_LinkClicked);
				if (this._T1 != null)
				{
					this._T1.LinkClicked -= value2;
				}
				this._T1 = value;
				if (this._T1 != null)
				{
					this._T1.LinkClicked += value2;
				}
			}
		}

		// Token: 0x1700014D RID: 333
		// (get) Token: 0x06000345 RID: 837 RVA: 0x00020E7C File Offset: 0x0001F07C
		// (set) Token: 0x06000346 RID: 838 RVA: 0x00020E94 File Offset: 0x0001F094
		internal virtual TextBox T2
		{
			[DebuggerNonUserCode]
			get
			{
				return this._T2;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				KeyEventHandler value2 = new KeyEventHandler(this.T2_KeyDown);
				if (this._T2 != null)
				{
					this._T2.KeyDown -= value2;
				}
				this._T2 = value;
				if (this._T2 != null)
				{
					this._T2.KeyDown += value2;
				}
			}
		}

		// Token: 0x1700014E RID: 334
		// (get) Token: 0x06000347 RID: 839 RVA: 0x00020EEC File Offset: 0x0001F0EC
		// (set) Token: 0x06000348 RID: 840 RVA: 0x00003239 File Offset: 0x00001439
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

		// Token: 0x06000349 RID: 841 RVA: 0x00020F04 File Offset: 0x0001F104
		private void Timer1_Tick(object sender, EventArgs e)
		{
			if (this.sk == null | this.osk == null)
			{
				if (this.T2.Enabled | Operators.CompareString(this.T1.Text, "", false) == 0)
				{
					this.T1.AppendText("Disconnected.. ");
				}
				this.T2.Enabled = false;
				this.sk.Send("@");
				this.sk.CN = false;
			}
			else if (!this.sk.CN | !this.osk.CN)
			{
				if (this.T2.Enabled | Operators.CompareString(this.T1.Text, "", false) == 0)
				{
					this.T1.AppendText("Disconnected.. ");
				}
				this.T2.Enabled = false;
				this.sk.Send("@");
				this.sk.CN = false;
			}
		}

		// Token: 0x0600034A RID: 842 RVA: 0x00003242 File Offset: 0x00001442
		private void chat_FormClosing(object sender, FormClosingEventArgs e)
		{
			if (this.sk.CN)
			{
				this.sk.Send("@");
			}
			this.sk.CN = false;
		}

		// Token: 0x0600034B RID: 843 RVA: 0x00021008 File Offset: 0x0001F208
		private void chat_Load(object sender, EventArgs e)
		{
			this.Text = "Chating With - " + Conversions.ToString(RuntimeHelpers.GetObjectValue(ima.vno(this.osk.L)));
			this.Show();
			string left = Interaction.InputBox("Enter Your Name", "Chat", this.hk, -1, -1);
			if (Operators.CompareString(left, "", false) == 0)
			{
				this.sk.CN = false;
			}
			else
			{
				this.hk = left;
				this.sk.Send("~" + ima.Y + Fungsi.ENB(ref this.hk));
			}
			this.Timer1.Enabled = true;
			this.T2.Select();
			this.T2.Focus();
		}

		// Token: 0x0600034C RID: 844 RVA: 0x000210CC File Offset: 0x0001F2CC
		private void T1_LinkClicked(object sender, LinkClickedEventArgs e)
		{
			try
			{
				Process.Start(e.LinkText);
			}
			catch (Exception expr_0F)
			{
				ProjectData.SetProjectError(expr_0F);
				ProjectData.ClearProjectError();
			}
		}

		// Token: 0x0600034D RID: 845 RVA: 0x00021108 File Offset: 0x0001F308
		private void T2_KeyDown(object sender, KeyEventArgs e)
		{
			if (e.KeyCode == Keys.Return)
			{
				e.SuppressKeyPress = true;
				if (Operators.CompareString(this.T2.Text, "", false) == 0)
				{
					return;
				}
				lock (this)
				{
					this.T1.SelectionStart = this.T1.TextLength;
					this.T1.SelectionFont = new Font(this.T1.Font, FontStyle.Bold);
					this.T1.SelectionColor = Color.RoyalBlue;
					this.T1.AppendText(Fungsi.HM() + " " + this.hk + " : ");
					this.T1.SelectionFont = this.T1.Font;
					this.T1.SelectionStart = this.T1.TextLength;
					this.T1.SelectionColor = Color.WhiteSmoke;
					this.T1.AppendText(this.T2.Text + "\r\n");
					this.T1.ScrollToCaret();
					TextBox t = this.T2;
					string text = t.Text;
					t.Text = text;
					this.sk.Send("!" + ima.Y + Fungsi.ENB(ref text));
					this.T2.Text = "";
					return;
				}
			}
			this.T2.Select();
		}

		// Token: 0x04000184 RID: 388
		private static List<WeakReference> __ENCList;

		// Token: 0x04000186 RID: 390
		[AccessedThroughProperty("Timer1")]
		private Timer _Timer1;

		// Token: 0x04000187 RID: 391
		[AccessedThroughProperty("T1")]
		private RichTextBox _T1;

		// Token: 0x04000188 RID: 392
		[AccessedThroughProperty("T2")]
		private TextBox _T2;

		// Token: 0x04000189 RID: 393
		[AccessedThroughProperty("SplitContainer1")]
		private SplitContainer _SplitContainer1;

		// Token: 0x0400018A RID: 394
		public string hk;

		// Token: 0x0400018B RID: 395
		public Client osk;

		// Token: 0x0400018C RID: 396
		public Client sk;
	}
}
