using System;
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
using Mono.Cecil;
using Mono.Cecil.Cil;
using Mono.Collections.Generic;

namespace NINGALINET
{
	// Token: 0x02000030 RID: 48
	[DesignerGenerated]
	public class ControlToolBOX : UserControl
	{
		// Token: 0x060008B6 RID: 2230 RVA: 0x00004BD0 File Offset: 0x00002DD0
		[DebuggerNonUserCode]
		static ControlToolBOX()
		{
			// Note: this type is marked as 'beforefieldinit'.
			Class2.zP7eVJHzSiX6G();
			ControlToolBOX.__ENCList = new List<WeakReference>();
		}

		// Token: 0x060008B7 RID: 2231 RVA: 0x00004BE1 File Offset: 0x00002DE1
		public ControlToolBOX()
		{
			Class2.zP7eVJHzSiX6G();
			base..ctor();
			ControlToolBOX.__ENCAddToList(this);
			this.folder = Application.StartupPath + "\\Bin\\";
			this.InitializeComponent();
		}

		// Token: 0x060008B8 RID: 2232 RVA: 0x00044CD0 File Offset: 0x00042ED0
		[DebuggerNonUserCode]
		private static void __ENCAddToList(object value)
		{
			List<WeakReference> _ENCList = ControlToolBOX.__ENCList;
			checked
			{
				lock (_ENCList)
				{
					if (ControlToolBOX.__ENCList.Count == ControlToolBOX.__ENCList.Capacity)
					{
						int num = 0;
						int arg_37_0 = 0;
						int num2 = ControlToolBOX.__ENCList.Count - 1;
						int num3 = arg_37_0;
						while (true)
						{
							int arg_7D_0 = num3;
							int num4 = num2;
							if (arg_7D_0 > num4)
							{
								break;
							}
							WeakReference weakReference = ControlToolBOX.__ENCList[num3];
							if (weakReference.IsAlive)
							{
								if (num3 != num)
								{
									ControlToolBOX.__ENCList[num] = ControlToolBOX.__ENCList[num3];
								}
								num++;
							}
							num3++;
						}
						ControlToolBOX.__ENCList.RemoveRange(num, ControlToolBOX.__ENCList.Count - num);
						ControlToolBOX.__ENCList.Capacity = ControlToolBOX.__ENCList.Count;
					}
					ControlToolBOX.__ENCList.Add(new WeakReference(RuntimeHelpers.GetObjectValue(value)));
				}
			}
		}

		// Token: 0x060008B9 RID: 2233 RVA: 0x00044DB8 File Offset: 0x00042FB8
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

