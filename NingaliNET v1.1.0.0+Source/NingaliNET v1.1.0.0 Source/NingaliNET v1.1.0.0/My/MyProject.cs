using System;
using System.CodeDom.Compiler;
using System.Collections;
using System.ComponentModel;
using System.ComponentModel.Design;
using System.Diagnostics;
using System.Reflection;
using System.Runtime.CompilerServices;
using System.Runtime.InteropServices;
using System.Windows.Forms;
using Microsoft.VisualBasic;
using Microsoft.VisualBasic.ApplicationServices;
using Microsoft.VisualBasic.CompilerServices;

namespace NINGALINET.My
{
	// Token: 0x02000005 RID: 5
	[StandardModule, HideModuleName, GeneratedCode("MyTemplate", "8.0.0.0")]
	internal sealed class MyProject
	{
		// Token: 0x06000007 RID: 7 RVA: 0x00002292 File Offset: 0x00000492
		[DebuggerNonUserCode]
		static MyProject()
		{
			// Note: this type is marked as 'beforefieldinit'.
			Class2.zP7eVJHzSiX6G();
			MyProject.m_ComputerObjectProvider = new MyProject.ThreadSafeObjectProvider<MyComputer>();
			MyProject.m_AppObjectProvider = new MyProject.ThreadSafeObjectProvider<MyApplication>();
			MyProject.m_UserObjectProvider = new MyProject.ThreadSafeObjectProvider<User>();
			MyProject.m_MyFormsObjectProvider = new MyProject.ThreadSafeObjectProvider<MyProject.MyForms>();
			MyProject.m_MyWebServicesObjectProvider = new MyProject.ThreadSafeObjectProvider<MyProject.MyWebServices>();
		}

		// Token: 0x17000001 RID: 1
		// (get) Token: 0x06000008 RID: 8 RVA: 0x00006668 File Offset: 0x00004868
		[HelpKeyword("My.Computer")]
		internal static MyComputer Computer
		{
			[DebuggerHidden]
			get
			{
				return MyProject.m_ComputerObjectProvider.GetInstance;
			}
		}

		// Token: 0x17000002 RID: 2
		// (get) Token: 0x06000009 RID: 9 RVA: 0x00006684 File Offset: 0x00004884
		[HelpKeyword("My.Application")]
		internal static MyApplication Application
		{
			[DebuggerHidden]
			get
			{
				return MyProject.m_AppObjectProvider.GetInstance;
			}
		}

		// Token: 0x17000003 RID: 3
		// (get) Token: 0x0600000A RID: 10 RVA: 0x000066A0 File Offset: 0x000048A0
		[HelpKeyword("My.User")]
		internal static User User
		{
			[DebuggerHidden]
			get
			{
				return MyProject.m_UserObjectProvider.GetInstance;
			}
		}

		// Token: 0x17000004 RID: 4
		// (get) Token: 0x0600000B RID: 11 RVA: 0x000066BC File Offset: 0x000048BC
		[HelpKeyword("My.Forms")]
		internal static MyProject.MyForms Forms
		{
			[DebuggerHidden]
			get
			{
				return MyProject.m_MyFormsObjectProvider.GetInstance;
			}
		}

		// Token: 0x17000005 RID: 5
		// (get) Token: 0x0600000C RID: 12 RVA: 0x000066D8 File Offset: 0x000048D8
		[HelpKeyword("My.WebServices")]
		internal static MyProject.MyWebServices WebServices
		{
			[DebuggerHidden]
			get
			{
				return MyProject.m_MyWebServicesObjectProvider.GetInstance;
			}
		}

		// Token: 0x04000002 RID: 2
		private static readonly MyProject.ThreadSafeObjectProvider<MyComputer> m_ComputerObjectProvider;

		// Token: 0x04000003 RID: 3
		private static readonly MyProject.ThreadSafeObjectProvider<MyApplication> m_AppObjectProvider;

		// Token: 0x04000004 RID: 4
		private static readonly MyProject.ThreadSafeObjectProvider<User> m_UserObjectProvider;

		// Token: 0x04000005 RID: 5
		private static MyProject.ThreadSafeObjectProvider<MyProject.MyForms> m_MyFormsObjectProvider;

		// Token: 0x04000006 RID: 6
		private static readonly MyProject.ThreadSafeObjectProvider<MyProject.MyWebServices> m_MyWebServicesObjectProvider;

		// Token: 0x02000006 RID: 6
		[MyGroupCollection("System.Windows.Forms.Form", "Create__Instance__", "Dispose__Instance__", "My.MyProject.Forms"), EditorBrowsable(EditorBrowsableState.Never)]
		internal sealed class MyForms
		{
			// Token: 0x17000006 RID: 6
			// (get) Token: 0x0600000D RID: 13 RVA: 0x000066F4 File Offset: 0x000048F4
			// (set) Token: 0x0600002E RID: 46 RVA: 0x000022CB File Offset: 0x000004CB
			public FDesktop FDesktop
			{
				[DebuggerNonUserCode]
				get
				{
					this.m_FDesktop = MyProject.MyForms.Create__Instance__<FDesktop>(this.m_FDesktop);
					return this.m_FDesktop;
				}
				[DebuggerNonUserCode]
				set
				{
					if (value != this.m_FDesktop)
					{
						if (value != null)
						{
							throw new ArgumentException("Property can only be set to Nothing");
						}
						this.Dispose__Instance__<FDesktop>(ref this.m_FDesktop);
					}
				}
			}

