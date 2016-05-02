unit uFrmSelClientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Buttons, Grids, DBGrids, ExtCtrls;

type
  TfrmSelClientes2 = class(TForm)
    Panel1: TPanel;
    grdConsultar: TDBGrid;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    dsDados: TDataSource;
    procedure BitBtn1Click(Sender: TObject);
    procedure grdConsultarDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSelClientes2: TfrmSelClientes2;

implementation

uses uDmPesquisas;

{$R *.dfm}

procedure TfrmSelClientes2.BitBtn1Click(Sender: TObject);
begin
     if not (dmPesquisas.cdsNossoNumero.IsEmpty) Then
         ModalResult := mrOk
     Else
         ModalResult := mrCancel;
end;

procedure TfrmSelClientes2.grdConsultarDblClick(Sender: TObject);
begin
     Close;
end;

end.