		// Token: 0x060008BA RID: 2234 RVA: 0x00044DFC File Offset: 0x00042FFC
		[DebuggerStepThrough]
		private void InitializeComponent()
		{
			this.CompressTextBox = new TextBox();
			this.GroupDropBox5 = new GroupDropBox();
			this.RadioButton1 = new RadioButton();
			this.T1 = new TextBox();
			this.Button14 = new Button();
			this.Label9 = new Label();
			this.ObfuscatorTextBox = new TextBox();
			this.Button15 = new Button();
			this.Label6 = new Label();
			this.Label7 = new Label();
			this.Label10 = new Label();
			this.Button12 = new Button();
			this.Button7 = new Button();
			this.Label4 = new Label();
			this.GroupDropBox4 = new GroupDropBox();
			this.Button11 = new Button();
			this.Label8 = new Label();
			this.Pathfileicon = new TextBox();
			this.Button9 = new Button();
			this.Button2 = new Button();
			this.Label3 = new Label();
			this.IconTextBox = new TextBox();
			this.PictureBox1 = new PictureBox();
			this.Button10 = new Button();
			this.Button1 = new Button();
			this.Label2 = new Label();
			this.Label1 = new Label();
			this.GroupDropBox3 = new GroupDropBox();
			this.File2 = new TextBox();
			this.File1 = new TextBox();
			this.GroupDropBox1 = new GroupDropBox();
			this.Button4 = new Button();
			this.Button3 = new Button();
			this.Dlnormal = new TextBox();
			this.GroupDropBox2 = new GroupDropBox();
			this.Panel1 = new Panel();
			this.Label5 = new Label();
			this.GroupDropBox5.SuspendLayout();
			this.GroupDropBox4.SuspendLayout();
			((ISupportInitialize)this.PictureBox1).BeginInit();
			this.GroupDropBox3.SuspendLayout();
			this.GroupDropBox1.SuspendLayout();
			this.GroupDropBox2.SuspendLayout();
			this.Panel1.SuspendLayout();
			this.SuspendLayout();
			this.CompressTextBox.BackColor = Color.FromArgb(40, 40, 40);
			this.CompressTextBox.BorderStyle = BorderStyle.FixedSingle;
			this.CompressTextBox.ForeColor = Color.WhiteSmoke;
			Control arg_22E_0 = this.CompressTextBox;
			Point location = new Point(15, 61);
			arg_22E_0.Location = location;
			this.CompressTextBox.Name = "CompressTextBox";
			Control arg_258_0 = this.CompressTextBox;
			Size size = new Size(250, 20);
			arg_258_0.Size = size;
			this.CompressTextBox.TabIndex = 74;
			this.GroupDropBox5.Checked = false;
			this.GroupDropBox5.Controls.Add(this.RadioButton1);
			this.GroupDropBox5.Controls.Add(this.T1);
			this.GroupDropBox5.Controls.Add(this.Button14);
			this.GroupDropBox5.Controls.Add(this.Label9);
			this.GroupDropBox5.Controls.Add(this.ObfuscatorTextBox);
			this.GroupDropBox5.Controls.Add(this.Button15);
			this.GroupDropBox5.Font = new Font("Arial", 8f);
			this.GroupDropBox5.ForeColor = Color.FromArgb(245, 245, 245);
			Control arg_347_0 = this.GroupDropBox5;
			location = new Point(0, 796);
			arg_347_0.Location = location;
			Control arg_35D_0 = this.GroupDropBox5;
			size = new Size(5, 34);
			arg_35D_0.MinimumSize = size;
			this.GroupDropBox5.Name = "GroupDropBox5";
			this.GroupDropBox5.NoRounding = false;
			GroupDropBox arg_396_0 = this.GroupDropBox5;
			size = new Size(520, 259);
			arg_396_0.OpenSize = size;
			Control arg_3B0_0 = this.GroupDropBox5;
			size = new Size(520, 34);
			arg_3B0_0.Size = size;
			this.GroupDropBox5.TabIndex = 11;
			this.GroupDropBox5.Text = "Obfuscator";
			this.RadioButton1.AutoSize = true;
			this.RadioButton1.Checked = true;
			Control arg_3FC_0 = this.RadioButton1;
			location = new Point(109, 92);
			arg_3FC_0.Location = location;
			this.RadioButton1.Name = "RadioButton1";
			Control arg_423_0 = this.RadioButton1;
			size = new Size(101, 19);
			arg_423_0.Size = size;
			this.RadioButton1.TabIndex = 80;
			this.RadioButton1.TabStop = true;
			this.RadioButton1.Text = "Random Strings";
			this.RadioButton1.UseVisualStyleBackColor = true;
			this.T1.BackColor = Color.FromArgb(40, 40, 40);
			this.T1.BorderStyle = BorderStyle.FixedSingle;
			this.T1.ForeColor = Color.WhiteSmoke;
			Control arg_4A1_0 = this.T1;
			location = new Point(15, 121);
			arg_4A1_0.Location = location;
			this.T1.Multiline = true;
			this.T1.Name = "T1";
			this.T1.ReadOnly = true;
			Control arg_4E3_0 = this.T1;
			size = new Size(250, 112);
			arg_4E3_0.Size = size;
			this.T1.TabIndex = 79;
			this.Button14.BackColor = Color.FromArgb(20, 20, 20);
			this.Button14.FlatStyle = FlatStyle.Popup;
			Control arg_529_0 = this.Button14;
			location = new Point(15, 89);
			arg_529_0.Location = location;
			this.Button14.Name = "Button14";
			Control arg_550_0 = this.Button14;
			size = new Size(88, 25);
			arg_550_0.Size = size;
			this.Button14.TabIndex = 78;
			this.Button14.Text = "Choose File..";
			this.Button14.UseVisualStyleBackColor = false;
			this.Label9.AutoSize = true;
			Control arg_59C_0 = this.Label9;
			location = new Point(12, 42);
			arg_59C_0.Location = location;
			this.Label9.Name = "Label9";
			Control arg_5C3_0 = this.Label9;
			size = new Size(53, 14);
			arg_5C3_0.Size = size;
			this.Label9.TabIndex = 77;
			this.Label9.Text = "File Path :";
			this.ObfuscatorTextBox.BackColor = Color.FromArgb(40, 40, 40);
			this.ObfuscatorTextBox.BorderStyle = BorderStyle.FixedSingle;
			this.ObfuscatorTextBox.ForeColor = Color.WhiteSmoke;
			Control arg_629_0 = this.ObfuscatorTextBox;
			location = new Point(15, 61);
			arg_629_0.Location = location;
			this.ObfuscatorTextBox.Name = "ObfuscatorTextBox";
			Control arg_653_0 = this.ObfuscatorTextBox;
			size = new Size(250, 20);
			arg_653_0.Size = size;
			this.ObfuscatorTextBox.TabIndex = 76;
			this.Button15.BackColor = Color.FromArgb(20, 20, 20);
			this.Button15.FlatStyle = FlatStyle.Popup;
			Control arg_69C_0 = this.Button15;
			location = new Point(15, 239);
			arg_69C_0.Location = location;
			this.Button15.Name = "Button15";
			Control arg_6C6_0 = this.Button15;
			size = new Size(250, 25);
			arg_6C6_0.Size = size;
			this.Button15.TabIndex = 75;
			this.Button15.Text = "Start";
			this.Button15.UseVisualStyleBackColor = false;
			this.Label6.AutoSize = true;
			Control arg_715_0 = this.Label6;
			location = new Point(12, 559);
			arg_715_0.Location = location;
			this.Label6.Name = "Label6";
			Control arg_73C_0 = this.Label6;
			size = new Size(52, 14);
			arg_73C_0.Size = size;
			this.Label6.TabIndex = 9;
			this.Label6.Text = "               ";
			this.Label7.AutoSize = true;
			Control arg_77C_0 = this.Label7;
			location = new Point(12, 42);
			arg_77C_0.Location = location;
			this.Label7.Name = "Label7";
			Control arg_7A3_0 = this.Label7;
			size = new Size(53, 14);
			arg_7A3_0.Size = size;
			this.Label7.TabIndex = 75;
			this.Label7.Text = "File Path :";
			this.Label10.AutoSize = true;
			this.Label10.BackColor = Color.Black;
			Control arg_7F6_0 = this.Label10;
			location = new Point(271, 64);
			arg_7F6_0.Location = location;
			this.Label10.Name = "Label10";
			Control arg_820_0 = this.Label10;
			size = new Size(210, 14);
			arg_820_0.Size = size;
			this.Label10.TabIndex = 82;
			this.Label10.Text = "(e.g. \"https:\\\\www.situs.com\\server.exe\")";
			this.Button12.BackColor = Color.FromArgb(20, 20, 20);
			this.Button12.FlatStyle = FlatStyle.Popup;
			Control arg_876_0 = this.Button12;
			location = new Point(15, 89);
			arg_876_0.Location = location;
			this.Button12.Name = "Button12";
			Control arg_89D_0 = this.Button12;
			size = new Size(88, 25);
			arg_89D_0.Size = size;
			this.Button12.TabIndex = 76;
			this.Button12.Text = "Choose File..";
			this.Button12.UseVisualStyleBackColor = false;
			this.Button7.BackColor = Color.FromArgb(20, 20, 20);
			this.Button7.FlatStyle = FlatStyle.Popup;
			Control arg_8FF_0 = this.Button7;
			location = new Point(15, 89);
			arg_8FF_0.Location = location;
			this.Button7.Name = "Button7";
			Control arg_929_0 = this.Button7;
			size = new Size(250, 25);
			arg_929_0.Size = size;
			this.Button7.TabIndex = 80;
			this.Button7.Text = "Build";
			this.Button7.UseVisualStyleBackColor = false;
			this.Label4.AutoSize = true;
			Control arg_975_0 = this.Label4;
			location = new Point(12, 42);
			arg_975_0.Location = location;
			this.Label4.Name = "Label4";
			Control arg_99C_0 = this.Label4;
			size = new Size(63, 14);
			arg_99C_0.Size = size;
			this.Label4.TabIndex = 75;
			this.Label4.Text = "Direct Link :";
			this.GroupDropBox4.Checked = true;
			this.GroupDropBox4.Controls.Add(this.Button11);
			this.GroupDropBox4.Controls.Add(this.Label8);
			this.GroupDropBox4.Controls.Add(this.Pathfileicon);
			this.GroupDropBox4.Controls.Add(this.Button9);
			this.GroupDropBox4.Controls.Add(this.Button2);
			this.GroupDropBox4.Controls.Add(this.Label3);
			this.GroupDropBox4.Controls.Add(this.IconTextBox);
			this.GroupDropBox4.Controls.Add(this.PictureBox1);
			this.GroupDropBox4.Dock = DockStyle.Top;
			this.GroupDropBox4.Font = new Font("Arial", 8f);
			this.GroupDropBox4.ForeColor = Color.FromArgb(245, 245, 245);
			Control arg_ACF_0 = this.GroupDropBox4;
			location = new Point(0, 0);
			arg_ACF_0.Location = location;
			Control arg_AE5_0 = this.GroupDropBox4;
			size = new Size(5, 34);
			arg_AE5_0.MinimumSize = size;
			this.GroupDropBox4.Name = "GroupDropBox4";
			this.GroupDropBox4.NoRounding = false;
			GroupDropBox arg_B1E_0 = this.GroupDropBox4;
			size = new Size(569, 238);
			arg_B1E_0.OpenSize = size;
			Control arg_B3B_0 = this.GroupDropBox4;
			size = new Size(569, 238);
			arg_B3B_0.Size = size;
			this.GroupDropBox4.TabIndex = 10;
			this.GroupDropBox4.Text = "Icon Changer";
			this.Button11.BackColor = Color.FromArgb(20, 20, 20);
			this.Button11.FlatStyle = FlatStyle.Popup;
			Control arg_B91_0 = this.Button11;
			location = new Point(15, 89);
			arg_B91_0.Location = location;
			this.Button11.Name = "Button11";
			Control arg_BB8_0 = this.Button11;
			size = new Size(88, 25);
			arg_BB8_0.Size = size;
			this.Button11.TabIndex = 78;
			this.Button11.Text = "Choose File..";
			this.Button11.UseVisualStyleBackColor = false;
			this.Label8.AutoSize = true;
			Control arg_C04_0 = this.Label8;
			location = new Point(12, 42);
			arg_C04_0.Location = location;
			this.Label8.Name = "Label8";
			Control arg_C2B_0 = this.Label8;
			size = new Size(53, 14);
			arg_C2B_0.Size = size;
			this.Label8.TabIndex = 77;
			this.Label8.Text = "File Path :";
			this.Pathfileicon.BackColor = Color.FromArgb(40, 40, 40);
			this.Pathfileicon.BorderStyle = BorderStyle.FixedSingle;
			this.Pathfileicon.ForeColor = Color.WhiteSmoke;
			Control arg_C91_0 = this.Pathfileicon;
			location = new Point(15, 61);
			arg_C91_0.Location = location;
			this.Pathfileicon.Name = "Pathfileicon";
			Control arg_CBB_0 = this.Pathfileicon;
			size = new Size(250, 20);
			arg_CBB_0.Size = size;
			this.Pathfileicon.TabIndex = 76;
			this.Button9.BackColor = Color.FromArgb(20, 20, 20);
			this.Button9.FlatStyle = FlatStyle.Popup;
			Control arg_D04_0 = this.Button9;
			location = new Point(15, 196);
			arg_D04_0.Location = location;
			this.Button9.Name = "Button9";
			Control arg_D2E_0 = this.Button9;
			size = new Size(250, 25);
			arg_D2E_0.Size = size;
			this.Button9.TabIndex = 75;
			this.Button9.Text = "Change icon";
			this.Button9.UseVisualStyleBackColor = false;
			this.Button2.BackColor = Color.FromArgb(20, 20, 20);
			this.Button2.FlatStyle = FlatStyle.Popup;
			Control arg_D93_0 = this.Button2;
			location = new Point(15, 165);
			arg_D93_0.Location = location;
			this.Button2.Name = "Button2";
			Control arg_DBA_0 = this.Button2;
			size = new Size(88, 25);
			arg_DBA_0.Size = size;
			this.Button2.TabIndex = 73;
			this.Button2.Text = "Choose Icon..";
			this.Button2.UseVisualStyleBackColor = false;
			this.Label3.AutoSize = true;
			Control arg_E06_0 = this.Label3;
			location = new Point(12, 117);
			arg_E06_0.Location = location;
			this.Label3.Name = "Label3";
			Control arg_E2D_0 = this.Label3;
			size = new Size(57, 14);
			arg_E2D_0.Size = size;
			this.Label3.TabIndex = 72;
			this.Label3.Text = "Icon Path :";
			this.IconTextBox.BackColor = Color.FromArgb(40, 40, 40);
			this.IconTextBox.BorderStyle = BorderStyle.FixedSingle;
			this.IconTextBox.ForeColor = Color.WhiteSmoke;
			Control arg_E96_0 = this.IconTextBox;
			location = new Point(15, 137);
			arg_E96_0.Location = location;
			this.IconTextBox.Name = "IconTextBox";
			Control arg_EC0_0 = this.IconTextBox;
			size = new Size(250, 20);
			arg_EC0_0.Size = size;
			this.IconTextBox.TabIndex = 71;
			Control arg_EEA_0 = this.PictureBox1;
			location = new Point(271, 128);
			arg_EEA_0.Location = location;
			this.PictureBox1.Name = "PictureBox1";
			Control arg_F11_0 = this.PictureBox1;
			size = new Size(53, 61);
			arg_F11_0.Size = size;
			this.PictureBox1.SizeMode = PictureBoxSizeMode.StretchImage;
			this.PictureBox1.TabIndex = 63;
			this.PictureBox1.TabStop = false;
			this.Button10.BackColor = Color.FromArgb(20, 20, 20);
			this.Button10.FlatStyle = FlatStyle.Popup;
			Control arg_F6F_0 = this.Button10;
			location = new Point(109, 89);
			arg_F6F_0.Location = location;
			this.Button10.Name = "Button10";
			Control arg_F99_0 = this.Button10;
			size = new Size(156, 25);
			arg_F99_0.Size = size;
			this.Button10.TabIndex = 80;
			this.Button10.Text = "Compress";
			this.Button10.UseVisualStyleBackColor = false;
			this.Button1.BackColor = Color.FromArgb(20, 20, 20);
			this.Button1.FlatStyle = FlatStyle.Popup;
			Control arg_FFE_0 = this.Button1;
			location = new Point(15, 167);
			arg_FFE_0.Location = location;
			this.Button1.Name = "Button1";
			Control arg_1025_0 = this.Button1;
			size = new Size(88, 25);
			arg_1025_0.Size = size;
			this.Button1.TabIndex = 70;
			this.Button1.Text = "Choose File..";
			this.Button1.UseVisualStyleBackColor = false;
			this.Label2.AutoSize = true;
			Control arg_1071_0 = this.Label2;
			location = new Point(12, 120);
			arg_1071_0.Location = location;
			this.Label2.Name = "Label2";
			Control arg_1098_0 = this.Label2;
			size = new Size(38, 14);
			arg_1098_0.Size = size;
			this.Label2.TabIndex = 69;
			this.Label2.Text = "File 2 :";
			this.Label1.AutoSize = true;
			Control arg_10D8_0 = this.Label1;
			location = new Point(12, 39);
			arg_10D8_0.Location = location;
			this.Label1.Name = "Label1";
			Control arg_10FF_0 = this.Label1;
			size = new Size(38, 14);
			arg_10FF_0.Size = size;
			this.Label1.TabIndex = 67;
			this.Label1.Text = "File 1 :";
			this.GroupDropBox3.Checked = true;
			this.GroupDropBox3.Controls.Add(this.Button10);
			this.GroupDropBox3.Controls.Add(this.Button12);
			this.GroupDropBox3.Controls.Add(this.Label7);
			this.GroupDropBox3.Controls.Add(this.CompressTextBox);
			this.GroupDropBox3.Dock = DockStyle.Top;
			this.GroupDropBox3.Font = new Font("Arial", 8f);
			this.GroupDropBox3.ForeColor = Color.FromArgb(245, 245, 245);
			Control arg_11DE_0 = this.GroupDropBox3;
			location = new Point(0, 238);
			arg_11DE_0.Location = location;
			Control arg_11F4_0 = this.GroupDropBox3;
			size = new Size(5, 34);
			arg_11F4_0.MinimumSize = size;
			this.GroupDropBox3.Name = "GroupDropBox3";
			this.GroupDropBox3.NoRounding = false;
			GroupDropBox arg_122D_0 = this.GroupDropBox3;
			size = new Size(569, 135);
			arg_122D_0.OpenSize = size;
			Control arg_124A_0 = this.GroupDropBox3;
			size = new Size(569, 135);
			arg_124A_0.Size = size;
			this.GroupDropBox3.TabIndex = 8;
			this.GroupDropBox3.Text = "File Compressor";
			this.File2.BackColor = Color.FromArgb(40, 40, 40);
			this.File2.BorderStyle = BorderStyle.FixedSingle;
			this.File2.ForeColor = Color.WhiteSmoke;
			Control arg_12B2_0 = this.File2;
			location = new Point(15, 139);
			arg_12B2_0.Location = location;
			this.File2.Name = "File2";
			Control arg_12DC_0 = this.File2;
			size = new Size(250, 20);
			arg_12DC_0.Size = size;
			this.File2.TabIndex = 68;
			this.File1.BackColor = Color.FromArgb(40, 40, 40);
			this.File1.BorderStyle = BorderStyle.FixedSingle;
			this.File1.ForeColor = Color.WhiteSmoke;
			Control arg_1332_0 = this.File1;
			location = new Point(15, 58);
			arg_1332_0.Location = location;
			this.File1.Name = "File1";
			Control arg_135C_0 = this.File1;
			size = new Size(250, 20);
			arg_135C_0.Size = size;
			this.File1.TabIndex = 65;
			this.GroupDropBox1.Checked = true;
			this.GroupDropBox1.Controls.Add(this.Button1);
			this.GroupDropBox1.Controls.Add(this.Label2);
			this.GroupDropBox1.Controls.Add(this.File2);
			this.GroupDropBox1.Controls.Add(this.Label1);
			this.GroupDropBox1.Controls.Add(this.File1);
			this.GroupDropBox1.Controls.Add(this.Button4);
			this.GroupDropBox1.Controls.Add(this.Button3);
			this.GroupDropBox1.Dock = DockStyle.Top;
			this.GroupDropBox1.Font = new Font("Arial", 8f);
			this.GroupDropBox1.ForeColor = Color.FromArgb(245, 245, 245);
			Control arg_146D_0 = this.GroupDropBox1;
			location = new Point(0, 373);
			arg_146D_0.Location = location;
			Control arg_1483_0 = this.GroupDropBox1;
			size = new Size(5, 34);
			arg_1483_0.MinimumSize = size;
			this.GroupDropBox1.Name = "GroupDropBox1";
			this.GroupDropBox1.NoRounding = false;
			GroupDropBox arg_14BC_0 = this.GroupDropBox1;
			size = new Size(569, 242);
			arg_14BC_0.OpenSize = size;
			Control arg_14D9_0 = this.GroupDropBox1;
			size = new Size(569, 242);
			arg_14D9_0.Size = size;
			this.GroupDropBox1.TabIndex = 6;
			this.GroupDropBox1.Text = "File Binder";
			this.Button4.BackColor = Color.FromArgb(20, 20, 20);
			this.Button4.FlatStyle = FlatStyle.Popup;
			Control arg_152E_0 = this.Button4;
			location = new Point(15, 86);
			arg_152E_0.Location = location;
			this.Button4.Name = "Button4";
			Control arg_1555_0 = this.Button4;
			size = new Size(88, 25);
			arg_1555_0.Size = size;
			this.Button4.TabIndex = 66;
			this.Button4.Text = "Choose File..";
			this.Button4.UseVisualStyleBackColor = false;
			this.Button3.BackColor = Color.FromArgb(20, 20, 20);
			this.Button3.FlatStyle = FlatStyle.Popup;
			Control arg_15BA_0 = this.Button3;
			location = new Point(15, 198);
			arg_15BA_0.Location = location;
			this.Button3.Name = "Button3";
			Control arg_15E4_0 = this.Button3;
			size = new Size(250, 30);
			arg_15E4_0.Size = size;
			this.Button3.TabIndex = 64;
			this.Button3.Text = "Bind";
			this.Button3.UseVisualStyleBackColor = false;
			this.Dlnormal.BackColor = Color.FromArgb(40, 40, 40);
			this.Dlnormal.BorderStyle = BorderStyle.FixedSingle;
			this.Dlnormal.ForeColor = Color.WhiteSmoke;
			Control arg_1656_0 = this.Dlnormal;
			location = new Point(15, 61);
			arg_1656_0.Location = location;
			this.Dlnormal.Name = "Dlnormal";
			Control arg_1680_0 = this.Dlnormal;
			size = new Size(250, 20);
			arg_1680_0.Size = size;
			this.Dlnormal.TabIndex = 74;
			this.GroupDropBox2.Checked = true;
			this.GroupDropBox2.Controls.Add(this.Label10);
			this.GroupDropBox2.Controls.Add(this.Button7);
			this.GroupDropBox2.Controls.Add(this.Label4);
			this.GroupDropBox2.Controls.Add(this.Dlnormal);
			this.GroupDropBox2.Dock = DockStyle.Top;
			this.GroupDropBox2.Font = new Font("Arial", 8f);
			this.GroupDropBox2.ForeColor = Color.FromArgb(245, 245, 245);
			Control arg_174F_0 = this.GroupDropBox2;
			location = new Point(0, 615);
			arg_174F_0.Location = location;
			Control arg_1765_0 = this.GroupDropBox2;
			size = new Size(5, 34);
			arg_1765_0.MinimumSize = size;
			this.GroupDropBox2.Name = "GroupDropBox2";
			this.GroupDropBox2.NoRounding = false;
			GroupDropBox arg_179E_0 = this.GroupDropBox2;
			size = new Size(569, 129);
			arg_179E_0.OpenSize = size;
			Control arg_17BB_0 = this.GroupDropBox2;
			size = new Size(569, 129);
			arg_17BB_0.Size = size;
			this.GroupDropBox2.TabIndex = 7;
			this.GroupDropBox2.Text = "Server Downloader";
			this.Panel1.Controls.Add(this.Label5);
			this.Panel1.Controls.Add(this.GroupDropBox2);
			this.Panel1.Controls.Add(this.GroupDropBox1);
			this.Panel1.Controls.Add(this.GroupDropBox3);
			this.Panel1.Controls.Add(this.GroupDropBox4);
			this.Panel1.Dock = DockStyle.Fill;
			Control arg_1866_0 = this.Panel1;
			location = new Point(0, 0);
			arg_1866_0.Location = location;
			this.Panel1.Name = "Panel1";
			Control arg_1893_0 = this.Panel1;
			size = new Size(569, 450);
			arg_1893_0.Size = size;
			this.Panel1.TabIndex = 12;
			this.Label5.AutoSize = true;
			Control arg_18C5_0 = this.Label5;
			location = new Point(3, 932);
			arg_18C5_0.Location = location;
			this.Label5.Name = "Label5";
			Control arg_18EC_0 = this.Label5;
			size = new Size(39, 14);
			arg_18EC_0.Size = size;
			this.Label5.TabIndex = 11;
			this.Label5.Text = "Label5";
			SizeF autoScaleDimensions = new SizeF(6f, 14f);
			this.AutoScaleDimensions = autoScaleDimensions;
			this.AutoScaleMode = AutoScaleMode.Font;
			this.BackColor = Color.Black;
			this.Controls.Add(this.Panel1);
			this.Controls.Add(this.GroupDropBox5);
			this.Controls.Add(this.Label6);
			this.Font = new Font("Arial", 8.25f);
			this.Name = "ControlToolBOX";
			size = new Size(569, 450);
			this.Size = size;
			this.GroupDropBox5.ResumeLayout(false);
			this.GroupDropBox5.PerformLayout();
			this.GroupDropBox4.ResumeLayout(false);
			this.GroupDropBox4.PerformLayout();
			((ISupportInitialize)this.PictureBox1).EndInit();
			this.GroupDropBox3.ResumeLayout(false);
			this.GroupDropBox3.PerformLayout();
			this.GroupDropBox1.ResumeLayout(false);
			this.GroupDropBox1.PerformLayout();
			this.GroupDropBox2.ResumeLayout(false);
			this.GroupDropBox2.PerformLayout();
			this.Panel1.ResumeLayout(false);
			this.Panel1.PerformLayout();
			this.ResumeLayout(false);
			this.PerformLayout();
		}

