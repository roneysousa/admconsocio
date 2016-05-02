unit uFrmMovDesalienacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadastro2, StdCtrls, Buttons, ExtCtrls, ComCtrls, Grids,
  DBGrids, DBCtrls,  Mask, ToolEdit, CurrEdit, DB, RXDBCtrl, ppComm,
  ppRelatv, ppProd, ppClass, ppReport, ppDB, ppDBPipe, ppBands, ppCache,
  ppCtrls, ppPrnabl;

type
  TfrmMovDesalienacao = class(TfrmCad)
    Panel1: TPanel;
    Panel2: TPanel;
    Label3: TLabel;
    dbeDescricao: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    cbxGrupo: TCheckBox;
    Label6: TLabel;
    edtCliente: TEdit;
    GroupBox2: TGroupBox;
    cbxContemp: TCheckBox;
    cbxAlienado: TCheckBox;
    cbxDesalienado: TCheckBox;
    Label13: TLabel;
    Label7: TLabel;
    Label12: TLabel;
    edtData: TDateEdit;
    Label8: TLabel;
    edtMarca: TEdit;
    Label9: TLabel;
    edtModelo: TEdit;
    Label10: TLabel;
    edtAnoFabric: TEdit;
    Label11: TLabel;
    edtAnoModelo: TEdit;
    Label14: TLabel;
    edtChassi: TEdit;
    edtDataLiberacao: TDateEdit;
    Label15: TLabel;
    Panel4: TPanel;
    btnDesalienacao: TBitBtn;
    btnCancelar: TBitBtn;
    btnEmitir: TBitBtn;
    BtSair: TBitBtn;
    dsdados: TDataSource;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBDateEdit1: TDBDateEdit;
    rbSituacao: TDBRadioGroup;
    DBRadioGroup1: TDBRadioGroup;
    Label2: TLabel;
    DBEdit4: TDBEdit;
    ppRepEmitir: TppReport;
    ppDBPipeline1: TppDBPipeline;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppDBText1: TppDBText;
    lblNome: TppLabel;
    lblCPF: TppLabel;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppLabel1: TppLabel;
    ppDBText5: TppDBText;
    lblData: TppLabel;
    procedure btnConsultarClick(Sender: TObject);
    procedure BtSairClick(Sender: TObject);
    procedure edtCotaChange(Sender: TObject);
    procedure btnDesalienacaoClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnEmitirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    novo, alterar, apagar : String;
    procedure Limpar;
    procedure Mostra;
  public
    { Public declarations }
  end;

var
  frmMovDesalienacao: TfrmMovDesalienacao;

implementation

uses uDmPesquisas, uFuncoes, udmAdmDados, uFrmAdmMain;

{$R *.dfm}

procedure TfrmMovDesalienacao.btnConsultarClick(Sender: TObject);
Var
   M_CDGRUP, M_NRCOTA : Integer;
begin
  inherited;
    If uFuncoes.Empty(edtGrupo.Text) Then
      begin
           edtGrupo.SetFocus;
           raise Exception.Create('Digite o código do grupo');
      End;
    //
    If uFuncoes.Empty(edtCota.Text) Then
      begin
           edtCota.SetFocus;
           raise Exception.Create('Digite a cota do grupo');
      End;
    //
    If not uFuncoes.Empty(edtGrupo.Text) and not uFuncoes.Empty(edtCota.Text) Then
      begin
           Limpar;
           M_CDGRUP := StrtoInt(edtGrupo.Text);
           M_NRCOTA := StrtoInt(edtCota.Text);
           //
           if (dmPesquisas.GetClienteAlienado(M_CDGRUP, M_NRCOTA)) Then
           begin
                Mostra;
           End
           Else
           begin
               dmPesquisas.cdsClienteAlienado.Close;
               //
               raise Exception.Create('Cota inválida para desalienação.');
           End;
      End;
end;

