unit uFrmAutenticarDoc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TfrmAutenticar = class(TForm)
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
  frmAutenticar: TfrmAutenticar;
  M_NRSEQU : Integer;

implementation

uses udmAdmDados;

{$R *.dfm}

procedure TfrmAutenticar.btnFecharClick(Sender: TObject);
begin
     Close;
end;

procedure TfrmAutenticar.btnAutenticarClick(Sender: TObject);
begin
     dmAdmDados.AutenticacaoDoc(M_NRSEQU);
end;

end.
