unit uFrmLocGrupos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmLocPadrao, FMTBcd, DBClient, Provider, DB, SqlExpr, Grids,
  DBGrids, Buttons, StdCtrls, ExtCtrls;

type
  TfrmLocGrupos = class(TfrmLocalizaPadrao)
    cdsConsultarGRU_CODIGO: TIntegerField;
    cdsConsultarGRU_DESCRICAO: TStringField;
    procedure edtConsultarChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLocGrupos: TfrmLocGrupos;

implementation

uses uFuncoes;

{$R *.dfm}

procedure TfrmLocGrupos.edtConsultarChange(Sender: TObject);
begin
  inherited;
   If not uFuncoes.Empty(edtConsultar.Text) Then
    begin
        cdsConsultar.Close;
        with datasetConsultar do
        begin
            Active := False;
            CommandText := 'Select GRU_CODIGO, GRU_DESCRICAO from grupos ';
            case rgConsultar.ItemIndex of
                0: CommandText := CommandText + ' Where (GRU_CODIGO = :pCODIGO)';
                1: CommandText := CommandText + ' Where (UPPER(GRU_DESCRICAO) like :pNOME)';
            end;
            CommandText := CommandText + ' order by GRU_DESCRICAO';
            case rgConsultar.ItemIndex of
                0: datasetConsultar.Params.ParamByName('pCODIGO').AsString := edtConsultar.Text;
                1: datasetConsultar.Params.ParamByName('pNOME').AsString   := edtConsultar.Text + '%';
            end;
            Active := True;
        end;
        cdsConsultar.FetchParams;
        cdsConsultar.Open;
   End;

end;

end.
