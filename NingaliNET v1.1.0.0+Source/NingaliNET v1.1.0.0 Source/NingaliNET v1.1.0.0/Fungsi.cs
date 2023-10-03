using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.IO;
using System.IO.Compression;
using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;
using System.Security.Cryptography;
using System.Text;
using System.Windows.Forms;
using Microsoft.VisualBasic;
using Microsoft.VisualBasic.CompilerServices;
using Microsoft.Win32;

namespace NINGALINET
{
	// Token: 0x02000033 RID: 51
	public class Fungsi
	{
		// Token: 0x06000928 RID: 2344 RVA: 0x00002898 File Offset: 0x00000A98
		[DebuggerNonUserCode]
		public Fungsi()
		{
			Class2.zP7eVJHzSiX6G();
			base..ctor();
		}

		// Token: 0x06000929 RID: 2345 RVA: 0x000483D0 File Offset: 0x000465D0
		public static string BS(ref byte[] B)
		{
			return Encoding.Default.GetString(B);
		}

		// Token: 0x0600092A RID: 2346 RVA: 0x000483EC File Offset: 0x000465EC
		public static string DEB(ref string s)
		{
			int num = 0;
			checked
			{
				string result;
				while (true)
				{
					try
					{
						byte[] bytes = Convert.FromBase64String(s);
						result = Encoding.UTF8.GetString(bytes);
						break;
					}
					catch (Exception expr_1A)
					{
						ProjectData.SetProjectError(expr_1A);
						Exception projectError = expr_1A;
						ProjectData.SetProjectError(projectError);
						num++;
						if (num == 3)
						{
							result = null;
							ProjectData.ClearProjectError();
							ProjectData.ClearProjectError();
							break;
						}
						s += "=";
						ProjectData.ClearProjectError();
						ProjectData.ClearProjectError();
					}
				}
				return result;
			}
		}

		// Token: 0x0600092B RID: 2347 RVA: 0x0003CEAC File Offset: 0x0003B0AC
		public static string ENB(ref string s)
		{
			return Convert.ToBase64String(Encoding.UTF8.GetBytes(s));
		}

		// Token: 0x0600092C RID: 2348
		[DllImport("msvcrt.dll", CallingConvention = CallingConvention.Cdecl)]
		public static extern IntPtr memcpy(IntPtr intptr_0, IntPtr intptr_1, int int_0);

		// Token: 0x0600092D RID: 2349 RVA: 0x0004846C File Offset: 0x0004666C
		public static byte[] FDE(string base64)
		{
			return Convert.FromBase64String(base64);
		}

		// Token: 0x0600092E RID: 2350 RVA: 0x00048484 File Offset: 0x00046684
		public static string FEN(byte[] data)
		{
			return Convert.ToBase64String(data);
		}

		// Token: 0x0600092F RID: 2351 RVA: 0x0004849C File Offset: 0x0004669C
		public static Array fx(byte[] b, string WRD)
		{
			List<byte[]> list = new List<byte[]>();
			MemoryStream memoryStream = new MemoryStream();
			MemoryStream memoryStream2 = new MemoryStream();
			string[] array = Strings.Split(Fungsi.BS(ref b), WRD, -1, CompareMethod.Binary);
			memoryStream.Write(b, 0, array[0].Length);
			checked
			{
				memoryStream2.Write(b, array[0].Length + WRD.Length, b.Length - (array[0].Length + WRD.Length));
				list.Add(memoryStream.ToArray());
				list.Add(memoryStream2.ToArray());
				memoryStream.Dispose();
				memoryStream2.Dispose();
				return list.ToArray();
			}
		}

		// Token: 0x06000930 RID: 2352 RVA: 0x00048534 File Offset: 0x00046734
		public static string smethod_0(string s)
		{
			return Fungsi.smethod_1(Fungsi.SB(ref s));
		}