			// Token: 0x17000007 RID: 7
			// (get) Token: 0x0600000E RID: 14 RVA: 0x0000671C File Offset: 0x0000491C
			// (set) Token: 0x0600002F RID: 47 RVA: 0x000022F8 File Offset: 0x000004F8
			public Form1 Form1
			{
				[DebuggerNonUserCode]
				get
				{
					this.m_Form1 = MyProject.MyForms.Create__Instance__<Form1>(this.m_Form1);
					return this.m_Form1;
				}
				[DebuggerNonUserCode]
				set
				{
					if (value != this.m_Form1)
					{
						if (value != null)
						{
							throw new ArgumentException("Property can only be set to Nothing");
						}
						this.Dispose__Instance__<Form1>(ref this.m_Form1);
					}
				}
			}

			// Token: 0x17000008 RID: 8
			// (get) Token: 0x0600000F RID: 15 RVA: 0x00006744 File Offset: 0x00004944
			// (set) Token: 0x06000030 RID: 48 RVA: 0x00002325 File Offset: 0x00000525
			public Form2 Form2
			{
				[DebuggerNonUserCode]
				get
				{
					this.m_Form2 = MyProject.MyForms.Create__Instance__<Form2>(this.m_Form2);
					return this.m_Form2;
				}
				[DebuggerNonUserCode]
				set
				{
					if (value != this.m_Form2)
					{
						if (value != null)
						{
							throw new ArgumentException("Property can only be set to Nothing");
						}
						this.Dispose__Instance__<Form2>(ref this.m_Form2);
					}
				}
			}

			// Token: 0x17000009 RID: 9
			// (get) Token: 0x06000010 RID: 16 RVA: 0x0000676C File Offset: 0x0000496C
			// (set) Token: 0x06000031 RID: 49 RVA: 0x00002352 File Offset: 0x00000552
			public FrmBuy FrmBuy
			{
				[DebuggerNonUserCode]
				get
				{
					this.m_FrmBuy = MyProject.MyForms.Create__Instance__<FrmBuy>(this.m_FrmBuy);
					return this.m_FrmBuy;
				}
				[DebuggerNonUserCode]
				set
				{
					if (value != this.m_FrmBuy)
					{
						if (value != null)
						{
							throw new ArgumentException("Property can only be set to Nothing");
						}
						this.Dispose__Instance__<FrmBuy>(ref this.m_FrmBuy);
					}
				}
			}

			// Token: 0x1700000A RID: 10
			// (get) Token: 0x06000011 RID: 17 RVA: 0x00006794 File Offset: 0x00004994
			// (set) Token: 0x06000032 RID: 50 RVA: 0x0000237F File Offset: 0x0000057F
			public FrmCam FrmCam
			{
				[DebuggerNonUserCode]
				get
				{
					this.m_FrmCam = MyProject.MyForms.Create__Instance__<FrmCam>(this.m_FrmCam);
					return this.m_FrmCam;
				}
				[DebuggerNonUserCode]
				set
				{
					if (value != this.m_FrmCam)
					{
						if (value != null)
						{
							throw new ArgumentException("Property can only be set to Nothing");
						}
						this.Dispose__Instance__<FrmCam>(ref this.m_FrmCam);
					}
				}
			}

			// Token: 0x1700000B RID: 11
			// (get) Token: 0x06000012 RID: 18 RVA: 0x000067BC File Offset: 0x000049BC
			// (set) Token: 0x06000033 RID: 51 RVA: 0x000023AC File Offset: 0x000005AC
			public FrmChat FrmChat
			{
				[DebuggerNonUserCode]
				get
				{
					this.m_FrmChat = MyProject.MyForms.Create__Instance__<FrmChat>(this.m_FrmChat);
					return this.m_FrmChat;
				}
				[DebuggerNonUserCode]
				set
				{
					if (value != this.m_FrmChat)
					{
						if (value != null)
						{
							throw new ArgumentException("Property can only be set to Nothing");
						}
						this.Dispose__Instance__<FrmChat>(ref this.m_FrmChat);
					}
				}
			}

			// Token: 0x1700000C RID: 12
			// (get) Token: 0x06000013 RID: 19 RVA: 0x000067E4 File Offset: 0x000049E4
			// (set) Token: 0x06000034 RID: 52 RVA: 0x000023D9 File Offset: 0x000005D9
			public FrmClipboar FrmClipboar
			{
				[DebuggerNonUserCode]
				get
				{
					this.m_FrmClipboar = MyProject.MyForms.Create__Instance__<FrmClipboar>(this.m_FrmClipboar);
					return this.m_FrmClipboar;
				}
				[DebuggerNonUserCode]
				set
				{
					if (value != this.m_FrmClipboar)
					{
						if (value != null)
						{
							throw new ArgumentException("Property can only be set to Nothing");
						}
						this.Dispose__Instance__<FrmClipboar>(ref this.m_FrmClipboar);
					}
				}
			}

