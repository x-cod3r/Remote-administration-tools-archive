using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Diagnostics;
using System.Drawing;
using System.Runtime.CompilerServices;
using System.Windows.Forms;
using Microsoft.VisualBasic.CompilerServices;
using NINGALINET.My;

namespace NINGALINET
{
	// Token: 0x0200002C RID: 44
	[DesignerGenerated]
	public class ControlAbout : UserControl
	{
		// Token: 0x060007E8 RID: 2024 RVA: 0x0000480D File Offset: 0x00002A0D
		[DebuggerNonUserCode]
		static ControlAbout()
		{
			// Note: this type is marked as 'beforefieldinit'.
			Class2.zP7eVJHzSiX6G();
			ControlAbout.__ENCList = new List<WeakReference>();
		}

		// Token: 0x060007E9 RID: 2025 RVA: 0x0000481E File Offset: 0x00002A1E
		[DebuggerNonUserCode]
		public ControlAbout()
		{
			Class2.zP7eVJHzSiX6G();
			base..ctor();
			base.Load += new EventHandler(this.ControlAbout_Load);
			ControlAbout.__ENCAddToList(this);
			this.InitializeComponent();
		}

		// Token: 0x060007EA RID: 2026 RVA: 0x0003EA9C File Offset: 0x0003CC9C
		[DebuggerNonUserCode]
		private static void __ENCAddToList(object value)
		{
			List<WeakReference> _ENCList = ControlAbout.__ENCList;
			checked
			{
				lock (_ENCList)
				{
					if (ControlAbout.__ENCList.Count == ControlAbout.__ENCList.Capacity)
					{
						int num = 0;
						int arg_37_0 = 0;
						int num2 = ControlAbout.__ENCList.Count - 1;
						int num3 = arg_37_0;
						while (true)
						{
							int arg_7D_0 = num3;
							int num4 = num2;
							if (arg_7D_0 > num4)
							{
								break;
							}
							WeakReference weakReference = ControlAbout.__ENCList[num3];
							if (weakReference.IsAlive)
							{
								if (num3 != num)
								{
									ControlAbout.__ENCList[num] = ControlAbout.__ENCList[num3];
								}
								num++;
							}
							num3++;
						}
						ControlAbout.__ENCList.RemoveRange(num, ControlAbout.__ENCList.Count - num);
						ControlAbout.__ENCList.Capacity = ControlAbout.__ENCList.Count;
					}
					ControlAbout.__ENCList.Add(new WeakReference(RuntimeHelpers.GetObjectValue(value)));
				}
			}
		}

		// Token: 0x060007EB RID: 2027 RVA: 0x0003EB84 File Offset: 0x0003CD84
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

