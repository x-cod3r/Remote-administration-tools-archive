library MsgBox_Plugin;

uses
  Windows;

{$R *.res}

var
  Author : String;
  Desc : String;
  Title : String;
  Name : String ;

//don't edit this PluginInfo fucntion
function PluginInfo: PChar;
begin
  Author  := 'IronJuan';
  Desc := 'MessageBox plugin for Blizzard-RAT';
  Title := 'MessageBox';

  Name := 'Blizzard-RAT'; //don't change this
  Result := PChar(Author + '*' + Desc + '*' + Title + '*' + Name);
end;

procedure Start;  //dont rename 
begin
  //put your code here, example is my messagebox
  MessageBox(0, 'Hello World', 'Blizzard-RAT', 0);
end;


exports
// dont change these
  Start,
  PluginInfo;

begin
end.
 