			// Token: 0x1700000D RID: 13
			// (get) Token: 0x06000014 RID: 20 RVA: 0x0000680C File Offset: 0x00004A0C
			// (set) Token: 0x06000035 RID: 53 RVA: 0x00002406 File Offset: 0x00000606
			public FrmConnections FrmConnections
			{
				[DebuggerNonUserCode]
				get
				{
					this.m_FrmConnections = MyProject.MyForms.Create__Instance__<FrmConnections>(this.m_FrmConnections);
					return this.m_FrmConnections;
				}
				[DebuggerNonUserCode]
				set
				{
					if (value != this.m_FrmConnections)
					{
						if (value != null)
						{
							throw new ArgumentException("Property can only be set to Nothing");
						}
						this.Dispose__Instance__<FrmConnections>(ref this.m_FrmConnections);
					}
				}
			}

			// Token: 0x1700000E RID: 14
			// (get) Token: 0x06000015 RID: 21 RVA: 0x00006834 File Offset: 0x00004A34
			// (set) Token: 0x06000036 RID: 54 RVA: 0x00002433 File Offset: 0x00000633
			public FrmDwonload FrmDwonload
			{
				[DebuggerNonUserCode]
				get
				{
					this.m_FrmDwonload = MyProject.MyForms.Create__Instance__<FrmDwonload>(this.m_FrmDwonload);
					return this.m_FrmDwonload;
				}
				[DebuggerNonUserCode]
				set
				{
					if (value != this.m_FrmDwonload)
					{
						if (value != null)
						{
							throw new ArgumentException("Property can only be set to Nothing");
						}
						this.Dispose__Instance__<FrmDwonload>(ref this.m_FrmDwonload);
					}
				}
			}

			// Token: 0x1700000F RID: 15
			// (get) Token: 0x06000016 RID: 22 RVA: 0x0000685C File Offset: 0x00004A5C
			// (set) Token: 0x06000037 RID: 55 RVA: 0x00002460 File Offset: 0x00000660
			public FrmEditHost FrmEditHost
			{
				[DebuggerNonUserCode]
				get
				{
					this.m_FrmEditHost = MyProject.MyForms.Create__Instance__<FrmEditHost>(this.m_FrmEditHost);
					return this.m_FrmEditHost;
				}
				[DebuggerNonUserCode]
				set
				{
					if (value != this.m_FrmEditHost)
					{
						if (value != null)
						{
							throw new ArgumentException("Property can only be set to Nothing");
						}
						this.Dispose__Instance__<FrmEditHost>(ref this.m_FrmEditHost);
					}
				}
			}

			// Token: 0x17000010 RID: 16
			// (get) Token: 0x06000017 RID: 23 RVA: 0x00006884 File Offset: 0x00004A84
			// (set) Token: 0x06000038 RID: 56 RVA: 0x0000248D File Offset: 0x0000068D
			public FrmFilemanager FrmFilemanager
			{
				[DebuggerNonUserCode]
				get
				{
					this.m_FrmFilemanager = MyProject.MyForms.Create__Instance__<FrmFilemanager>(this.m_FrmFilemanager);
					return this.m_FrmFilemanager;
				}
				[DebuggerNonUserCode]
				set
				{
					if (value != this.m_FrmFilemanager)
					{
						if (value != null)
						{
							throw new ArgumentException("Property can only be set to Nothing");
						}
						this.Dispose__Instance__<FrmFilemanager>(ref this.m_FrmFilemanager);
					}
				}
			}

			// Token: 0x17000011 RID: 17
			// (get) Token: 0x06000018 RID: 24 RVA: 0x000068AC File Offset: 0x00004AAC
			// (set) Token: 0x06000039 RID: 57 RVA: 0x000024BA File Offset: 0x000006BA
			public FrmFlood FrmFlood
			{
				[DebuggerNonUserCode]
				get
				{
					this.m_FrmFlood = MyProject.MyForms.Create__Instance__<FrmFlood>(this.m_FrmFlood);
					return this.m_FrmFlood;
				}
				[DebuggerNonUserCode]
				set
				{
					if (value != this.m_FrmFlood)
					{
						if (value != null)
						{
							throw new ArgumentException("Property can only be set to Nothing");
						}
						this.Dispose__Instance__<FrmFlood>(ref this.m_FrmFlood);
					}
				}
			}

			// Token: 0x17000012 RID: 18
			// (get) Token: 0x06000019 RID: 25 RVA: 0x000068D4 File Offset: 0x00004AD4
			// (set) Token: 0x0600003A RID: 58 RVA: 0x000024E7 File Offset: 0x000006E7
			public FrmFun FrmFun
			{
				[DebuggerNonUserCode]
				get
				{
					this.m_FrmFun = MyProject.MyForms.Create__Instance__<FrmFun>(this.m_FrmFun);
					return this.m_FrmFun;
				}
				[DebuggerNonUserCode]
				set
				{
					if (value != this.m_FrmFun)
					{
						if (value != null)
						{
							throw new ArgumentException("Property can only be set to Nothing");
						}
						this.Dispose__Instance__<FrmFun>(ref this.m_FrmFun);
					}
				}
			}

