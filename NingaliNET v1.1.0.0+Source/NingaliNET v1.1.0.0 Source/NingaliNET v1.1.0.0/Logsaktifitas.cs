using System;
using System.Windows.Forms;
using Microsoft.VisualBasic.CompilerServices;

namespace NINGALINET
{
	// Token: 0x02000040 RID: 64
	[StandardModule]
	internal sealed class Logsaktifitas
	{
		// Token: 0x0600096D RID: 2413 RVA: 0x00004DD2 File Offset: 0x00002FD2
		static Logsaktifitas()
		{
			// Note: this type is marked as 'beforefieldinit'.
			Class2.zP7eVJHzSiX6G();
			Logsaktifitas.sv = new TextBox();
		}

		// Token: 0x0600096E RID: 2414 RVA: 0x00051808 File Offset: 0x0004FA08
		public static object LOG(string s)
		{
			return Logsaktifitas.simpanlog;
		}

		// Token: 0x04000494 RID: 1172
		public static string simpanlog;

		// Token: 0x04000495 RID: 1173
		private static TextBox sv;
	}
}
