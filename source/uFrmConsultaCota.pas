unit uFrmConsultaCota;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmConsulta, FMTBcd, DBClient, Provider, DB, SqlExpr, Grids,
  DBGrids, StdCtrls, Buttons, ExtCtrls;

type
  TfrmConsCotas = class(TfrmConsulta)
    cdsConsultarCOT_NRVENDA: TIntegerField;
    cdsConsultarCOT_CDGRUPO: TIntegerField;
    cdsConsultarCOT_NRCOTA: TIntegerField;
    cdsConsultarCLI_NOME: TStringField;
    cdsConsultarCOT_CDCLIE: TIntegerField;
    cdsConsultarCOT_POSICAO: TStringField;
    procedure edtConsultarChange(Sender: TObject);
    procedure edtConsultarKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsCotas: TfrmConsCotas;
  M_CDGRUP : integer;

implementation

uses uFuncoes;

{$R *.dfm}

procedure TfrmConsCotas.edtConsultarChange(Sender: TObject);
begin
  inherited;
   //
   If not uFuncoes.Empty(edtConsultar.Text) AND (M_CDGRUP > 0) Then
    begin
        cdsConsultar.Close;
        with datasetConsultar do
        begin
            Active := False;
            CommandText := 'select C.COT_NRVENDA, C.COT_CDGRUPO, C.COT_NRCOTA, CL.CLI_NOME, C.COT_CDCLIE, C.COT_POSICAO from COTAS C ';
            CommandText := CommandText + ' INNER JOIN CLIENTES CL ON CL.CLI_CODIGO = C.COT_CDCLIE';
            CommandText := CommandText + ' Where (C.COT_CDGRUPO = :pCDGRUP) and (C.COT_NRCOTA = :pCOTA) order by CL.CLI_NOME';
            //CommandText := CommandText + ' Where (C.COT_CDGRUPO = :pCDGRUP) and (UPPER(CL.CLI_NOME) like :pNOME) order by CL.CLI_NOME';
            datasetConsultar.Params.ParamByName('pCDGRUP').AsInteger := M_CDGRUP;
            datasetConsultar.Params.ParamByName('pCOTA').AsInteger   := StrtoInt(edtConsultar.Text);
            //datasetConsultar.Params.ParamByName('pNOME').AsString   := edtConsultar.Text + '%';
            Active := True;
        end;
        cdsConsultar.FetchParams;
        cdsConsultar.Open;
    End
    Else
        cdsConsultar.Close;
end;

procedure TfrmConsCotas.edtConsultarKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
    if not( key in['0'..'9', #8, #13] ) then
    begin
      beep;
      key:=#0;
    end;
end;

end.