			// Token: 0x17000013 RID: 19
			// (get) Token: 0x0600001A RID: 26 RVA: 0x000068FC File Offset: 0x00004AFC
			// (set) Token: 0x0600003B RID: 59 RVA: 0x00002514 File Offset: 0x00000714
			public FrmHelp FrmHelp
			{
				[DebuggerNonUserCode]
				get
				{
					this.m_FrmHelp = MyProject.MyForms.Create__Instance__<FrmHelp>(this.m_FrmHelp);
					return this.m_FrmHelp;
				}
				[DebuggerNonUserCode]
				set
				{
					if (value != this.m_FrmHelp)
					{
						if (value != null)
						{
							throw new ArgumentException("Property can only be set to Nothing");
						}
						this.Dispose__Instance__<FrmHelp>(ref this.m_FrmHelp);
					}
				}
			}

			// Token: 0x17000014 RID: 20
			// (get) Token: 0x0600001B RID: 27 RVA: 0x00006924 File Offset: 0x00004B24
			// (set) Token: 0x0600003C RID: 60 RVA: 0x00002541 File Offset: 0x00000741
			public FrmInfoPlugin FrmInfoPlugin
			{
				[DebuggerNonUserCode]
				get
				{
					this.m_FrmInfoPlugin = MyProject.MyForms.Create__Instance__<FrmInfoPlugin>(this.m_FrmInfoPlugin);
					return this.m_FrmInfoPlugin;
				}
				[DebuggerNonUserCode]
				set
				{
					if (value != this.m_FrmInfoPlugin)
					{
						if (value != null)
						{
							throw new ArgumentException("Property can only be set to Nothing");
						}
						this.Dispose__Instance__<FrmInfoPlugin>(ref this.m_FrmInfoPlugin);
					}
				}
			}

			// Token: 0x17000015 RID: 21
			// (get) Token: 0x0600001C RID: 28 RVA: 0x0000694C File Offset: 0x00004B4C
			// (set) Token: 0x0600003D RID: 61 RVA: 0x0000256E File Offset: 0x0000076E
			public FrmInformasi FrmInformasi
			{
				[DebuggerNonUserCode]
				get
				{
					this.m_FrmInformasi = MyProject.MyForms.Create__Instance__<FrmInformasi>(this.m_FrmInformasi);
					return this.m_FrmInformasi;
				}
				[DebuggerNonUserCode]
				set
				{
					if (value != this.m_FrmInformasi)
					{
						if (value != null)
						{
							throw new ArgumentException("Property can only be set to Nothing");
						}
						this.Dispose__Instance__<FrmInformasi>(ref this.m_FrmInformasi);
					}
				}
			}

			// Token: 0x17000016 RID: 22
			// (get) Token: 0x0600001D RID: 29 RVA: 0x00006974 File Offset: 0x00004B74
			// (set) Token: 0x0600003E RID: 62 RVA: 0x0000259B File Offset: 0x0000079B
			public FrmInstalled FrmInstalled
			{
				[DebuggerNonUserCode]
				get
				{
					this.m_FrmInstalled = MyProject.MyForms.Create__Instance__<FrmInstalled>(this.m_FrmInstalled);
					return this.m_FrmInstalled;
				}
				[DebuggerNonUserCode]
				set
				{
					if (value != this.m_FrmInstalled)
					{
						if (value != null)
						{
							throw new ArgumentException("Property can only be set to Nothing");
						}
						this.Dispose__Instance__<FrmInstalled>(ref this.m_FrmInstalled);
					}
				}
			}

			// Token: 0x17000017 RID: 23
			// (get) Token: 0x0600001E RID: 30 RVA: 0x0000699C File Offset: 0x00004B9C
			// (set) Token: 0x0600003F RID: 63 RVA: 0x000025C8 File Offset: 0x000007C8
			public FrmIPlockup FrmIPlockup_0
			{
				[DebuggerNonUserCode]
				get
				{
					this.m_FrmIPlockup = MyProject.MyForms.Create__Instance__<FrmIPlockup>(this.m_FrmIPlockup);
					return this.m_FrmIPlockup;
				}
				[DebuggerNonUserCode]
				set
				{
					if (value != this.m_FrmIPlockup)
					{
						if (value != null)
						{
							throw new ArgumentException("Property can only be set to Nothing");
						}
						this.Dispose__Instance__<FrmIPlockup>(ref this.m_FrmIPlockup);
					}
				}
			}

			// Token: 0x17000018 RID: 24
			// (get) Token: 0x0600001F RID: 31 RVA: 0x000069C4 File Offset: 0x00004BC4
			// (set) Token: 0x06000040 RID: 64 RVA: 0x000025F5 File Offset: 0x000007F5
			public FrmLogger FrmLogger
			{
				[DebuggerNonUserCode]
				get
				{
					this.m_FrmLogger = MyProject.MyForms.Create__Instance__<FrmLogger>(this.m_FrmLogger);
					return this.m_FrmLogger;
				}
				[DebuggerNonUserCode]
				set
				{
					if (value != this.m_FrmLogger)
					{
						if (value != null)
						{
							throw new ArgumentException("Property can only be set to Nothing");
						}
						this.Dispose__Instance__<FrmLogger>(ref this.m_FrmLogger);
					}
				}
			}

			// Token: 0x17000019 RID: 25
			// (get) Token: 0x06000020 RID: 32 RVA: 0x000069EC File Offset: 0x00004BEC
			// (set) Token: 0x06000041 RID: 65 RVA: 0x00002622 File Offset: 0x00000822
			public FrmMic FrmMic
			{
				[DebuggerNonUserCode]
				get
				{
					this.m_FrmMic = MyProject.MyForms.Create__Instance__<FrmMic>(this.m_FrmMic);
					return this.m_FrmMic;
				}
				[DebuggerNonUserCode]
				set
				{
					if (value != this.m_FrmMic)
					{
						if (value != null)
						{
							throw new ArgumentException("Property can only be set to Nothing");
						}
						this.Dispose__Instance__<FrmMic>(ref this.m_FrmMic);
					}
				}
			}

