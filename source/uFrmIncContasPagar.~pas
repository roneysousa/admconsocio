unit uFrmIncContasPagar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmPadraoIncContas, Menus, DB, Grids, DBGrids, CurrEdit,
  StdCtrls, Mask, ToolEdit, Buttons, ExtCtrls;

type
  TFrmIncContasPagar = class(TFrmPadraoIncContas)
    Label1: TLabel;
    Label2: TLabel;
    edtNumNota: TEdit;
    edtSerie: TEdit;
    procedure BtAdicionarClick(Sender: TObject);
    procedure BtGravarClick(Sender: TObject);
    procedure edtNumNotaKeyPress(Sender: TObject; var Key: Char);
    procedure edtSerieKeyPress(Sender: TObject; var Key: Char);
    procedure edtCodigoExit(Sender: TObject);
    procedure edtNumNotaExit(Sender: TObject);
    procedure BtCancelarClick(Sender: TObject);
    procedure spLocalizarClick(Sender: TObject);
    procedure edtSerieExit(Sender: TObject);
  private
    { Private declarations }
    procedure  LimparCampo1;
  public
    { Public declarations }
  end;

var
  FrmIncContasPagar: TFrmIncContasPagar;

implementation

uses udmAdmDados, uFuncoes, uFrmAdmMain, uFrmLocFornecedor;

{$R *.dfm}

procedure TFrmIncContasPagar.BtAdicionarClick(Sender: TObject);
begin
  inherited;
     if (pnlCentral.Enabled) then
     begin
          LimparParcelas;
          edtDTMOVI.Text := DatetoStr(Date());
          edtCodigo.SetFocus;
     End;
end;

procedure TFrmIncContasPagar.BtGravarClick(Sender: TObject);
Var
   iNatureza, iUsuario : Integer;
   aDescricao, aNumContaParcela : String;
