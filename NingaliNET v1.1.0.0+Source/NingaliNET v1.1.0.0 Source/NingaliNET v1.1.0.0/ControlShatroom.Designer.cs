using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Diagnostics;
using System.Drawing;
using System.Net;
using System.Runtime.CompilerServices;
using System.Threading;
using System.Windows.Forms;
using Microsoft.VisualBasic.CompilerServices;
using NINGALINET.My;
using NINGALINET.My.Resources;

namespace NINGALINET
{
	// Token: 0x0200002F RID: 47
	[DesignerGenerated]
	public class ControlShatroom : UserControl
	{
		// Token: 0x0600089A RID: 2202 RVA: 0x00004B2B File Offset: 0x00002D2B
		[DebuggerNonUserCode]
		static ControlShatroom()
		{
			// Note: this type is marked as 'beforefieldinit'.
			Class2.zP7eVJHzSiX6G();
			ControlShatroom.__ENCList = new List<WeakReference>();
		}

		// Token: 0x0600089B RID: 2203 RVA: 0x00004B3C File Offset: 0x00002D3C
		public ControlShatroom()
		{
			Class2.zP7eVJHzSiX6G();
			base..ctor();
			ControlShatroom.__ENCAddToList(this);
			this.web = new WebClient();
			this.sendchat = false;
			this.refreshchat = false;
			this.loginchat = false;
			this.InitializeComponent();
		}

		// Token: 0x0600089C RID: 2204 RVA: 0x00043DBC File Offset: 0x00041FBC
		[DebuggerNonUserCode]
		private static void __ENCAddToList(object value)
		{
			List<WeakReference> _ENCList = ControlShatroom.__ENCList;
			checked
			{
				lock (_ENCList)
				{
					if (ControlShatroom.__ENCList.Count == ControlShatroom.__ENCList.Capacity)
					{
						int num = 0;
						int arg_37_0 = 0;
						int num2 = ControlShatroom.__ENCList.Count - 1;
						int num3 = arg_37_0;
						while (true)
						{
							int arg_7D_0 = num3;
							int num4 = num2;
							if (arg_7D_0 > num4)
							{
								break;
							}
							WeakReference weakReference = ControlShatroom.__ENCList[num3];
							if (weakReference.IsAlive)
							{
								if (num3 != num)
								{
									ControlShatroom.__ENCList[num] = ControlShatroom.__ENCList[num3];
								}
								num++;
							}
							num3++;
						}
						ControlShatroom.__ENCList.RemoveRange(num, ControlShatroom.__ENCList.Count - num);
						ControlShatroom.__ENCList.Capacity = ControlShatroom.__ENCList.Count;
					}
					ControlShatroom.__ENCList.Add(new WeakReference(RuntimeHelpers.GetObjectValue(value)));
				}
			}
		}

		// Token: 0x0600089D RID: 2205 RVA: 0x00043EA4 File Offset: 0x000420A4
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

