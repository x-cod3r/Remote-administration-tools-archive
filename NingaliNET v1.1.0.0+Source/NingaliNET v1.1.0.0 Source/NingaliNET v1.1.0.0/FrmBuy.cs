using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Diagnostics;
using System.Drawing;
using System.Runtime.CompilerServices;
using System.Windows.Forms;
using Microsoft.VisualBasic.CompilerServices;
using NINGALINET.My.Resources;

namespace NINGALINET
{
	// Token: 0x0200000C RID: 12
	[DesignerGenerated]
	public partial class FrmBuy : Form
	{
		// Token: 0x060002C3 RID: 707 RVA: 0x00003006 File Offset: 0x00001206
		[DebuggerNonUserCode]
		static FrmBuy()
		{
			// Note: this type is marked as 'beforefieldinit'.
			Class2.zP7eVJHzSiX6G();
			FrmBuy.__ENCList = new List<WeakReference>();
		}

		// Token: 0x060002C4 RID: 708 RVA: 0x00003017 File Offset: 0x00001217
		[DebuggerNonUserCode]
		public FrmBuy()
		{
			Class2.zP7eVJHzSiX6G();
			base..ctor();
			FrmBuy.__ENCAddToList(this);
			this.InitializeComponent();
		}

		// Token: 0x060002C5 RID: 709 RVA: 0x0001CE64 File Offset: 0x0001B064
		[DebuggerNonUserCode]
		private static void __ENCAddToList(object value)
		{
			List<WeakReference> _ENCList = FrmBuy.__ENCList;
			checked
			{
				lock (_ENCList)
				{
					if (FrmBuy.__ENCList.Count == FrmBuy.__ENCList.Capacity)
					{
						int num = 0;
						int arg_37_0 = 0;
						int num2 = FrmBuy.__ENCList.Count - 1;
						int num3 = arg_37_0;
						while (true)
						{
							int arg_7D_0 = num3;
							int num4 = num2;
							if (arg_7D_0 > num4)
							{
								break;
							}
							WeakReference weakReference = FrmBuy.__ENCList[num3];
							if (weakReference.IsAlive)
							{
								if (num3 != num)
								{
									FrmBuy.__ENCList[num] = FrmBuy.__ENCList[num3];
								}
								num++;
							}
							num3++;
						}
						FrmBuy.__ENCList.RemoveRange(num, FrmBuy.__ENCList.Count - num);
						FrmBuy.__ENCList.Capacity = FrmBuy.__ENCList.Count;
					}
					FrmBuy.__ENCList.Add(new WeakReference(RuntimeHelpers.GetObjectValue(value)));
				}
			}
		}

		// Token: 0x1700011A RID: 282
		// (get) Token: 0x060002C8 RID: 712 RVA: 0x0001F088 File Offset: 0x0001D288
		// (set) Token: 0x060002C9 RID: 713 RVA: 0x00003030 File Offset: 0x00001230
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

		// Token: 0x1700011B RID: 283
		// (get) Token: 0x060002CA RID: 714 RVA: 0x0001F0A0 File Offset: 0x0001D2A0
		// (set) Token: 0x060002CB RID: 715 RVA: 0x00003039 File Offset: 0x00001239
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

		// Token: 0x1700011C RID: 284
		// (get) Token: 0x060002CC RID: 716 RVA: 0x0001F0B8 File Offset: 0x0001D2B8
		// (set) Token: 0x060002CD RID: 717 RVA: 0x00003042 File Offset: 0x00001242
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

		// Token: 0x1700011D RID: 285
		// (get) Token: 0x060002CE RID: 718 RVA: 0x0001F0D0 File Offset: 0x0001D2D0
		// (set) Token: 0x060002CF RID: 719 RVA: 0x0000304B File Offset: 0x0000124B
		internal virtual Label Label22
		{
			[DebuggerNonUserCode]
			get
			{
				return this._Label22;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._Label22 = value;
			}
		}

		// Token: 0x1700011E RID: 286
		// (get) Token: 0x060002D0 RID: 720 RVA: 0x0001F0E8 File Offset: 0x0001D2E8
		// (set) Token: 0x060002D1 RID: 721 RVA: 0x00003054 File Offset: 0x00001254
		internal virtual Label Label23
		{
			[DebuggerNonUserCode]
			get
			{
				return this._Label23;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._Label23 = value;
			}
		}

