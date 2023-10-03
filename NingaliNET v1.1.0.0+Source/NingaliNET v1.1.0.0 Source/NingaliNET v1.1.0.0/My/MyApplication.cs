using System;
using System.CodeDom.Compiler;
using System.Collections.Generic;
using System.ComponentModel;
using System.Diagnostics;
using System.Runtime.CompilerServices;
using System.Windows.Forms;
using Microsoft.VisualBasic.ApplicationServices;

namespace NINGALINET.My
{
	// Token: 0x02000003 RID: 3
	[EditorBrowsable(EditorBrowsableState.Never), GeneratedCode("MyTemplate", "8.0.0.0")]
	internal class MyApplication : WindowsFormsApplicationBase
	{
		// Token: 0x06000002 RID: 2 RVA: 0x00006544 File Offset: 0x00004744
		[DebuggerNonUserCode]
		private static void __ENCAddToList(object value)
		{
			List<WeakReference> _ENCList = MyApplication.__ENCList;
			checked
			{
				lock (_ENCList)
				{
					if (MyApplication.__ENCList.Count == MyApplication.__ENCList.Capacity)
					{
						int num = 0;
						int arg_37_0 = 0;
						int num2 = MyApplication.__ENCList.Count - 1;
						int num3 = arg_37_0;
						while (true)
						{
							int arg_7D_0 = num3;
							int num4 = num2;
							if (arg_7D_0 > num4)
							{
								break;
							}
							WeakReference weakReference = MyApplication.__ENCList[num3];
							if (weakReference.IsAlive)
							{
								if (num3 != num)
								{
									MyApplication.__ENCList[num] = MyApplication.__ENCList[num3];
								}
								num++;
							}
							num3++;
						}
						MyApplication.__ENCList.RemoveRange(num, MyApplication.__ENCList.Count - num);
						MyApplication.__ENCList.Capacity = MyApplication.__ENCList.Count;
					}
					MyApplication.__ENCList.Add(new WeakReference(RuntimeHelpers.GetObjectValue(value)));
				}
			}
		}

		// Token: 0x06000003 RID: 3 RVA: 0x0000662C File Offset: 0x0000482C
		[EditorBrowsable(EditorBrowsableState.Advanced), STAThread, DebuggerHidden]
		[MethodImpl(MethodImplOptions.NoOptimization)]
		internal static void Main(string[] args)
		{
			try
			{
				Application.SetCompatibleTextRenderingDefault(WindowsFormsApplicationBase.UseCompatibleTextRendering);
				Class2.zP7eVJHzSiX6G();
			}
			finally
			{
			}
			MyProject.Application.Run(args);
		}

		// Token: 0x06000004 RID: 4 RVA: 0x00002248 File Offset: 0x00000448
		[DebuggerStepThrough]
		public MyApplication() : base(AuthenticationMode.Windows)
		{
			MyApplication.__ENCAddToList(this);
			this.IsSingleInstance = false;
			this.EnableVisualStyles = true;
			this.SaveMySettingsOnExit = true;
			this.ShutdownStyle = ShutdownMode.AfterMainFormCloses;
		}

		// Token: 0x06000005 RID: 5 RVA: 0x00002273 File Offset: 0x00000473
		[DebuggerStepThrough]
		protected override void OnCreateMainForm()
		{
			this.MainForm = MyProject.Forms.Form1;
		}

		// Token: 0x04000001 RID: 1
		private static List<WeakReference> __ENCList = new List<WeakReference>();
	}
}
