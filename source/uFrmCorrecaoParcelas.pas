unit uFrmCorrecaoParcelas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGrids, StdCtrls, Buttons, DB;

type
  TfrmCorrecaoParcela = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    grdConsultar: TDBGrid;
    btnConfirmar: TBitBtn;
    BtSair: TBitBtn;
    dsModelos: TDataSource;
    procedure BtSairClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCorrecaoParcela: TfrmCorrecaoParcela;

implementation

{$R *.dfm}

procedure TfrmCorrecaoParcela.BtSairClick(Sender: TObject);
begin
      Close;
end;

end.
