unit frmSelecionaCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, DB, Grids, DBGrids;

type
  TfrmSelCliente = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    BitBtn1: TBitBtn;
    grdConsultar: TDBGrid;
    dsDados: TDataSource;
    procedure grdConsultarDblClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmSelCliente: TfrmSelCliente;

implementation

uses uDmPesquisas;

{$R *.dfm}

procedure TfrmSelCliente.grdConsultarDblClick(Sender: TObject);
begin  
       Close;
end;

procedure TfrmSelCliente.BitBtn1Click(Sender: TObject);
begin
     if not (dmPesquisas.cdsNossoNumero.IsEmpty) Then
         ModalResult := mrOk
     Else
         ModalResult := mrCancel; 
end;

end.