		// Token: 0x17000327 RID: 807
		// (get) Token: 0x060008BB RID: 2235 RVA: 0x00046850 File Offset: 0x00044A50
		// (set) Token: 0x060008BC RID: 2236 RVA: 0x00004C0F File Offset: 0x00002E0F
		internal virtual TextBox CompressTextBox
		{
			[DebuggerNonUserCode]
			get
			{
				return this._CompressTextBox;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._CompressTextBox = value;
			}
		}

		// Token: 0x17000328 RID: 808
		// (get) Token: 0x060008BD RID: 2237 RVA: 0x00046868 File Offset: 0x00044A68
		// (set) Token: 0x060008BE RID: 2238 RVA: 0x00004C18 File Offset: 0x00002E18
		internal virtual GroupDropBox GroupDropBox5
		{
			[DebuggerNonUserCode]
			get
			{
				return this._GroupDropBox5;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._GroupDropBox5 = value;
			}
		}

		// Token: 0x17000329 RID: 809
		// (get) Token: 0x060008BF RID: 2239 RVA: 0x00046880 File Offset: 0x00044A80
		// (set) Token: 0x060008C0 RID: 2240 RVA: 0x00004C21 File Offset: 0x00002E21
		internal virtual RadioButton RadioButton1
		{
			[DebuggerNonUserCode]
			get
			{
				return this._RadioButton1;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._RadioButton1 = value;
			}
		}