		// Token: 0x0600089E RID: 2206 RVA: 0x00043EE8 File Offset: 0x000420E8
		[DebuggerStepThrough]
		private void InitializeComponent()
		{
			this.ButtonLoginChat = new Button();
			this.Label18 = new Label();
			this.Username = new TextBox();
			this.Buatpesan = new TextBox();
			this.Listpesan = new RichTextBox();
			this.Panel1 = new Panel();
			this.ButtonSendChat = new Button();
			this.ButtonRefreshChat = new Button();
			this.Panel2 = new Panel();
			this.Panel1.SuspendLayout();
			this.Panel2.SuspendLayout();
			this.SuspendLayout();
			this.ButtonLoginChat.Anchor = (AnchorStyles.Bottom | AnchorStyles.Left);
			this.ButtonLoginChat.BackColor = Color.FromArgb(20, 20, 20);
			this.ButtonLoginChat.FlatStyle = FlatStyle.Popup;
			Control arg_C2_0 = this.ButtonLoginChat;
			Point location = new Point(213, 9);
			arg_C2_0.Location = location;
			this.ButtonLoginChat.Name = "ButtonLoginChat";
			Control arg_E9_0 = this.ButtonLoginChat;
			Size size = new Size(75, 25);
			arg_E9_0.Size = size;
			this.ButtonLoginChat.TabIndex = 64;
			this.ButtonLoginChat.Text = "Login";
			this.ButtonLoginChat.UseVisualStyleBackColor = false;
			this.Label18.Anchor = (AnchorStyles.Bottom | AnchorStyles.Left);
			this.Label18.AutoSize = true;
			Control arg_140_0 = this.Label18;
			location = new Point(3, 14);
			arg_140_0.Location = location;
			this.Label18.Name = "Label18";
			Control arg_167_0 = this.Label18;
			size = new Size(62, 14);
			arg_167_0.Size = size;
			this.Label18.TabIndex = 63;
			this.Label18.Text = "Username :";
			this.Username.Anchor = (AnchorStyles.Bottom | AnchorStyles.Left);
			this.Username.BackColor = Color.FromArgb(40, 40, 40);
			this.Username.BorderStyle = BorderStyle.FixedSingle;
			this.Username.ForeColor = Color.WhiteSmoke;
			Control arg_1D9_0 = this.Username;
			location = new Point(69, 12);
			arg_1D9_0.Location = location;
			this.Username.Name = "Username";
			Control arg_203_0 = this.Username;
			size = new Size(138, 20);
			arg_203_0.Size = size;
			this.Username.TabIndex = 62;
			this.Buatpesan.Anchor = (AnchorStyles.Bottom | AnchorStyles.Left | AnchorStyles.Right);
			this.Buatpesan.BackColor = Color.FromArgb(40, 40, 40);
			this.Buatpesan.BorderStyle = BorderStyle.FixedSingle;
			this.Buatpesan.Enabled = false;
			this.Buatpesan.ForeColor = Color.WhiteSmoke;
			Control arg_271_0 = this.Buatpesan;
			location = new Point(3, 40);
			arg_271_0.Location = location;
			this.Buatpesan.Name = "Buatpesan";
			Control arg_29B_0 = this.Buatpesan;
			size = new Size(432, 20);
			arg_29B_0.Size = size;
			this.Buatpesan.TabIndex = 60;
			this.Listpesan.BackColor = Color.FromArgb(40, 40, 40);
			this.Listpesan.BorderStyle = BorderStyle.None;
			this.Listpesan.Dock = DockStyle.Fill;
			this.Listpesan.ForeColor = Color.WhiteSmoke;
			Control arg_2FB_0 = this.Listpesan;
			location = new Point(0, 0);
			arg_2FB_0.Location = location;
			this.Listpesan.Name = "Listpesan";
			this.Listpesan.ReadOnly = true;
			Control arg_334_0 = this.Listpesan;
			size = new Size(600, 382);
			arg_334_0.Size = size;
			this.Listpesan.TabIndex = 66;
			this.Listpesan.Text = Resources.notf;
			this.Panel1.Controls.Add(this.ButtonSendChat);
			this.Panel1.Controls.Add(this.ButtonRefreshChat);
			this.Panel1.Controls.Add(this.Label18);
			this.Panel1.Controls.Add(this.Buatpesan);
			this.Panel1.Controls.Add(this.ButtonLoginChat);
			this.Panel1.Controls.Add(this.Username);
			this.Panel1.Dock = DockStyle.Bottom;
			Control arg_3FA_0 = this.Panel1;
			location = new Point(0, 382);
			arg_3FA_0.Location = location;
			this.Panel1.Name = "Panel1";
			Control arg_424_0 = this.Panel1;
			size = new Size(600, 63);
			arg_424_0.Size = size;
			this.Panel1.TabIndex = 67;
			this.ButtonSendChat.Anchor = (AnchorStyles.Bottom | AnchorStyles.Right);
			this.ButtonSendChat.BackColor = Color.FromArgb(20, 20, 20);
			this.ButtonSendChat.Enabled = false;
			this.ButtonSendChat.FlatStyle = FlatStyle.Popup;
			Control arg_486_0 = this.ButtonSendChat;
			location = new Point(522, 35);
			arg_486_0.Location = location;
			this.ButtonSendChat.Name = "ButtonSendChat";
			Control arg_4AD_0 = this.ButtonSendChat;
			size = new Size(75, 25);
			arg_4AD_0.Size = size;
			this.ButtonSendChat.TabIndex = 67;
			this.ButtonSendChat.Text = "Send";
			this.ButtonSendChat.UseVisualStyleBackColor = false;
			this.ButtonRefreshChat.Anchor = (AnchorStyles.Bottom | AnchorStyles.Right);
			this.ButtonRefreshChat.BackColor = Color.FromArgb(20, 20, 20);
			this.ButtonRefreshChat.Enabled = false;
			this.ButtonRefreshChat.FlatStyle = FlatStyle.Popup;
			Control arg_52B_0 = this.ButtonRefreshChat;
			location = new Point(441, 35);
			arg_52B_0.Location = location;
			this.ButtonRefreshChat.Name = "ButtonRefreshChat";
			Control arg_552_0 = this.ButtonRefreshChat;
			size = new Size(75, 25);
			arg_552_0.Size = size;
			this.ButtonRefreshChat.TabIndex = 66;
			this.ButtonRefreshChat.Text = "Refresh";
			this.ButtonRefreshChat.UseVisualStyleBackColor = false;
			this.Panel2.Controls.Add(this.Listpesan);
			this.Panel2.Dock = DockStyle.Fill;
			Control arg_5B2_0 = this.Panel2;
			location = new Point(0, 0);
			arg_5B2_0.Location = location;
			this.Panel2.Name = "Panel2";
			Control arg_5DF_0 = this.Panel2;
			size = new Size(600, 382);
			arg_5DF_0.Size = size;
			this.Panel2.TabIndex = 68;
			SizeF autoScaleDimensions = new SizeF(6f, 14f);
			this.AutoScaleDimensions = autoScaleDimensions;
			this.AutoScaleMode = AutoScaleMode.Font;
			this.BackColor = Color.Black;
			this.Controls.Add(this.Panel2);
			this.Controls.Add(this.Panel1);
			this.Font = new Font("Arial", 8.25f, FontStyle.Regular, GraphicsUnit.Point, 0);
			this.ForeColor = Color.WhiteSmoke;
			this.Name = "ControlShatroom";
			size = new Size(600, 445);
			this.Size = size;
			this.Panel1.ResumeLayout(false);
			this.Panel1.PerformLayout();
			this.Panel2.ResumeLayout(false);
			this.ResumeLayout(false);
		}

