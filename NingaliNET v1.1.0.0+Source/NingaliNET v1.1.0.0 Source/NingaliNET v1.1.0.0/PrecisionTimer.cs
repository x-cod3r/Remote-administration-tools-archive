using System;
using System.Diagnostics;
using System.Runtime.InteropServices;

namespace NINGALINET
{
	// Token: 0x0200005E RID: 94
	internal class PrecisionTimer : IDisposable
	{
		// Token: 0x06000B3B RID: 2875 RVA: 0x00002898 File Offset: 0x00000A98
		[DebuggerNonUserCode]
		public PrecisionTimer()
		{
			Class2.zP7eVJHzSiX6G();
			base..ctor();
		}

		// Token: 0x170003B5 RID: 949
		// (get) Token: 0x06000B3C RID: 2876 RVA: 0x00006355 File Offset: 0x00004555
		public bool Enabled
		{
			get
			{
				return this._Enabled;
			}
		}

		// Token: 0x06000B3D RID: 2877
		[DllImport("KERNEL32.DLL")]
		private static extern bool CreateTimerQueueTimer(ref IntPtr handle, IntPtr queue, PrecisionTimer.TimerDelegate callback, IntPtr state, uint dueTime, uint period, uint flags);

		// Token: 0x06000B3E RID: 2878
		[DllImport("KERNEL32.DLL")]
		private static extern bool DeleteTimerQueueTimer(IntPtr queue, IntPtr handle, IntPtr callback);

		// Token: 0x06000B3F RID: 2879 RVA: 0x00058C18 File Offset: 0x00056E18
		public void Create(uint dueTime, uint period, PrecisionTimer.TimerDelegate callback)
		{
			if (!this._Enabled)
			{
				this.TimerCallback = callback;
				bool enabled;
				if (!(enabled = PrecisionTimer.CreateTimerQueueTimer(ref this.Handle, IntPtr.Zero, this.TimerCallback, IntPtr.Zero, dueTime, period, 0u)))
				{
					this.ThrowNewException("CreateTimerQueueTimer");
				}
				this._Enabled = enabled;
			}
		}

		// Token: 0x06000B40 RID: 2880 RVA: 0x00058C6C File Offset: 0x00056E6C
		public void Delete()
		{
			if (this._Enabled)
			{
				bool flag;
				bool arg_36_0;
				if (!(flag = PrecisionTimer.DeleteTimerQueueTimer(IntPtr.Zero, this.Handle, IntPtr.Zero)))
				{
					if (Marshal.GetLastWin32Error() != 997)
					{
						arg_36_0 = true;
						goto IL_36;
					}
				}
				arg_36_0 = false;
				IL_36:
				if (arg_36_0)
				{
					this.ThrowNewException("DeleteTimerQueueTimer");
				}
				this._Enabled = !flag;
			}
		}

		// Token: 0x06000B41 RID: 2881 RVA: 0x0000635D File Offset: 0x0000455D
		private void ThrowNewException(string name)
		{
			throw new Exception(string.Format("{0} failed. Win32Error: {1}", name, Marshal.GetLastWin32Error()));
		}

		// Token: 0x06000B42 RID: 2882 RVA: 0x00006379 File Offset: 0x00004579
		public void Dispose()
		{
			this.Delete();
		}

		// Token: 0x04000547 RID: 1351
		private bool _Enabled;

		// Token: 0x04000548 RID: 1352
		private IntPtr Handle;

		// Token: 0x04000549 RID: 1353
		private PrecisionTimer.TimerDelegate TimerCallback;

		// Token: 0x0200005F RID: 95
		// (Invoke) Token: 0x06000B46 RID: 2886
		public delegate void TimerDelegate(IntPtr r1, bool r2);
	}
}
