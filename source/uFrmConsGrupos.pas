unit uFrmConsGrupos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmConsulta, FMTBcd, DBClient, Provider, DB, SqlExpr, Grids,
  DBGrids, StdCtrls, Buttons, ExtCtrls;

type
  TfrmConsGrupos = class(TfrmConsulta)
    cdsConsultarGRU_CODIGO: TIntegerField;
    cdsConsultarGRU_DESCRICAO: TStringField;
    cdsConsultarGRU_NRMESES: TIntegerField;
    procedure edtGrupoChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsGrupos: TfrmConsGrupos;

implementation

uses uFuncoes;

{$R *.dfm}

procedure TfrmConsGrupos.edtGrupoChange(Sender: TObject);
begin
  inherited;
   If not uFuncoes.Empty(edtConsultar.Text) Then
    begin
        cdsConsultar.Close;
        with datasetConsultar do
        begin
            Active := False;
            CommandText := 'Select GRU_CODIGO, GRU_DESCRICAO, GRU_NRMESES from grupos ';
            CommandText := CommandText + ' Where (UPPER(GRU_DESCRICAO) like :pNOME)';
            CommandText := CommandText + ' order by GRU_DESCRICAO';
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
