using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Diagnostics;
using System.Drawing;
using System.Runtime.CompilerServices;
using System.Threading;
using System.Windows.Forms;
using System.Xml;
using Microsoft.VisualBasic.CompilerServices;
using NINGALINET.My.Resources;

namespace NINGALINET
{
	// Token: 0x0200001A RID: 26
	[DesignerGenerated]
	public partial class FrmIPlockup : Form
	{
		// Token: 0x060005DD RID: 1501 RVA: 0x00003EC4 File Offset: 0x000020C4
		[DebuggerNonUserCode]
		static FrmIPlockup()
		{
			// Note: this type is marked as 'beforefieldinit'.
			Class2.zP7eVJHzSiX6G();
			FrmIPlockup.__ENCList = new List<WeakReference>();
		}

		// Token: 0x060005DE RID: 1502 RVA: 0x00003ED5 File Offset: 0x000020D5
		[DebuggerNonUserCode]
		public FrmIPlockup()
		{
			Class2.zP7eVJHzSiX6G();
			base..ctor();
			base.Load += new EventHandler(this.iplockup_Load);
			FrmIPlockup.__ENCAddToList(this);
			this.InitializeComponent();
		}

		// Token: 0x060005DF RID: 1503 RVA: 0x00032468 File Offset: 0x00030668
		[DebuggerNonUserCode]
		private static void __ENCAddToList(object value)
		{
			List<WeakReference> _ENCList = FrmIPlockup.__ENCList;
			checked
			{
				lock (_ENCList)
				{
					if (FrmIPlockup.__ENCList.Count == FrmIPlockup.__ENCList.Capacity)
					{
						int num = 0;
						int arg_37_0 = 0;
						int num2 = FrmIPlockup.__ENCList.Count - 1;
						int num3 = arg_37_0;
						while (true)
						{
							int arg_7D_0 = num3;
							int num4 = num2;
							if (arg_7D_0 > num4)
							{
								break;
							}
							WeakReference weakReference = FrmIPlockup.__ENCList[num3];
							if (weakReference.IsAlive)
							{
								if (num3 != num)
								{
									FrmIPlockup.__ENCList[num] = FrmIPlockup.__ENCList[num3];
								}
								num++;
							}
							num3++;
						}
						FrmIPlockup.__ENCList.RemoveRange(num, FrmIPlockup.__ENCList.Count - num);
						FrmIPlockup.__ENCList.Capacity = FrmIPlockup.__ENCList.Count;
					}
					FrmIPlockup.__ENCList.Add(new WeakReference(RuntimeHelpers.GetObjectValue(value)));
				}
			}
		}

		// Token: 0x17000238 RID: 568
		// (get) Token: 0x060005E2 RID: 1506 RVA: 0x000328BC File Offset: 0x00030ABC
		// (set) Token: 0x060005E3 RID: 1507 RVA: 0x000328D4 File Offset: 0x00030AD4
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

		// Token: 0x17000239 RID: 569
		// (get) Token: 0x060005E4 RID: 1508 RVA: 0x0003292C File Offset: 0x00030B2C
		// (set) Token: 0x060005E5 RID: 1509 RVA: 0x00003F01 File Offset: 0x00002101
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

		// Token: 0x1700023A RID: 570
		// (get) Token: 0x060005E6 RID: 1510 RVA: 0x00032944 File Offset: 0x00030B44
		// (set) Token: 0x060005E7 RID: 1511 RVA: 0x00003F0A File Offset: 0x0000210A
		internal virtual ListBox ListBox1
		{
			[DebuggerNonUserCode]
			get
			{
				return this._ListBox1;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._ListBox1 = value;
			}
		}

