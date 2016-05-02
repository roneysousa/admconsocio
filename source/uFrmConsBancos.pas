unit uFrmConsBancos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmConsulta, FMTBcd, DBClient, Provider, DB, SqlExpr, Grids,
  DBGrids, StdCtrls, Buttons, ExtCtrls;

type
  TfrmConsBancos = class(TfrmConsulta)
    cdsConsultarBAN_CODIGO: TIntegerField;
    cdsConsultarBAN_NOME: TStringField;
    cdsConsultarBAN_NRBANC: TIntegerField;
    procedure edtConsultarChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsBancos: TfrmConsBancos;

implementation

uses uFuncoes;

{$R *.dfm}

procedure TfrmConsBancos.edtConsultarChange(Sender: TObject);
begin
  inherited;
   If not uFuncoes.Empty(edtConsultar.Text) Then
    begin
        cdsConsultar.Close;
        with datasetConsultar do
        begin
            Active := False;
            CommandText := 'Select BAN_CODIGO, BAN_NOME, BAN_NRBANC from BANCOS ';
            CommandText := CommandText + ' Where (UPPER(BAN_NOME) like :pNOME)';
            CommandText := CommandText + ' order by BAN_NOME';
            datasetConsultar.Params.ParamByName('pNOME').AsString   := edtConsultar.Text + '%';
            Active := True;
        end;
        cdsConsultar.FetchParams;
        cdsConsultar.Open;
    End
    Else
        cdsConsultar.Close;
end;

end.
