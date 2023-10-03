(**
* This is a little example about how to code a Edit Server plugin for DarkComet RAT
* Respect exactly how i code it, read carefully the comment to know what you absolutly
* don't need to toutch, if you want to be sure its gona work.
* If you have any questions about this system, contact me via my websites.
* Cheers,
* DarkCoderSc
*)

library dc_msgbox;

uses
  Windows,
  SysUtils;

{Global Vars}
var
  Name : String =  'Msgbox'; // Our plugin name /!\ MUST BE THERE /!\
  Desc : String = 'Display a messagebox at server startup.'; // A Short description of the plugin no return please /!\MUST BE THERE/!\
  Author : String = 'DarkCoderSc'; // Plugin coder name /!\ MUST BE THERE /!\

{My custom proc for messagebox}
procedure HelloWorld;
Begin
  MessageBox(0,'Hello world!','=)',MB_IconInformation);
end;

{/!\This function is very important be sure to never remove it}
function _DCGetDLLInfo:PCHAR;stdcall; //If you code it in another langage it must return a pointer to char
Begin
  Result := Pchar(Name +'|'+ Desc +'|'+ Author); // Return the needed info for client
End;

{/!\This function is very important be sure to never remove it}
Procedure _DCEntryPoint;stdcall;
Begin
  //Here put whatever you want , i decide to display a messagebox via a local Func
  HelloWorld;
end;

{Exports section}
exports
  _DCGetDLLInfo, //Function to get dll infos
  _DCEntryPoint; //Procedure to execute at server startup
  
begin
end.
 