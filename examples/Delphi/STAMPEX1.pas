unit Stampex1;

interface

uses
  {$IFDEF Win32} Windows, {$ELSE} WinTypes, WinProcs, {$ENDIF}
  SysUtils, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, StdCtrls, Buttons,
  OgProExe;

type
  TfrmStamp = class(TForm)
    FileEd: TEdit;
    BrowseBtn: TBitBtn;
    StampBtn: TBitBtn;
    CloseBtn: TBitBtn;
    ClearBtn: TBitBtn;
    OpenDialog1: TOpenDialog;
    EraseMarkerCb: TCheckBox;
    StatusLbl: TLabel;
    procedure BrowseBtnClick(Sender: TObject);
    procedure StampBtnClick(Sender: TObject);
    procedure ClearBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FileEdChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmStamp: TfrmStamp;

implementation

{$R *.DFM}

procedure TfrmStamp.BrowseBtnClick(Sender: TObject);
begin
  OpenDialog1.FileName := FileEd.Text;
  if OpenDialog1.Execute then
    FileEd.Text := OpenDialog1.Filename;
end;

procedure TfrmStamp.StampBtnClick(Sender: TObject);
begin
  if FileEd.Text <> '' then
    if ProtectExe(FileEd.Text, EraseMarkerCb.Checked) then
      StatusLbl.Caption := 'File marked'
    else
      StatusLbl.Caption := 'Error while attemping to mark file';
end;

procedure TfrmStamp.ClearBtnClick(Sender: TObject);
begin
  if FileEd.Text <> '' then
    if UnprotectExe(FileEd.Text) then
      StatusLbl.Caption := 'EXE file signature record reset'
    else
      StatusLbl.Caption := 'Error while attemping to reset signature record';
end;

procedure TfrmStamp.FormCreate(Sender: TObject);
begin
  StatusLbl.Caption := '';
  FileEdChange(Sender);
end;

procedure TfrmStamp.FileEdChange(Sender: TObject);
begin
  StampBtn.Enabled := FileExists(FileEd.Text);
  ClearBtn.Enabled := FileExists(FileEd.Text);
  if FileExists(FileEd.Text) then
    StatusLbl.Caption := 'Valid filename'
  else
    StatusLbl.Caption := 'Invalid filename';
end;

end.
