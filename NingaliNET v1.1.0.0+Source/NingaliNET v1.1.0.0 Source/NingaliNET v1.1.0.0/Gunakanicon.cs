using System;
using System.Diagnostics;
using System.IO;
using System.Runtime.InteropServices;
using System.Security;

namespace NINGALINET
{
	// Token: 0x02000035 RID: 53
	public class Gunakanicon
	{
		// Token: 0x0600094E RID: 2382 RVA: 0x00002898 File Offset: 0x00000A98
		[DebuggerNonUserCode]
		public Gunakanicon()
		{
			Class2.zP7eVJHzSiX6G();
			base..ctor();
		}

		// Token: 0x0600094F RID: 2383 RVA: 0x00004D97 File Offset: 0x00002F97
		public static void InjectIcon(string exeFileName, string iconFileName)
		{
			Gunakanicon.InjectIcon(exeFileName, iconFileName, 1u, 1u);
		}

		// Token: 0x06000950 RID: 2384 RVA: 0x0004AF44 File Offset: 0x00049144
		public static void InjectIcon(string exeFileName, string iconFileName, uint iconGroupID, uint iconBaseID)
		{
			Gunakanicon.IconFile iconFile = Gunakanicon.IconFile.FromFile(iconFileName);
			IntPtr intPtr = Gunakanicon.NativeMethods.BeginUpdateResource(exeFileName, false);
			byte[] array = iconFile.CreateIconGroupData(iconBaseID);
			IntPtr arg_3A_0 = intPtr;
			IntPtr intPtr2 = new IntPtr(14L);
			IntPtr arg_3A_1 = intPtr2;
			IntPtr intPtr3 = new IntPtr((long)((ulong)iconGroupID));
			Gunakanicon.NativeMethods.UpdateResource(arg_3A_0, arg_3A_1, intPtr3, 0, array, array.Length);
			int arg_4B_0 = 0;
			checked
			{
				int num = iconFile.ImageCount - 1;
				int num2 = arg_4B_0;
				while (true)
				{
					int arg_90_0 = num2;
					int num3 = num;
					if (arg_90_0 > num3)
					{
						break;
					}
					byte[] array2 = iconFile.get_ImageData(num2);
					IntPtr arg_7F_0 = intPtr;
					intPtr3 = new IntPtr(3L);
					IntPtr arg_7F_1 = intPtr3;
					intPtr2 = new IntPtr((long)(unchecked((ulong)iconBaseID) + (ulong)(unchecked((long)num2))));
					Gunakanicon.NativeMethods.UpdateResource(arg_7F_0, arg_7F_1, intPtr2, 0, array2, array2.Length);
					num2++;
				}
				Gunakanicon.NativeMethods.EndUpdateResource(intPtr, false);
			}
		}

		// Token: 0x02000036 RID: 54
		[SuppressUnmanagedCodeSecurity]
		private class NativeMethods
		{
			// Token: 0x06000951 RID: 2385 RVA: 0x00002898 File Offset: 0x00000A98
			[DebuggerNonUserCode]
			public NativeMethods()
			{
				Class2.zP7eVJHzSiX6G();
				base..ctor();
			}

			// Token: 0x06000952 RID: 2386
			[DllImport("kernel32")]
			public static extern IntPtr BeginUpdateResource(string fileName, [MarshalAs(UnmanagedType.Bool)] bool deleteExistingResources);

			// Token: 0x06000953 RID: 2387
			[DllImport("kernel32")]
			[return: MarshalAs(UnmanagedType.Bool)]
			public static extern bool UpdateResource(IntPtr hUpdate, IntPtr type, IntPtr name, short language, [MarshalAs(UnmanagedType.LPArray, SizeParamIndex = 5)] byte[] data, int dataSize);

			// Token: 0x06000954 RID: 2388
			[DllImport("kernel32")]
			[return: MarshalAs(UnmanagedType.Bool)]
			public static extern bool EndUpdateResource(IntPtr hUpdate, [MarshalAs(UnmanagedType.Bool)] bool discard);
		}

		// Token: 0x02000037 RID: 55
		private struct ICONDIR
		{
			// Token: 0x04000451 RID: 1105
			public ushort Reserved;

			// Token: 0x04000452 RID: 1106
			public ushort Type;

			// Token: 0x04000453 RID: 1107
			public ushort Count;
		}

