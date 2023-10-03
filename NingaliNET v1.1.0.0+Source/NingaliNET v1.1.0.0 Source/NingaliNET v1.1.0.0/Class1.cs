using System;
using System.Reflection;

// Token: 0x0200006B RID: 107
internal class Class1
{
	// Token: 0x06000B85 RID: 2949 RVA: 0x0005A050 File Offset: 0x00058250
	internal static void KRoeVJHHE87We(int typemdt)
	{
		Type type = Class1.module_0.ResolveType(33554432 + typemdt);
		FieldInfo[] fields = type.GetFields();
		for (int i = 0; i < fields.Length; i++)
		{
			FieldInfo fieldInfo = fields[i];
			MethodInfo method = (MethodInfo)Class1.module_0.ResolveMethod(fieldInfo.MetadataToken + 100663296);
			fieldInfo.SetValue(null, (MulticastDelegate)Delegate.CreateDelegate(type, method));
		}
	}

	// Token: 0x06000B86 RID: 2950 RVA: 0x00002898 File Offset: 0x00000A98
	public Class1()
	{
		Class2.zP7eVJHzSiX6G();
		base..ctor();
	}

	// Token: 0x06000B87 RID: 2951 RVA: 0x0000651C File Offset: 0x0000471C
	static Class1()
	{
		// Note: this type is marked as 'beforefieldinit'.
		Class2.zP7eVJHzSiX6G();
		Class1.module_0 = typeof(Class1).Assembly.ManifestModule;
	}

	// Token: 0x04000568 RID: 1384
	internal static Module module_0;

	// Token: 0x0200006C RID: 108
	// (Invoke) Token: 0x06000B89 RID: 2953
	internal delegate void Delegate0(object o);
}
