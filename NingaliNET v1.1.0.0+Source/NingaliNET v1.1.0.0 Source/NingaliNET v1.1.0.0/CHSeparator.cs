using System;
using System.Diagnostics;
using System.Drawing;

namespace NINGALINET
{
	// Token: 0x02000064 RID: 100
	internal class CHSeparator : ThemeControl154
	{
		// Token: 0x06000B5F RID: 2911 RVA: 0x0000644E File Offset: 0x0000464E
		[DebuggerNonUserCode]
		public CHSeparator()
		{
			Class2.zP7eVJHzSiX6G();
			base..ctor();
		}

		// Token: 0x06000B60 RID: 2912 RVA: 0x00002F54 File Offset: 0x00001154
		protected override void ColorHook()
		{
		}

		// Token: 0x06000B61 RID: 2913 RVA: 0x000593D4 File Offset: 0x000575D4
		protected override void PaintHook()
		{
			this.G.FillRectangle(new SolidBrush(Color.Black), this.ClientRectangle);
			Color arg_60_1 = Color.FromArgb(0, 255, 0);
			Color arg_60_2 = Color.FromArgb(0, 255, 0);
			Rectangle r = new Rectangle(0, checked((int)Math.Round((double)this.Height / 2.0)), this.Width, 1);
			this.DrawGradient(arg_60_1, arg_60_2, r, 45f);
		}
	}
}