		// Token: 0x02000038 RID: 56
		private struct ICONDIRENTRY
		{
			// Token: 0x04000454 RID: 1108
			public byte Width;

			// Token: 0x04000455 RID: 1109
			public byte Height;

			// Token: 0x04000456 RID: 1110
			public byte ColorCount;

			// Token: 0x04000457 RID: 1111
			public byte Reserved;

			// Token: 0x04000458 RID: 1112
			public ushort Planes;

			// Token: 0x04000459 RID: 1113
			public ushort BitCount;

			// Token: 0x0400045A RID: 1114
			public int BytesInRes;

			// Token: 0x0400045B RID: 1115
			public int ImageOffset;
		}

		// Token: 0x02000039 RID: 57
		private struct BITMAPINFOHEADER
		{
			// Token: 0x0400045C RID: 1116
			public uint Size;

			// Token: 0x0400045D RID: 1117
			public int Width;

			// Token: 0x0400045E RID: 1118
			public int Height;

			// Token: 0x0400045F RID: 1119
			public ushort Planes;

			// Token: 0x04000460 RID: 1120
			public ushort BitCount;

			// Token: 0x04000461 RID: 1121
			public uint Compression;

			// Token: 0x04000462 RID: 1122
			public uint SizeImage;

			// Token: 0x04000463 RID: 1123
			public int XPelsPerMeter;

			// Token: 0x04000464 RID: 1124
			public int YPelsPerMeter;

			// Token: 0x04000465 RID: 1125
			public uint ClrUsed;

			// Token: 0x04000466 RID: 1126
			public uint ClrImportant;
		}

		// Token: 0x0200003A RID: 58
		[StructLayout(LayoutKind.Sequential, Pack = 2)]
		private struct GRPICONDIRENTRY
		{
			// Token: 0x04000467 RID: 1127
			public byte Width;

			// Token: 0x04000468 RID: 1128
			public byte Height;

			// Token: 0x04000469 RID: 1129
			public byte ColorCount;

			// Token: 0x0400046A RID: 1130
			public byte Reserved;

			// Token: 0x0400046B RID: 1131
			public ushort Planes;

			// Token: 0x0400046C RID: 1132
			public ushort BitCount;

			// Token: 0x0400046D RID: 1133
			public int BytesInRes;

			// Token: 0x0400046E RID: 1134
			public ushort ID;
		}

		// Token: 0x0200003B RID: 59
		private class IconFile
		{
			// Token: 0x17000353 RID: 851
			// (get) Token: 0x06000955 RID: 2389 RVA: 0x0004AFEC File Offset: 0x000491EC
			public int ImageCount
			{
				get
				{
					return (int)this.iconDir.Count;
				}
			}

			// Token: 0x17000354 RID: 852
			// (get) Token: 0x06000956 RID: 2390 RVA: 0x0004B008 File Offset: 0x00049208
			public byte[] ImageData
			{
				get
				{
					return this.iconImage[index];
				}
			}

			// Token: 0x06000957 RID: 2391 RVA: 0x00004DA2 File Offset: 0x00002FA2
			private IconFile()
			{
				Class2.zP7eVJHzSiX6G();
				base..ctor();
				this.iconDir = default(Gunakanicon.ICONDIR);
			}