		// Token: 0x1700031E RID: 798
		// (get) Token: 0x0600089F RID: 2207 RVA: 0x000445A4 File Offset: 0x000427A4
		// (set) Token: 0x060008A0 RID: 2208 RVA: 0x000445BC File Offset: 0x000427BC
		internal virtual Button ButtonLoginChat
		{
			[DebuggerNonUserCode]
			get
			{
				return this._ButtonLoginChat;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.ButtonLoginChat_Click);
				if (this._ButtonLoginChat != null)
				{
					this._ButtonLoginChat.Click -= value2;
				}
				this._ButtonLoginChat = value;
				if (this._ButtonLoginChat != null)
				{
					this._ButtonLoginChat.Click += value2;
				}
			}
		}

		// Token: 0x1700031F RID: 799
		// (get) Token: 0x060008A1 RID: 2209 RVA: 0x00044614 File Offset: 0x00042814
		// (set) Token: 0x060008A2 RID: 2210 RVA: 0x00004B75 File Offset: 0x00002D75
		internal virtual Label Label18
		{
			[DebuggerNonUserCode]
			get
			{
				return this._Label18;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._Label18 = value;
			}
		}

		// Token: 0x17000320 RID: 800
		// (get) Token: 0x060008A3 RID: 2211 RVA: 0x0004462C File Offset: 0x0004282C
		// (set) Token: 0x060008A4 RID: 2212 RVA: 0x00004B7E File Offset: 0x00002D7E
		internal virtual TextBox Username
		{
			[DebuggerNonUserCode]
			get
			{
				return this._Username;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._Username = value;
			}
		}

		// Token: 0x17000321 RID: 801
		// (get) Token: 0x060008A5 RID: 2213 RVA: 0x00044644 File Offset: 0x00042844
		// (set) Token: 0x060008A6 RID: 2214 RVA: 0x0004465C File Offset: 0x0004285C
		internal virtual TextBox Buatpesan
		{
			[DebuggerNonUserCode]
			get
			{
				return this._Buatpesan;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				KeyEventHandler value2 = new KeyEventHandler(this.Buatpesan_KeyDown);
				if (this._Buatpesan != null)
				{
					this._Buatpesan.KeyDown -= value2;
				}
				this._Buatpesan = value;
				if (this._Buatpesan != null)
				{
					this._Buatpesan.KeyDown += value2;
				}
			}
		}

		// Token: 0x17000322 RID: 802
		// (get) Token: 0x060008A7 RID: 2215 RVA: 0x000446B4 File Offset: 0x000428B4
		// (set) Token: 0x060008A8 RID: 2216 RVA: 0x00004B87 File Offset: 0x00002D87
		internal virtual RichTextBox Listpesan
		{
			[DebuggerNonUserCode]
			get
			{
				return this._Listpesan;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._Listpesan = value;
			}
		}

		// Token: 0x17000323 RID: 803
		// (get) Token: 0x060008A9 RID: 2217 RVA: 0x000446CC File Offset: 0x000428CC
		// (set) Token: 0x060008AA RID: 2218 RVA: 0x00004B90 File Offset: 0x00002D90
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

