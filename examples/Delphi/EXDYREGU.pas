unit ExDYRegU;

interface

uses
  {$IFDEF Win32} Windows, {$ELSE} WinTypes, WinProcs, {$ENDIF}
  Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, OnGuard, IniFiles, OgUtil;

type
  TForm1 = class(TForm)
    CodeBtn: TButton;
    Memo1: TMemo;
    CloseBtn: TBitBtn;
    StatusLbl: TLabel;
    Label1: TLabel;
    CodeLbl: TLabel;
    RemoveBtn: TButton;
    OgDaysCode1: TOgDaysCode;
    procedure CodeChecked(Sender: TObject; Status: TCodeStatus);
    procedure GetKey(Sender: TObject; var Key: TKey);
    procedure GetCode(Sender: TObject; var Code: TCode);
    procedure CodeBtnClick(Sender: TObject);
    procedure RemoveBtnClick(Sender: TObject);
    procedure ChangeCode(Sender: TObject; Code: TCode);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.DFM}

procedure TForm1.CodeChecked(Sender: TObject; Status: TCodeStatus);
var
  S : string;
begin
  case Status of
    ogValidCode    : S := 'Valid Code - Days remaining: ' + IntToStr(OgDaysCode1.GetValue);
    ogInvalidCode  : S := 'Invalid release code';
    ogPastEndDate  : S := 'Date has expired';
    ogDayCountUsed : S := 'Zero days of use remaining';
    ogRunCountUsed : S := 'Usage count has expired';
    ogNetCountUsed : S := 'Net usage count exceeded';
    ogCodeExpired  : S := 'Code has expired';
  else
    S := 'Unknown error';
  end;
  StatusLbl.Caption := S;
end;

procedure TForm1.GetKey(Sender: TObject; var Key: TKey);
const
  {this applications' key}
  CKey : TKey = ($E5,$8F,$84,$D6,$92,$C9,$A4,$D8,$1A,$FA,$6F,$8D,$AB,$FC,$DF,$B4);
begin
  Key := CKey;
end;

procedure TForm1.GetCode(Sender: TObject; var Code: TCode);
var
  Ini : TIniFile;
  S   : string;
begin
  Ini := TIniFile.Create('ONGUARD.INI');
  try
    {get the days code from the ini file}
    S := Ini.ReadString('Codes', 'DaysCode', '');
    {convert to proper form}
    HexToBuffer(S, Code, SizeOf(Code));
    {set code label caption}
    CodeLbl.Caption := S;
  finally
    Ini.Free;
  end;
end;

procedure TForm1.CodeBtnClick(Sender: TObject);
var
  Ini  : TIniFile;
  Work : TCode;
  S    : string;
begin
  S := '';
  {ask for code}
  if InputQuery('Days Code Entry', 'Enter the code', S) then begin
    Ini := TIniFile.Create('ONGUARD.INI');
    try
      {store the date code in the ini file if it looks OK}
      if HexToBuffer(S, Work, SizeOf(Work)) then begin
        {save the value}
        Ini.WriteString('Codes', 'DaysCode', S);
        CodeLbl.Caption := S;

        {tell the code component to test the new code, reporting the results}
        OgDaysCode1.CheckCode(True);
      end;
    finally
      Ini.Free;
    end;
  end;
end;

procedure TForm1.RemoveBtnClick(Sender: TObject);
var
  IniFile : TIniFile;
begin
  {$IFDEF Win32}
  IniFile := TIniFile.Create('ONGUARD.INI');
  try
    IniFile.DeleteKey('Codes', 'DaysCode');
  finally
    IniFile.Free;
  end;
  {$ELSE}
  WritePrivateProfileString('Codes', 'DaysCode', nil, 'ONGUARD.INI');
  {$ENDIF}

  {tell the code component to test the new code, reporting the results}
  OgDaysCode1.CheckCode(True);
end;

procedure TForm1.ChangeCode(Sender: TObject; Code: TCode);
var
  Ini  : TIniFile;
  S    : string;
begin
  Ini := TIniFile.Create('ONGUARD.INI');
  try
    {store the days code in the ini file}
    S := BufferToHex(Code, SizeOf(Code));
    Ini.WriteString('Codes', 'DaysCode', S);
    CodeLbl.Caption := S;

    {tell the code component to test the new code, reporting the results}
    OgDaysCode1.CheckCode(True);
  finally
    Ini.Free;
  end;
end;

end.
