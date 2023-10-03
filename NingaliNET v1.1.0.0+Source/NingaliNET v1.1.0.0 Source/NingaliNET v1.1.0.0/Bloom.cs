using System;
using System.Drawing;
using Microsoft.VisualBasic.CompilerServices;

namespace NINGALINET
{
	// Token: 0x0200005D RID: 93
	internal struct Bloom
	{
		// Token: 0x170003B2 RID: 946
		// (get) Token: 0x06000B35 RID: 2869 RVA: 0x00058B4C File Offset: 0x00056D4C
		public string Name
		{
			get
			{
				return this._Name;
			}
		}

		// Token: 0x170003B3 RID: 947
		// (get) Token: 0x06000B36 RID: 2870 RVA: 0x00058B64 File Offset: 0x00056D64
		// (set) Token: 0x06000B37 RID: 2871 RVA: 0x00006330 File Offset: 0x00004530
		public Color Value
		{
			get
			{
				return this._Value;
			}
			set
			{
				this._Value = value;
			}
		}

		// Token: 0x170003B4 RID: 948
		// (get) Token: 0x06000B38 RID: 2872 RVA: 0x00058B7C File Offset: 0x00056D7C
		// (set) Token: 0x06000B39 RID: 2873 RVA: 0x00058BE0 File Offset: 0x00056DE0
		public string ValueHex
		{
			get
			{
				return "#" + this._Value.R.ToString("X2", null) + this._Value.G.ToString("X2", null) + this._Value.B.ToString("X2", null);
			}
			set
			{
				try
				{
					this._Value = ColorTranslator.FromHtml(value);
				}
				catch (Exception arg_0F_0)
				{
					ProjectData.SetProjectError(arg_0F_0);
					ProjectData.ClearProjectError();
				}
			}
		}

		// Token: 0x06000B3A RID: 2874 RVA: 0x00006339 File Offset: 0x00004539
		public Bloom(string name, Color value)
		{
			Class2.zP7eVJHzSiX6G();
			this = default(Bloom);
			this._Name = name;
			this._Value = value;
		}

		// Token: 0x04000545 RID: 1349
		public string _Name;

		// Token: 0x04000546 RID: 1350
		private Color _Value;
	}
}
