unit Exdmodu2;

interface

uses
  SysUtils, WinTypes, WinProcs, Messages, Classes, Graphics, Controls,
  Forms, Dialogs, StdCtrls, Buttons;

type
  TSNEntryDlg = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    SNText: TEdit;
    CodeText: TEdit;
    OKBtn: TBitBtn;
    CancelBtn: TBitBtn;
    Label3: TLabel;
    Label4: TLabel;
    ModString: TEdit;
    procedure CancelBtnClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  SNEntryDlg: TSNEntryDlg;

implementation

{$R *.DFM}

uses
  OnGuard,
  OgUtil;


procedure TSNEntryDlg.CancelBtnClick(Sender: TObject);
begin
  Close;
end;

procedure TSNEntryDlg.FormCreate(Sender: TObject);
var
  LI : longint;
begin
  LI := GenerateMachineModifierPrim;
  ModString.Text := BufferToHex(LI, SizeOf(longint));
end;

end.