		// Token: 0x1700011F RID: 287
		// (get) Token: 0x060002D2 RID: 722 RVA: 0x0001F100 File Offset: 0x0001D300
		// (set) Token: 0x060002D3 RID: 723 RVA: 0x0000305D File Offset: 0x0000125D
		internal virtual Panel Panel6
		{
			[DebuggerNonUserCode]
			get
			{
				return this._Panel6;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._Panel6 = value;
			}
		}

		// Token: 0x17000120 RID: 288
		// (get) Token: 0x060002D4 RID: 724 RVA: 0x0001F118 File Offset: 0x0001D318
		// (set) Token: 0x060002D5 RID: 725 RVA: 0x00003066 File Offset: 0x00001266
		internal virtual Label Label26
		{
			[DebuggerNonUserCode]
			get
			{
				return this._Label26;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._Label26 = value;
			}
		}

		// Token: 0x17000121 RID: 289
		// (get) Token: 0x060002D6 RID: 726 RVA: 0x0001F130 File Offset: 0x0001D330
		// (set) Token: 0x060002D7 RID: 727 RVA: 0x0000306F File Offset: 0x0000126F
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
				this._Button7 = value;
			}
		}

		// Token: 0x17000122 RID: 290
		// (get) Token: 0x060002D8 RID: 728 RVA: 0x0001F148 File Offset: 0x0001D348
		// (set) Token: 0x060002D9 RID: 729 RVA: 0x00003078 File Offset: 0x00001278
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
				this._Button9 = value;
			}
		}

		// Token: 0x17000123 RID: 291
		// (get) Token: 0x060002DA RID: 730 RVA: 0x0001F160 File Offset: 0x0001D360
		// (set) Token: 0x060002DB RID: 731 RVA: 0x00003081 File Offset: 0x00001281
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
				this._Button10 = value;
			}
		}

		// Token: 0x17000124 RID: 292
		// (get) Token: 0x060002DC RID: 732 RVA: 0x0001F178 File Offset: 0x0001D378
		// (set) Token: 0x060002DD RID: 733 RVA: 0x0000308A File Offset: 0x0000128A
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
				this._Button17 = value;
			}
		}

		// Token: 0x17000125 RID: 293
		// (get) Token: 0x060002DE RID: 734 RVA: 0x0001F190 File Offset: 0x0001D390
		// (set) Token: 0x060002DF RID: 735 RVA: 0x00003093 File Offset: 0x00001293
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
				this._Button18 = value;
			}
		}

		// Token: 0x17000126 RID: 294
		// (get) Token: 0x060002E0 RID: 736 RVA: 0x0001F1A8 File Offset: 0x0001D3A8
		// (set) Token: 0x060002E1 RID: 737 RVA: 0x0000309C File Offset: 0x0000129C
		internal virtual Label Label27
		{
			[DebuggerNonUserCode]
			get
			{
				return this._Label27;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._Label27 = value;
			}
		}

		// Token: 0x17000127 RID: 295
		// (get) Token: 0x060002E2 RID: 738 RVA: 0x0001F1C0 File Offset: 0x0001D3C0
		// (set) Token: 0x060002E3 RID: 739 RVA: 0x000030A5 File Offset: 0x000012A5
		internal virtual Panel Panel7
		{
			[DebuggerNonUserCode]
			get
			{
				return this._Panel7;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._Panel7 = value;
			}
		}

		// Token: 0x17000128 RID: 296
		// (get) Token: 0x060002E4 RID: 740 RVA: 0x0001F1D8 File Offset: 0x0001D3D8
		// (set) Token: 0x060002E5 RID: 741 RVA: 0x000030AE File Offset: 0x000012AE
		internal virtual Label Label28
		{
			[DebuggerNonUserCode]
			get
			{
				return this._Label28;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._Label28 = value;
			}
		}

		// Token: 0x17000129 RID: 297
		// (get) Token: 0x060002E6 RID: 742 RVA: 0x0001F1F0 File Offset: 0x0001D3F0
		// (set) Token: 0x060002E7 RID: 743 RVA: 0x000030B7 File Offset: 0x000012B7
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

		// Token: 0x1700012A RID: 298
		// (get) Token: 0x060002E8 RID: 744 RVA: 0x0001F208 File Offset: 0x0001D408
		// (set) Token: 0x060002E9 RID: 745 RVA: 0x000030C0 File Offset: 0x000012C0
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
				this._Button27 = value;
			}
		}

		// Token: 0x1700012B RID: 299
		// (get) Token: 0x060002EA RID: 746 RVA: 0x0001F220 File Offset: 0x0001D420
		// (set) Token: 0x060002EB RID: 747 RVA: 0x000030C9 File Offset: 0x000012C9
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
				this._Button28 = value;
			}
		}

		// Token: 0x1700012C RID: 300
		// (get) Token: 0x060002EC RID: 748 RVA: 0x0001F238 File Offset: 0x0001D438
		// (set) Token: 0x060002ED RID: 749 RVA: 0x000030D2 File Offset: 0x000012D2
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
				this._Button29 = value;
			}
		}

		// Token: 0x1700012D RID: 301
		// (get) Token: 0x060002EE RID: 750 RVA: 0x0001F250 File Offset: 0x0001D450
		// (set) Token: 0x060002EF RID: 751 RVA: 0x000030DB File Offset: 0x000012DB
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
				this._Button30 = value;
			}
		}

		// Token: 0x1700012E RID: 302
		// (get) Token: 0x060002F0 RID: 752 RVA: 0x0001F268 File Offset: 0x0001D468
		// (set) Token: 0x060002F1 RID: 753 RVA: 0x000030E4 File Offset: 0x000012E4
		internal virtual Label Label29
		{
			[DebuggerNonUserCode]
			get
			{
				return this._Label29;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._Label29 = value;
			}
		}

		// Token: 0x1700012F RID: 303
		// (get) Token: 0x060002F2 RID: 754 RVA: 0x0001F280 File Offset: 0x0001D480
		// (set) Token: 0x060002F3 RID: 755 RVA: 0x000030ED File Offset: 0x000012ED
		internal virtual Panel Panel8
		{
			[DebuggerNonUserCode]
			get
			{
				return this._Panel8;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._Panel8 = value;
			}
		}

		// Token: 0x17000130 RID: 304
		// (get) Token: 0x060002F4 RID: 756 RVA: 0x0001F298 File Offset: 0x0001D498
		// (set) Token: 0x060002F5 RID: 757 RVA: 0x000030F6 File Offset: 0x000012F6
		internal virtual Label Label30
		{
			[DebuggerNonUserCode]
			get
			{
				return this._Label30;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._Label30 = value;
			}
		}

		// Token: 0x17000131 RID: 305
		// (get) Token: 0x060002F6 RID: 758 RVA: 0x0001F2B0 File Offset: 0x0001D4B0
		// (set) Token: 0x060002F7 RID: 759 RVA: 0x000030FF File Offset: 0x000012FF
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
				this._Button31 = value;
			}
		}

		// Token: 0x17000132 RID: 306
		// (get) Token: 0x060002F8 RID: 760 RVA: 0x0001F2C8 File Offset: 0x0001D4C8
		// (set) Token: 0x060002F9 RID: 761 RVA: 0x00003108 File Offset: 0x00001308
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
				this._Button33 = value;
			}
		}

		// Token: 0x17000133 RID: 307
		// (get) Token: 0x060002FA RID: 762 RVA: 0x0001F2E0 File Offset: 0x0001D4E0
		// (set) Token: 0x060002FB RID: 763 RVA: 0x00003111 File Offset: 0x00001311
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
				this._Button34 = value;
			}
		}

		// Token: 0x17000134 RID: 308
		// (get) Token: 0x060002FC RID: 764 RVA: 0x0001F2F8 File Offset: 0x0001D4F8
		// (set) Token: 0x060002FD RID: 765 RVA: 0x0000311A File Offset: 0x0000131A
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
				this._Button35 = value;
			}
		}

		// Token: 0x17000135 RID: 309
		// (get) Token: 0x060002FE RID: 766 RVA: 0x0001F310 File Offset: 0x0001D510
		// (set) Token: 0x060002FF RID: 767 RVA: 0x00003123 File Offset: 0x00001323
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
				this._Button36 = value;
			}
		}

		// Token: 0x17000136 RID: 310
		// (get) Token: 0x06000300 RID: 768 RVA: 0x0001F328 File Offset: 0x0001D528
		// (set) Token: 0x06000301 RID: 769 RVA: 0x0000312C File Offset: 0x0000132C
		internal virtual Label Label31
		{
			[DebuggerNonUserCode]
			get
			{
				return this._Label31;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._Label31 = value;
			}
		}

		// Token: 0x17000137 RID: 311
		// (get) Token: 0x06000302 RID: 770 RVA: 0x0001F340 File Offset: 0x0001D540
		// (set) Token: 0x06000303 RID: 771 RVA: 0x00003135 File Offset: 0x00001335
		internal virtual Label Label32
		{
			[DebuggerNonUserCode]
			get
			{
				return this._Label32;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._Label32 = value;
			}
		}

		// Token: 0x17000138 RID: 312
		// (get) Token: 0x06000304 RID: 772 RVA: 0x0001F358 File Offset: 0x0001D558
		// (set) Token: 0x06000305 RID: 773 RVA: 0x0000313E File Offset: 0x0000133E
		internal virtual Label Label33
		{
			[DebuggerNonUserCode]
			get
			{
				return this._Label33;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._Label33 = value;
			}
		}

		// Token: 0x17000139 RID: 313
		// (get) Token: 0x06000306 RID: 774 RVA: 0x0001F370 File Offset: 0x0001D570
		// (set) Token: 0x06000307 RID: 775 RVA: 0x00003147 File Offset: 0x00001347
		internal virtual Label Label34
		{
			[DebuggerNonUserCode]
			get
			{
				return this._Label34;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._Label34 = value;
			}
		}

		// Token: 0x1700013A RID: 314
		// (get) Token: 0x06000308 RID: 776 RVA: 0x0001F388 File Offset: 0x0001D588
		// (set) Token: 0x06000309 RID: 777 RVA: 0x00003150 File Offset: 0x00001350
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

		// Token: 0x1700013B RID: 315
		// (get) Token: 0x0600030A RID: 778 RVA: 0x0001F3A0 File Offset: 0x0001D5A0
		// (set) Token: 0x0600030B RID: 779 RVA: 0x0001F3B8 File Offset: 0x0001D5B8
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
				EventHandler value2 = new EventHandler(this.RadioButton1_CheckedChanged);
				if (this._RadioButton1 != null)
				{
					this._RadioButton1.CheckedChanged -= value2;
				}
				this._RadioButton1 = value;
				if (this._RadioButton1 != null)
				{
					this._RadioButton1.CheckedChanged += value2;
				}
			}
		}

		// Token: 0x1700013C RID: 316
		// (get) Token: 0x0600030C RID: 780 RVA: 0x0001F410 File Offset: 0x0001D610
		// (set) Token: 0x0600030D RID: 781 RVA: 0x0001F428 File Offset: 0x0001D628
		internal virtual RadioButton RadioButton2
		{
			[DebuggerNonUserCode]
			get
			{
				return this._RadioButton2;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.RadioButton2_CheckedChanged);
				if (this._RadioButton2 != null)
				{
					this._RadioButton2.CheckedChanged -= value2;
				}
				this._RadioButton2 = value;
				if (this._RadioButton2 != null)
				{
					this._RadioButton2.CheckedChanged += value2;
				}
			}
		}

		// Token: 0x1700013D RID: 317
		// (get) Token: 0x0600030E RID: 782 RVA: 0x0001F480 File Offset: 0x0001D680
		// (set) Token: 0x0600030F RID: 783 RVA: 0x00003159 File Offset: 0x00001359
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

		// Token: 0x06000310 RID: 784 RVA: 0x00003162 File Offset: 0x00001362
		private void RadioButton2_CheckedChanged(object sender, EventArgs e)
		{
			this.RichTextBox1.Text = Resources.English;
		}

		// Token: 0x06000311 RID: 785 RVA: 0x00003174 File Offset: 0x00001374
		private void RadioButton1_CheckedChanged(object sender, EventArgs e)
		{
			this.RichTextBox1.Text = Resources.Bahasa_Indonesia;
		}

		// Token: 0x04000145 RID: 325
		private static List<WeakReference> __ENCList;

		// Token: 0x04000147 RID: 327
		[AccessedThroughProperty("PictureBox2")]
		private PictureBox _PictureBox2;

		// Token: 0x04000148 RID: 328
		[AccessedThroughProperty("Label5")]
		private Label _Label5;

		// Token: 0x04000149 RID: 329
		[AccessedThroughProperty("Label19")]
		private Label _Label19;

		// Token: 0x0400014A RID: 330
		[AccessedThroughProperty("Label22")]
		private Label _Label22;

		// Token: 0x0400014B RID: 331
		[AccessedThroughProperty("Label23")]
		private Label _Label23;

		// Token: 0x0400014C RID: 332
		[AccessedThroughProperty("Panel6")]
		private Panel _Panel6;

		// Token: 0x0400014D RID: 333
		[AccessedThroughProperty("Label26")]
		private Label _Label26;

		// Token: 0x0400014E RID: 334
		[AccessedThroughProperty("Button7")]
		private Button _Button7;

		// Token: 0x0400014F RID: 335
		[AccessedThroughProperty("Button9")]
		private Button _Button9;

		// Token: 0x04000150 RID: 336
		[AccessedThroughProperty("Button10")]
		private Button _Button10;

		// Token: 0x04000151 RID: 337
		[AccessedThroughProperty("Button17")]
		private Button _Button17;

		// Token: 0x04000152 RID: 338
		[AccessedThroughProperty("Button18")]
		private Button _Button18;

		// Token: 0x04000153 RID: 339
		[AccessedThroughProperty("Label27")]
		private Label _Label27;

		// Token: 0x04000154 RID: 340
		[AccessedThroughProperty("Panel7")]
		private Panel _Panel7;

		// Token: 0x04000155 RID: 341
		[AccessedThroughProperty("Label28")]
		private Label _Label28;

		// Token: 0x04000156 RID: 342
		[AccessedThroughProperty("Button25")]
		private Button _Button25;

		// Token: 0x04000157 RID: 343
		[AccessedThroughProperty("Button27")]
		private Button _Button27;

		// Token: 0x04000158 RID: 344
		[AccessedThroughProperty("Button28")]
		private Button _Button28;

		// Token: 0x04000159 RID: 345
		[AccessedThroughProperty("Button29")]
		private Button _Button29;

		// Token: 0x0400015A RID: 346
		[AccessedThroughProperty("Button30")]
		private Button _Button30;

		// Token: 0x0400015B RID: 347
		[AccessedThroughProperty("Label29")]
		private Label _Label29;

		// Token: 0x0400015C RID: 348
		[AccessedThroughProperty("Panel8")]
		private Panel _Panel8;

		// Token: 0x0400015D RID: 349
		[AccessedThroughProperty("Label30")]
		private Label _Label30;

		// Token: 0x0400015E RID: 350
		[AccessedThroughProperty("Button31")]
		private Button _Button31;

		// Token: 0x0400015F RID: 351
		[AccessedThroughProperty("Button33")]
		private Button _Button33;

		// Token: 0x04000160 RID: 352
		[AccessedThroughProperty("Button34")]
		private Button _Button34;

		// Token: 0x04000161 RID: 353
		[AccessedThroughProperty("Button35")]
		private Button _Button35;

		// Token: 0x04000162 RID: 354
		[AccessedThroughProperty("Button36")]
		private Button _Button36;

		// Token: 0x04000163 RID: 355
		[AccessedThroughProperty("Label31")]
		private Label _Label31;

		// Token: 0x04000164 RID: 356
		[AccessedThroughProperty("Label32")]
		private Label _Label32;

		// Token: 0x04000165 RID: 357
		[AccessedThroughProperty("Label33")]
		private Label _Label33;

		// Token: 0x04000166 RID: 358
		[AccessedThroughProperty("Label34")]
		private Label _Label34;

		// Token: 0x04000167 RID: 359
		[AccessedThroughProperty("RichTextBox1")]
		private RichTextBox _RichTextBox1;

		// Token: 0x04000168 RID: 360
		[AccessedThroughProperty("RadioButton1")]
		private RadioButton _RadioButton1;

		// Token: 0x04000169 RID: 361
		[AccessedThroughProperty("RadioButton2")]
		private RadioButton _RadioButton2;

		// Token: 0x0400016A RID: 362
		[AccessedThroughProperty("GroupPanelBox1")]
		private GroupPanelBox _GroupPanelBox1;
	}
}
