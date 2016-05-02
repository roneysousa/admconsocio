unit uFrmEditaSaldo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ToolEdit, CurrEdit, ExtCtrls, Buttons;

type
  TfrmEditaSaldo = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    edtSaldo: TCurrencyEdit;
    btnOK: TBitBtn;
    BitBtn2: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure edtSaldoKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmEditaSaldo: TfrmEditaSaldo;

implementation

uses uFuncoes;

{$R *.dfm}

procedure TfrmEditaSaldo.FormShow(Sender: TObject);
begin
     edtSaldo.SetFocus;
end;

procedure TfrmEditaSaldo.btnOKClick(Sender: TObject);
begin
      if not uFuncoes.Empty(edtSaldo.Text) and (edtSaldo.Value > 0) Then
           ModalResult := mrOk;
end;

procedure TfrmEditaSaldo.edtSaldoKeyPress(Sender: TObject; var Key: Char);
begin
     if (key = #13) and (edtSaldo.Value > 0)  Then
       begin
           key := #0;
           if (btnOK.Enabled) Then
              btnOK.SetFocus;
       End;
end;

end.
