using System;
using System.CodeDom.Compiler;
using System.ComponentModel;
using System.Configuration;
using System.Diagnostics;
using System.Runtime.CompilerServices;
using Microsoft.VisualBasic.ApplicationServices;
using Microsoft.VisualBasic.CompilerServices;

namespace NINGALINET.My
{
	// Token: 0x02000056 RID: 86
	[GeneratedCode("Microsoft.VisualStudio.Editors.SettingsDesigner.SettingsSingleFileGenerator", "10.0.0.0"), CompilerGenerated, EditorBrowsable(EditorBrowsableState.Advanced)]
	internal sealed partial class MySettings : ApplicationSettingsBase
	{
		// Token: 0x06000A24 RID: 2596 RVA: 0x0000540D File Offset: 0x0000360D
		[EditorBrowsable(EditorBrowsableState.Advanced), DebuggerNonUserCode]
		private static void AutoSaveSettings(object sender, EventArgs e)
		{
			if (MyProject.Application.SaveMySettingsOnExit)
			{
				MySettingsProperty.Settings.Save();
			}
		}

		// Token: 0x17000383 RID: 899
		// (get) Token: 0x06000A25 RID: 2597 RVA: 0x000563F8 File Offset: 0x000545F8
		public static MySettings Default
		{
			get
			{
				if (!MySettings.addedHandler)
				{
					object obj = MySettings.addedHandlerLockObject;
					ObjectFlowControl.CheckForSyncLockOnValueType(obj);
					lock (obj)
					{
						if (!MySettings.addedHandler)
						{
							MyProject.Application.Shutdown += new ShutdownEventHandler(MySettings.AutoSaveSettings);
							MySettings.addedHandler = true;
						}
					}
				}
				return MySettings.defaultInstance;
			}
		}

		// Token: 0x17000385 RID: 901
		// (get) Token: 0x06000A28 RID: 2600 RVA: 0x00005438 File Offset: 0x00003638
		// (set) Token: 0x06000A29 RID: 2601 RVA: 0x0000544A File Offset: 0x0000364A
		[UserScopedSetting, DefaultSettingValue("False"), DebuggerNonUserCode]
		public bool hlp
		{
			get
			{
				return Conversions.ToBoolean(this["hlp"]);
			}
			set
			{
				this["hlp"] = value;
			}
		}

		// Token: 0x040004E2 RID: 1250
		private static MySettings defaultInstance;

		// Token: 0x040004E3 RID: 1251
		private static bool addedHandler;

		// Token: 0x040004E4 RID: 1252
		private static object addedHandlerLockObject;
	}
}
