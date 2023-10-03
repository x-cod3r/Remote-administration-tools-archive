using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Diagnostics;
using System.Drawing;
using System.Runtime.CompilerServices;
using System.Windows.Forms;
using Microsoft.VisualBasic.CompilerServices;
using Microsoft.Win32;

namespace NINGALINET
{
	// Token: 0x02000020 RID: 32
	[DesignerGenerated]
	public partial class FrmRegEdit : Form
	{
		// Token: 0x060006A4 RID: 1700 RVA: 0x00004209 File Offset: 0x00002409
		[DebuggerNonUserCode]
		static FrmRegEdit()
		{
			// Note: this type is marked as 'beforefieldinit'.
			Class2.zP7eVJHzSiX6G();
			FrmRegEdit.__ENCList = new List<WeakReference>();
		}

		// Token: 0x060006A5 RID: 1701 RVA: 0x0000421A File Offset: 0x0000241A
		[DebuggerNonUserCode]
		public FrmRegEdit()
		{
			Class2.zP7eVJHzSiX6G();
			base..ctor();
			FrmRegEdit.__ENCAddToList(this);
			this.InitializeComponent();
		}

		// Token: 0x060006A6 RID: 1702 RVA: 0x00037004 File Offset: 0x00035204
		[DebuggerNonUserCode]
		private static void __ENCAddToList(object value)
		{
			List<WeakReference> _ENCList = FrmRegEdit.__ENCList;
			checked
			{
				lock (_ENCList)
				{
					if (FrmRegEdit.__ENCList.Count == FrmRegEdit.__ENCList.Capacity)
					{
						int num = 0;
						int arg_37_0 = 0;
						int num2 = FrmRegEdit.__ENCList.Count - 1;
						int num3 = arg_37_0;
						while (true)
						{
							int arg_7D_0 = num3;
							int num4 = num2;
							if (arg_7D_0 > num4)
							{
								break;
							}
							WeakReference weakReference = FrmRegEdit.__ENCList[num3];
							if (weakReference.IsAlive)
							{
								if (num3 != num)
								{
									FrmRegEdit.__ENCList[num] = FrmRegEdit.__ENCList[num3];
								}
								num++;
							}
							num3++;
						}
						FrmRegEdit.__ENCList.RemoveRange(num, FrmRegEdit.__ENCList.Count - num);
						FrmRegEdit.__ENCList.Capacity = FrmRegEdit.__ENCList.Count;
					}
					FrmRegEdit.__ENCList.Add(new WeakReference(RuntimeHelpers.GetObjectValue(value)));
				}
			}
		}

		// Token: 0x17000277 RID: 631
		// (get) Token: 0x060006A9 RID: 1705 RVA: 0x00037710 File Offset: 0x00035910
		// (set) Token: 0x060006AA RID: 1706 RVA: 0x00004233 File Offset: 0x00002433
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

		// Token: 0x17000278 RID: 632
		// (get) Token: 0x060006AB RID: 1707 RVA: 0x00037728 File Offset: 0x00035928
		// (set) Token: 0x060006AC RID: 1708 RVA: 0x00037740 File Offset: 0x00035940
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

		// Token: 0x17000279 RID: 633
		// (get) Token: 0x060006AD RID: 1709 RVA: 0x00037798 File Offset: 0x00035998
		// (set) Token: 0x060006AE RID: 1710 RVA: 0x0000423C File Offset: 0x0000243C
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

		// Token: 0x1700027A RID: 634
		// (get) Token: 0x060006AF RID: 1711 RVA: 0x000377B0 File Offset: 0x000359B0
		// (set) Token: 0x060006B0 RID: 1712 RVA: 0x00004245 File Offset: 0x00002445
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

		// Token: 0x1700027B RID: 635
		// (get) Token: 0x060006B1 RID: 1713 RVA: 0x000377C8 File Offset: 0x000359C8
		// (set) Token: 0x060006B2 RID: 1714 RVA: 0x0000424E File Offset: 0x0000244E
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

		// Token: 0x1700027C RID: 636
		// (get) Token: 0x060006B3 RID: 1715 RVA: 0x000377E0 File Offset: 0x000359E0
		// (set) Token: 0x060006B4 RID: 1716 RVA: 0x00004257 File Offset: 0x00002457
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

		// Token: 0x1700027D RID: 637
		// (get) Token: 0x060006B5 RID: 1717 RVA: 0x000377F8 File Offset: 0x000359F8
		// (set) Token: 0x060006B6 RID: 1718 RVA: 0x00004260 File Offset: 0x00002460
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

		// Token: 0x060006B7 RID: 1719 RVA: 0x00037810 File Offset: 0x00035A10
		private void Button1_Click(object sender, EventArgs e)
		{
			this.sk.Send(string.Concat(new string[]
			{
				"RG",
				ima.Y,
				"!",
				ima.Y,
				this.Path,
				ima.Y,
				this.TextBox1.Text,
				ima.Y,
				this.TextBox3.Text,
				ima.Y,
				Convert.ToString(this.Typ(this.ComboBox1.Text))
			}));
			this.Close();
		}

		// Token: 0x060006B8 RID: 1720 RVA: 0x000378B8 File Offset: 0x00035AB8
		public int Typ(string t)
		{
			string left = t.ToLower();
			int result;
			if (Operators.CompareString(left, RegistryValueKind.Binary.ToString().ToLower(), false) == 0)
			{
				result = 3;
			}
			else if (Operators.CompareString(left, RegistryValueKind.DWord.ToString().ToLower(), false) == 0)
			{
				result = 4;
			}
			else if (Operators.CompareString(left, RegistryValueKind.ExpandString.ToString().ToLower(), false) == 0)
			{
				result = 2;
			}
			else if (Operators.CompareString(left, RegistryValueKind.MultiString.ToString().ToLower(), false) == 0)
			{
				result = 7;
			}
			else if (Operators.CompareString(left, RegistryValueKind.QWord.ToString().ToLower(), false) == 0)
			{
				result = 11;
			}
			else if (Operators.CompareString(left, RegistryValueKind.String.ToString().ToLower(), false) == 0)
			{
				result = 1;
			}
			else
			{
				int num;
				result = num;
			}
			return result;
		}

		// Token: 0x04000310 RID: 784
		private static List<WeakReference> __ENCList;

		// Token: 0x04000312 RID: 786
		[AccessedThroughProperty("ComboBox1")]
		private ComboBox _ComboBox1;

		// Token: 0x04000313 RID: 787
		[AccessedThroughProperty("Button1")]
		private Button _Button1;

		// Token: 0x04000314 RID: 788
		[AccessedThroughProperty("TextBox3")]
		private TextBox _TextBox3;

		// Token: 0x04000315 RID: 789
		[AccessedThroughProperty("TextBox1")]
		private TextBox _TextBox1;

		// Token: 0x04000316 RID: 790
		[AccessedThroughProperty("Label3")]
		private Label _Label3;

		// Token: 0x04000317 RID: 791
		[AccessedThroughProperty("Label2")]
		private Label _Label2;

		// Token: 0x04000318 RID: 792
		[AccessedThroughProperty("Label1")]
		private Label _Label1;

		// Token: 0x04000319 RID: 793
		public string Path;

		// Token: 0x0400031A RID: 794
		public Client sk;
	}
}