			// Token: 0x1700001A RID: 26
			// (get) Token: 0x06000021 RID: 33 RVA: 0x00006A14 File Offset: 0x00004C14
			// (set) Token: 0x06000042 RID: 66 RVA: 0x0000264F File Offset: 0x0000084F
			public FrmNotification FrmNotification
			{
				[DebuggerNonUserCode]
				get
				{
					this.m_FrmNotification = MyProject.MyForms.Create__Instance__<FrmNotification>(this.m_FrmNotification);
					return this.m_FrmNotification;
				}
				[DebuggerNonUserCode]
				set
				{
					if (value != this.m_FrmNotification)
					{
						if (value != null)
						{
							throw new ArgumentException("Property can only be set to Nothing");
						}
						this.Dispose__Instance__<FrmNotification>(ref this.m_FrmNotification);
					}
				}
			}

			// Token: 0x1700001B RID: 27
			// (get) Token: 0x06000022 RID: 34 RVA: 0x00006A3C File Offset: 0x00004C3C
			// (set) Token: 0x06000043 RID: 67 RVA: 0x0000267C File Offset: 0x0000087C
			public FrmProcess FrmProcess
			{
				[DebuggerNonUserCode]
				get
				{
					this.m_FrmProcess = MyProject.MyForms.Create__Instance__<FrmProcess>(this.m_FrmProcess);
					return this.m_FrmProcess;
				}
				[DebuggerNonUserCode]
				set
				{
					if (value != this.m_FrmProcess)
					{
						if (value != null)
						{
							throw new ArgumentException("Property can only be set to Nothing");
						}
						this.Dispose__Instance__<FrmProcess>(ref this.m_FrmProcess);
					}
				}
			}

			// Token: 0x1700001C RID: 28
			// (get) Token: 0x06000023 RID: 35 RVA: 0x00006A64 File Offset: 0x00004C64
			// (set) Token: 0x06000044 RID: 68 RVA: 0x000026A9 File Offset: 0x000008A9
			public FrmRegEdit FrmRegEdit
			{
				[DebuggerNonUserCode]
				get
				{
					this.m_FrmRegEdit = MyProject.MyForms.Create__Instance__<FrmRegEdit>(this.m_FrmRegEdit);
					return this.m_FrmRegEdit;
				}
				[DebuggerNonUserCode]
				set
				{
					if (value != this.m_FrmRegEdit)
					{
						if (value != null)
						{
							throw new ArgumentException("Property can only be set to Nothing");
						}
						this.Dispose__Instance__<FrmRegEdit>(ref this.m_FrmRegEdit);
					}
				}
			}

			// Token: 0x1700001D RID: 29
			// (get) Token: 0x06000024 RID: 36 RVA: 0x00006A8C File Offset: 0x00004C8C
			// (set) Token: 0x06000045 RID: 69 RVA: 0x000026D6 File Offset: 0x000008D6
			public FrmRegistry FrmRegistry
			{
				[DebuggerNonUserCode]
				get
				{
					this.m_FrmRegistry = MyProject.MyForms.Create__Instance__<FrmRegistry>(this.m_FrmRegistry);
					return this.m_FrmRegistry;
				}
				[DebuggerNonUserCode]
				set
				{
					if (value != this.m_FrmRegistry)
					{
						if (value != null)
						{
							throw new ArgumentException("Property can only be set to Nothing");
						}
						this.Dispose__Instance__<FrmRegistry>(ref this.m_FrmRegistry);
					}
				}
			}

			// Token: 0x1700001E RID: 30
			// (get) Token: 0x06000025 RID: 37 RVA: 0x00006AB4 File Offset: 0x00004CB4
			// (set) Token: 0x06000046 RID: 70 RVA: 0x00002703 File Offset: 0x00000903
			public FrmScript FrmScript
			{
				[DebuggerNonUserCode]
				get
				{
					this.m_FrmScript = MyProject.MyForms.Create__Instance__<FrmScript>(this.m_FrmScript);
					return this.m_FrmScript;
				}
				[DebuggerNonUserCode]
				set
				{
					if (value != this.m_FrmScript)
					{
						if (value != null)
						{
							throw new ArgumentException("Property can only be set to Nothing");
						}
						this.Dispose__Instance__<FrmScript>(ref this.m_FrmScript);
					}
				}
			}

			// Token: 0x1700001F RID: 31
			// (get) Token: 0x06000026 RID: 38 RVA: 0x00006ADC File Offset: 0x00004CDC
			// (set) Token: 0x06000047 RID: 71 RVA: 0x00002730 File Offset: 0x00000930
			public FrmServices FrmServices
			{
				[DebuggerNonUserCode]
				get
				{
					this.m_FrmServices = MyProject.MyForms.Create__Instance__<FrmServices>(this.m_FrmServices);
					return this.m_FrmServices;
				}
				[DebuggerNonUserCode]
				set
				{
					if (value != this.m_FrmServices)
					{
						if (value != null)
						{
							throw new ArgumentException("Property can only be set to Nothing");
						}
						this.Dispose__Instance__<FrmServices>(ref this.m_FrmServices);
					}
				}
			}

