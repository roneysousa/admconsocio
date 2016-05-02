unit uFrmAutenticarDocCP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TFrmAutenticarDocCP = class(TForm)
    btnAutenticar: TBitBtn;
    btnFechar: TBitBtn;
    procedure btnFecharClick(Sender: TObject);
    procedure btnAutenticarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmAutenticarDocCP: TFrmAutenticarDocCP;
  M_NRSEQU : Integer;
  aTipo : String;

implementation

uses udmAdmDados;

{$R *.dfm}

procedure TFrmAutenticarDocCP.btnFecharClick(Sender: TObject);
begin
     Close;
end;

procedure TFrmAutenticarDocCP.btnAutenticarClick(Sender: TObject);
begin
    dmAdmDados.AutenticacaoDocContaPagar(M_NRSEQU, aTipo);
end;

end.
