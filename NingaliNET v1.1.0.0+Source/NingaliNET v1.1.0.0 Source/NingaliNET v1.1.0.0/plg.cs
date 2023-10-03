using System;
using System.IO;
using System.Windows.Forms;

namespace NINGALINET
{
	// Token: 0x0200003F RID: 63
	public class plg
	{
		// Token: 0x0600096C RID: 2412 RVA: 0x000517AC File Offset: 0x0004F9AC
		public plg(string fnn)
		{
			Class2.zP7eVJHzSiX6G();
			base..ctor();
			bool flag = true;
			this.B = Convert.ToBase64String(Fungsi.ZIP(File.ReadAllBytes(Application.StartupPath + "\\Bin\\" + fnn), ref flag));
			this.Name = fnn;
			this.Hash = Fungsi.smethod_0(this.B);
		}

		// Token: 0x04000491 RID: 1169
		public string B;

		// Token: 0x04000492 RID: 1170
		public string Hash;

		// Token: 0x04000493 RID: 1171
		public string Name;
	}
}