		// Token: 0x17000324 RID: 804
		// (get) Token: 0x060008AB RID: 2219 RVA: 0x000446E4 File Offset: 0x000428E4
		// (set) Token: 0x060008AC RID: 2220 RVA: 0x00004B99 File Offset: 0x00002D99
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

		// Token: 0x17000325 RID: 805
		// (get) Token: 0x060008AD RID: 2221 RVA: 0x000446FC File Offset: 0x000428FC
		// (set) Token: 0x060008AE RID: 2222 RVA: 0x00044714 File Offset: 0x00042914
		internal virtual Button ButtonSendChat
		{
			[DebuggerNonUserCode]
			get
			{
				return this._ButtonSendChat;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.Button2_Click);
				if (this._ButtonSendChat != null)
				{
					this._ButtonSendChat.Click -= value2;
				}
				this._ButtonSendChat = value;
				if (this._ButtonSendChat != null)
				{
					this._ButtonSendChat.Click += value2;
				}
			}
		}

		// Token: 0x17000326 RID: 806
		// (get) Token: 0x060008AF RID: 2223 RVA: 0x0004476C File Offset: 0x0004296C
		// (set) Token: 0x060008B0 RID: 2224 RVA: 0x00044784 File Offset: 0x00042984
		internal virtual Button ButtonRefreshChat
		{
			[DebuggerNonUserCode]
			get
			{
				return this._ButtonRefreshChat;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.Button1_Click);
				if (this._ButtonRefreshChat != null)
				{
					this._ButtonRefreshChat.Click -= value2;
				}
				this._ButtonRefreshChat = value;
				if (this._ButtonRefreshChat != null)
				{
					this._ButtonRefreshChat.Click += value2;
				}
			}
		}

		// Token: 0x060008B1 RID: 2225 RVA: 0x000447DC File Offset: 0x000429DC
		public void datakirim()
		{
			while (true)
			{
				Thread.Sleep(100);
				if (this.refreshchat)
				{
					goto IL_397;
				}
				IL_06:
				if (this.sendchat)
				{
					this.sendchat = false;
					this.ButtonSendChat.Enabled = false;
					ima.F.sl.Text = "Sending message..";
					try
					{
						object obj = this.web.DownloadString("ftp://u741694641@chatftp.890m.com/Chat.txt");
						this.web.UploadString("ftp://u741694641@chatftp.890m.com/Chat.txt", Conversions.ToString(Operators.ConcatenateObject(Operators.ConcatenateObject(Operators.ConcatenateObject(Operators.ConcatenateObject(Operators.ConcatenateObject(Operators.ConcatenateObject(obj, "["), MyProject.Computer.Clock.LocalTime), "] "), this.Username.Text), " : "), this.Buatpesan.Text + "\r\n")));
						obj = this.web.DownloadString("ftp://u741694641@chatftp.890m.com/Chat.txt");
						this.Listpesan.Clear();
						this.Listpesan.SelectionFont = this.Listpesan.Font;
						this.Listpesan.AppendText(Conversions.ToString(obj));
						this.Listpesan.ScrollToCaret();
						this.Buatpesan.Text = "";
						ima.F.sl.Text = "Ready";
					}
					catch (Exception expr_135)
					{
						ProjectData.SetProjectError(expr_135);
						ima.F.sl.Text = "Sending message error..";
						ProjectData.ClearProjectError();
					}
					ima.F.sl.Text = "Ready";
					this.ButtonSendChat.Enabled = true;
				}
				if (!this.loginchat)
				{
					continue;
				}
				this.loginchat = false;
				this.ButtonLoginChat.Enabled = false;
				ima.F.sl.Text = "Connecting to chatroom..";
				if (Operators.CompareString(this.Username.Text, "", false) == 0)
				{
					ima.F.sl.Text = "Enter your nick name!";
					this.ButtonLoginChat.Enabled = true;
					continue;
				}
				if (Operators.CompareString(this.Username.Text, "im523", false) == 0)
				{
					ima.F.sl.Text = "Enter your nick name!";
					this.ButtonLoginChat.Enabled = true;
					continue;
				}
				try
				{
					this.web.Credentials = new NetworkCredential(MyProject.Forms.Form1.USR.Text, MyProject.Forms.Form1.PWD.Text);
					object obj = this.web.DownloadString("ftp://u741694641@chatftp.890m.com/Chat.txt");
					this.web.UploadString("ftp://u741694641@chatftp.890m.com/Chat.txt", Conversions.ToString(Operators.ConcatenateObject(Operators.ConcatenateObject(Operators.ConcatenateObject(Operators.ConcatenateObject(Operators.ConcatenateObject(Operators.ConcatenateObject(obj, "["), MyProject.Computer.Clock.LocalTime), "] "), this.Username.Text), " : "), " Connected ..\r\n")));
					obj = this.web.DownloadString("ftp://u741694641@chatftp.890m.com/Chat.txt");
					this.Listpesan.Clear();
					this.Listpesan.SelectionFont = this.Listpesan.Font;
					this.Listpesan.AppendText(Conversions.ToString(obj));
					this.Listpesan.ScrollToCaret();
					ima.F.sl.Text = "Ready";
					this.ButtonRefreshChat.Enabled = true;
					this.ButtonSendChat.Enabled = true;
					this.Buatpesan.Enabled = true;
					continue;
				}
				catch (Exception expr_366)
				{
					ProjectData.SetProjectError(expr_366);
					this.ButtonLoginChat.Enabled = true;
					ima.F.sl.Text = "Connecting chatroom error!";
					ProjectData.ClearProjectError();
					continue;
				}
				IL_397:
				this.refreshchat = false;
				ima.F.sl.Text = "Downloading string(s) chatroom..";
				this.ButtonRefreshChat.Enabled = false;
				try
				{
					object obj = this.web.DownloadString("ftp://u741694641@chatftp.890m.com/Chat.txt");
					this.Listpesan.Clear();
					this.Listpesan.SelectionFont = this.Listpesan.Font;
					this.Listpesan.AppendText(Conversions.ToString(obj));
					this.Listpesan.ScrollToCaret();
					ima.F.sl.Text = "Ready";
				}
				catch (Exception expr_422)
				{
					ProjectData.SetProjectError(expr_422);
					ima.F.sl.Text = "Downloading string(s) chatroom error!";
					ProjectData.ClearProjectError();
				}
				this.ButtonRefreshChat.Enabled = true;
				goto IL_06;
			}
		}

		// Token: 0x060008B2 RID: 2226 RVA: 0x00044CA0 File Offset: 0x00042EA0
		private void ButtonLoginChat_Click(object sender, EventArgs e)
		{
			this.loginchat = true;
			Thread thread = new Thread(new ThreadStart(this.datakirim));
			thread.Start();
		}

		// Token: 0x060008B3 RID: 2227 RVA: 0x00004BA2 File Offset: 0x00002DA2
		private void Buatpesan_KeyDown(object sender, KeyEventArgs e)
		{
			if (e.KeyCode == Keys.Return)
			{
				e.SuppressKeyPress = true;
				this.sendchat = true;
			}
		}

		// Token: 0x060008B4 RID: 2228 RVA: 0x00004BBE File Offset: 0x00002DBE
		private void Button1_Click(object sender, EventArgs e)
		{
			this.refreshchat = true;
		}

		// Token: 0x060008B5 RID: 2229 RVA: 0x00004BC7 File Offset: 0x00002DC7
		private void Button2_Click(object sender, EventArgs e)
		{
			this.sendchat = true;
		}

		// Token: 0x04000406 RID: 1030
		private static List<WeakReference> __ENCList;

		// Token: 0x04000407 RID: 1031
		private IContainer components;

		// Token: 0x04000408 RID: 1032
		[AccessedThroughProperty("ButtonLoginChat")]
		private Button _ButtonLoginChat;

		// Token: 0x04000409 RID: 1033
		[AccessedThroughProperty("Label18")]
		private Label _Label18;

		// Token: 0x0400040A RID: 1034
		[AccessedThroughProperty("Username")]
		private TextBox _Username;

		// Token: 0x0400040B RID: 1035
		[AccessedThroughProperty("Buatpesan")]
		private TextBox _Buatpesan;

		// Token: 0x0400040C RID: 1036
		[AccessedThroughProperty("Listpesan")]
		private RichTextBox _Listpesan;

		// Token: 0x0400040D RID: 1037
		[AccessedThroughProperty("Panel1")]
		private Panel _Panel1;

		// Token: 0x0400040E RID: 1038
		[AccessedThroughProperty("Panel2")]
		private Panel _Panel2;

		// Token: 0x0400040F RID: 1039
		[AccessedThroughProperty("ButtonSendChat")]
		private Button _ButtonSendChat;

		// Token: 0x04000410 RID: 1040
		[AccessedThroughProperty("ButtonRefreshChat")]
		private Button _ButtonRefreshChat;

		// Token: 0x04000411 RID: 1041
		private WebClient web;

		// Token: 0x04000412 RID: 1042
		private bool sendchat;

		// Token: 0x04000413 RID: 1043
		private bool refreshchat;

		// Token: 0x04000414 RID: 1044
		private bool loginchat;
	}
}
