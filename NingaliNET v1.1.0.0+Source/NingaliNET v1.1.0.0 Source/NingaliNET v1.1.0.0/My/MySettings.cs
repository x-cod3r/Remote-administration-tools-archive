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
		// Token: 0x06000A22 RID: 2594 RVA: 0x000053D6 File Offset: 0x000035D6
		static MySettings()
		{
			// Note: this type is marked as 'beforefieldinit'.
			Class2.zP7eVJHzSiX6G();
			MySettings.defaultInstance = (MySettings)SettingsBase.Synchronized(new MySettings());
			MySettings.addedHandlerLockObject = RuntimeHelpers.GetObjectValue(new object());
		}

		// Token: 0x06000A23 RID: 2595 RVA: 0x00005400 File Offset: 0x00003600
		[DebuggerNonUserCode]
		public MySettings()
		{
			Class2.zP7eVJHzSiX6G();
			base..ctor();
		}

		// Token: 0x17000384 RID: 900
		// (get) Token: 0x06000A26 RID: 2598 RVA: 0x00056468 File Offset: 0x00054668
		// (set) Token: 0x06000A27 RID: 2599 RVA: 0x00005425 File Offset: 0x00003625
		[UserScopedSetting, DebuggerNonUserCode]
		public DateTime mulai
		{
			get
			{
				return Conversions.ToDate(this["mulai"]);
			}
			set
			{
				this["mulai"] = value;
			}
		}
	}
}
