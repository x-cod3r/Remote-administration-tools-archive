using System;
using System.ComponentModel.Design;
using System.Diagnostics;
using System.Runtime.CompilerServices;
using Microsoft.VisualBasic;
using Microsoft.VisualBasic.CompilerServices;

namespace NINGALINET.My
{
	// Token: 0x02000057 RID: 87
	[StandardModule, DebuggerNonUserCode, HideModuleName, CompilerGenerated]
	internal sealed class MySettingsProperty
	{
		// Token: 0x17000386 RID: 902
		// (get) Token: 0x06000A2A RID: 2602 RVA: 0x00056488 File Offset: 0x00054688
		[HelpKeyword("My.Settings")]
		internal static MySettings Settings
		{
			get
			{
				return MySettings.Default;
			}
		}
	}
}
