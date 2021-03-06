unit uFrmPesquisaCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, Grids, DBGrids, FMTBcd, DB,
  DBClient, Provider, SqlExpr;

type
  TfrmPesClientes = class(TForm)
    Panel1: TPanel;
    lblConsultar: TLabel;
    edtConsultar: TEdit;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    sbProximo: TSpeedButton;
    sbUltimo: TSpeedButton;
    sbAnterior: TSpeedButton;
    sbPrimeiro: TSpeedButton;
    grdConsultar: TDBGrid;
    DBGrid1: TDBGrid;
    dsConsultar: TDataSource;
    datasetConsultar: TSQLDataSet;
    dspConsultar: TDataSetProvider;
    cdsConsultar: TClientDataSet;
    cdsConsultarCLI_CODIGO: TIntegerField;
    cdsConsultarCLI_NOME: TStringField;
    cdsConsultarCLI_CGC: TStringField;
    cdsConsultarCLI_CPF: TStringField;
    cdsConsultarCLI_NRFONE: TStringField;
    cdsConsultarCLI_NRPLACA: TStringField;
    btnConsultar: TBitBtn;
    procedure edtConsultarChange(Sender: TObject);
    procedure btnConsultarClick(Sender: TObject);
    procedure dsConsultarDataChange(Sender: TObject; Field: TField);
    procedure sbPrimeiroClick(Sender: TObject);
    procedure sbAnteriorClick(Sender: TObject);
    procedure sbProximoClick(Sender: TObject);
    procedure sbUltimoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edtConsultarKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edtConsultarKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPesClientes: TfrmPesClientes;

implementation

uses udmAdmDados, uFuncoes;

{$R *.dfm}

procedure TfrmPesClientes.edtConsultarChange(Sender: TObject);
begin
   If not uFuncoes.Empty(edtConsultar.Text) Then
    begin
        cdsConsultar.Close;
        with datasetConsultar do
        begin
            Active := False;
            CommandText := 'Select CL.CLI_CODIGO, CL.CLI_NOME, CL.CLI_CGC, CL.CLI_CPF, CL.CLI_NRFONE, CL.CLI_NRCELULAR, CL.CLI_NRPLACA from clientes CL';
            CommandText := CommandText + ' Where (UPPER(CL.CLI_NOME) like :pNOME)';
            CommandText := CommandText + 'order by CL.CLI_NOME ';
            datasetConsultar.Params.ParamByName('pNOME').AsString   := Copy(edtConsultar.Text,1,59) + '%';
            Active := True;
        end;
        cdsConsultar.FetchParams;
        cdsConsultar.Open;
    End
    Else
    begin
         dmAdmDados.cdsCotasCliente.Close;
         //
         cdsConsultar.Close;
    End;
end;

procedure TfrmPesClientes.btnConsultarClick(Sender: TObject);
begin
       Close;
end;

procedure TfrmPesClientes.dsConsultarDataChange(Sender: TObject;
  Field: TField);
begin
  sbPrimeiro.Enabled := (((Sender as TDataSource).DataSet.Active) and not (Sender as TDataSource).DataSet.IsEmpty) and not ((Sender as TDataSource).DataSet.Bof);
  sbAnterior.Enabled := sbPrimeiro.Enabled;
  sbUltimo.Enabled := (((Sender as TDataSource).DataSet.Active) and not (Sender as TDataSource).DataSet.IsEmpty) and not ((Sender as TDataSource).DataSet.Eof);
  sbProximo.Enabled := sbUltimo.Enabled;
  //
  if not (cdsConsultar.IsEmpty) Then
      dmAdmDados.Cotas_Cliente(cdsConsultarCLI_CODIGO.AsInteger);
end;

procedure TfrmPesClientes.sbPrimeiroClick(Sender: TObject);
begin
     If (cdsConsultar.Active ) Then
        dsConsultar.DataSet.First;
end;

procedure TfrmPesClientes.sbAnteriorClick(Sender: TObject);
begin
     If (cdsConsultar.Active ) Then
         dsConsultar.DataSet.Prior;
end;

procedure TfrmPesClientes.sbProximoClick(Sender: TObject);
begin
     If (cdsConsultar.Active ) Then
        dsConsultar.DataSet.Next;
end;

procedure TfrmPesClientes.sbUltimoClick(Sender: TObject);
begin
     If (cdsConsultar.Active ) Then
        dsConsultar.DataSet.Last;
end;

procedure TfrmPesClientes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
      dmAdmDados.cdsCotasCliente.Close; 
end;

procedure TfrmPesClientes.edtConsultarKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
   If (cdsConsultar.Active = True) Then
   Begin
     IF (KEY = VK_UP) then
          cdsConsultar.Prior;
     //
     IF (KEY = VK_DOWN) then
          cdsConsultar.Next;
   End;
end;

procedure TfrmPesClientes.edtConsultarKeyPress(Sender: TObject;
  var Key: Char);
begin
  If (key = #13) and not uFuncoes.Empty(edtConsultar.Text) Then
    begin
         Key := #0;
         If (btnConsultar.Enabled = True) Then
            btnConsultar.SetFocus;
    End;
end;

end.
