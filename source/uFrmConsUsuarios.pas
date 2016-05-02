unit uFrmConsUsuarios;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmConsulta, FMTBcd, DBClient, Provider, DB, SqlExpr, Grids,
  DBGrids, StdCtrls, Buttons, ExtCtrls;

type
  TfrmConsUsuarios = class(TfrmConsulta)
    cdsConsultarSEN_CODIGO: TIntegerField;
    cdsConsultarSEN_NOME: TStringField;
    procedure edtConsultarChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsUsuarios: TfrmConsUsuarios;

implementation

uses udmAdmDados, uFuncoes;

{$R *.dfm}

procedure TfrmConsUsuarios.edtConsultarChange(Sender: TObject);
begin
  inherited;
   If not uFuncoes.Empty(edtConsultar.text) Then
    begin
        cdsConsultar.Close;
        with datasetConsultar do
        begin
            Active := False;
            CommandText := 'select SEN_CODIGO, SEN_NOME from USUARIOS ';
            CommandText := CommandText + ' Where (SEN_NOME like :pNOME) order by SEN_NOME';
            //
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
