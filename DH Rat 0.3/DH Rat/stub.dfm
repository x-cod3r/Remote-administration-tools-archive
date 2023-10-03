object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 132
  ClientWidth = 167
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object IdHTTP1: TIdHTTP
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.Accept = 'text/html, */*'
    Request.BasicAuthentication = False
    Request.UserAgent = 
      'Mozilla/5.0 (Windows; U; Windows NT 5.1; nl; rv:1.8.1.12) Gecko/' +
      '20080201Firefox/2.0.0.12'
    HTTPOptions = [hoForceEncodeParams]
    Left = 128
    Top = 16
  end
  object ClientSocket1: TClientSocket
    Active = False
    ClientType = ctNonBlocking
    Port = 6664
    OnConnect = ClientSocket1Connect
    OnRead = ClientSocket1Read
    Left = 24
    Top = 16
  end
  object Timer1: TTimer
    Interval = 1
    OnTimer = Timer1Timer
    Left = 24
    Top = 72
  end
  object Timer2: TTimer
    Interval = 1
    OnTimer = Timer2Timer
    Left = 72
    Top = 72
  end
end
