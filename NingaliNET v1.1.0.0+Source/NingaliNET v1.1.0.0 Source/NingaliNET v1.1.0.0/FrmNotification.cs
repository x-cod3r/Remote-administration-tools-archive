using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Diagnostics;
using System.Drawing;
using System.Runtime.CompilerServices;
using System.Threading;
using System.Windows.Forms;
using Microsoft.VisualBasic.CompilerServices;

namespace NINGALINET
{
	// Token: 0x0200001D RID: 29
	[DesignerGenerated]
	public partial class FrmNotification : Form
	{
		// Token: 0x0600064E RID: 1614 RVA: 0x000040AE File Offset: 0x000022AE
		[DebuggerNonUserCode]
		static FrmNotification()
		{
			// Note: this type is marked as 'beforefieldinit'.
			Class2.zP7eVJHzSiX6G();
			FrmNotification.__ENCList = new List<WeakReference>();
		}

		// Token: 0x0600064F RID: 1615 RVA: 0x000350C4 File Offset: 0x000332C4
		public FrmNotification()
		{
			Class2.zP7eVJHzSiX6G();
			base..ctor();
			base.Load += new EventHandler(this.FrmNotification_Load);
			FrmNotification.__ENCAddToList(this);
			this.dz = new Thread(new ThreadStart(this.wrk));
			this.InitializeComponent();
		}

		// Token: 0x06000650 RID: 1616 RVA: 0x00035114 File Offset: 0x00033314
		[DebuggerNonUserCode]
		private static void __ENCAddToList(object value)
		{
			List<WeakReference> _ENCList = FrmNotification.__ENCList;
			checked
			{
				lock (_ENCList)
				{
					if (FrmNotification.__ENCList.Count == FrmNotification.__ENCList.Capacity)
					{
						int num = 0;
						int arg_37_0 = 0;
						int num2 = FrmNotification.__ENCList.Count - 1;
						int num3 = arg_37_0;
						while (true)
						{
							int arg_7D_0 = num3;
							int num4 = num2;
							if (arg_7D_0 > num4)
							{
								break;
							}
							WeakReference weakReference = FrmNotification.__ENCList[num3];
							if (weakReference.IsAlive)
							{
								if (num3 != num)
								{
									FrmNotification.__ENCList[num] = FrmNotification.__ENCList[num3];
								}
								num++;
							}
							num3++;
						}
						FrmNotification.__ENCList.RemoveRange(num, FrmNotification.__ENCList.Count - num);
						FrmNotification.__ENCList.Capacity = FrmNotification.__ENCList.Count;
					}
					FrmNotification.__ENCList.Add(new WeakReference(RuntimeHelpers.GetObjectValue(value)));
				}
			}
		}

		// Token: 0x1700025E RID: 606
		// (get) Token: 0x06000653 RID: 1619 RVA: 0x000354B8 File Offset: 0x000336B8
		// (set) Token: 0x06000654 RID: 1620 RVA: 0x000354D0 File Offset: 0x000336D0
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

		// Token: 0x1700025F RID: 607
		// (get) Token: 0x06000655 RID: 1621 RVA: 0x00035528 File Offset: 0x00033728
		// (set) Token: 0x06000656 RID: 1622 RVA: 0x000040BF File Offset: 0x000022BF
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

		// Token: 0x06000657 RID: 1623 RVA: 0x00035540 File Offset: 0x00033740
		public void shw()
		{
			checked
			{
				this.Left = Screen.PrimaryScreen.WorkingArea.Width - this.Width;
				this.Top = Screen.PrimaryScreen.WorkingArea.Height - this.Height;
				this.Show();
			}
		}

		// Token: 0x06000658 RID: 1624 RVA: 0x00035594 File Offset: 0x00033794
		private void FrmNotification_Load(object sender, EventArgs e)
		{
			this.x = checked(Screen.PrimaryScreen.WorkingArea.Width - this.Width);
			this.y = Screen.PrimaryScreen.WorkingArea.Height;
			Point location = new Point(this.x, this.y);
			this.Location = location;
			this.dz.Start();
		}

		// Token: 0x06000659 RID: 1625 RVA: 0x00035600 File Offset: 0x00033800
		public void wrk()
		{
			Thread.Sleep(100);
			checked
			{
				while (true)
				{
					if (this.y > Screen.PrimaryScreen.WorkingArea.Height - this.Height)
					{
						this.y--;
						Point location = new Point(this.x, this.y);
						this.Location = location;
					}
					else
					{
						Thread.Sleep(5000);
						this.Close();
					}
				}
			}
		}

		// Token: 0x0600065A RID: 1626 RVA: 0x000040C8 File Offset: 0x000022C8
		private void Button10_Click(object sender, EventArgs e)
		{
			this.Close();
		}

		// Token: 0x040002EA RID: 746
		private static List<WeakReference> __ENCList;

		// Token: 0x040002EC RID: 748
		[AccessedThroughProperty("Button10")]
		private Button _Button10;

		// Token: 0x040002ED RID: 749
		[AccessedThroughProperty("Pp1")]
		private Pp1 _Pp1;

		// Token: 0x040002EE RID: 750
		private int x;

		// Token: 0x040002EF RID: 751
		private int y;

		// Token: 0x040002F0 RID: 752
		private Thread dz;
	}
}
