unit uFrmLocClientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmLocPadrao, FMTBcd, DBClient, Provider, DB, SqlExpr, Grids,
  DBGrids, Buttons, StdCtrls, ExtCtrls;

type
  TfrmLocCliente = class(TfrmLocalizaPadrao)
    cdsConsultarCLI_CODIGO: TIntegerField;
    cdsConsultarCLI_NOME: TStringField;
    cdsConsultarCLI_CPF: TStringField;
    cdsConsultarCLI_NRFONE: TStringField;
    cdsConsultarCLI_CGC: TStringField;
    procedure edtConsultarChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLocCliente: TfrmLocCliente;

implementation

uses uFuncoes;

{$R *.dfm}

procedure TfrmLocCliente.edtConsultarChange(Sender: TObject);
begin
  inherited;
   If not uFuncoes.Empty(edtConsultar.Text) Then
    begin
        cdsConsultar.Close;
        with datasetConsultar do
        begin
            Active := False;
            CommandText := 'Select CLI_CODIGO, CLI_NOME, CLI_CGC, CLI_CPF, CLI_NRFONE from clientes ';
            case rgConsultar.ItemIndex of
                0: CommandText := CommandText + ' Where (CLI_CODIGO = :pCODIGO)';
                1: CommandText := CommandText + ' Where (UPPER(CLI_NOME) like :pNOME)';
                2: CommandText := CommandText + ' Where (CLI_CGC = :pCGC)';
                3: CommandText := CommandText + ' Where (CLI_CPF = :pCPF)';
                4: CommandText := CommandText + ' Where (CLI_NRFONE = :pFONE)';
            end;
            CommandText := CommandText + ' order by CLI_NOME';
            case rgConsultar.ItemIndex of
                0: datasetConsultar.Params.ParamByName('pCODIGO').AsString := edtConsultar.Text;
                1: datasetConsultar.Params.ParamByName('pNOME').AsString   := edtConsultar.Text + '%';
                2: datasetConsultar.Params.ParamByName('pCGC').AsString := edtConsultar.Text;
                3: datasetConsultar.Params.ParamByName('pCPF').AsString := edtConsultar.Text;
                4: datasetConsultar.Params.ParamByName('pFONE').AsString := edtConsultar.Text;
            end;
            Active := True;
        end;
        cdsConsultar.FetchParams;
        cdsConsultar.Open;
   End;
end;

end.
