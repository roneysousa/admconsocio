unit uFrmSituacaoCaixa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons;

type
  TfrmSituacaoCaixa = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    BtCancelar: TBitBtn;
    Label4: TLabel;
    dbeCAIXA: TEdit;
    sbLocCaixa: TSpeedButton;
    btnConsulta: TBitBtn;
    mmoSituacao: TMemo;
    lbl_NMUSUA: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure BtCancelarClick(Sender: TObject);
    procedure dbeCAIXAChange(Sender: TObject);
    procedure dbeCAIXAExit(Sender: TObject);
    procedure dbeCAIXAKeyPress(Sender: TObject; var Key: Char);
    procedure sbLocCaixaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnConsultaClick(Sender: TObject);
  private
    { Private declarations }
    novo, alterar, apagar : String;
  public
    { Public declarations }
  end;

var
  frmSituacaoCaixa: TfrmSituacaoCaixa;

implementation

uses udmAdmDados, uFrmAdmMain, uFuncoes, uFrmConsUsuarios, udmRelatorios;

{$R *.dfm}

procedure TfrmSituacaoCaixa.FormCreate(Sender: TObject);
begin
   If not (uFrmAdmMain.admin) Then
   begin
     novo    := uFrmAdmMain.aNovo;
     alterar := uFrmAdmMain.aAlterar;
     apagar  := uFrmAdmMain.aApagar;
     //
     If uFuncoes.Empty(novo) or uFuncoes.Empty(alterar) or uFuncoes.Empty(apagar) Then
     begin
           dmAdmDados.Verificar_Direito_Acesso(
            Strtoint(uFrmAdmMain.M_CDUSUA), dmAdmDados.GetCodMenu('Modelos'));
           //
           novo    := uFrmAdmMain.aNovo;
           alterar := uFrmAdmMain.aAlterar;
           apagar  := uFrmAdmMain.aApagar;
           //
     End;
     //
     frmMain.Limpar_Acessos;
     //
   End;
end;

procedure TfrmSituacaoCaixa.BtCancelarClick(Sender: TObject);
begin
     Close;
end;

procedure TfrmSituacaoCaixa.dbeCAIXAChange(Sender: TObject);
begin
      if uFuncoes.Empty(dbeCAIXA.Text) Then
      begin
           lbl_NMUSUA.Clear;
           mmoSituacao.Lines.Clear;   
      End;
end;

procedure TfrmSituacaoCaixa.dbeCAIXAExit(Sender: TObject);
begin
     If not uFuncoes.Empty(dbeCAIXA.Text) Then
      begin
       lbl_NMUSUA.Clear;
       //
       if not (dmAdmDados.Testa_Caixa(StrtoInt(dbeCAIXA.Text), 'A')) Then
        Begin
             dbeCAIXA.SetFocus;
             dbeCAIXA.Clear;
             raise Exception.Create('Registro de caixa fechado para '+#13+'este operador.');
        End;
        //
         If (dmAdmDados.cdsUsuarios.FieldByName('SEN_FLCAIXA').AsString = 'N')
              OR uFuncoes.Empty(dmAdmDados.cdsUsuarios.FieldByName('SEN_FLCAIXA').AsString) Then
               begin
                    dbeCAIXA.SetFocus;
                    dbeCAIXA.Clear;
                    raise Exception.Create('Usuário não é caixa!!!');
               End;
       //
       if not (dmAdmDados.Verificar_Caixa_Aberto(StrtoInt(dbeCAIXA.Text))) Then
        begin
             dbeCAIXA.Clear;
             dbeCAIXA.SetFocus;
             raise Exception.Create('Registro de caixa fechado para '+#13+'este operador.');
        End;
        //
        lbl_NMUSUA.text  := dmAdmDados.cdsUsuariosSEN_NOME.AsString;
        dbeCAIXA.Text    := uFuncoes.StrZero(dbeCAIXA.Text,3);
      End;
end;

procedure TfrmSituacaoCaixa.dbeCAIXAKeyPress(Sender: TObject;
  var Key: Char);
begin
     If not( key in['0'..'9',#8, #13]) then
        key:=#0;
     //
     If (key = #13) and uFuncoes.Empty(dbeCAIXA.Text) Then
     Begin
          Key := #0;
          sbLocCaixaClick(Sender);
     End;
     //
     If (key = #13) and not uFuncoes.Empty(dbeCAIXA.Text) Then
     Begin
          Key := #0;
          btnConsulta.SetFocus;
     End;
end;

procedure TfrmSituacaoCaixa.sbLocCaixaClick(Sender: TObject);
begin
      dbeCAIXA.SetFocus;
      Application.CreateForm(TfrmConsUsuarios, frmConsUsuarios);
      try
          frmConsUsuarios.ShowModal;
      Finally
          if not (frmConsUsuarios.cdsConsultar.IsEmpty)   then
          begin
             dbeCAIXA.Text    := frmConsUsuarios.cdsConsultarSEN_CODIGO.AsString;
             lbl_NMUSUA.Text  := frmConsUsuarios.cdsConsultarSEN_NOME.AsString;
             btnConsulta.SetFocus;  
             //
          end
          Else
              lbl_NMUSUA.Clear;
          //
          frmConsUsuarios.Free;
      End;
end;

procedure TfrmSituacaoCaixa.FormShow(Sender: TObject);
begin
    lbl_NMUSUA.Clear;
end;

procedure TfrmSituacaoCaixa.btnConsultaClick(Sender: TObject);
Var
   aArquivo : String;
begin
     if not uFuncoes.Empty(dbeCAIXA.Text) then
      begin
           try
              Screen.Cursor := crHourGlass;
              //
              If (dmRelatorios.Situacao_Caixa(StrtoInt(dbeCAIXA.Text))) Then
                try
                    aArquivo := ExtractFilePath( Application.ExeName )+'NN.TXT';
                    if FileExists(aArquivo) Then
                        mmoSituacao.Lines.LoadFromFile(aArquivo);
                Except
                      on e: exception do
                      begin
                          Application.MessageBox(PChar('Erro na abertura do arquivo!!! Erro:'+#13
                                  + E.Message),
                                  'ATENÇÃO', MB_OK+MB_ICONSTOP+MB_APPLMODAL);
                      End;
                End;
           Finally
              Screen.Cursor := crDefault;
           End;
           Application.ProcessMessages;
      End
      Else
          dbeCAIXA.SetFocus;  
end;

end.