		// Token: 0x06000931 RID: 2353 RVA: 0x00048550 File Offset: 0x00046750
		public static string smethod_1(byte[] B)
		{
			B = new MD5CryptoServiceProvider().ComputeHash(B);
			string text = "";
			byte[] array = B;
			checked
			{
				for (int i = 0; i < array.Length; i++)
				{
					byte b = array[i];
					text += b.ToString("x2");
				}
				return text;
			}
		}

		// Token: 0x06000932 RID: 2354 RVA: 0x000485A0 File Offset: 0x000467A0
		public static Form GFORM(string Name)
		{
			return Application.OpenForms[Name];
		}

		// Token: 0x06000933 RID: 2355 RVA: 0x000485BC File Offset: 0x000467BC
		public static string GTV(string Name, string df)
		{
			string result;
			try
			{
				result = Conversions.ToString(RuntimeHelpers.GetObjectValue(Registry.CurrentUser.OpenSubKey("Software\\" + ima.vr).GetValue(Name, df)));
			}
			catch (Exception expr_2E)
			{
				ProjectData.SetProjectError(expr_2E);
				result = df;
				ProjectData.ClearProjectError();
			}
			return result;
		}

		// Token: 0x06000934 RID: 2356 RVA: 0x0004861C File Offset: 0x0004681C
		public static string XORR(string CodeKey, string DataIn)
		{
			string text = "";
			try
			{
				long arg_17_0 = 1L;
				long num = (long)Strings.Len(DataIn);
				long num2 = arg_17_0;
				checked
				{
					while (true)
					{
						long arg_8F_0 = num2;
						long num3 = num;
						if (arg_8F_0 > num3)
						{
							break;
						}
						int num4 = Strings.Asc(Strings.Mid(DataIn, (int)num2, 1));
						int num5 = Strings.Asc(Strings.Mid(CodeKey, (int)(num2 % unchecked((long)Strings.Len(CodeKey)) + 1L), 1));
						int number = num4 ^ num5;
						string text2 = Conversion.Hex(number);
						if (Strings.Len(text2) == 1)
						{
							text2 = "0" + text2;
						}
						text += text2;
						num2 += 1L;
					}
				}
			}
			catch (Exception expr_93)
			{
				ProjectData.SetProjectError(expr_93);
				ProjectData.ClearProjectError();
			}
			return text;
		}

		// Token: 0x06000935 RID: 2357 RVA: 0x000486E0 File Offset: 0x000468E0
		public static string HM()
		{
			return string.Concat(new string[]
			{
				"[",
				Conversions.ToString(DateAndTime.TimeOfDay.Hour),
				":",
				Conversions.ToString(DateAndTime.TimeOfDay.Minute),
				":",
				Conversions.ToString(DateAndTime.TimeOfDay.Second),
				"] "
			});
		}

		// Token: 0x06000936 RID: 2358 RVA: 0x00048760 File Offset: 0x00046960
		public static string DT()
		{
			return string.Concat(new string[]
			{
				DateTime.Now.Month.ToString(),
				"-",
				DateTime.Now.Day.ToString(),
				"-",
				DateTime.Now.Year.ToString(),
				" ",
				DateAndTime.TimeOfDay.Hour.ToString(),
				"-",
				DateAndTime.TimeOfDay.Minute.ToString(),
				"-",
				DateAndTime.TimeOfDay.Second.ToString()
			});
		}

		// Token: 0x06000937 RID: 2359 RVA: 0x00048850 File Offset: 0x00046A50
		public static bool REGKEY()
		{
			string text = Fungsi.smethod_0(ima.F.USER + "a98ad");
			string str = Fungsi.ENB(ref text);
			string codeKey = Fungsi.smethod_0(str + "|523|");
			bool flag;
			if (Operators.CompareString(ima.F.PASSWORD, Fungsi.XORR(codeKey, "0931"), false) == 0)
			{
				flag = flag;
			}
			else if (Operators.CompareString(ima.F.PASSWORD, Fungsi.XORR(codeKey, "0934"), false) == 0)
			{
				flag = flag;
			}
			else
			{
				flag = !flag;
			}
			return flag;
		}