		// Token: 0x1700032A RID: 810
		// (get) Token: 0x060008C1 RID: 2241 RVA: 0x00046898 File Offset: 0x00044A98
		// (set) Token: 0x060008C2 RID: 2242 RVA: 0x00004C2A File Offset: 0x00002E2A
		internal virtual TextBox T1
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
				this._T1 = value;
			}
		}

		// Token: 0x1700032B RID: 811
		// (get) Token: 0x060008C3 RID: 2243 RVA: 0x000468B0 File Offset: 0x00044AB0
		// (set) Token: 0x060008C4 RID: 2244 RVA: 0x000468C8 File Offset: 0x00044AC8
		internal virtual Button Button14
		{
			[DebuggerNonUserCode]
			get
			{
				return this._Button14;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.Button14_Click);
				if (this._Button14 != null)
				{
					this._Button14.Click -= value2;
				}
				this._Button14 = value;
				if (this._Button14 != null)
				{
					this._Button14.Click += value2;
				}
			}
		}

		// Token: 0x1700032C RID: 812
		// (get) Token: 0x060008C5 RID: 2245 RVA: 0x00046920 File Offset: 0x00044B20
		// (set) Token: 0x060008C6 RID: 2246 RVA: 0x00004C33 File Offset: 0x00002E33
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

		// Token: 0x1700032D RID: 813
		// (get) Token: 0x060008C7 RID: 2247 RVA: 0x00046938 File Offset: 0x00044B38
		// (set) Token: 0x060008C8 RID: 2248 RVA: 0x00004C3C File Offset: 0x00002E3C
		internal virtual TextBox ObfuscatorTextBox
		{
			[DebuggerNonUserCode]
			get
			{
				return this._ObfuscatorTextBox;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._ObfuscatorTextBox = value;
			}
		}

		// Token: 0x1700032E RID: 814
		// (get) Token: 0x060008C9 RID: 2249 RVA: 0x00046950 File Offset: 0x00044B50
		// (set) Token: 0x060008CA RID: 2250 RVA: 0x00046968 File Offset: 0x00044B68
		internal virtual Button Button15
		{
			[DebuggerNonUserCode]
			get
			{
				return this._Button15;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.Button15_Click);
				if (this._Button15 != null)
				{
					this._Button15.Click -= value2;
				}
				this._Button15 = value;
				if (this._Button15 != null)
				{
					this._Button15.Click += value2;
				}
			}
		}

		// Token: 0x1700032F RID: 815
		// (get) Token: 0x060008CB RID: 2251 RVA: 0x000469C0 File Offset: 0x00044BC0
		// (set) Token: 0x060008CC RID: 2252 RVA: 0x00004C45 File Offset: 0x00002E45
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

		// Token: 0x17000330 RID: 816
		// (get) Token: 0x060008CD RID: 2253 RVA: 0x000469D8 File Offset: 0x00044BD8
		// (set) Token: 0x060008CE RID: 2254 RVA: 0x00004C4E File Offset: 0x00002E4E
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

		// Token: 0x17000331 RID: 817
		// (get) Token: 0x060008CF RID: 2255 RVA: 0x000469F0 File Offset: 0x00044BF0
		// (set) Token: 0x060008D0 RID: 2256 RVA: 0x00004C57 File Offset: 0x00002E57
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

		// Token: 0x17000332 RID: 818
		// (get) Token: 0x060008D1 RID: 2257 RVA: 0x00046A08 File Offset: 0x00044C08
		// (set) Token: 0x060008D2 RID: 2258 RVA: 0x00046A20 File Offset: 0x00044C20
		internal virtual Button Button12
		{
			[DebuggerNonUserCode]
			get
			{
				return this._Button12;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.Button12_Click);
				if (this._Button12 != null)
				{
					this._Button12.Click -= value2;
				}
				this._Button12 = value;
				if (this._Button12 != null)
				{
					this._Button12.Click += value2;
				}
			}
		}

		// Token: 0x17000333 RID: 819
		// (get) Token: 0x060008D3 RID: 2259 RVA: 0x00046A78 File Offset: 0x00044C78
		// (set) Token: 0x060008D4 RID: 2260 RVA: 0x00046A90 File Offset: 0x00044C90
		internal virtual Button Button7
		{
			[DebuggerNonUserCode]
			get
			{
				return this._Button7;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.Button7_Click);
				if (this._Button7 != null)
				{
					this._Button7.Click -= value2;
				}
				this._Button7 = value;
				if (this._Button7 != null)
				{
					this._Button7.Click += value2;
				}
			}
		}

		// Token: 0x17000334 RID: 820
		// (get) Token: 0x060008D5 RID: 2261 RVA: 0x00046AE8 File Offset: 0x00044CE8
		// (set) Token: 0x060008D6 RID: 2262 RVA: 0x00004C60 File Offset: 0x00002E60
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

		// Token: 0x17000335 RID: 821
		// (get) Token: 0x060008D7 RID: 2263 RVA: 0x00046B00 File Offset: 0x00044D00
		// (set) Token: 0x060008D8 RID: 2264 RVA: 0x00004C69 File Offset: 0x00002E69
		internal virtual GroupDropBox GroupDropBox4
		{
			[DebuggerNonUserCode]
			get
			{
				return this._GroupDropBox4;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._GroupDropBox4 = value;
			}
		}

		// Token: 0x17000336 RID: 822
		// (get) Token: 0x060008D9 RID: 2265 RVA: 0x00046B18 File Offset: 0x00044D18
		// (set) Token: 0x060008DA RID: 2266 RVA: 0x00046B30 File Offset: 0x00044D30
		internal virtual Button Button11
		{
			[DebuggerNonUserCode]
			get
			{
				return this._Button11;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.Button11_Click);
				if (this._Button11 != null)
				{
					this._Button11.Click -= value2;
				}
				this._Button11 = value;
				if (this._Button11 != null)
				{
					this._Button11.Click += value2;
				}
			}
		}

		// Token: 0x17000337 RID: 823
		// (get) Token: 0x060008DB RID: 2267 RVA: 0x00046B88 File Offset: 0x00044D88
		// (set) Token: 0x060008DC RID: 2268 RVA: 0x00004C72 File Offset: 0x00002E72
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

		// Token: 0x17000338 RID: 824
		// (get) Token: 0x060008DD RID: 2269 RVA: 0x00046BA0 File Offset: 0x00044DA0
		// (set) Token: 0x060008DE RID: 2270 RVA: 0x00004C7B File Offset: 0x00002E7B
		internal virtual TextBox Pathfileicon
		{
			[DebuggerNonUserCode]
			get
			{
				return this._Pathfileicon;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._Pathfileicon = value;
			}
		}

		// Token: 0x17000339 RID: 825
		// (get) Token: 0x060008DF RID: 2271 RVA: 0x00046BB8 File Offset: 0x00044DB8
		// (set) Token: 0x060008E0 RID: 2272 RVA: 0x00046BD0 File Offset: 0x00044DD0
		internal virtual Button Button9
		{
			[DebuggerNonUserCode]
			get
			{
				return this._Button9;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.Button9_Click);
				if (this._Button9 != null)
				{
					this._Button9.Click -= value2;
				}
				this._Button9 = value;
				if (this._Button9 != null)
				{
					this._Button9.Click += value2;
				}
			}
		}

		// Token: 0x1700033A RID: 826
		// (get) Token: 0x060008E1 RID: 2273 RVA: 0x00046C28 File Offset: 0x00044E28
		// (set) Token: 0x060008E2 RID: 2274 RVA: 0x00046C40 File Offset: 0x00044E40
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

		// Token: 0x1700033B RID: 827
		// (get) Token: 0x060008E3 RID: 2275 RVA: 0x00046C98 File Offset: 0x00044E98
		// (set) Token: 0x060008E4 RID: 2276 RVA: 0x00004C84 File Offset: 0x00002E84
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

		// Token: 0x1700033C RID: 828
		// (get) Token: 0x060008E5 RID: 2277 RVA: 0x00046CB0 File Offset: 0x00044EB0
		// (set) Token: 0x060008E6 RID: 2278 RVA: 0x00004C8D File Offset: 0x00002E8D
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

		// Token: 0x1700033D RID: 829
		// (get) Token: 0x060008E7 RID: 2279 RVA: 0x00046CC8 File Offset: 0x00044EC8
		// (set) Token: 0x060008E8 RID: 2280 RVA: 0x00004C96 File Offset: 0x00002E96
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

		// Token: 0x1700033E RID: 830
		// (get) Token: 0x060008E9 RID: 2281 RVA: 0x00046CE0 File Offset: 0x00044EE0
		// (set) Token: 0x060008EA RID: 2282 RVA: 0x00046CF8 File Offset: 0x00044EF8
		internal virtual Button Button10
		{
			[DebuggerNonUserCode]
			get
			{
				return this._Button10;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.Button10_Click);
				if (this._Button10 != null)
				{
					this._Button10.Click -= value2;
				}
				this._Button10 = value;
				if (this._Button10 != null)
				{
					this._Button10.Click += value2;
				}
			}
		}

		// Token: 0x1700033F RID: 831
		// (get) Token: 0x060008EB RID: 2283 RVA: 0x00046D50 File Offset: 0x00044F50
		// (set) Token: 0x060008EC RID: 2284 RVA: 0x00046D68 File Offset: 0x00044F68
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

		// Token: 0x17000340 RID: 832
		// (get) Token: 0x060008ED RID: 2285 RVA: 0x00046DC0 File Offset: 0x00044FC0
		// (set) Token: 0x060008EE RID: 2286 RVA: 0x00004C9F File Offset: 0x00002E9F
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

		// Token: 0x17000341 RID: 833
		// (get) Token: 0x060008EF RID: 2287 RVA: 0x00046DD8 File Offset: 0x00044FD8
		// (set) Token: 0x060008F0 RID: 2288 RVA: 0x00004CA8 File Offset: 0x00002EA8
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

		// Token: 0x17000342 RID: 834
		// (get) Token: 0x060008F1 RID: 2289 RVA: 0x00046DF0 File Offset: 0x00044FF0
		// (set) Token: 0x060008F2 RID: 2290 RVA: 0x00004CB1 File Offset: 0x00002EB1
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

		// Token: 0x17000343 RID: 835
		// (get) Token: 0x060008F3 RID: 2291 RVA: 0x00046E08 File Offset: 0x00045008
		// (set) Token: 0x060008F4 RID: 2292 RVA: 0x00004CBA File Offset: 0x00002EBA
		internal virtual TextBox File2
		{
			[DebuggerNonUserCode]
			get
			{
				return this._File2;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._File2 = value;
			}
		}

		// Token: 0x17000344 RID: 836
		// (get) Token: 0x060008F5 RID: 2293 RVA: 0x00046E20 File Offset: 0x00045020
		// (set) Token: 0x060008F6 RID: 2294 RVA: 0x00004CC3 File Offset: 0x00002EC3
		internal virtual TextBox File1
		{
			[DebuggerNonUserCode]
			get
			{
				return this._File1;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._File1 = value;
			}
		}

		// Token: 0x17000345 RID: 837
		// (get) Token: 0x060008F7 RID: 2295 RVA: 0x00046E38 File Offset: 0x00045038
		// (set) Token: 0x060008F8 RID: 2296 RVA: 0x00004CCC File Offset: 0x00002ECC
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

		// Token: 0x17000346 RID: 838
		// (get) Token: 0x060008F9 RID: 2297 RVA: 0x00046E50 File Offset: 0x00045050
		// (set) Token: 0x060008FA RID: 2298 RVA: 0x00046E68 File Offset: 0x00045068
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

		// Token: 0x17000347 RID: 839
		// (get) Token: 0x060008FB RID: 2299 RVA: 0x00046EC0 File Offset: 0x000450C0
		// (set) Token: 0x060008FC RID: 2300 RVA: 0x00046ED8 File Offset: 0x000450D8
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

		// Token: 0x17000348 RID: 840
		// (get) Token: 0x060008FD RID: 2301 RVA: 0x00046F30 File Offset: 0x00045130
		// (set) Token: 0x060008FE RID: 2302 RVA: 0x00004CD5 File Offset: 0x00002ED5
		internal virtual TextBox Dlnormal
		{
			[DebuggerNonUserCode]
			get
			{
				return this._Dlnormal;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._Dlnormal = value;
			}
		}

		// Token: 0x17000349 RID: 841
		// (get) Token: 0x060008FF RID: 2303 RVA: 0x00046F48 File Offset: 0x00045148
		// (set) Token: 0x06000900 RID: 2304 RVA: 0x00004CDE File Offset: 0x00002EDE
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

		// Token: 0x1700034A RID: 842
		// (get) Token: 0x06000901 RID: 2305 RVA: 0x00046F60 File Offset: 0x00045160
		// (set) Token: 0x06000902 RID: 2306 RVA: 0x00004CE7 File Offset: 0x00002EE7
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

		// Token: 0x1700034B RID: 843
		// (get) Token: 0x06000903 RID: 2307 RVA: 0x00046F78 File Offset: 0x00045178
		// (set) Token: 0x06000904 RID: 2308 RVA: 0x00004CF0 File Offset: 0x00002EF0
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

		// Token: 0x06000905 RID: 2309 RVA: 0x00046F90 File Offset: 0x00045190
		private void Button7_Click(object sender, EventArgs e)
		{
			if (Operators.CompareString(this.Dlnormal.Text, "", false) != 0)
			{
				SaveFileDialog saveFileDialog = new SaveFileDialog();
				saveFileDialog.Filter = "EXE|*.exe";
				if (saveFileDialog.ShowDialog() == DialogResult.OK)
				{
					try
					{
						ima.F.sl.Text = "Build started..";
						AssemblyDefinition assemblyDefinition = (AssemblyDefinition)NewLateBinding.LateGet(null, typeof(AssemblyDefinition), "ReadAssembly", new object[]
						{
							Operators.ConcatenateObject(this.folder, "sDwnl.stb")
						}, null, null, null);
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
														if (Operators.CompareString(left, "%LINK%", false) == 0)
														{
															current3.Operand = this.Dlnormal.Text;
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
						ima.F.sl.Text = "Build succeeded..";
					}
					catch (Exception expr_1C3)
					{
						ProjectData.SetProjectError(expr_1C3);
						ima.F.sl.Text = "Build error..";
						ProjectData.ClearProjectError();
					}
				}
			}
		}

		// Token: 0x06000906 RID: 2310 RVA: 0x000471E8 File Offset: 0x000453E8
		private void Button4_Click(object sender, EventArgs e)
		{
			OpenFileDialog openFileDialog = new OpenFileDialog
			{
				Title = "Choose File",
				FileName = string.Empty
			};
			if (openFileDialog.ShowDialog() == DialogResult.OK)
			{
				this.File1.Text = openFileDialog.FileName;
				FileInfo fileInfo = new FileInfo(openFileDialog.FileName);
				this.name1 = fileInfo.Name;
			}
		}

		// Token: 0x06000907 RID: 2311 RVA: 0x00047248 File Offset: 0x00045448
		private void Button1_Click(object sender, EventArgs e)
		{
			OpenFileDialog openFileDialog = new OpenFileDialog
			{
				Title = "Choose File",
				FileName = string.Empty
			};
			if (openFileDialog.ShowDialog() == DialogResult.OK)
			{
				this.File2.Text = openFileDialog.FileName;
				FileInfo fileInfo = new FileInfo(openFileDialog.FileName);
				this.name2 = fileInfo.Name;
			}
		}

		// Token: 0x06000908 RID: 2312 RVA: 0x000472A8 File Offset: 0x000454A8
		private void Button3_Click(object sender, EventArgs e)
		{
			if (Operators.CompareString(this.File1.Text, "", false) != 0 && Operators.CompareString(this.File2.Text, "", false) != 0)
			{
				SaveFileDialog saveFileDialog = new SaveFileDialog();
				saveFileDialog.Filter = "EXE|*.exe";
				if (saveFileDialog.ShowDialog() == DialogResult.OK)
				{
					try
					{
						ima.F.sl.Text = "Bind started..";
						AssemblyDefinition assemblyDefinition = (AssemblyDefinition)NewLateBinding.LateGet(null, typeof(AssemblyDefinition), "ReadAssembly", new object[]
						{
							Operators.ConcatenateObject(this.folder, "imbinder.stb")
						}, null, null, null);
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
														if (Operators.CompareString(left, "%FL1%", false) == 0)
														{
															current3.Operand = Convert.ToBase64String(File.ReadAllBytes(this.File2.Text));
														}
														else if (Operators.CompareString(left, "%FL2%", false) == 0)
														{
															current3.Operand = Convert.ToBase64String(File.ReadAllBytes(this.File2.Text));
														}
														else if (Operators.CompareString(left, "%NM1%", false) == 0)
														{
															current3.Operand = RuntimeHelpers.GetObjectValue(this.name1);
														}
														else if (Operators.CompareString(left, "%NM2%", false) == 0)
														{
															current3.Operand = RuntimeHelpers.GetObjectValue(this.name2);
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
						FileInfo fileInfo = new FileInfo(this.File1.Text);
						FileInfo fileInfo2 = new FileInfo(this.File2.Text);
						ima.F.sl.Text = "Bind succeeded " + fileInfo.Name + " + " + fileInfo2.Name;
					}
					catch (Exception expr_2A9)
					{
						ProjectData.SetProjectError(expr_2A9);
						ima.F.sl.Text = "Bind error..";
						ProjectData.ClearProjectError();
					}
				}
			}
		}

		// Token: 0x06000909 RID: 2313 RVA: 0x000475E4 File Offset: 0x000457E4
		private void Button12_Click(object sender, EventArgs e)
		{
			OpenFileDialog openFileDialog = new OpenFileDialog
			{
				Filter = "EXE|*.exe",
				Title = "Choose File",
				FileName = string.Empty
			};
			if (openFileDialog.ShowDialog() == DialogResult.OK)
			{
				this.CompressTextBox.Text = openFileDialog.FileName;
				new FileInfo(openFileDialog.FileName);
			}
		}

		// Token: 0x0600090A RID: 2314 RVA: 0x00047644 File Offset: 0x00045844
		private void Button10_Click(object sender, EventArgs e)
		{
			if (Operators.CompareString(this.CompressTextBox.Text, "", false) != 0)
			{
				try
				{
					ima.F.sl.Text = "Compress started..";
					Interaction.Shell(Conversions.ToString(Operators.AddObject(Operators.AddObject(this.folder, "mpress.exe "), this.CompressTextBox.Text)), AppWinStyle.Hide, false, -1);
					Thread.Sleep(1000);
					FileInfo fileInfo = new FileInfo(this.CompressTextBox.Text);
					ima.F.sl.Text = "Compress succeeded " + fileInfo.Name + " size " + Fungsi.Siz(fileInfo.Length);
				}
				catch (Exception expr_B0)
				{
					ProjectData.SetProjectError(expr_B0);
					ima.F.sl.Text = "Compress error..";
					ProjectData.ClearProjectError();
				}
			}
		}

		// Token: 0x0600090B RID: 2315 RVA: 0x00047734 File Offset: 0x00045934
		private void Button11_Click(object sender, EventArgs e)
		{
			OpenFileDialog openFileDialog = new OpenFileDialog
			{
				Filter = "EXE|*.exe",
				Title = "Choose File",
				FileName = string.Empty
			};
			if (openFileDialog.ShowDialog() == DialogResult.OK)
			{
				this.Pathfileicon.Text = openFileDialog.FileName;
				new FileInfo(openFileDialog.FileName);
			}
		}

		// Token: 0x0600090C RID: 2316 RVA: 0x00047794 File Offset: 0x00045994
		private void Button2_Click(object sender, EventArgs e)
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

		// Token: 0x0600090D RID: 2317 RVA: 0x00047804 File Offset: 0x00045A04
		private void Button9_Click(object sender, EventArgs e)
		{
			if (Operators.CompareString(this.Pathfileicon.Text, "", false) != 0 && Operators.CompareString(this.IconTextBox.Text, "", false) != 0)
			{
				try
				{
					ima.F.sl.Text = "Change icon started..";
					FileInfo fileInfo = new FileInfo(this.Pathfileicon.Text);
					Gunakanicon.InjectIcon(this.Pathfileicon.Text, this.IconTextBox.Text);
					ima.F.sl.Text = "Change icon succeeded.. " + fileInfo.Name;
				}
				catch (Exception expr_9E)
				{
					ProjectData.SetProjectError(expr_9E);
					ima.F.sl.Text = "Change icon error..";
					ProjectData.ClearProjectError();
				}
			}
		}

		// Token: 0x0600090E RID: 2318 RVA: 0x000478E4 File Offset: 0x00045AE4
		private void Button14_Click(object sender, EventArgs e)
		{
			OpenFileDialog openFileDialog = new OpenFileDialog
			{
				Filter = "EXE|*.exe",
				Title = "Choose File",
				FileName = string.Empty
			};
			if (openFileDialog.ShowDialog() == DialogResult.OK)
			{
				this.ObfuscatorTextBox.Text = openFileDialog.FileName;
				new FileInfo(openFileDialog.FileName);
			}
		}

		// Token: 0x0600090F RID: 2319 RVA: 0x00047944 File Offset: 0x00045B44
		private void Button15_Click(object sender, EventArgs e)
		{
			Obfoscator obfoscator = new Obfoscator();
			if (Operators.CompareString(this.ObfuscatorTextBox.Text, "", false) != 0)
			{
				ima.F.sl.Text = "Obfuscator started..";
				obfoscator.T1 = this.T1;
				FileInfo fileInfo = new FileInfo(this.ObfuscatorTextBox.Text);
				obfoscator.randz(this.ObfuscatorTextBox.Text);
				ima.F.sl.Text = fileInfo.Name + " Obfuscated..";
			}
		}

		// Token: 0x04000415 RID: 1045
		private static List<WeakReference> __ENCList;

		// Token: 0x04000416 RID: 1046
		private IContainer components;

		// Token: 0x04000417 RID: 1047
		[AccessedThroughProperty("CompressTextBox")]
		private TextBox _CompressTextBox;

		// Token: 0x04000418 RID: 1048
		[AccessedThroughProperty("GroupDropBox5")]
		private GroupDropBox _GroupDropBox5;

		// Token: 0x04000419 RID: 1049
		[AccessedThroughProperty("RadioButton1")]
		private RadioButton _RadioButton1;

		// Token: 0x0400041A RID: 1050
		[AccessedThroughProperty("T1")]
		private TextBox _T1;

		// Token: 0x0400041B RID: 1051
		[AccessedThroughProperty("Button14")]
		private Button _Button14;

		// Token: 0x0400041C RID: 1052
		[AccessedThroughProperty("Label9")]
		private Label _Label9;

		// Token: 0x0400041D RID: 1053
		[AccessedThroughProperty("ObfuscatorTextBox")]
		private TextBox _ObfuscatorTextBox;

		// Token: 0x0400041E RID: 1054
		[AccessedThroughProperty("Button15")]
		private Button _Button15;

		// Token: 0x0400041F RID: 1055
		[AccessedThroughProperty("Label6")]
		private Label _Label6;

		// Token: 0x04000420 RID: 1056
		[AccessedThroughProperty("Label7")]
		private Label _Label7;

		// Token: 0x04000421 RID: 1057
		[AccessedThroughProperty("Label10")]
		private Label _Label10;

		// Token: 0x04000422 RID: 1058
		[AccessedThroughProperty("Button12")]
		private Button _Button12;

		// Token: 0x04000423 RID: 1059
		[AccessedThroughProperty("Button7")]
		private Button _Button7;

		// Token: 0x04000424 RID: 1060
		[AccessedThroughProperty("Label4")]
		private Label _Label4;

		// Token: 0x04000425 RID: 1061
		[AccessedThroughProperty("GroupDropBox4")]
		private GroupDropBox _GroupDropBox4;

		// Token: 0x04000426 RID: 1062
		[AccessedThroughProperty("Button11")]
		private Button _Button11;

		// Token: 0x04000427 RID: 1063
		[AccessedThroughProperty("Label8")]
		private Label _Label8;

		// Token: 0x04000428 RID: 1064
		[AccessedThroughProperty("Pathfileicon")]
		private TextBox _Pathfileicon;

		// Token: 0x04000429 RID: 1065
		[AccessedThroughProperty("Button9")]
		private Button _Button9;

		// Token: 0x0400042A RID: 1066
		[AccessedThroughProperty("Button2")]
		private Button _Button2;

		// Token: 0x0400042B RID: 1067
		[AccessedThroughProperty("Label3")]
		private Label _Label3;

		// Token: 0x0400042C RID: 1068
		[AccessedThroughProperty("IconTextBox")]
		private TextBox _IconTextBox;

		// Token: 0x0400042D RID: 1069
		[AccessedThroughProperty("PictureBox1")]
		private PictureBox _PictureBox1;

		// Token: 0x0400042E RID: 1070
		[AccessedThroughProperty("Button10")]
		private Button _Button10;

		// Token: 0x0400042F RID: 1071
		[AccessedThroughProperty("Button1")]
		private Button _Button1;

		// Token: 0x04000430 RID: 1072
		[AccessedThroughProperty("Label2")]
		private Label _Label2;

		// Token: 0x04000431 RID: 1073
		[AccessedThroughProperty("Label1")]
		private Label _Label1;

		// Token: 0x04000432 RID: 1074
		[AccessedThroughProperty("GroupDropBox3")]
		private GroupDropBox _GroupDropBox3;

		// Token: 0x04000433 RID: 1075
		[AccessedThroughProperty("File2")]
		private TextBox _File2;

		// Token: 0x04000434 RID: 1076
		[AccessedThroughProperty("File1")]
		private TextBox _File1;

		// Token: 0x04000435 RID: 1077
		[AccessedThroughProperty("GroupDropBox1")]
		private GroupDropBox _GroupDropBox1;

		// Token: 0x04000436 RID: 1078
		[AccessedThroughProperty("Button4")]
		private Button _Button4;

		// Token: 0x04000437 RID: 1079
		[AccessedThroughProperty("Button3")]
		private Button _Button3;

		// Token: 0x04000438 RID: 1080
		[AccessedThroughProperty("Dlnormal")]
		private TextBox _Dlnormal;

		// Token: 0x04000439 RID: 1081
		[AccessedThroughProperty("GroupDropBox2")]
		private GroupDropBox _GroupDropBox2;

		// Token: 0x0400043A RID: 1082
		[AccessedThroughProperty("Panel1")]
		private Panel _Panel1;

		// Token: 0x0400043B RID: 1083
		[AccessedThroughProperty("Label5")]
		private Label _Label5;

		// Token: 0x0400043C RID: 1084
		private string name1;

		// Token: 0x0400043D RID: 1085
		private string name2;

		// Token: 0x0400043E RID: 1086
		private string folder;
	}
}