procedure TfrmMovDesalienacao.Limpar;
begin
    dbeDescricao.Clear;
    edtCliente.Clear;
    edtDataLiberacao.Clear;
    edtData.Clear;
    edtMarca.Clear;
    edtModelo.Clear;
    edtAnoFabric.Clear;
    edtAnoModelo.Clear;
    edtChassi.Clear;
    //
    cbxContemp.Checked     := False;
    cbxAlienado.Checked    := False;   
    cbxDesalienado.Checked := False;
    //
    dmPesquisas.cdsClienteAlienado.Close;
end;

procedure TfrmMovDesalienacao.BtSairClick(Sender: TObject);
begin
  inherited;
      Close;
end;

procedure TfrmMovDesalienacao.edtCotaChange(Sender: TObject);
begin
  inherited;
      if uFuncoes.Empty(edtCota.Text) Then
          Limpar;
end;

procedure TfrmMovDesalienacao.Mostra;
begin
     dbeDescricao.Text := dmAdmDados.GetNomeGrupo(dmPesquisas.cdsClienteAlienadoCOT_CDGRUPO.AsInteger);
     edtCliente.Text   := dmAdmDados.GetNomeCliente(dmPesquisas.cdsClienteAlienadoCOT_CDCLIE.AsInteger);
     //
     edtDataLiberacao.Text := dmPesquisas.cdsClienteAlienadoCOT_DATA_LIB.AsString;
     edtData.Text          := dmPesquisas.cdsClienteAlienadoCOT_DTALIENACAO.AsString;
     edtMarca.Text         := dmPesquisas.cdsClienteAlienadoCOT_MARCA_VEIC.AsString;
     edtModelo.Text        := dmPesquisas.cdsClienteAlienadoCOT_MODELO_VEIC.AsString;
     edtAnoFabric.Text     := dmPesquisas.cdsClienteAlienadoCOT_ANO_FAB.AsString;
     edtAnoModelo.Text     := dmPesquisas.cdsClienteAlienadoCOT_ANO_MOD.AsString;
     edtChassi.Text        := dmPesquisas.cdsClienteAlienadoCOT_CHASSI.AsString;
     //
     cbxGrupo.Checked := dmAdmDados.GetVerificaGrupoIniciou(dmPesquisas.cdsClienteAlienadoCOT_CDGRUPO.AsInteger);
     // Alienado
     if (dmPesquisas.cdsClienteAlienadoCOT_ALIENADO.AsString = 'S' ) Then
         cbxAlienado.Checked := True
     Else
         cbxAlienado.Checked := False;
     // contemplado
     if (dmPesquisas.cdsClienteAlienadoCOT_FLCONTEMPLADO.AsString = 'S' ) Then
         cbxContemp.Checked := True
     Else
         cbxContemp.Checked := False;
     // desalienado
     if (dmPesquisas.cdsClienteAlienadoCOT_DESALIENADO.AsString = 'S' ) Then
     begin
         cbxDesalienado.Checked := True;
         btnCancelar.Enabled    := cbxDesalienado.Checked;
         btnDesalienacao.Enabled := False;
     End
     Else
     begin
         cbxDesalienado.Checked := False;
         btnCancelar.Enabled    := cbxDesalienado.Checked;
         btnDesalienacao.Enabled := True;
     End;
end;

procedure TfrmMovDesalienacao.btnDesalienacaoClick(Sender: TObject);
Var
    W_NRVEND, W_CDGRUP, W_NRCOTA : Integer;
begin
  inherited;
    If not uFuncoes.Empty(edtGrupo.Text) and not uFuncoes.Empty(edtCota.Text)
     and not (dmPesquisas.cdsClienteAlienado.IsEmpty) Then
      begin
           If Application.MessageBox('Confirma o desalienação?',
               'ATENÇÃO', MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2+MB_APPLMODAL) = idYes then
           begin
                W_CDGRUP := StrtoInt(edtGrupo.Text);
                W_NRCOTA := StrtoInt(edtCota.Text);
                // Nº da venda
                W_NRVEND := dmPesquisas.cdsClienteAlienadoCOT_NRVENDA.AsInteger;
                //
                If (dmAdmDados.SetDesalienacaoCota(W_NRVEND, 'S')) Then
                 begin
                    //
                    if (dmPesquisas.GetClienteAlienado(W_CDGRUP, W_NRCOTA)) Then
                        Mostra;
                 End
                 Else
                     raise Exception.Create('Erro ao tenta realizar desalienação da cota.');
           End;
      End;
