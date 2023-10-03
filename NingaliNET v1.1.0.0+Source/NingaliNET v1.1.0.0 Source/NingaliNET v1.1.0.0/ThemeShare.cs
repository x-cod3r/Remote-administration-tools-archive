using System;
using System.Collections.Generic;
using Microsoft.VisualBasic.CompilerServices;

namespace NINGALINET
{
	// Token: 0x0200005A RID: 90
	[StandardModule]
	internal sealed class ThemeShare
	{
		// Token: 0x06000B2C RID: 2860 RVA: 0x000062DF File Offset: 0x000044DF
		static ThemeShare()
		{
			// Note: this type is marked as 'beforefieldinit'.
			Class2.zP7eVJHzSiX6G();
			ThemeShare.ThemeTimer = new PrecisionTimer();
			ThemeShare.Callbacks = new List<ThemeShare.AnimationDelegate>();
		}

		// Token: 0x06000B2D RID: 2861 RVA: 0x00058A10 File Offset: 0x00056C10
		private static void HandleCallbacks(IntPtr state, bool reserve)
		{
			ThemeShare.Invalidate = (ThemeShare.Frames >= 50);
			if (ThemeShare.Invalidate)
			{
				ThemeShare.Frames = 0;
			}
			List<ThemeShare.AnimationDelegate> callbacks = ThemeShare.Callbacks;
			checked
			{
				lock (callbacks)
				{
					int arg_38_0 = 0;
					int num = ThemeShare.Callbacks.Count - 1;
					int num2 = arg_38_0;
					while (true)
					{
						int arg_58_0 = num2;
						int num3 = num;
						if (arg_58_0 > num3)
						{
							break;
						}
						ThemeShare.Callbacks[num2](ThemeShare.Invalidate);
						num2++;
					}
				}
				ThemeShare.Frames += 10;
			}
		}

		// Token: 0x06000B2E RID: 2862 RVA: 0x000062FA File Offset: 0x000044FA
		private static void InvalidateThemeTimer()
		{
			if (ThemeShare.Callbacks.Count == 0)
			{
				ThemeShare.ThemeTimer.Delete();
			}
			else
			{
				ThemeShare.ThemeTimer.Create(0u, 10u, new PrecisionTimer.TimerDelegate(ThemeShare.HandleCallbacks));
			}
		}

		// Token: 0x06000B2F RID: 2863 RVA: 0x00058AA0 File Offset: 0x00056CA0
		public static void AddAnimationCallback(ThemeShare.AnimationDelegate callback)
		{
			List<ThemeShare.AnimationDelegate> callbacks = ThemeShare.Callbacks;
			lock (callbacks)
			{
				if (!ThemeShare.Callbacks.Contains(callback))
				{
					ThemeShare.Callbacks.Add(callback);
					ThemeShare.InvalidateThemeTimer();
				}
			}
		}

		// Token: 0x06000B30 RID: 2864 RVA: 0x00058AF4 File Offset: 0x00056CF4
		public static void RemoveAnimationCallback(ThemeShare.AnimationDelegate callback)
		{
			List<ThemeShare.AnimationDelegate> callbacks = ThemeShare.Callbacks;
			lock (callbacks)
			{
				if (ThemeShare.Callbacks.Contains(callback))
				{
					ThemeShare.Callbacks.Remove(callback);
					ThemeShare.InvalidateThemeTimer();
				}
			}
		}

		// Token: 0x0400053C RID: 1340
		private static int Frames;

		// Token: 0x0400053D RID: 1341
		private static bool Invalidate;

		// Token: 0x0400053E RID: 1342
		public static PrecisionTimer ThemeTimer;

		// Token: 0x0400053F RID: 1343
		private static List<ThemeShare.AnimationDelegate> Callbacks;

		// Token: 0x0200005B RID: 91
		// (Invoke) Token: 0x06000B34 RID: 2868
		public delegate void AnimationDelegate(bool invalidate);
	}
}