begin
     If uFuncoes.Empty(edtCodigo.Text) Then
       Begin
           Application.MessageBox('Digite o código do cliente.','ATENÇÃO',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           edtCodigo.SetFocus;
           Exit;
       End;
      //
     If uFuncoes.Empty(ufuncoes.RemoveChar(edtDTMOVI.Text)) Then
       Begin
           Application.MessageBox('Digite a data de emissão.','ATENÇÃO',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           edtDTMOVI.SetFocus;
           Exit;
       End;
       //
     If uFuncoes.Empty(edtNumNota.Text) Then
       Begin
           Application.MessageBox('Digite o número da nota.','ATENÇÃO',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           edtNumNota.SetFocus;
           Exit;
       End;
      //
     If uFuncoes.Empty(edtSerie.Text) Then
       Begin
           Application.MessageBox('Digite o número da série da nota.','ATENÇÃO',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           edtSerie.SetFocus;
           Exit;
       End;
      //
     If uFuncoes.Empty(mmoDescricao.Lines.Text) Then
       Begin
           Application.MessageBox('Digite uma descrição.','ATENÇÃO',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           mmoDescricao.SetFocus;
           Exit;
       End;
      //
     If uFuncoes.Empty(cmbNaturezas.Text) Then
       Begin
           Application.MessageBox('Selecione uma natureza.','ATENÇÃO',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           cmbNaturezas.SetFocus;
           Exit;
       End;
      //
     If (dsParcelas.DataSet.IsEmpty) Then
       Begin
           Application.MessageBox('Lançe a(s) parcela(s).','ATENÇÃO',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           edtQTPARC.SetFocus;
           Exit;
       End;
      //
      iNatureza := dmAdmDados.GetCodNatureza(cmbNaturezas.Text);
      iUsuario  := StrtoInt(uFrmAdmMain.M_CDUSUA);
      aNumContaParcela := 'NT: '+edtNumNota.Text+' | Serie: '+edtSerie.Text+ ' | Fornec.: '+edtCodigo.Text + ' | PC: '+edtQTPARC.Text;
      //
     dmAdmDados.Start;
     try
          {AddContaPagarFornecedor(iLoja, iFornecedor,
          iNatureza, iQuantParcelas, iVenda, iUsuario: Integer;
          aDtEmissao: TDatetime; aNumNota, aSerie, aObservacao: String;
          aCDSParcelas: TClientDataSet}
          If (dmAdmDados.AddContaPagarFornecedor(1, StrtoInt(edtCodigo.Text), iNatureza,
                     StrtoInt(edtQTPARC.text), iUsuario, edtDTMOVI.Date, edtNumNota.Text, edtSerie.Text,
                     mmoDescricao.Text, dmAdmDados.cdsParcelaContas)) Then
          begin
               dmAdmDados.Comit(udmAdmDados.Transc);
               //
               aDescricao := 'Incluir CP : '+  aNumContaParcela;

               dmAdmDados.SetTarefa_Usuario(aDescricao);
               dmAdmDados.AdicionarAcaoUsuario(StrtoInt(uFrmAdmMain.M_CDUSUA) , udmAdmDados.aDataMovimento, udmAdmDados.aAcaoUsuario);
               //
               Application.MessageBox(PChar(MSG_OK),
                  'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
               //
               inherited;
               LimparParcelas;
               LimparCampo1;
          End;
     Except
           dmAdmDados.Rollback;
     End;
end;

procedure TFrmIncContasPagar.edtNumNotaKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
 If not( key in['0'..'9',#8, #13] ) then
       key:=#0;
end;

procedure TFrmIncContasPagar.edtSerieKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
   If not( key in['0'..'9',#8, #13] ) then
       key:=#0;
end;

procedure TFrmIncContasPagar.edtCodigoExit(Sender: TObject);
Var
   iCod : Integer;
begin
  inherited;
      if (BtGravar.Enabled)
        and (not uFuncoes.Empty(edtCodigo.Text)) Then
         begin
              ICod := StrtoInt(edtCodigo.Text);
              If not dmAdmDados.ProcurarValor(Inttostr(iCod),'FOR_CODIGO','FORNECEDORES') Then
                begin
                     Application.MessageBox(PChar('Código de cliente não cadastro.'),
                             'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                     edtCodigo.SetFocus;
                     edtCodigo.Clear;
                     edtDescricao.Clear;
                     Exit;
                End
                Else
                begin
                     edtCodigo.Text    := uFuncoes.StrZero(edtCodigo.Text,7);
                     edtDescricao.Text := dmAdmDados.GetNomeFornecedor(StrtoInt(edtCodigo.Text));
                End;

         End;
end;

procedure TFrmIncContasPagar.edtNumNotaExit(Sender: TObject);
begin
  inherited;
       if not ufuncoes.Empty(edtNumNota.Text) Then
          edtNumNota.Text := uFuncoes.StrZero(edtNumNota.Text,10);
end;

procedure TFrmIncContasPagar.LimparCampo1;
begin
    edtNumNota.Clear;
    edtSerie.Clear;
end;

procedure TFrmIncContasPagar.BtCancelarClick(Sender: TObject);
begin
  inherited;
         LimparCampo1;
end;

procedure TFrmIncContasPagar.spLocalizarClick(Sender: TObject);
begin
  inherited;
       edtCodigo.SetFocus;
       Application.CreateForm(TFrmConsFornecedores, FrmConsFornecedores);
       try
           If (FrmConsFornecedores.ShowModal = mrOk) Then
             if not (FrmConsFornecedores.cdsConsultar.IsEmpty) Then
              begin
                  edtCodigo.Text := uFuncoes.StrZero(FrmConsFornecedores.cdsConsultarFOR_CODIGO.AsString,7);
                  edtDTMOVI.SetFocus;
              End;
       Finally
           FrmConsFornecedores.Free;
       End;
end;

procedure TFrmIncContasPagar.edtSerieExit(Sender: TObject);
begin
  inherited;
      if not ufuncoes.Empty(edtCodigo.Text) and not ufuncoes.Empty(edtNumNota.Text)
        and not ufuncoes.Empty(edtSerie.Text) Then
      begin
           if (dmAdmDados.GetCPNumeroSerieNota(StrtoInt(edtCodigo.Text),
                 edtNumNota.Text, edtSerie.Text)) Then
           begin
                Application.MessageBox(PChar('Número da nota já cadastrado para este fornecedor.'),
                    'ATENÇÃO', MB_OK+MB_ICONEXCLAMATION +MB_APPLMODAL);
                edtSerie.SetFocus;
                Exit;
           End;
      End;
end;

end.