end;

procedure TfrmMovDesalienacao.btnCancelarClick(Sender: TObject);
Var
    W_NRVEND, W_CDGRUP, W_NRCOTA : Integer;
begin
  inherited;
    If not uFuncoes.Empty(edtGrupo.Text) and not uFuncoes.Empty(edtCota.Text)
    and not (dmPesquisas.cdsClienteAlienado.IsEmpty) Then
      begin
         If Application.MessageBox('Confirma cancelamento de desalienação?',
             'ATENÇÃO', MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2+MB_APPLMODAL) = idYes then
         begin
                W_CDGRUP := StrtoInt(edtGrupo.Text);
                W_NRCOTA := StrtoInt(edtCota.Text);
                // Nº da venda
                W_NRVEND := dmPesquisas.cdsClienteAlienadoCOT_NRVENDA.AsInteger;
                //
                If (dmAdmDados.SetDesalienacaoCota(W_NRVEND, 'N')) Then
                 begin
                    //
                    if (dmPesquisas.GetClienteAlienado(W_CDGRUP, W_NRCOTA)) Then
                        Mostra;
                 End
                 Else
                     raise Exception.Create('Erro ao tenta realizar desalienação da cota.');
         End;
      End;

end;

procedure TfrmMovDesalienacao.btnEmitirClick(Sender: TObject);
Var
    W_CDCLIE, W_CIDADE, W_UF, W_DTLIBE : String;
begin
  inherited;
    If not uFuncoes.Empty(edtGrupo.Text) and not uFuncoes.Empty(edtCota.Text)
     and not (dmPesquisas.cdsClienteAlienado.IsEmpty) Then
      begin
           W_CDCLIE := dmPesquisas.cdsClienteAlienadoCOT_CDCLIE.AsString;
           W_DTLIBE := dmPesquisas.cdsClienteAlienadoCOT_DATA_LIB.AsString;
           //
           If uFuncoes.Empty(W_DTLIBE) Then
               W_DTLIBE := DatetoStr(Date);
           //
           uFuncoes.RefreshCDS(dmAdmDados.cdsConfig);
           uFuncoes.FilterCDS(dmAdmDados.cdsClientes, fsInteger, W_CDCLIE);
           //
           W_CIDADE := dmAdmDados.cdsConfigCFG_CIDADE.AsString;
           W_UF     := dmAdmDados.cdsConfigCFG_UF.AsString;
           //
           With ppRepEmitir do
            begin
                 lblNome.Caption := dmAdmDados.cdsClientesCLI_NOME.AsString;
                 lblCPF.Caption  := dmAdmDados.cdsClientesCLI_CPF.AsString;
                 lblData.Caption := W_CIDADE + ' ('+W_UF+'), '+uFuncoes.DataExtenso(StrtoDate(W_DTLIBE));
                 //
                 PrintReport;
            End;
      End;
end;

procedure TfrmMovDesalienacao.FormCreate(Sender: TObject);
begin
  inherited;
   If not (uFrmAdmMain.admin) Then
   begin
     novo    := uFrmAdmMain.aNovo;
     alterar := uFrmAdmMain.aAlterar;
     apagar  := uFrmAdmMain.aApagar;
     //
     If Empty(novo) or Empty(alterar) or Empty(apagar) Then
     begin
           dmAdmDados.Verificar_Direito_Acesso(
            Strtoint(uFrmAdmMain.M_CDUSUA), dmAdmDados.GetCodMenu('Liberação de Bem (Desalienação)'));
           //
           novo    := uFrmAdmMain.aNovo;
           alterar := uFrmAdmMain.aAlterar;
           apagar  := uFrmAdmMain.aApagar;
           //
     End;
     //
     frmMain.Limpar_Acessos;
     //
     btnDesalienacao.Visible  := (novo = 'S');
     btnCancelar.Visible      := (alterar = 'S');
     btnEmitir.Visible        := btnDesalienacao.Visible;
     //BtExcluir.Visible   := (apagar = 'S');
     //
   End;
end;

end.