			// Token: 0x17000020 RID: 32
			// (get) Token: 0x06000027 RID: 39 RVA: 0x00006B04 File Offset: 0x00004D04
			// (set) Token: 0x06000048 RID: 72 RVA: 0x0000275D File Offset: 0x0000095D
			public FrmShell FrmShell
			{
				[DebuggerNonUserCode]
				get
				{
					this.m_FrmShell = MyProject.MyForms.Create__Instance__<FrmShell>(this.m_FrmShell);
					return this.m_FrmShell;
				}
				[DebuggerNonUserCode]
				set
				{
					if (value != this.m_FrmShell)
					{
						if (value != null)
						{
							throw new ArgumentException("Property can only be set to Nothing");
						}
						this.Dispose__Instance__<FrmShell>(ref this.m_FrmShell);
					}
				}
			}

			// Token: 0x17000021 RID: 33
			// (get) Token: 0x06000028 RID: 40 RVA: 0x00006B2C File Offset: 0x00004D2C
			// (set) Token: 0x06000049 RID: 73 RVA: 0x0000278A File Offset: 0x0000098A
			public FrmStartUp FrmStartUp
			{
				[DebuggerNonUserCode]
				get
				{
					this.m_FrmStartUp = MyProject.MyForms.Create__Instance__<FrmStartUp>(this.m_FrmStartUp);
					return this.m_FrmStartUp;
				}
				[DebuggerNonUserCode]
				set
				{
					if (value != this.m_FrmStartUp)
					{
						if (value != null)
						{
							throw new ArgumentException("Property can only be set to Nothing");
						}
						this.Dispose__Instance__<FrmStartUp>(ref this.m_FrmStartUp);
					}
				}
			}

			// Token: 0x17000022 RID: 34
			// (get) Token: 0x06000029 RID: 41 RVA: 0x00006B54 File Offset: 0x00004D54
			// (set) Token: 0x0600004A RID: 74 RVA: 0x000027B7 File Offset: 0x000009B7
			public FrmStoredPassword FrmStoredPassword
			{
				[DebuggerNonUserCode]
				get
				{
					this.m_FrmStoredPassword = MyProject.MyForms.Create__Instance__<FrmStoredPassword>(this.m_FrmStoredPassword);
					return this.m_FrmStoredPassword;
				}
				[DebuggerNonUserCode]
				set
				{
					if (value != this.m_FrmStoredPassword)
					{
						if (value != null)
						{
							throw new ArgumentException("Property can only be set to Nothing");
						}
						this.Dispose__Instance__<FrmStoredPassword>(ref this.m_FrmStoredPassword);
					}
				}
			}

			// Token: 0x17000023 RID: 35
			// (get) Token: 0x0600002A RID: 42 RVA: 0x00006B7C File Offset: 0x00004D7C
			// (set) Token: 0x0600004B RID: 75 RVA: 0x000027E4 File Offset: 0x000009E4
			public FrmUpload FrmUpload
			{
				[DebuggerNonUserCode]
				get
				{
					this.m_FrmUpload = MyProject.MyForms.Create__Instance__<FrmUpload>(this.m_FrmUpload);
					return this.m_FrmUpload;
				}
				[DebuggerNonUserCode]
				set
				{
					if (value != this.m_FrmUpload)
					{
						if (value != null)
						{
							throw new ArgumentException("Property can only be set to Nothing");
						}
						this.Dispose__Instance__<FrmUpload>(ref this.m_FrmUpload);
					}
				}
			}

			// Token: 0x17000024 RID: 36
			// (get) Token: 0x0600002B RID: 43 RVA: 0x00006BA4 File Offset: 0x00004DA4
			// (set) Token: 0x0600004C RID: 76 RVA: 0x00002811 File Offset: 0x00000A11
			public FrmURL FrmURL
			{
				[DebuggerNonUserCode]
				get
				{
					this.m_FrmURL = MyProject.MyForms.Create__Instance__<FrmURL>(this.m_FrmURL);
					return this.m_FrmURL;
				}
				[DebuggerNonUserCode]
				set
				{
					if (value != this.m_FrmURL)
					{
						if (value != null)
						{
							throw new ArgumentException("Property can only be set to Nothing");
						}
						this.Dispose__Instance__<FrmURL>(ref this.m_FrmURL);
					}
				}
			}

			// Token: 0x17000025 RID: 37
			// (get) Token: 0x0600002C RID: 44 RVA: 0x00006BCC File Offset: 0x00004DCC
			// (set) Token: 0x0600004D RID: 77 RVA: 0x0000283E File Offset: 0x00000A3E
			public FrmWinList FrmWinList
			{
				[DebuggerNonUserCode]
				get
				{
					this.m_FrmWinList = MyProject.MyForms.Create__Instance__<FrmWinList>(this.m_FrmWinList);
					return this.m_FrmWinList;
				}
				[DebuggerNonUserCode]
				set
				{
					if (value != this.m_FrmWinList)
					{
						if (value != null)
						{
							throw new ArgumentException("Property can only be set to Nothing");
						}
						this.Dispose__Instance__<FrmWinList>(ref this.m_FrmWinList);
					}
				}
			}

