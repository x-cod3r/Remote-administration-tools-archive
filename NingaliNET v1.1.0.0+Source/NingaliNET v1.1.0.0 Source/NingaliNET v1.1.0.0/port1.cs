using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Diagnostics;
using System.Drawing;
using System.Runtime.CompilerServices;
using System.Windows.Forms;
using Microsoft.VisualBasic.CompilerServices;

namespace NINGALINET
{
	// Token: 0x0200001E RID: 30
	[DesignerGenerated]
	public partial class port1 : Form
	{
		// Token: 0x0600065B RID: 1627 RVA: 0x000040D0 File Offset: 0x000022D0
		[DebuggerNonUserCode]
		static port1()
		{
			// Note: this type is marked as 'beforefieldinit'.
			Class2.zP7eVJHzSiX6G();
			port1.__ENCList = new List<WeakReference>();
		}

		// Token: 0x0600065C RID: 1628 RVA: 0x00035674 File Offset: 0x00033874
		[DebuggerNonUserCode]
		private static void __ENCAddToList(object value)
		{
			List<WeakReference> _ENCList = port1.__ENCList;
			checked
			{
				lock (_ENCList)
				{
					if (port1.__ENCList.Count == port1.__ENCList.Capacity)
					{
						int num = 0;
						int arg_37_0 = 0;
						int num2 = port1.__ENCList.Count - 1;
						int num3 = arg_37_0;
						while (true)
						{
							int arg_7D_0 = num3;
							int num4 = num2;
							if (arg_7D_0 > num4)
							{
								break;
							}
							WeakReference weakReference = port1.__ENCList[num3];
							if (weakReference.IsAlive)
							{
								if (num3 != num)
								{
									port1.__ENCList[num] = port1.__ENCList[num3];
								}
								num++;
							}
							num3++;
						}
						port1.__ENCList.RemoveRange(num, port1.__ENCList.Count - num);
						port1.__ENCList.Capacity = port1.__ENCList.Count;
					}
					port1.__ENCList.Add(new WeakReference(RuntimeHelpers.GetObjectValue(value)));
				}
			}
		}