		// Token: 0x060007EC RID: 2028 RVA: 0x0003EBC8 File Offset: 0x0003CDC8
		[DebuggerStepThrough]
		private void InitializeComponent()
		{
			this.components = new Container();
			ComponentResourceManager componentResourceManager = new ComponentResourceManager(typeof(ControlAbout));
			this.Label3 = new Label();
			this.Label4 = new Label();
			this.Label5 = new Label();
			this.Label1 = new Label();
			this.LinkLabel1 = new LinkLabel();
			this.Label2 = new Label();
			this.PictureBox2 = new PictureBox();
			this.PictureBox3 = new PictureBox();
			this.PictureBox4 = new PictureBox();
			this.PictureBox5 = new PictureBox();
			this.Label6 = new Label();
			this.Label7 = new Label();
			this.Button4 = new Button();
			this.Timer1 = new Timer(this.components);
			this.Button1 = new Button();
			this.PictureBox6 = new PictureBox();
			this.Button3 = new Button();
			((ISupportInitialize)this.PictureBox2).BeginInit();
			((ISupportInitialize)this.PictureBox3).BeginInit();
			((ISupportInitialize)this.PictureBox4).BeginInit();
			((ISupportInitialize)this.PictureBox5).BeginInit();
			((ISupportInitialize)this.PictureBox6).BeginInit();
			this.SuspendLayout();
			this.Label3.AutoSize = true;
			this.Label3.Font = new Font("Arial", 8.25f, FontStyle.Bold, GraphicsUnit.Point, 0);
			Control arg_154_0 = this.Label3;
			Point location = new Point(16, 17);
			arg_154_0.Location = location;
			this.Label3.Name = "Label3";
			Control arg_17B_0 = this.Label3;
			Size size = new Size(13, 14);
			arg_17B_0.Size = size;
			this.Label3.TabIndex = 68;
			this.Label3.Text = "..";
			this.Label4.AutoSize = true;
			Control arg_1BB_0 = this.Label4;
			location = new Point(16, 31);
			arg_1BB_0.Location = location;
			this.Label4.Name = "Label4";
			Control arg_1E2_0 = this.Label4;
			size = new Size(46, 14);
			arg_1E2_0.Size = size;
			this.Label4.TabIndex = 69;
			this.Label4.Text = "v1.1.0.0";
			this.Label5.AutoSize = true;
			Control arg_222_0 = this.Label5;
			location = new Point(16, 45);
			arg_222_0.Location = location;
			this.Label5.Name = "Label5";
			Control arg_24C_0 = this.Label5;
			size = new Size(156, 14);
			arg_24C_0.Size = size;
			this.Label5.TabIndex = 70;
			this.Label5.Text = "Copyright © 2016 - 2017 im523";
			this.Label1.AutoSize = true;
			this.Label1.Font = new Font("Arial", 8.25f, FontStyle.Bold, GraphicsUnit.Point, 0);
			Control arg_2A9_0 = this.Label1;
			location = new Point(43, 120);
			arg_2A9_0.Location = location;
			this.Label1.Name = "Label1";
			Control arg_2D0_0 = this.Label1;
			size = new Size(34, 14);
			arg_2D0_0.Size = size;
			this.Label1.TabIndex = 72;
			this.Label1.Text = "Web:";
			this.LinkLabel1.AutoSize = true;
			this.LinkLabel1.LinkColor = Color.WhiteSmoke;
			Control arg_323_0 = this.LinkLabel1;
			location = new Point(43, 134);
			arg_323_0.Location = location;
			this.LinkLabel1.Name = "LinkLabel1";
			Control arg_34D_0 = this.LinkLabel1;
			size = new Size(148, 14);
			arg_34D_0.Size = size;
			this.LinkLabel1.TabIndex = 73;
			this.LinkLabel1.TabStop = true;
			this.LinkLabel1.Text = "http://ningalinet-rat.890m.com";
			this.Label2.AutoSize = true;
			this.Label2.Font = new Font("Arial", 8.25f, FontStyle.Bold, GraphicsUnit.Point, 0);
			Control arg_3B9_0 = this.Label2;
			location = new Point(16, 293);
			arg_3B9_0.Location = location;
			this.Label2.Name = "Label2";
			Control arg_3E0_0 = this.Label2;
			size = new Size(118, 14);
			arg_3E0_0.Size = size;
			this.Label2.TabIndex = 74;
			this.Label2.Text = "Follow us on social :";
			this.PictureBox2.BackColor = Color.FromArgb(10, 10, 10);
			this.PictureBox2.Cursor = Cursors.Hand;
			this.PictureBox2.Image = (Image)componentResourceManager.GetObject("PictureBox2.Image");
			Control arg_458_0 = this.PictureBox2;
			location = new Point(19, 310);
			arg_458_0.Location = location;
			this.PictureBox2.Name = "PictureBox2";
			Control arg_47F_0 = this.PictureBox2;
			size = new Size(32, 32);
			arg_47F_0.Size = size;
			this.PictureBox2.SizeMode = PictureBoxSizeMode.Zoom;
			this.PictureBox2.TabIndex = 75;
			this.PictureBox2.TabStop = false;
			this.PictureBox3.BackColor = Color.FromArgb(10, 10, 10);
			this.PictureBox3.Cursor = Cursors.Hand;
			this.PictureBox3.Image = (Image)componentResourceManager.GetObject("PictureBox3.Image");
			Control arg_4FF_0 = this.PictureBox3;
			location = new Point(95, 310);
			arg_4FF_0.Location = location;
			this.PictureBox3.Name = "PictureBox3";
			Control arg_526_0 = this.PictureBox3;
			size = new Size(32, 32);
			arg_526_0.Size = size;
			this.PictureBox3.SizeMode = PictureBoxSizeMode.Zoom;
			this.PictureBox3.TabIndex = 76;
			this.PictureBox3.TabStop = false;
			this.PictureBox4.BackColor = Color.FromArgb(10, 10, 10);
			this.PictureBox4.Cursor = Cursors.Hand;
			this.PictureBox4.Image = (Image)componentResourceManager.GetObject("PictureBox4.Image");
			Control arg_5A9_0 = this.PictureBox4;
			location = new Point(133, 310);
			arg_5A9_0.Location = location;
			this.PictureBox4.Name = "PictureBox4";
			Control arg_5D0_0 = this.PictureBox4;
			size = new Size(32, 32);
			arg_5D0_0.Size = size;
			this.PictureBox4.SizeMode = PictureBoxSizeMode.Zoom;
			this.PictureBox4.TabIndex = 77;
			this.PictureBox4.TabStop = false;
			this.PictureBox5.BackColor = Color.FromArgb(10, 10, 10);
			this.PictureBox5.Cursor = Cursors.Hand;
			this.PictureBox5.Image = (Image)componentResourceManager.GetObject("PictureBox5.Image");
			Control arg_650_0 = this.PictureBox5;
			location = new Point(57, 310);
			arg_650_0.Location = location;
			this.PictureBox5.Name = "PictureBox5";
			Control arg_677_0 = this.PictureBox5;
			size = new Size(32, 32);
			arg_677_0.Size = size;
			this.PictureBox5.SizeMode = PictureBoxSizeMode.Zoom;
			this.PictureBox5.TabIndex = 78;
			this.PictureBox5.TabStop = false;
			this.Label6.AutoSize = true;
			this.Label6.Font = new Font("Arial", 8.25f, FontStyle.Bold, GraphicsUnit.Point, 0);
			Control arg_6DF_0 = this.Label6;
			location = new Point(43, 158);
			arg_6DF_0.Location = location;
			this.Label6.Name = "Label6";
			Control arg_706_0 = this.Label6;
			size = new Size(65, 14);
			arg_706_0.Size = size;
			this.Label6.TabIndex = 79;
			this.Label6.Text = "Thanks to:";
			this.Label7.AutoSize = true;
			Control arg_749_0 = this.Label7;
			location = new Point(43, 172);
			arg_749_0.Location = location;
			this.Label7.Name = "Label7";
			Control arg_770_0 = this.Label7;
			size = new Size(92, 112);
			arg_770_0.Size = size;
			this.Label7.TabIndex = 80;
			this.Label7.Text = "- qr523\r\n- asril cyber\r\n- njq8\r\n- DARKCODERSC\r\n- Hacking.SooftT\r\n- Samed DZ\r\n- Pjoao1578\r\n- Majdi SaaD";
			this.Button4.Anchor = (AnchorStyles.Bottom | AnchorStyles.Right);
			this.Button4.BackColor = Color.FromArgb(20, 20, 20);
			this.Button4.FlatStyle = FlatStyle.Popup;
			this.Button4.ImageAlign = ContentAlignment.MiddleLeft;
			Control arg_7E6_0 = this.Button4;
			location = new Point(466, 358);
			arg_7E6_0.Location = location;
			this.Button4.Name = "Button4";
			Control arg_80D_0 = this.Button4;
			size = new Size(88, 23);
			arg_80D_0.Size = size;
			this.Button4.TabIndex = 82;
			this.Button4.Text = "How to buy?";
			this.Button4.UseVisualStyleBackColor = false;
			this.Timer1.Enabled = true;
			this.Button1.BackColor = Color.FromArgb(20, 20, 20);
			this.Button1.FlatStyle = FlatStyle.Popup;
			this.Button1.ImageAlign = ContentAlignment.MiddleLeft;
			Control arg_888_0 = this.Button1;
			location = new Point(19, 62);
			arg_888_0.Location = location;
			this.Button1.Name = "Button1";
			Control arg_8B2_0 = this.Button1;
			size = new Size(172, 46);
			arg_8B2_0.Size = size;
			this.Button1.TabIndex = 83;
			this.Button1.Text = "Registration";
			this.Button1.UseVisualStyleBackColor = false;
			this.PictureBox6.Anchor = (AnchorStyles.Top | AnchorStyles.Right);
			this.PictureBox6.Image = (Image)componentResourceManager.GetObject("PictureBox6.Image");
			Control arg_91C_0 = this.PictureBox6;
			location = new Point(619, 0);
			arg_91C_0.Location = location;
			this.PictureBox6.Name = "PictureBox6";
			Control arg_943_0 = this.PictureBox6;
			size = new Size(16, 16);
			arg_943_0.Size = size;
			this.PictureBox6.TabIndex = 86;
			this.PictureBox6.TabStop = false;
			this.Button3.Anchor = (AnchorStyles.Bottom | AnchorStyles.Right);
			this.Button3.BackColor = Color.FromArgb(20, 20, 20);
			this.Button3.FlatStyle = FlatStyle.Popup;
			Control arg_9A8_0 = this.Button3;
			location = new Point(560, 358);
			arg_9A8_0.Location = location;
			this.Button3.Name = "Button3";
			Control arg_9CF_0 = this.Button3;
			size = new Size(75, 23);
			arg_9CF_0.Size = size;
			this.Button3.TabIndex = 87;
			this.Button3.Text = "Help?";
			this.Button3.UseVisualStyleBackColor = false;
			SizeF autoScaleDimensions = new SizeF(6f, 14f);
			this.AutoScaleDimensions = autoScaleDimensions;
			this.AutoScaleMode = AutoScaleMode.Font;
			this.BackColor = Color.FromArgb(10, 10, 10);
			this.Controls.Add(this.Button3);
			this.Controls.Add(this.PictureBox6);
			this.Controls.Add(this.Button1);
			this.Controls.Add(this.Button4);
			this.Controls.Add(this.Label7);
			this.Controls.Add(this.Label6);
			this.Controls.Add(this.PictureBox5);
			this.Controls.Add(this.PictureBox4);
			this.Controls.Add(this.PictureBox3);
			this.Controls.Add(this.PictureBox2);
			this.Controls.Add(this.Label2);
			this.Controls.Add(this.LinkLabel1);
			this.Controls.Add(this.Label1);
			this.Controls.Add(this.Label5);
			this.Controls.Add(this.Label4);
			this.Controls.Add(this.Label3);
			this.Font = new Font("Arial", 8.25f, FontStyle.Regular, GraphicsUnit.Point, 0);
			this.ForeColor = Color.WhiteSmoke;
			this.Name = "ControlAbout";
			size = new Size(638, 384);
			this.Size = size;
			((ISupportInitialize)this.PictureBox2).EndInit();
			((ISupportInitialize)this.PictureBox3).EndInit();
			((ISupportInitialize)this.PictureBox4).EndInit();
			((ISupportInitialize)this.PictureBox5).EndInit();
			((ISupportInitialize)this.PictureBox6).EndInit();
			this.ResumeLayout(false);
			this.PerformLayout();
		}