			// Token: 0x17000026 RID: 38
			// (get) Token: 0x0600002D RID: 45 RVA: 0x00006BF4 File Offset: 0x00004DF4
			// (set) Token: 0x0600004E RID: 78 RVA: 0x0000286B File Offset: 0x00000A6B
			public port1 port1
			{
				[DebuggerNonUserCode]
				get
				{
					this.m_port1 = MyProject.MyForms.Create__Instance__<port1>(this.m_port1);
					return this.m_port1;
				}
				[DebuggerNonUserCode]
				set
				{
					if (value != this.m_port1)
					{
						if (value != null)
						{
							throw new ArgumentException("Property can only be set to Nothing");
						}
						this.Dispose__Instance__<port1>(ref this.m_port1);
					}
				}
			}

			// Token: 0x0600004F RID: 79 RVA: 0x00006C1C File Offset: 0x00004E1C
			[DebuggerHidden]
			private static T Create__Instance__<T>(T Instance) where T : Form, new()
			{
				T result;
				if (Instance == null || Instance.IsDisposed)
				{
					if (MyProject.MyForms.m_FormBeingCreated != null)
					{
						if (MyProject.MyForms.m_FormBeingCreated.ContainsKey(typeof(T)))
						{
							throw new InvalidOperationException(Utils.GetResourceString("WinForms_RecursiveFormCreate", new string[0]));
						}
					}
					else
					{
						MyProject.MyForms.m_FormBeingCreated = new Hashtable();
					}
					MyProject.MyForms.m_FormBeingCreated.Add(typeof(T), null);
					try
					{
						try
						{
							result = Activator.CreateInstance<T>();
							return result;
						}
						object arg_80_0;
						TargetInvocationException expr_85 = arg_80_0 as TargetInvocationException;
						int arg_A2_0;
						if (expr_85 == null)
						{
							arg_A2_0 = 0;
						}
						else
						{
							TargetInvocationException ex = expr_85;
							ProjectData.SetProjectError(expr_85);
							arg_A2_0 = (((ex.InnerException != null) > false) ? 1 : 0);
						}
						endfilter(arg_A2_0);
					}
					finally
					{
						MyProject.MyForms.m_FormBeingCreated.Remove(typeof(T));
					}
				}
				result = Instance;
				return result;
			}

			// Token: 0x06000050 RID: 80 RVA: 0x00006D30 File Offset: 0x00004F30
			[DebuggerHidden]
			private void Dispose__Instance__<T>(ref T instance) where T : Form
			{
				instance.Dispose();
				instance = default(T);
			}

			// Token: 0x06000051 RID: 81 RVA: 0x00002898 File Offset: 0x00000A98
			[DebuggerHidden, EditorBrowsable(EditorBrowsableState.Never)]
			public MyForms()
			{
				Class2.zP7eVJHzSiX6G();
				base..ctor();
			}

			// Token: 0x06000052 RID: 82 RVA: 0x000028A5 File Offset: 0x00000AA5
			[EditorBrowsable(EditorBrowsableState.Never)]
			public override bool Equals(object o)
			{
				return base.Equals(RuntimeHelpers.GetObjectValue(o));
			}

			// Token: 0x06000053 RID: 83 RVA: 0x00006D58 File Offset: 0x00004F58
			[EditorBrowsable(EditorBrowsableState.Never)]
			public override int GetHashCode()
			{
				return base.GetHashCode();
			}

			// Token: 0x06000054 RID: 84 RVA: 0x00006D70 File Offset: 0x00004F70
			[EditorBrowsable(EditorBrowsableState.Never)]
			internal new Type GetType()
			{
				return typeof(MyProject.MyForms);
			}

			// Token: 0x06000055 RID: 85 RVA: 0x00006D8C File Offset: 0x00004F8C
			[EditorBrowsable(EditorBrowsableState.Never)]
			public override string ToString()
			{
				return base.ToString();
			}

			// Token: 0x04000007 RID: 7
			public FDesktop m_FDesktop;

			// Token: 0x04000008 RID: 8
			public Form1 m_Form1;

			// Token: 0x04000009 RID: 9
			public Form2 m_Form2;

			// Token: 0x0400000A RID: 10
			public FrmBuy m_FrmBuy;

			// Token: 0x0400000B RID: 11
			public FrmCam m_FrmCam;

			// Token: 0x0400000C RID: 12
			public FrmChat m_FrmChat;

			// Token: 0x0400000D RID: 13
			public FrmClipboar m_FrmClipboar;

			// Token: 0x0400000E RID: 14
			public FrmConnections m_FrmConnections;

			// Token: 0x0400000F RID: 15
			public FrmDwonload m_FrmDwonload;

			// Token: 0x04000010 RID: 16
			public FrmEditHost m_FrmEditHost;

			// Token: 0x04000011 RID: 17
			public FrmFilemanager m_FrmFilemanager;

			// Token: 0x04000012 RID: 18
			public FrmFlood m_FrmFlood;

			// Token: 0x04000013 RID: 19
			public FrmFun m_FrmFun;

			// Token: 0x04000014 RID: 20
			public FrmHelp m_FrmHelp;

			// Token: 0x04000015 RID: 21
			public FrmInfoPlugin m_FrmInfoPlugin;

			// Token: 0x04000016 RID: 22
			public FrmInformasi m_FrmInformasi;