		// Token: 0x06000938 RID: 2360 RVA: 0x000488E0 File Offset: 0x00046AE0
		public static string REV(string s)
		{
			string text = "";
			char[] array = s.ToCharArray();
			checked
			{
				for (int i = 0; i < array.Length; i++)
				{
					char c = array[i];
					text = c.ToString() + text;
				}
				return text;
			}
		}

		// Token: 0x06000939 RID: 2361 RVA: 0x00048924 File Offset: 0x00046B24
		public static string RN(int c)
		{
			Random random = new Random();
			string text = "";
			string text2 = "abcdefghijklmnopqrstuvwxyz";
			checked
			{
				for (int i = 1; i <= c; i++)
				{
					text += Conversions.ToString(text2[random.Next(0, text2.Length)]);
				}
				return text;
			}
		}

		// Token: 0x0600093A RID: 2362 RVA: 0x00048980 File Offset: 0x00046B80
		public static byte[] SB(ref string S)
		{
			return Encoding.Default.GetBytes(S);
		}

		// Token: 0x0600093B RID: 2363
		[DllImport("User32", CharSet = CharSet.Ansi, ExactSpelling = true, SetLastError = true)]
		public static extern bool ShowWindow(IntPtr HWND, int nCmdShow);

		// Token: 0x0600093C RID: 2364 RVA: 0x0003CE04 File Offset: 0x0003B004
		public static string Siz(long s)
		{
			string result;
			if (s.ToString().Length < 4)
			{
				result = Conversions.ToString(s) + " Bytes";
			}
			else
			{
				double num = (double)s / 1024.0;
				string str;
				if (num < 1024.0)
				{
					str = "KB";
				}
				else
				{
					num /= 1024.0;
					if (num < 1024.0)
					{
						str = "MB";
					}
					else
					{
						num /= 1024.0;
						str = "GB";
					}
				}
				result = num.ToString(".0") + " " + str;
			}
			return result;
		}

		// Token: 0x0600093D RID: 2365 RVA: 0x0004899C File Offset: 0x00046B9C
		public static void STV(string Name, string v)
		{
			try
			{
				Registry.CurrentUser.CreateSubKey("Software\\" + ima.vr).SetValue(Name, v);
			}
			catch (Exception expr_23)
			{
				ProjectData.SetProjectError(expr_23);
				Exception projectError = expr_23;
				ProjectData.SetProjectError(projectError);
				ProjectData.ClearProjectError();
				ProjectData.ClearProjectError();
			}
		}

		// Token: 0x0600093E RID: 2366 RVA: 0x000489F8 File Offset: 0x00046BF8
		public static byte[] ZIP(byte[] B, ref bool CM)
		{
			checked
			{
				byte[] result;
				if (CM)
				{
					MemoryStream memoryStream = new MemoryStream();
					GZipStream gZipStream = new GZipStream(memoryStream, CompressionMode.Compress, true);
					gZipStream.Write(B, 0, B.Length);
					gZipStream.Dispose();
					memoryStream.Position = 0L;
					byte[] array = new byte[(int)memoryStream.Length + 1 - 1 + 1];
					memoryStream.Read(array, 0, array.Length);
					memoryStream.Dispose();
					result = array;
				}
				else
				{
					MemoryStream memoryStream2 = new MemoryStream(B);
					GZipStream gZipStream2 = new GZipStream(memoryStream2, CompressionMode.Decompress);
					byte[] array2 = new byte[4];
					memoryStream2.Position = memoryStream2.Length - 5L;
					memoryStream2.Read(array2, 0, 4);
					int num = BitConverter.ToInt32(array2, 0);
					memoryStream2.Position = 0L;
					byte[] array3 = new byte[num - 1 + 1 - 1 + 1];
					gZipStream2.Read(array3, 0, num);
					gZipStream2.Dispose();
					memoryStream2.Dispose();
					result = array3;
				}
				return result;
			}
		}
	}
}