		// Token: 0x17000260 RID: 608
		// (get) Token: 0x0600065F RID: 1631 RVA: 0x00035B60 File Offset: 0x00033D60
		// (set) Token: 0x06000660 RID: 1632 RVA: 0x00035B78 File Offset: 0x00033D78
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
				EventHandler value2 = new EventHandler(this.TextBox1_TextChanged);
				KeyEventHandler value3 = new KeyEventHandler(this.TextBox1_KeyDown);
				if (this._TextBox1 != null)
				{
					this._TextBox1.TextChanged -= value2;
					this._TextBox1.KeyDown -= value3;
				}
				this._TextBox1 = value;
				if (this._TextBox1 != null)
				{
					this._TextBox1.TextChanged += value2;
					this._TextBox1.KeyDown += value3;
				}
			}
		}

		// Token: 0x17000261 RID: 609
		// (get) Token: 0x06000661 RID: 1633 RVA: 0x00035BF4 File Offset: 0x00033DF4
		// (set) Token: 0x06000662 RID: 1634 RVA: 0x00035C0C File Offset: 0x00033E0C
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

		// Token: 0x17000262 RID: 610
		// (get) Token: 0x06000663 RID: 1635 RVA: 0x00035C64 File Offset: 0x00033E64
		// (set) Token: 0x06000664 RID: 1636 RVA: 0x000040E1 File Offset: 0x000022E1
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

		// Token: 0x17000263 RID: 611
		// (get) Token: 0x06000665 RID: 1637 RVA: 0x00035C7C File Offset: 0x00033E7C
		// (set) Token: 0x06000666 RID: 1638 RVA: 0x00035C94 File Offset: 0x00033E94
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

		// Token: 0x17000264 RID: 612
		// (get) Token: 0x06000667 RID: 1639 RVA: 0x00035CEC File Offset: 0x00033EEC
		// (set) Token: 0x06000668 RID: 1640 RVA: 0x000040EA File Offset: 0x000022EA
		internal virtual CheckBox CheckBox1
		{
			[DebuggerNonUserCode]
			get
			{
				return this._CheckBox1;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._CheckBox1 = value;
			}
		}

		// Token: 0x06000669 RID: 1641 RVA: 0x00035D04 File Offset: 0x00033F04
		public port1()
		{
			Class2.zP7eVJHzSiX6G();
			base..ctor();
			base.Activated += new EventHandler(this.port_Activated);
			base.Load += new EventHandler(this.port1_Load);
			port1.__ENCAddToList(this);
			this.port = -1;
			this.InitializeComponent();
		}

		// Token: 0x0600066A RID: 1642 RVA: 0x000040F3 File Offset: 0x000022F3
		private void port_Activated(object sender, EventArgs e)
		{
			this.TextBox1.Focus();
		}

		// Token: 0x0600066B RID: 1643 RVA: 0x00035D58 File Offset: 0x00033F58
		private void Button1_Click(object sender, EventArgs e)
		{
			this.port = Conversions.ToInteger(this.TextBox1.Text);
			if (this.CheckBox1.Checked)
			{
				ima.UPNP = "YES";
			}
			else
			{
				ima.UPNP = "NO";
			}
			ima.F.ControlBuilder1.Port.Value = Conversions.ToDecimal(this.TextBox1.Text);
			ima.F.sl.Text = "Listen Port : " + this.TextBox1.Text;
			this.Close();
		}

		// Token: 0x0600066C RID: 1644 RVA: 0x00004101 File Offset: 0x00002301
		private void Button2_Click(object sender, EventArgs e)
		{
			this.port = -1;
			this.Close();
		}

		// Token: 0x0600066D RID: 1645 RVA: 0x00035DEC File Offset: 0x00033FEC
		private void TextBox1_KeyDown(object sender, KeyEventArgs e)
		{
			if (e.KeyCode == Keys.Return)
			{
				e.SuppressKeyPress = true;
				if (this.Button1.Enabled)
				{
					this.Button1_Click(RuntimeHelpers.GetObjectValue(RuntimeHelpers.GetObjectValue(RuntimeHelpers.GetObjectValue(sender))), new EventArgs());
				}
			}
			else if (e.KeyCode == Keys.Escape)
			{
				this.port = -1;
				this.Close();
			}
		}

		// Token: 0x0600066E RID: 1646 RVA: 0x00035E50 File Offset: 0x00034050
		private void TextBox1_TextChanged(object sender, EventArgs e)
		{
			try
			{
				Conversions.ToInteger(this.TextBox1.Text);
				if (Conversions.ToInteger(this.TextBox1.Text) > 65534 | Conversions.ToInteger(this.TextBox1.Text) < 1)
				{
					this.Button1.Enabled = false;
				}
				else
				{
					this.Button1.Enabled = true;
				}
			}
			catch (Exception expr_5B)
			{
				ProjectData.SetProjectError(expr_5B);
				this.Button1.Enabled = false;
				ProjectData.ClearProjectError();
			}
		}

		// Token: 0x0600066F RID: 1647 RVA: 0x00004110 File Offset: 0x00002310
		private void port1_Load(object sender, EventArgs e)
		{
			this.TextBox1.Text = Conversions.ToString(ima.F.ControlBuilder1.Port.Value);
		}

		// Token: 0x040002F1 RID: 753
		private static List<WeakReference> __ENCList;

		// Token: 0x040002F3 RID: 755
		[AccessedThroughProperty("TextBox1")]
		private TextBox _TextBox1;

		// Token: 0x040002F4 RID: 756
		[AccessedThroughProperty("Button1")]
		private Button _Button1;

		// Token: 0x040002F5 RID: 757
		[AccessedThroughProperty("Label1")]
		private Label _Label1;

		// Token: 0x040002F6 RID: 758
		[AccessedThroughProperty("Button2")]
		private Button _Button2;

		// Token: 0x040002F7 RID: 759
		[AccessedThroughProperty("CheckBox1")]
		private CheckBox _CheckBox1;

		// Token: 0x040002F8 RID: 760
		public int port;
	}
}
