using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Diagnostics;
using System.Drawing;
using System.Runtime.CompilerServices;
using System.Windows.Forms;
using Microsoft.VisualBasic;
using Microsoft.VisualBasic.CompilerServices;

namespace NINGALINET
{
	// Token: 0x02000028 RID: 40
	[DesignerGenerated]
	public partial class FrmURL : Form
	{
		// Token: 0x0600079A RID: 1946 RVA: 0x000046ED File Offset: 0x000028ED
		[DebuggerNonUserCode]
		static FrmURL()
		{
			// Note: this type is marked as 'beforefieldinit'.
			Class2.zP7eVJHzSiX6G();
			FrmURL.__ENCList = new List<WeakReference>();
		}

		// Token: 0x0600079B RID: 1947 RVA: 0x0003CECC File Offset: 0x0003B0CC
		[DebuggerNonUserCode]
		private static void __ENCAddToList(object value)
		{
			List<WeakReference> _ENCList = FrmURL.__ENCList;
			checked
			{
				lock (_ENCList)
				{
					if (FrmURL.__ENCList.Count == FrmURL.__ENCList.Capacity)
					{
						int num = 0;
						int arg_37_0 = 0;
						int num2 = FrmURL.__ENCList.Count - 1;
						int num3 = arg_37_0;
						while (true)
						{
							int arg_7D_0 = num3;
							int num4 = num2;
							if (arg_7D_0 > num4)
							{
								break;
							}
							WeakReference weakReference = FrmURL.__ENCList[num3];
							if (weakReference.IsAlive)
							{
								if (num3 != num)
								{
									FrmURL.__ENCList[num] = FrmURL.__ENCList[num3];
								}
								num++;
							}
							num3++;
						}
						FrmURL.__ENCList.RemoveRange(num, FrmURL.__ENCList.Count - num);
						FrmURL.__ENCList.Capacity = FrmURL.__ENCList.Count;
					}
					FrmURL.__ENCList.Add(new WeakReference(RuntimeHelpers.GetObjectValue(value)));
				}
			}
		}

		// Token: 0x170002C7 RID: 711
		// (get) Token: 0x0600079E RID: 1950 RVA: 0x0003D424 File Offset: 0x0003B624
		// (set) Token: 0x0600079F RID: 1951 RVA: 0x000046FE File Offset: 0x000028FE
		internal virtual Label Label1
		{
			[DebuggerNonUserCode]
			get
			{
				return this._Label1;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._Label1 = value;
			}
		}

		// Token: 0x170002C8 RID: 712
		// (get) Token: 0x060007A0 RID: 1952 RVA: 0x0003D43C File Offset: 0x0003B63C
		// (set) Token: 0x060007A1 RID: 1953 RVA: 0x00004707 File Offset: 0x00002907
		internal virtual Label Label2
		{
			[DebuggerNonUserCode]
			get
			{
				return this._Label2;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._Label2 = value;
			}
		}

		// Token: 0x170002C9 RID: 713
		// (get) Token: 0x060007A2 RID: 1954 RVA: 0x0003D454 File Offset: 0x0003B654
		// (set) Token: 0x060007A3 RID: 1955 RVA: 0x0003D46C File Offset: 0x0003B66C
		internal virtual TextBox TextBox1
		{
			[DebuggerNonUserCode]
			get
			{
				return this._TextBox1;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.TextBox1_TextChanged);
				KeyEventHandler value3 = new KeyEventHandler(this.TextBox1_KeyDown);
				if (this._TextBox1 != null)
				{
					this._TextBox1.TextChanged -= value2;
					this._TextBox1.KeyDown -= value3;
				}
				this._TextBox1 = value;
				if (this._TextBox1 != null)
				{
					this._TextBox1.TextChanged += value2;
					this._TextBox1.KeyDown += value3;
				}
			}
		}

		// Token: 0x170002CA RID: 714
		// (get) Token: 0x060007A4 RID: 1956 RVA: 0x0003D4E8 File Offset: 0x0003B6E8
		// (set) Token: 0x060007A5 RID: 1957 RVA: 0x00004710 File Offset: 0x00002910
		internal virtual TextBox TextBox2
		{
			[DebuggerNonUserCode]
			get
			{
				return this._TextBox2;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				this._TextBox2 = value;
			}
		}

