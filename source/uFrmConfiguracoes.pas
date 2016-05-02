unit uFrmConfiguracoes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, ComCtrls, DBCtrls, DB, Mask;

type
  TfrmConfig = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    pnlBotoes: TPanel;
    BtEditar: TBitBtn;
    BtGravar: TBitBtn;
    BtCancelar: TBitBtn;
    BtSair: TBitBtn;
    Label1: TLabel;
    dsConfig: TDataSource;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label2: TLabel;
    dbeNRCNPJ: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    cmbUF: TDBComboBox;
    Label7: TLabel;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    dbeEmpresa: TDBEdit;
    TabSheet2: TTabSheet;
    Label16: TLabel;
    DBEdit12: TDBEdit;
    Label17: TLabel;
    DBEdit13: TDBEdit;
    Label19: TLabel;
    DBEdit15: TDBEdit;
    Label9: TLabel;
    DBEdit1: TDBEdit;
    Label10: TLabel;
    Label11: TLabel;
    DBEdit2: TDBEdit;
    TabSheet3: TTabSheet;
    Label12: TLabel;
    DBEdit8: TDBEdit;
    Label13: TLabel;
    DBEdit9: TDBEdit;
    Label14: TLabel;
    DBEdit10: TDBEdit;
    Label15: TLabel;
    DBMemo2: TDBMemo;
    DBMemo3: TDBMemo;
    Label18: TLabel;
    DBEdit11: TDBEdit;
    Label20: TLabel;
    DBEdit14: TDBEdit;
    Label21: TLabel;
    DBEdit16: TDBEdit;
    Label22: TLabel;
    DBEdit17: TDBEdit;
    Label23: TLabel;
    DBEdit18: TDBEdit;
    Label24: TLabel;
    DBEdit19: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure BtSairClick(Sender: TObject);
    procedure BtEditarClick(Sender: TObject);
    procedure BtCancelarClick(Sender: TObject);
    procedure BtGravarClick(Sender: TObject);
    procedure dbeNRCNPJExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    novo, alterar, apagar : String;
    procedure tratabotoes;
  public
    { Public declarations }
  end;

var
  frmConfig: TfrmConfig;

implementation

uses udmAdmDados, uFuncoes, uFrmAdmMain;

{$R *.dfm}

procedure TfrmConfig.FormShow(Sender: TObject);
begin
     uFuncoes.RefreshCDS(dmAdmDados.cdsConfig);
     //
     PageControl1.ActivePageIndex := 0; 
end;

procedure TfrmConfig.BtSairClick(Sender: TObject);
begin
      Close;
end;

procedure TfrmConfig.tratabotoes;
begin
   BtEditar.Enabled    := not BtEditar.Enabled;
   //
   BtCancelar.Enabled  := not BtCancelar.Enabled;
   BtGravar.Enabled    := not BtGravar.Enabled;
   BtSair.Enabled      := not BtSair.Enabled;
end;

procedure TfrmConfig.BtEditarClick(Sender: TObject);
begin
     tratabotoes;
     dmAdmDados.cdsConfig.Edit;
     PageControl1.ActivePageIndex := 0; 
     dbeEmpresa.SetFocus;   
end;

procedure TfrmConfig.BtCancelarClick(Sender: TObject);
begin
     tratabotoes;
     dmAdmDados.cdsConfig.Cancel;
end;

procedure TfrmConfig.BtGravarClick(Sender: TObject);
begin
     If uFuncoes.Empty(dbeEmpresa.Text) Then
       Begin
           Application.MessageBox('Digite o nome da empresa.','ATENÇÃO',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
           dbeEmpresa.SetFocus;
           Exit;
       End;
     //
     tratabotoes;
      try
          //
          dmAdmDados.cdsConfig.Post; 
          dmAdmDados.cdsConfig.ApplyUpdates(0);
          //
          Application.MessageBox(PChar(MSG_OK),
             'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
     Except
          on Exc:Exception do
            begin
               Application.MessageBox(PChar(MSG_ERRO+#13+Exc.Message),
                 'Erro', MB_OK+MB_ICONSTOP+MB_APPLMODAL);
               BtCancelarClick(Sender);
            End;
     End;


end;

procedure TfrmConfig.dbeNRCNPJExit(Sender: TObject);
begin
    If (dmAdmDados.cdsConfig.State in [dsEdit])
     and not uFuncoes.Empty(dbeNRCNPJ.Text) Then
            try
              If not (uFuncoes.CGC(dbeNRCNPJ.Text)) Then
              Begin
                  MessageDlg('CNPJ/CGC inválido!!!', mtInformation, [mbOk], 0);
                  dbeNRCNPJ.Clear;
                  dbeNRCNPJ.SetFocus;
                  Exit;
              End;
            Except
              dbeNRCNPJ.SetFocus;
              dbeNRCNPJ.Clear;
            End;
end;

procedure TfrmConfig.FormCreate(Sender: TObject);
begin
   If not (uFrmAdmMain.admin) Then
   begin
     novo    := uFrmAdmMain.aNovo;
     alterar := uFrmAdmMain.aAlterar;
     apagar  := uFrmAdmMain.aApagar;
     //
     If Empty(novo) or Empty(alterar) or Empty(apagar) Then
     begin
           dmAdmDados.Verificar_Direito_Acesso(
            Strtoint(uFrmAdmMain.M_CDUSUA), dmAdmDados.GetCodMenu('Configurações'));
           //
           novo    := uFrmAdmMain.aNovo;
           alterar := uFrmAdmMain.aAlterar;
           apagar  := uFrmAdmMain.aApagar;
           //
     End;
     //
     frmMain.Limpar_Acessos;
     //
     //BtAdicionar.Visible := (novo = 'S');
     BtEditar.Visible    := (alterar = 'S');
     //BtExcluir.Visible   := (apagar = 'S');
     //
   End;
end;

end.
