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
	// Token: 0x02000016 RID: 22
	[DesignerGenerated]
	public partial class FrmHelp : Form
	{
		// Token: 0x06000578 RID: 1400 RVA: 0x00003C39 File Offset: 0x00001E39
		[DebuggerNonUserCode]
		static FrmHelp()
		{
			// Note: this type is marked as 'beforefieldinit'.
			Class2.zP7eVJHzSiX6G();
			FrmHelp.__ENCList = new List<WeakReference>();
		}

		// Token: 0x06000579 RID: 1401 RVA: 0x00003C4A File Offset: 0x00001E4A
		[DebuggerNonUserCode]
		public FrmHelp()
		{
			Class2.zP7eVJHzSiX6G();
			base..ctor();
			base.Load += new EventHandler(this.Form4_Load);
			FrmHelp.__ENCAddToList(this);
			this.InitializeComponent();
		}

		// Token: 0x0600057A RID: 1402 RVA: 0x00030094 File Offset: 0x0002E294
		[DebuggerNonUserCode]
		private static void __ENCAddToList(object value)
		{
			List<WeakReference> _ENCList = FrmHelp.__ENCList;
			checked
			{
				lock (_ENCList)
				{
					if (FrmHelp.__ENCList.Count == FrmHelp.__ENCList.Capacity)
					{
						int num = 0;
						int arg_37_0 = 0;
						int num2 = FrmHelp.__ENCList.Count - 1;
						int num3 = arg_37_0;
						while (true)
						{
							int arg_7D_0 = num3;
							int num4 = num2;
							if (arg_7D_0 > num4)
							{
								break;
							}
							WeakReference weakReference = FrmHelp.__ENCList[num3];
							if (weakReference.IsAlive)
							{
								if (num3 != num)
								{
									FrmHelp.__ENCList[num] = FrmHelp.__ENCList[num3];
								}
								num++;
							}
							num3++;
						}
						FrmHelp.__ENCList.RemoveRange(num, FrmHelp.__ENCList.Count - num);
						FrmHelp.__ENCList.Capacity = FrmHelp.__ENCList.Count;
					}
					FrmHelp.__ENCList.Add(new WeakReference(RuntimeHelpers.GetObjectValue(value)));
				}
			}
		}

		// Token: 0x17000217 RID: 535
		// (get) Token: 0x0600057D RID: 1405 RVA: 0x00030308 File Offset: 0x0002E508
		// (set) Token: 0x0600057E RID: 1406 RVA: 0x00003C76 File Offset: 0x00001E76
		internal virtual RichTextBox RichTextBox1
		{
			[DebuggerNonUserCode]
			get
			{
				return this._RichTextBox1;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._RichTextBox1 = value;
			}
		}

		// Token: 0x0600057F RID: 1407 RVA: 0x00030320 File Offset: 0x0002E520
		private void Form4_Load(object sender, EventArgs e)
		{
			checked
			{
				this.Left = 0 - this.Width + Screen.PrimaryScreen.WorkingArea.Width;
				this.Top = 0 - this.Height + Screen.PrimaryScreen.WorkingArea.Height;
			}
		}

		// Token: 0x0400027F RID: 639
		private static List<WeakReference> __ENCList;

		// Token: 0x04000281 RID: 641
		[AccessedThroughProperty("RichTextBox1")]
		private RichTextBox _RichTextBox1;
	}
}
