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
	// Token: 0x02000012 RID: 18
	[DesignerGenerated]
	public partial class FrmEditHost : Form
	{
		// Token: 0x060003A1 RID: 929 RVA: 0x0000342E File Offset: 0x0000162E
		[DebuggerNonUserCode]
		static FrmEditHost()
		{
			// Note: this type is marked as 'beforefieldinit'.
			Class2.zP7eVJHzSiX6G();
			FrmEditHost.__ENCList = new List<WeakReference>();
		}

		// Token: 0x060003A2 RID: 930 RVA: 0x0000343F File Offset: 0x0000163F
		[DebuggerNonUserCode]
		public FrmEditHost()
		{
			Class2.zP7eVJHzSiX6G();
			base..ctor();
			base.Load += new EventHandler(this.FrmEditHost_Load);
			FrmEditHost.__ENCAddToList(this);
			this.InitializeComponent();
		}

		// Token: 0x060003A3 RID: 931 RVA: 0x00023134 File Offset: 0x00021334
		[DebuggerNonUserCode]
		private static void __ENCAddToList(object value)
		{
			List<WeakReference> _ENCList = FrmEditHost.__ENCList;
			checked
			{
				lock (_ENCList)
				{
					if (FrmEditHost.__ENCList.Count == FrmEditHost.__ENCList.Capacity)
					{
						int num = 0;
						int arg_37_0 = 0;
						int num2 = FrmEditHost.__ENCList.Count - 1;
						int num3 = arg_37_0;
						while (true)
						{
							int arg_7D_0 = num3;
							int num4 = num2;
							if (arg_7D_0 > num4)
							{
								break;
							}
							WeakReference weakReference = FrmEditHost.__ENCList[num3];
							if (weakReference.IsAlive)
							{
								if (num3 != num)
								{
									FrmEditHost.__ENCList[num] = FrmEditHost.__ENCList[num3];
								}
								num++;
							}
							num3++;
						}
						FrmEditHost.__ENCList.RemoveRange(num, FrmEditHost.__ENCList.Count - num);
						FrmEditHost.__ENCList.Capacity = FrmEditHost.__ENCList.Count;
					}
					FrmEditHost.__ENCList.Add(new WeakReference(RuntimeHelpers.GetObjectValue(value)));
				}
			}
		}

		// Token: 0x1700016A RID: 362
		// (get) Token: 0x060003A6 RID: 934 RVA: 0x000234AC File Offset: 0x000216AC
		// (set) Token: 0x060003A7 RID: 935 RVA: 0x0000346B File Offset: 0x0000166B
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

		// Token: 0x1700016B RID: 363
		// (get) Token: 0x060003A8 RID: 936 RVA: 0x000234C4 File Offset: 0x000216C4
		// (set) Token: 0x060003A9 RID: 937 RVA: 0x000234DC File Offset: 0x000216DC
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

		// Token: 0x060003AA RID: 938 RVA: 0x00023534 File Offset: 0x00021734
		private void Button1_Click(object sender, EventArgs e)
		{
			try
			{
				this.sk.Send("edhost!" + ima.Y + this.TextBox1.Text);
			}
			catch (Exception expr_29)
			{
				ProjectData.SetProjectError(expr_29);
				ProjectData.ClearProjectError();
			}
		}

		// Token: 0x060003AB RID: 939 RVA: 0x00003474 File Offset: 0x00001674
		private void FrmEditHost_Load(object sender, EventArgs e)
		{
			this.Text = Conversions.ToString(Operators.ConcatenateObject("Edit File Host - ", ima.vno(this.sk.L)));
		}

		// Token: 0x040001BA RID: 442
		private static List<WeakReference> __ENCList;

		// Token: 0x040001BC RID: 444
		[AccessedThroughProperty("TextBox1")]
		private TextBox _TextBox1;

		// Token: 0x040001BD RID: 445
		[AccessedThroughProperty("Button1")]
		private Button _Button1;

		// Token: 0x040001BE RID: 446
		public Client sk;

		// Token: 0x040001BF RID: 447
		public Client osk;
	}
}
