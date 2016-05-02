unit uFrmLocFornecedor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmLocalizar, FMTBcd, DB, DBClient, Provider, SqlExpr, Grids,
  DBGrids, StdCtrls, Buttons, ExtCtrls;

type
  TFrmConsFornecedores = class(TfrmConsultas)
    cdsConsultarFOR_CODIGO: TIntegerField;
    cdsConsultarFOR_FANTASIA: TStringField;
    cdsConsultarFOR_RAZAO: TStringField;
    procedure edtConsultarChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConsFornecedores: TFrmConsFornecedores;

implementation

uses uFuncoes, udmAdmDados;

{$R *.dfm}

procedure TFrmConsFornecedores.edtConsultarChange(Sender: TObject);
begin
  inherited;
   If not uFuncoes.Empty(edtConsultar.Text) Then
    begin
        cdsConsultar.Close;
        with datasetConsultar do
        begin
            Active := False;
            Params[0].AsString   := Copy(edtConsultar.Text,1,49) + '%';
            Active := True;
        end;
        cdsConsultar.FetchParams;
        cdsConsultar.Open;
    End
    Else
         cdsConsultar.Close;
end;

end.