		// Token: 0x170002CB RID: 715
		// (get) Token: 0x060007A6 RID: 1958 RVA: 0x0003D500 File Offset: 0x0003B700
		// (set) Token: 0x060007A7 RID: 1959 RVA: 0x0003D518 File Offset: 0x0003B718
		internal virtual Button Button1
		{
			[DebuggerNonUserCode]
			get
			{
				return this._Button1;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.Button1_Click);
				if (this._Button1 != null)
				{
					this._Button1.Click -= value2;
				}
				this._Button1 = value;
				if (this._Button1 != null)
				{
					this._Button1.Click += value2;
				}
			}
		}

		// Token: 0x170002CC RID: 716
		// (get) Token: 0x060007A8 RID: 1960 RVA: 0x0003D570 File Offset: 0x0003B770
		// (set) Token: 0x060007A9 RID: 1961 RVA: 0x0003D588 File Offset: 0x0003B788
		internal virtual Button Button2
		{
			[DebuggerNonUserCode]
			get
			{
				return this._Button2;
			}
			[DebuggerNonUserCode]
			[MethodImpl(MethodImplOptions.Synchronized)]
			set
			{
				EventHandler value2 = new EventHandler(this.Button2_Click);
				if (this._Button2 != null)
				{
					this._Button2.Click -= value2;
				}
				this._Button2 = value;
				if (this._Button2 != null)
				{
					this._Button2.Click += value2;
				}
			}
		}

		// Token: 0x060007AA RID: 1962 RVA: 0x0003D5E0 File Offset: 0x0003B7E0
		public FrmURL()
		{
			Class2.zP7eVJHzSiX6G();
			base..ctor();
			base.Load += new EventHandler(this.FURL_Load);
			FrmURL.__ENCAddToList(this);
			base.KeyDown += new KeyEventHandler(this.TextBox1_KeyDown);
			base.Load += new EventHandler(this.FURL_Load);
			this.IsOK = false;
			this.InitializeComponent();
		}

		// Token: 0x060007AB RID: 1963 RVA: 0x0003D644 File Offset: 0x0003B844
		private void Button1_Click(object sender, EventArgs e)
		{
			if (this.TextBox1.Text.Length > 0 & this.TextBox1.Text.ToLower().StartsWith("http") & this.TextBox2.TextLength > 0)
			{
				this.IsOK = true;
				this.Close();
			}
		}

		// Token: 0x060007AC RID: 1964 RVA: 0x00002F54 File Offset: 0x00001154
		private void FURL_Load(object sender, EventArgs e)
		{
		}

		// Token: 0x060007AD RID: 1965 RVA: 0x000040C8 File Offset: 0x000022C8
		private void Button2_Click(object sender, EventArgs e)
		{
			this.Close();
		}

		// Token: 0x060007AE RID: 1966 RVA: 0x00004719 File Offset: 0x00002919
		private void TextBox1_KeyDown(object sender, KeyEventArgs e)
		{
			if (e.KeyCode == Keys.Return)
			{
				this.Button1_Click(RuntimeHelpers.GetObjectValue(RuntimeHelpers.GetObjectValue(RuntimeHelpers.GetObjectValue(sender))), e);
			}
		}

		// Token: 0x060007AF RID: 1967 RVA: 0x0003D6A0 File Offset: 0x0003B8A0
		private void TextBox1_TextChanged(object sender, EventArgs e)
		{
			try
			{
				this.TextBox2.Text = Strings.Split(this.TextBox1.Text, ".", -1, CompareMethod.Binary)[checked(Strings.Split(this.TextBox1.Text, ".", -1, CompareMethod.Binary).Length - 1)];
			}
			catch (Exception expr_41)
			{
				ProjectData.SetProjectError(expr_41);
				ProjectData.ClearProjectError();
			}
		}

		// Token: 0x0400038A RID: 906
		private static List<WeakReference> __ENCList;

		// Token: 0x0400038C RID: 908
		[AccessedThroughProperty("Label1")]
		private Label _Label1;

		// Token: 0x0400038D RID: 909
		[AccessedThroughProperty("Label2")]
		private Label _Label2;

		// Token: 0x0400038E RID: 910
		[AccessedThroughProperty("TextBox1")]
		private TextBox _TextBox1;

		// Token: 0x0400038F RID: 911
		[AccessedThroughProperty("TextBox2")]
		private TextBox _TextBox2;

		// Token: 0x04000390 RID: 912
		[AccessedThroughProperty("Button1")]
		private Button _Button1;

		// Token: 0x04000391 RID: 913
		[AccessedThroughProperty("Button2")]
		private Button _Button2;

		// Token: 0x04000392 RID: 914
		public bool IsOK;
	}
}