			// Token: 0x04000017 RID: 23
			public FrmInstalled m_FrmInstalled;

			// Token: 0x04000018 RID: 24
			public FrmIPlockup m_FrmIPlockup;

			// Token: 0x04000019 RID: 25
			public FrmLogger m_FrmLogger;

			// Token: 0x0400001A RID: 26
			public FrmMic m_FrmMic;

			// Token: 0x0400001B RID: 27
			public FrmNotification m_FrmNotification;

			// Token: 0x0400001C RID: 28
			public FrmProcess m_FrmProcess;

			// Token: 0x0400001D RID: 29
			public FrmRegEdit m_FrmRegEdit;

			// Token: 0x0400001E RID: 30
			public FrmRegistry m_FrmRegistry;

			// Token: 0x0400001F RID: 31
			public FrmScript m_FrmScript;

			// Token: 0x04000020 RID: 32
			public FrmServices m_FrmServices;

			// Token: 0x04000021 RID: 33
			public FrmShell m_FrmShell;

			// Token: 0x04000022 RID: 34
			public FrmStartUp m_FrmStartUp;

			// Token: 0x04000023 RID: 35
			public FrmStoredPassword m_FrmStoredPassword;

			// Token: 0x04000024 RID: 36
			public FrmUpload m_FrmUpload;

			// Token: 0x04000025 RID: 37
			public FrmURL m_FrmURL;

			// Token: 0x04000026 RID: 38
			public FrmWinList m_FrmWinList;

			// Token: 0x04000027 RID: 39
			public port1 m_port1;

			// Token: 0x04000028 RID: 40
			[ThreadStatic]
			private static Hashtable m_FormBeingCreated;
		}

		// Token: 0x02000007 RID: 7
		[EditorBrowsable(EditorBrowsableState.Never), MyGroupCollection("System.Web.Services.Protocols.SoapHttpClientProtocol", "Create__Instance__", "Dispose__Instance__", "")]
		internal sealed class MyWebServices
		{
			// Token: 0x06000056 RID: 86 RVA: 0x000028A5 File Offset: 0x00000AA5
			[EditorBrowsable(EditorBrowsableState.Never), DebuggerHidden]
			public override bool Equals(object o)
			{
				return base.Equals(RuntimeHelpers.GetObjectValue(o));
			}

			// Token: 0x06000057 RID: 87 RVA: 0x00006D58 File Offset: 0x00004F58
			[EditorBrowsable(EditorBrowsableState.Never), DebuggerHidden]
			public override int GetHashCode()
			{
				return base.GetHashCode();
			}

			// Token: 0x06000058 RID: 88 RVA: 0x00006DA4 File Offset: 0x00004FA4
			[EditorBrowsable(EditorBrowsableState.Never), DebuggerHidden]
			internal new Type GetType()
			{
				return typeof(MyProject.MyWebServices);
			}

			// Token: 0x06000059 RID: 89 RVA: 0x00006D8C File Offset: 0x00004F8C
			[DebuggerHidden, EditorBrowsable(EditorBrowsableState.Never)]
			public override string ToString()
			{
				return base.ToString();
			}

			// Token: 0x0600005A RID: 90 RVA: 0x00006DC0 File Offset: 0x00004FC0
			[DebuggerHidden]
			private static T Create__Instance__<T>(T instance) where T : new()
			{
				T result;
				if (instance == null)
				{
					result = Activator.CreateInstance<T>();
				}
				else
				{
					result = instance;
				}
				return result;
			}

			// Token: 0x0600005B RID: 91 RVA: 0x00006DE4 File Offset: 0x00004FE4
			[DebuggerHidden]
			private void Dispose__Instance__<T>(ref T instance)
			{
				instance = default(T);
			}

			// Token: 0x0600005C RID: 92 RVA: 0x00002898 File Offset: 0x00000A98
			[DebuggerHidden, EditorBrowsable(EditorBrowsableState.Never)]
			public MyWebServices()
			{
				Class2.zP7eVJHzSiX6G();
				base..ctor();
			}
		}

		// Token: 0x02000008 RID: 8
		[ComVisible(false), EditorBrowsable(EditorBrowsableState.Never)]
		internal sealed class ThreadSafeObjectProvider<T> where T : new()
		{
			// Token: 0x17000027 RID: 39
			// (get) Token: 0x0600005D RID: 93 RVA: 0x00006E00 File Offset: 0x00005000
			internal T GetInstance
			{
				[DebuggerHidden]
				get
				{
					if (MyProject.ThreadSafeObjectProvider<T>.m_ThreadStaticValue == null)
					{
						MyProject.ThreadSafeObjectProvider<T>.m_ThreadStaticValue = Activator.CreateInstance<T>();
					}
					return MyProject.ThreadSafeObjectProvider<T>.m_ThreadStaticValue;
				}
			}

			// Token: 0x0600005E RID: 94 RVA: 0x00002898 File Offset: 0x00000A98
			[DebuggerHidden, EditorBrowsable(EditorBrowsableState.Never)]
			public ThreadSafeObjectProvider()
			{
				Class2.zP7eVJHzSiX6G();
				base..ctor();
			}

			// Token: 0x04000029 RID: 41
			[CompilerGenerated, ThreadStatic]
			private static T m_ThreadStaticValue;
		}
	}
}