			// Token: 0x06000958 RID: 2392 RVA: 0x0004B020 File Offset: 0x00049220
			public static Gunakanicon.IconFile FromFile(string filename)
			{
				Gunakanicon.IconFile iconFile = new Gunakanicon.IconFile();
				byte[] array = File.ReadAllBytes(filename);
				GCHandle gCHandle = GCHandle.Alloc(array, GCHandleType.Pinned);
				iconFile.iconDir = (Gunakanicon.ICONDIR)Marshal.PtrToStructure(gCHandle.AddrOfPinnedObject(), typeof(Gunakanicon.ICONDIR));
				checked
				{
					iconFile.iconEntry = new Gunakanicon.ICONDIRENTRY[(int)(iconFile.iconDir.Count - 1 + 1)];
					iconFile.iconImage = new byte[(int)(iconFile.iconDir.Count - 1 + 1)][];
					int num = Marshal.SizeOf(iconFile.iconDir);
					Type typeFromHandle = typeof(Gunakanicon.ICONDIRENTRY);
					int num2 = Marshal.SizeOf(typeFromHandle);
					int arg_A5_0 = 0;
					int num3 = (int)(iconFile.iconDir.Count - 1);
					int num4 = arg_A5_0;
					while (true)
					{
						int arg_13B_0 = num4;
						int num5 = num3;
						if (arg_13B_0 > num5)
						{
							break;
						}
						IntPtr ptr = new IntPtr(gCHandle.AddrOfPinnedObject().ToInt64() + unchecked((long)num));
						Gunakanicon.ICONDIRENTRY iCONDIRENTRY = (Gunakanicon.ICONDIRENTRY)Marshal.PtrToStructure(ptr, typeFromHandle);
						iconFile.iconEntry[num4] = iCONDIRENTRY;
						iconFile.iconImage[num4] = new byte[iCONDIRENTRY.BytesInRes - 1 + 1];
						Buffer.BlockCopy(array, iCONDIRENTRY.ImageOffset, iconFile.iconImage[num4], 0, iCONDIRENTRY.BytesInRes);
						num += num2;
						num4++;
					}
					gCHandle.Free();
					return iconFile;
				}
			}

			// Token: 0x06000959 RID: 2393 RVA: 0x0004B178 File Offset: 0x00049378
			public byte[] CreateIconGroupData(uint iconBaseID)
			{
				checked
				{
					int num = Marshal.SizeOf(typeof(Gunakanicon.ICONDIR)) + Marshal.SizeOf(typeof(Gunakanicon.GRPICONDIRENTRY)) * this.ImageCount;
					byte[] array = new byte[num - 1 + 1];
					GCHandle gCHandle = GCHandle.Alloc(array, GCHandleType.Pinned);
					Marshal.StructureToPtr(this.iconDir, gCHandle.AddrOfPinnedObject(), false);
					int num2 = Marshal.SizeOf(this.iconDir);
					int arg_70_0 = 0;
					int num3 = this.ImageCount - 1;
					int num4 = arg_70_0;
					while (true)
					{
						int arg_1B1_0 = num4;
						int num5 = num3;
						if (arg_1B1_0 > num5)
						{
							break;
						}
						Gunakanicon.GRPICONDIRENTRY gRPICONDIRENTRY = default(Gunakanicon.GRPICONDIRENTRY);
						Gunakanicon.BITMAPINFOHEADER bITMAPINFOHEADER = default(Gunakanicon.BITMAPINFOHEADER);
						GCHandle gCHandle2 = GCHandle.Alloc(bITMAPINFOHEADER, GCHandleType.Pinned);
						Marshal.Copy(this.get_ImageData(num4), 0, gCHandle2.AddrOfPinnedObject(), Marshal.SizeOf(typeof(Gunakanicon.BITMAPINFOHEADER)));
						gCHandle2.Free();
						gRPICONDIRENTRY.Width = this.iconEntry[num4].Width;
						gRPICONDIRENTRY.Height = this.iconEntry[num4].Height;
						gRPICONDIRENTRY.ColorCount = this.iconEntry[num4].ColorCount;
						gRPICONDIRENTRY.Reserved = this.iconEntry[num4].Reserved;
						gRPICONDIRENTRY.Planes = bITMAPINFOHEADER.Planes;
						gRPICONDIRENTRY.BitCount = bITMAPINFOHEADER.BitCount;
						gRPICONDIRENTRY.BytesInRes = this.iconEntry[num4].BytesInRes;
						gRPICONDIRENTRY.ID = (ushort)(unchecked((ulong)iconBaseID) + (ulong)(unchecked((long)num4)));
						object arg_18C_0 = gRPICONDIRENTRY;
						IntPtr ptr = new IntPtr(gCHandle.AddrOfPinnedObject().ToInt64() + unchecked((long)num2));
						Marshal.StructureToPtr(arg_18C_0, ptr, false);
						num2 += Marshal.SizeOf(typeof(Gunakanicon.GRPICONDIRENTRY));
						num4++;
					}
					gCHandle.Free();
					return array;
				}
			}

			// Token: 0x0400046F RID: 1135
			private Gunakanicon.ICONDIR iconDir;

			// Token: 0x04000470 RID: 1136
			private Gunakanicon.ICONDIRENTRY[] iconEntry;

			// Token: 0x04000471 RID: 1137
			private byte[][] iconImage;
		}
	}
}