		// Token: 0x170002DC RID: 732
		// (get) Token: 0x060007ED RID: 2029 RVA: 0x0003F79C File Offset: 0x0003D99C
		// (set) Token: 0x060007EE RID: 2030 RVA: 0x0000484A File Offset: 0x00002A4A
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

		// Token: 0x170002DD RID: 733
		// (get) Token: 0x060007EF RID: 2031 RVA: 0x0003F7B4 File Offset: 0x0003D9B4
		// (set) Token: 0x060007F0 RID: 2032 RVA: 0x00004853 File Offset: 0x00002A53
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

		// Token: 0x170002DE RID: 734
		// (get) Token: 0x060007F1 RID: 2033 RVA: 0x0003F7CC File Offset: 0x0003D9CC
		// (set) Token: 0x060007F2 RID: 2034 RVA: 0x0000485C File Offset: 0x00002A5C
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

		// Token: 0x170002DF RID: 735
		// (get) Token: 0x060007F3 RID: 2035 RVA: 0x0003F7E4 File Offset: 0x0003D9E4
		// (set) Token: 0x060007F4 RID: 2036 RVA: 0x0003F7FC File Offset: 0x0003D9FC
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
				EventHandler value2 = new EventHandler(this.Label1_Click);
				if (this._Label1 != null)
				{
					this._Label1.Click -= value2;
				}
				this._Label1 = value;
				if (this._Label1 != null)
				{
					this._Label1.Click += value2;
				}
			}
		}

		// Token: 0x170002E0 RID: 736
		// (get) Token: 0x060007F5 RID: 2037 RVA: 0x0003F854 File Offset: 0x0003DA54
		// (set) Token: 0x060007F6 RID: 2038 RVA: 0x0003F86C File Offset: 0x0003DA6C
		internal virtual LinkLabel LinkLabel1
		{
			[DebuggerNonUserCode]
			get
			{
				return this._LinkLabel1;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				LinkLabelLinkClickedEventHandler value2 = new LinkLabelLinkClickedEventHandler(this.LinkLabel1_LinkClicked);
				if (this._LinkLabel1 != null)
				{
					this._LinkLabel1.LinkClicked -= value2;
				}
				this._LinkLabel1 = value;
				if (this._LinkLabel1 != null)
				{
					this._LinkLabel1.LinkClicked += value2;
				}
			}
		}

		// Token: 0x170002E1 RID: 737
		// (get) Token: 0x060007F7 RID: 2039 RVA: 0x0003F8C4 File Offset: 0x0003DAC4
		// (set) Token: 0x060007F8 RID: 2040 RVA: 0x0003F8DC File Offset: 0x0003DADC
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
				EventHandler value2 = new EventHandler(this.Label2_Click);
				if (this._Label2 != null)
				{
					this._Label2.Click -= value2;
				}
				this._Label2 = value;
				if (this._Label2 != null)
				{
					this._Label2.Click += value2;
				}
			}
		}

		// Token: 0x170002E2 RID: 738
		// (get) Token: 0x060007F9 RID: 2041 RVA: 0x0003F934 File Offset: 0x0003DB34
		// (set) Token: 0x060007FA RID: 2042 RVA: 0x0003F94C File Offset: 0x0003DB4C
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
				EventHandler value2 = new EventHandler(this.PictureBox2_Click);
				if (this._PictureBox2 != null)
				{
					this._PictureBox2.Click -= value2;
				}
				this._PictureBox2 = value;
				if (this._PictureBox2 != null)
				{
					this._PictureBox2.Click += value2;
				}
			}
		}

		// Token: 0x170002E3 RID: 739
		// (get) Token: 0x060007FB RID: 2043 RVA: 0x0003F9A4 File Offset: 0x0003DBA4
		// (set) Token: 0x060007FC RID: 2044 RVA: 0x0003F9BC File Offset: 0x0003DBBC
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
				EventHandler value2 = new EventHandler(this.PictureBox3_Click);
				if (this._PictureBox3 != null)
				{
					this._PictureBox3.Click -= value2;
				}
				this._PictureBox3 = value;
				if (this._PictureBox3 != null)
				{
					this._PictureBox3.Click += value2;
				}
			}
		}

		// Token: 0x170002E4 RID: 740
		// (get) Token: 0x060007FD RID: 2045 RVA: 0x0003FA14 File Offset: 0x0003DC14
		// (set) Token: 0x060007FE RID: 2046 RVA: 0x0003FA2C File Offset: 0x0003DC2C
		internal virtual PictureBox PictureBox4
		{
			[DebuggerNonUserCode]
			get
			{
				return this._PictureBox4;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.PictureBox4_Click);
				if (this._PictureBox4 != null)
				{
					this._PictureBox4.Click -= value2;
				}
				this._PictureBox4 = value;
				if (this._PictureBox4 != null)
				{
					this._PictureBox4.Click += value2;
				}
			}
		}

		// Token: 0x170002E5 RID: 741
		// (get) Token: 0x060007FF RID: 2047 RVA: 0x0003FA84 File Offset: 0x0003DC84
		// (set) Token: 0x06000800 RID: 2048 RVA: 0x0003FA9C File Offset: 0x0003DC9C
		internal virtual PictureBox PictureBox5
		{
			[DebuggerNonUserCode]
			get
			{
				return this._PictureBox5;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.PictureBox5_Click);
				if (this._PictureBox5 != null)
				{
					this._PictureBox5.Click -= value2;
				}
				this._PictureBox5 = value;
				if (this._PictureBox5 != null)
				{
					this._PictureBox5.Click += value2;
				}
			}
		}

		// Token: 0x170002E6 RID: 742
		// (get) Token: 0x06000801 RID: 2049 RVA: 0x0003FAF4 File Offset: 0x0003DCF4
		// (set) Token: 0x06000802 RID: 2050 RVA: 0x0003FB0C File Offset: 0x0003DD0C
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
				EventHandler value2 = new EventHandler(this.Label6_Click);
				if (this._Label6 != null)
				{
					this._Label6.Click -= value2;
				}
				this._Label6 = value;
				if (this._Label6 != null)
				{
					this._Label6.Click += value2;
				}
			}
		}

		// Token: 0x170002E7 RID: 743
		// (get) Token: 0x06000803 RID: 2051 RVA: 0x0003FB64 File Offset: 0x0003DD64
		// (set) Token: 0x06000804 RID: 2052 RVA: 0x0003FB7C File Offset: 0x0003DD7C
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
				EventHandler value2 = new EventHandler(this.Label7_Click);
				if (this._Label7 != null)
				{
					this._Label7.Click -= value2;
				}
				this._Label7 = value;
				if (this._Label7 != null)
				{
					this._Label7.Click += value2;
				}
			}
		}

		// Token: 0x170002E8 RID: 744
		// (get) Token: 0x06000805 RID: 2053 RVA: 0x0003FBD4 File Offset: 0x0003DDD4
		// (set) Token: 0x06000806 RID: 2054 RVA: 0x0003FBEC File Offset: 0x0003DDEC
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

		// Token: 0x170002E9 RID: 745
		// (get) Token: 0x06000807 RID: 2055 RVA: 0x0003FC44 File Offset: 0x0003DE44
		// (set) Token: 0x06000808 RID: 2056 RVA: 0x0003FC5C File Offset: 0x0003DE5C
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

		// Token: 0x170002EA RID: 746
		// (get) Token: 0x06000809 RID: 2057 RVA: 0x0003FCB4 File Offset: 0x0003DEB4
		// (set) Token: 0x0600080A RID: 2058 RVA: 0x0003FCCC File Offset: 0x0003DECC
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

		// Token: 0x170002EB RID: 747
		// (get) Token: 0x0600080B RID: 2059 RVA: 0x0003FD24 File Offset: 0x0003DF24
		// (set) Token: 0x0600080C RID: 2060 RVA: 0x00004865 File Offset: 0x00002A65
		internal virtual PictureBox PictureBox6
		{
			[DebuggerNonUserCode]
			get
			{
				return this._PictureBox6;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._PictureBox6 = value;
			}
		}

		// Token: 0x170002EC RID: 748
		// (get) Token: 0x0600080D RID: 2061 RVA: 0x0003FD3C File Offset: 0x0003DF3C
		// (set) Token: 0x0600080E RID: 2062 RVA: 0x0003FD54 File Offset: 0x0003DF54
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

		// Token: 0x0600080F RID: 2063 RVA: 0x0000486E File Offset: 0x00002A6E
		private void Button4_Click(object sender, EventArgs e)
		{
			MyProject.Forms.FrmBuy.Show();
		}

		// Token: 0x06000810 RID: 2064 RVA: 0x0000487F File Offset: 0x00002A7F
		private void PictureBox2_Click(object sender, EventArgs e)
		{
			Process.Start("https://www.facebook.com/100010926273240");
		}

		// Token: 0x06000811 RID: 2065 RVA: 0x0000488C File Offset: 0x00002A8C
		private void PictureBox5_Click(object sender, EventArgs e)
		{
			Process.Start("https://twitter.com/_im523");
		}

		// Token: 0x06000812 RID: 2066 RVA: 0x00004899 File Offset: 0x00002A99
		private void PictureBox3_Click(object sender, EventArgs e)
		{
			Process.Start("https://plus.google.com/+ilhammuttaqin_im523");
		}

		// Token: 0x06000813 RID: 2067 RVA: 0x000048A6 File Offset: 0x00002AA6
		private void PictureBox4_Click(object sender, EventArgs e)
		{
			Process.Start("https://www.youtube.com/channel/UCr74VfOWN0mqLWT8OnZzuPQ/videos");
		}

		// Token: 0x06000814 RID: 2068 RVA: 0x000048B3 File Offset: 0x00002AB3
		private void Timer1_Tick(object sender, EventArgs e)
		{
			this.Label3.Text = MyProject.Forms.Form1.Label13.Text;
		}

		// Token: 0x06000815 RID: 2069 RVA: 0x000048D4 File Offset: 0x00002AD4
		private void LinkLabel1_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
		{
			Process.Start("https://ningalinet-rat.890m.com");
		}

		// Token: 0x06000816 RID: 2070 RVA: 0x000048E1 File Offset: 0x00002AE1
		private void Button1_Click(object sender, EventArgs e)
		{
			MyProject.Forms.Form2.Show();
		}

		// Token: 0x06000817 RID: 2071 RVA: 0x00002F54 File Offset: 0x00001154
		private void Button2_Click(object sender, EventArgs e)
		{
		}

		// Token: 0x06000818 RID: 2072 RVA: 0x000048F2 File Offset: 0x00002AF2
		private void Button3_Click(object sender, EventArgs e)
		{
			MyProject.Forms.FrmHelp.Show();
		}

		// Token: 0x06000819 RID: 2073 RVA: 0x00002F54 File Offset: 0x00001154
		private void Label7_Click(object sender, EventArgs e)
		{
		}

		// Token: 0x0600081A RID: 2074 RVA: 0x00002F54 File Offset: 0x00001154
		private void Label2_Click(object sender, EventArgs e)
		{
		}

		// Token: 0x0600081B RID: 2075 RVA: 0x00002F54 File Offset: 0x00001154
		private void Label6_Click(object sender, EventArgs e)
		{
		}

		// Token: 0x0600081C RID: 2076 RVA: 0x00002F54 File Offset: 0x00001154
		private void Label1_Click(object sender, EventArgs e)
		{
		}

		// Token: 0x0600081D RID: 2077 RVA: 0x00002F54 File Offset: 0x00001154
		private void ControlAbout_Load(object sender, EventArgs e)
		{
		}

		// Token: 0x040003B7 RID: 951
		private static List<WeakReference> __ENCList;

		// Token: 0x040003B8 RID: 952
		private IContainer components;

		// Token: 0x040003B9 RID: 953
		[AccessedThroughProperty("Label3")]
		private Label _Label3;

		// Token: 0x040003BA RID: 954
		[AccessedThroughProperty("Label4")]
		private Label _Label4;

		// Token: 0x040003BB RID: 955
		[AccessedThroughProperty("Label5")]
		private Label _Label5;

		// Token: 0x040003BC RID: 956
		[AccessedThroughProperty("Label1")]
		private Label _Label1;

		// Token: 0x040003BD RID: 957
		[AccessedThroughProperty("LinkLabel1")]
		private LinkLabel _LinkLabel1;

		// Token: 0x040003BE RID: 958
		[AccessedThroughProperty("Label2")]
		private Label _Label2;

		// Token: 0x040003BF RID: 959
		[AccessedThroughProperty("PictureBox2")]
		private PictureBox _PictureBox2;

		// Token: 0x040003C0 RID: 960
		[AccessedThroughProperty("PictureBox3")]
		private PictureBox _PictureBox3;

		// Token: 0x040003C1 RID: 961
		[AccessedThroughProperty("PictureBox4")]
		private PictureBox _PictureBox4;

		// Token: 0x040003C2 RID: 962
		[AccessedThroughProperty("PictureBox5")]
		private PictureBox _PictureBox5;

		// Token: 0x040003C3 RID: 963
		[AccessedThroughProperty("Label6")]
		private Label _Label6;

		// Token: 0x040003C4 RID: 964
		[AccessedThroughProperty("Label7")]
		private Label _Label7;

		// Token: 0x040003C5 RID: 965
		[AccessedThroughProperty("Button4")]
		private Button _Button4;

		// Token: 0x040003C6 RID: 966
		[AccessedThroughProperty("Timer1")]
		private Timer _Timer1;

		// Token: 0x040003C7 RID: 967
		[AccessedThroughProperty("Button1")]
		private Button _Button1;

		// Token: 0x040003C8 RID: 968
		[AccessedThroughProperty("PictureBox6")]
		private PictureBox _PictureBox6;

		// Token: 0x040003C9 RID: 969
		[AccessedThroughProperty("Button3")]
		private Button _Button3;
	}
}
