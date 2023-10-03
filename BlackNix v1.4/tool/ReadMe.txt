----------------------------------------------

Resource Hacker™ - Version 3.5.2

19 November 2009.
Copyright 1999-2009 Angus Johnson

http://www.angusj.com/resourcehacker

FREEWARE utility to view, modify, add, rename 
and delete resources in Windows executables and
resource files. Incorporates an internal 
resource compiler and decompiler. Works on 
Win9x, WinNT, Win2000 and WinXP, Vista & Win7.

----------------------------------------------
Summary:
----------------------------------------------

Resource Hacker™ has been designed to:

1. View resources in Win32 executable files 
(*.exe, *.dll, *.cpl, *.ocx) and in Win32 
resource files (*.res) in both their compiled 
and decompiled formats.

2. Extract (save) resources to file in: 
*.res format; as a binary; or as decompiled 
resource scripts or images. 
Icons, bitmaps, cursors, menus, dialogs, 
string tables, message tables, accelerators, 
Borland forms and version info resources can 
be fully decompiled into their respective 
formats, whether as image files or  *.rc text 
files.

3. Modify (rename or replace) resources in 
executables. Image resources (icons, cursors 
and bitmaps) can be replaced with an image from 
a corresponding image file (*.ico, *.cur, *.bmp), 
a *.res file or even another *.exe file. 
Dialogs, menus, stringtables, accelerators and 
messagetable resource scripts (and also Borland 
forms) can be edited and recompiled using the 
internal resource script editor.
Resources can also be replaced with resources 
from a *.res file as long as the replacement 
resource is of the same type and has the same 
name.

4. Add new resources to executables.
Enable a program to support multiple languages, 
or add a custom icon or bitmap (company logo 
etc) to a program's dialog.

5. Delete resources. 
Most compilers add resources into applications 
which are never used by the application. 
Removing these unused resources can reduce an 
application's size.

----------------------------------------------
Note regarding WinXP - Win7 and Visual Styles:
----------------------------------------------

  * Adding a manifest resource to Resource Hacker™
  will cause intermittent problems when viewing
  or editing dialogs - so I don't recommend it :)  

----------------------------------------------
Known limitations:
----------------------------------------------

1. Resource Hacker™ will not read 16bit executables. 

2. Resource Hacker™ is currently compiled with 
Delphi 3.02. When decompiling and recompiling 
Borland's Delphi forms in applications compiled 
with later version of Delphi, there may be errors 
in the recompiled forms if frames have been used 
to create the form. This error is due to the DFM 
keyword 'inline' not being recognized. While 
decompiling, the 'inline' keyword will be replaced 
by 'object' and, if manually corrected before 
recompiling, 'inline' will be rejected by the 
Resource Hacker™ compiler.

3. To reduce the size of application files, some 
applications are "packed" or "compressed" using 
an EXE compressor after they have been compiled. 
This has a side-effect of making it more difficult 
to view and modify resources. When a "compressed" 
executable is viewed with Resource Hacker™, only 
resource types and names will be visible but not 
the actual resources.

----------------------------------------------
Licence Agreement:
----------------------------------------------

This Resource Hacker™ software is released as 
freeware provided that you agree to the 
following terms and conditions: 

  1. This software is not to be distributed via 
  any website domain or any other media without 
  the prior written approval of the copyright owner. 

  2. This software is not to be used in any way to 
  illegally modify software. 

DISCLAIMER: A user of this Resource Hacker™ 
software acknowledges that he or she is 
receiving this software on an "as is" basis 
and the user is not relying on the accuracy 
or functionality of the software for any purpose. 
The user further acknowledges that any use of 
this software will be at the user's own risk 
and the copyright owner accepts no responsibility 
whatsoever arising from the use or application of 
the software. 