		// Token: 0x060005E8 RID: 1512 RVA: 0x0003295C File Offset: 0x00030B5C
		public void lockup()
		{
			checked
			{
				try
				{
					XmlDocument xmlDocument = new XmlDocument();
					NewLateBinding.LateCall(xmlDocument, null, "Load", new object[]
					{
						Operators.ConcatenateObject("http://freegeoip.net/xml/", this.ip)
					}, null, null, null, true);
					XmlNodeList elementsByTagName = xmlDocument.GetElementsByTagName("Response");
					int arg_49_0 = 0;
					int num = elementsByTagName.Count - 1;
					int num2 = arg_49_0;
					while (true)
					{
						int arg_2FD_0 = num2;
						int num3 = num;
						if (arg_2FD_0 > num3)
						{
							break;
						}
						elementsByTagName[num2].ChildNodes.Item(0).InnerText.Trim();
						this.ListBox1.Items.Clear();
						elementsByTagName[num2].ChildNodes.Item(0).InnerText.Trim();
						this.cd = elementsByTagName[num2].ChildNodes.Item(1).InnerText.Trim();
						this.ListBox1.Items.Add("IP Address : " + elementsByTagName[num2].ChildNodes.Item(0).InnerText.Trim());
						this.ListBox1.Items.Add("Country Code : " + elementsByTagName[num2].ChildNodes.Item(1).InnerText.Trim());
						this.ListBox1.Items.Add("Name : " + elementsByTagName[num2].ChildNodes.Item(2).InnerText.Trim());
						this.ListBox1.Items.Add("Region Code : " + elementsByTagName[num2].ChildNodes.Item(3).InnerText.Trim());
						this.ListBox1.Items.Add("Region Name : " + elementsByTagName[num2].ChildNodes.Item(4).InnerText.Trim());
						this.ListBox1.Items.Add("City : " + elementsByTagName[num2].ChildNodes.Item(5).InnerText.Trim());
						this.ListBox1.Items.Add("Zip Code : " + elementsByTagName[num2].ChildNodes.Item(6).InnerText.Trim());
						this.ListBox1.Items.Add("Latitude : " + elementsByTagName[num2].ChildNodes.Item(7).InnerText.Trim());
						this.ListBox1.Items.Add("Longitude : " + elementsByTagName[num2].ChildNodes.Item(8).InnerText.Trim());
						this.ListBox1.Items.Add("Metro Code : " + elementsByTagName[num2].ChildNodes.Item(9).InnerText.Trim());
						num2++;
					}
				}
				catch (Exception expr_304)
				{
					ProjectData.SetProjectError(expr_304);
					ProjectData.ClearProjectError();
				}
				try
				{
					this.PictureBox1.Load(Conversions.ToString(Operators.ConcatenateObject(Operators.ConcatenateObject("https://chart.googleapis.com/chart?chf=bg,s,000000&chs=420x220&cht=t&chco=00000030&chld=", this.cd), "&chtm=world")));
				}
				catch (Exception expr_33F)
				{
					ProjectData.SetProjectError(expr_33F);
					ProjectData.ClearProjectError();
				}
			}
		}

		// Token: 0x060005E9 RID: 1513 RVA: 0x00032CEC File Offset: 0x00030EEC
		private void iplockup_Load(object sender, EventArgs e)
		{
			this.Text = Conversions.ToString(Operators.AddObject("IP Lockup - ", ima.vno(this.sk.L)));
			Thread thread = new Thread(new ThreadStart(this.lockup));
			thread.Start();
		}

		// Token: 0x060005EA RID: 1514 RVA: 0x00032D38 File Offset: 0x00030F38
		private void Button1_Click(object sender, EventArgs e)
		{
			Thread thread = new Thread(new ThreadStart(this.lockup));
			thread.Start();
		}

		// Token: 0x040002AF RID: 687
		private static List<WeakReference> __ENCList;

		// Token: 0x040002B1 RID: 689
		[AccessedThroughProperty("Button1")]
		private Button _Button1;

		// Token: 0x040002B2 RID: 690
		[AccessedThroughProperty("PictureBox1")]
		private PictureBox _PictureBox1;

		// Token: 0x040002B3 RID: 691
		[AccessedThroughProperty("ListBox1")]
		private ListBox _ListBox1;

		// Token: 0x040002B4 RID: 692
		public int sock;

		// Token: 0x040002B5 RID: 693
		public string ip;

		// Token: 0x040002B6 RID: 694
		public string cd;

		// Token: 0x040002B7 RID: 695
		public object sv;

		// Token: 0x040002B8 RID: 696
		public Client sk;
	}
}
