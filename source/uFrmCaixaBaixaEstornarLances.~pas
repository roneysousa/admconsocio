unit uFrmCaixaBaixaEstornarLances;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmCadastro2, StdCtrls, Buttons, ExtCtrls, ComCtrls, Grids,
  DBGrids, DBCtrls, Mask, ToolEdit, CurrEdit, DB, Menus;

type
  TFrmCaixaBaixaEstornarLances = class(TfrmCad)
    Panel1: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    edtNmclie: TEdit;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Edit1: TEdit;
    DBNavigator1: TDBNavigator;
    grdConsultar: TDBGrid;
    Panel2: TPanel;
    Label8: TLabel;
    ckbContemplado: TCheckBox;
    ckbMult: TCheckBox;
    DBGrid1: TDBGrid;
    dsParcelas: TDataSource;
    dbePLANO: TDBEdit;
    DBEdit3: TDBEdit;
    dsVendaContas: TDataSource;
    DBEdit1: TDBEdit;
    Label4: TLabel;
    DBEdit2: TDBEdit;
    Label12: TLabel;
    dbeGrupo: TDBEdit;
    rbSituacao: TDBRadioGroup;
    DBRadioGroup1: TDBRadioGroup;
    PopupMenu1: TPopupMenu;
    Cadastro1: TMenuItem;
    Grupos1: TMenuItem;
    Cliente1: TMenuItem;
    Vendas1: TMenuItem;
    BaixaParcelas1: TMenuItem;
    Caixa1: TMenuItem;
    Crdito1: TMenuItem;
    Parametro1: TMenuItem;
    pnlDados: TPanel;
    Label7: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    edtNRASSE: TCurrencyEdit;
    rbTipoBaixa: TRadioGroup;
    edtValorLance: TCurrencyEdit;
    edtDataContem: TDateEdit;
    edtValorAcento: TCurrencyEdit;
    Panel4: TPanel;
    btnBaixa: TBitBtn;
    btnEstornar: TBitBtn;
    btnRecibo: TBitBtn;
    BtGravar: TBitBtn;
    BtCancelar: TBitBtn;
    DBNavigator3: TDBNavigator;
    procedure btnConsultarClick(Sender: TObject);
    procedure dsVendaContasStateChange(Sender: TObject);
    procedure btnReciboClick(Sender: TObject);
    procedure btnBaixaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BtGravarClick(Sender: TObject);
    procedure edtNRASSEExit(Sender: TObject);
    procedure BtCancelarClick(Sender: TObject);
    procedure btnEstornarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Grupos1Click(Sender: TObject);
    procedure Cliente1Click(Sender: TObject);
    procedure Vendas1Click(Sender: TObject);
    procedure Caixa1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    novo, alterar, apagar : String;
    procedure Busca(aVenda, aGrupo, aCota : integer);
    procedure MOSTRAR;
    procedure Tratabotoes;
    procedure Limpar;
    Procedure CarregarDadosRecibo;
  public
    { Public declarations }
  end;

var
  FrmCaixaBaixaEstornarLances: TFrmCaixaBaixaEstornarLances;
  M_NRVEND : Integer;
  M_FLESTO : Boolean;

implementation

uses udmAdmDados, uDmPesquisas, udmRelatorios, uFuncoes, uFrmAdmMain,
  uFrmCadGrupos, uFrmCadClientes, uFrmVendas, uFrmBaixaEstornoPC;

{$R *.dfm}

{ TFrmCaixaBaixaEstornarLances }

procedure TFrmCaixaBaixaEstornarLances.Busca(aVenda, aGrupo,
  aCota: integer);
begin
     With dmAdmDados.cdsVendaContas do
     begin
          Active := False;
          Params[0].AsInteger := aVenda;
          Active := True;
          //
          if not (IsEmpty) then
           begin
                MOSTRAR;
                //
                If (dmAdmDados.cdsVendaContasCOT_FLCONTEMPLADO.AsString = 'S') Then
                  begin
                       edtNRASSE.Text      := dmAdmDados.cdsVendaContasCOT_ASSEB_CONTEMP.AsString;
                       edtValorLance.Value := dmAdmDados.cdsVendaContasCOT_VALORLANCE.AsFloat;
                       edtDataContem.Date  := dmAdmDados.cdsVendaContasCOT_DTCONTEMPLACAO.AsDateTime;
                       edtValorAcento.Value := dmAdmDados.cdsVendaContasCOT_VALACERTO.AsFloat;
                       //
                       dmAdmDados.GetAssembleia(dmAdmDados.cdsVendaContasCOT_NRVENDA.AsInteger,
                                      dmAdmDados.cdsVendaContasCOT_CDGRUPO.AsInteger,
                                      dmAdmDados.cdsVendaContasCOT_NRCOTA.AsInteger,
                                      dmAdmDados.cdsVendaContasCOT_ASSEB_CONTEMP.AsInteger, '');
                       //
                      if not (dmAdmDados.cdsGetAssembleia.IsEmpty) Then
                       begin
                            edtNRASSE.Text      := dmAdmDados.cdsVendaContasCOT_ASSEB_CONTEMP.AsString;
                            edtValorLance.Value := dmAdmDados.cdsVendaContasCOT_VALORLANCE.AsFloat;
                            //edtValorLance.Value := dmAdmDados.cdsGetAssembleia.FieldByname('LAN_VALOR').AsFloat;
                            edtDataContem.Date  := dmAdmDados.cdsGetAssembleia.FieldByname('LAN_DTMOVI').AsDateTime;
                            edtValorAcento.Value := dmAdmDados.cdsVendaContasCOT_VALACERTO.AsFloat;
                            //
                            pnlDados.Enabled := False;
                       End;
                  End
                  Else
                      pnlDados.Enabled := True;
                  //
                  if (dmAdmDados.cdsVendaContasCOT_TIPO.AsString = 'S') Then
                  begin
                       btnBaixa.Enabled    := False;
                       btnEstornar.Enabled := False;
                  End;
                  //
                  pnlDados.Enabled := False;
           end
           Else
           begin
                edtNmclie.Clear;
                dmPesquisas.cdsConsultaCota.Close;
                raise Exception.Create('Registro não encontrado.');
           end;
     end;
end;

procedure TFrmCaixaBaixaEstornarLances.MOSTRAR;
begin
     //
     edtNmclie.text := dmAdmDados.GetNomeCliente(dmAdmDados.cdsVendaContasCOT_CDCLIE.AsInteger);
     if (dmAdmDados.cdsVendaContasCOT_FLCONTEMPLADO.AsString = 'S') Then
        ckbContemplado.Checked := True
     Else
        ckbContemplado.Checked := False;
     //
     uFuncoes.FilterCDS(dmAdmDados.cdsGrupos, fsInteger, edtGrupo.Text);
     if not(dmAdmDados.cdsGrupos.IsEmpty) Then
     begin
         If (dmAdmDados.cdsGruposGRU_MULTCONT.AsString = 'S') Then
             ckbMult.Checked := True
         Else
             ckbMult.Checked := False;
     End;
     //
     dmAdmDados.MOSTRA_SITUACAO_COTA(dmAdmDados.cdsVendaContasCOT_NRVENDA.AsInteger, dmAdmDados.cdsVendaContasCOT_CDGRUPO.AsInteger,
       dmAdmDados.cdsVendaContasCOT_NRCOTA.AsInteger);

end;

procedure TFrmCaixaBaixaEstornarLances.btnConsultarClick(Sender: TObject);
begin
  inherited;
         {If (uFrmCadastro2.W_NRVEND > 0) Then
            M_NRVEND :=  uFrmCadastro2.W_NRVEND;}
         //
         Limpar; 
         M_NRVEND := dmAdmDados.Verificar_Cota_Grupo_Aberta(StrtoInt(edtGrupo.Text), StrToInt(edtCota.Text));
         //
         If (M_NRVEND > 0) Then
             Busca(M_NRVEND, StrtoInt(edtGrupo.Text), StrToInt(edtCota.Text))
         Else
             raise Exception.Create('Cota não cadastrada ou não ATIVA.');
         //Busca(uFrmCadastro2.W_NRVEND, StrtoInt(edtGrupo.Text), StrToInt(edtCota.Text));
end;

procedure TFrmCaixaBaixaEstornarLances.dsVendaContasStateChange(
  Sender: TObject);
begin
  inherited;
    If (dmAdmDados.cdsVendaContasCOT_POSICAO.AsString <> 'Q' ) Then
    Begin
        btnBaixa.Enabled    := (dmAdmDados.cdsVendaContasCOT_FLCONTEMPLADO.AsString = 'N');
        btnEstornar.Enabled := NOT btnBaixa.Enabled;
        btnRecibo.Enabled   := (dmAdmDados.cdsVendaContasCOT_FLCONTEMPLADO.AsString = 'S');
    End
    Else
    begin
        btnBaixa.Enabled    := False;
        btnEstornar.Enabled := False;
        btnRecibo.Enabled   := False;
    End;
end;

procedure TFrmCaixaBaixaEstornarLances.btnReciboClick(Sender: TObject);
Var
     M_CIDADE, M_UFEMPR, M_NRRECI, M_TEXTO : String;
     M_VLLANC : Double;
begin
  inherited;
   if not (dmAdmDados.cdsVendaContas.IsEmpty) Then
   begin
      if (dmAdmDados.cdsVendaContasCOT_TIPO.AsString = 'S') Then
          raise Exception.Create('Cliente contemplado por sorteio!!!');
      // Recebemos de
      //dmRelatorios := TdmRelatorios.create ( application );
      uFuncoes.RefreshCDS(dmAdmDados.cdsConfig);
      //
      dmAdmDados.cdsConfig.edit;
      dmAdmDados.cdsConfigCFG_NRRECIBO.AsInteger :=
          dmAdmDados.cdsConfigCFG_NRRECIBO.AsInteger + 1;
      dmAdmDados.cdsConfig.ApplyUpdates(0);
      //
      M_CIDADE := dmAdmDados.cdsConfigCFG_CIDADE.AsString;
      M_UFEMPR := dmAdmDados.cdsConfigCFG_UF.AsString;
      M_NRRECI := uFuncoes.StrZero(dmAdmDados.cdsConfigCFG_NRRECIBO.AsString,8);
      M_VLLANC := dmAdmDados.cdsVendaContasCOT_VALORLANCE.AsFloat;   
      //edtValorLance.Value;
      //
      try
           CarregarDadosRecibo;
           {With dmRelatorios do
            begin
                 Recibo_Cliente(dmPesquisas.cdsConsultaCotaREC_CDGRUP.AsInteger,
                                dmPesquisas.cdsConsultaCotaREC_NRCOTA.AsInteger,
                                dmPesquisas.cdsConsultaCotaREC_NRVEND.AsInteger,
                                dmPesquisas.cdsConsultaCotaREC_NRPARC.AsInteger);
            end;}
          //
           with dmRelatorios.ppRepReciboLance do
            begin
                 If FileExists(ExtractFilePath( Application.ExeName )+ udmAdmDados.M_NMFILE) Then
                    dmRelatorios.ppImage4.Picture.LoadFromFile(ExtractFilePath( Application.ExeName )+ udmAdmDados.M_NMFILE);
                 //
                 dmRelatorios.lblRecibo3.Caption := M_NRRECI;
                 dmRelatorios.lblLinha1_1.Caption := 'Recebemos de '+ edtNmclie.Text;
                 dmRelatorios.lblLinha2_2.Caption := 'A importância R$ '+ FormatFloat('###,##0.#0', M_VLLANC)
                                                   +' ( '+uFuncoes.extenso(M_VLLANC)+' )';
                 M_TEXTO := 'Dos quais R$ '+FormatFloat('###,##0.#0', M_VLLANC)+' ('+ uFuncoes.extenso(M_VLLANC);
                 M_TEXTO := M_TEXTO + '), Referente a pagamento normal de Lance.';
                 dmRelatorios.lblLinha04.Lines.Clear;
                 dmRelatorios.lblLinha04.Lines.Add(M_TEXTO);
                 dmRelatorios.lblLinha3_3.Caption := 'Referente a pagamento de parcela do Grupo ' + dbeGrupo.Text+'/'+ dmAdmDados.GetNomeGrupo(StrtoInt(dbeGrupo.Text)) + '  Cota ' + dmAdmDados.cdsVendaContasCOT_NRCOTA.AsString + '  relacionada abaixo:';
                 dmRelatorios.lblData3.Caption := M_CIDADE+' ('+M_UFEMPR+'), '+uFuncoes.DataExtenso(Date());
                 //29 de Maio de 2008';
                 dmRelatorios.lblEmpresa3.Caption := dmAdmDados.cdsConfigCFG_NOMEEMPRESA.AsString;
                 //
                 PrintReport;
            end;
      finally
           //dmRelatorios.Free;
      end;
   End;
end;

procedure TFrmCaixaBaixaEstornarLances.btnBaixaClick(Sender: TObject);
begin
  inherited;
      IF ufUncoes.Empty(edtGrupo.Text) Then
        begin
             edtGrupo.SetFocus;
             Exit;
        End;
      //
      IF ufUncoes.Empty(edtCota.Text) Then
        begin
             edtCota.SetFocus;
             Exit;
        End;
      //
      If not (dmAdmDados.cdsVendaContas.IsEmpty) Then
       begin
            pnlDados.Enabled := True;
            edtNRASSE.SetFocus;
       End;
       //
       //Tratabotoes;
       btnBaixa.Enabled    := False;
       btnEstornar.Enabled := False;
       btnRecibo.Enabled   := False;
       //
       BtGravar.Enabled   := True;
       BtCancelar.Enabled := True;
       //
       pnlDados.Enabled := True;
       //
       M_FLESTO := False;
end;

procedure TFrmCaixaBaixaEstornarLances.FormShow(Sender: TObject);
begin
  inherited;
        pnlDados.Enabled := False;
        dmAdmDados.cdsVendaContas.Close; 
        //
        btnBaixa.Enabled    := False;
        btnEstornar.Enabled := False;
        btnRecibo.Enabled   := False;
end;

procedure TFrmCaixaBaixaEstornarLances.BtGravarClick(Sender: TObject);
Var
    TIPO : string;
begin
  inherited;
      if not (M_FLESTO) and (edtNRASSE.Value <= 0) Then
       Begin
           if (pnlDados.Enabled) Then
              if (edtNRASSE.Enabled) Then
               begin
                     edtNRASSE.SetFocus;
                     Raise Exception.Create('Número de Assemléia inválido.');  
                End;
       End;
      //
      If not (dmAdmDados.cdsVendaContas.IsEmpty) Then
       begin
          if (rbTipoBaixa.ItemIndex = 0) Then
             TIPO := 'P'
          else
             TIPO := 'V';
          //
          if not (M_FLESTO) Then
          begin
               If Application.MessageBox('Confirma baixa de lance?',
                 'ATENÇÃO', MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2+MB_APPLMODAL) = idYes then
               begin
                    if (dmAdmDados.BaixaEstornoLances(
                                        dmAdmDados.cdsVendaContasCOT_NRVENDA.AsInteger,
                                        dmAdmDados.cdsVendaContasCOT_CDGRUPO.AsInteger,
                                        dmAdmDados.cdsVendaContasCOT_NRCOTA.AsInteger, StrtoInt(edtNRASSE.Text) , 1,
                                        TIPO, 'B', edtValorLance.Value, edtValorAcento.Value, edtDataContem.Date)) Then
                    begin
                         Busca(M_NRVEND, StrtoInt(edtGrupo.Text), StrToInt(edtCota.Text));
                         //
                         Application.MessageBox(PChar(MSG_OK),
                              'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                         Limpar;
                         //
                         If (dmAdmDados.cdsVendaContasCOT_FLCONTEMPLADO.AsString = 'S') Then
                          begin
                               edtNRASSE.Text      := dmAdmDados.cdsVendaContasCOT_ASSEB_CONTEMP.AsString;
                               edtValorLance.Value := dmAdmDados.cdsVendaContasCOT_VALORLANCE.AsFloat;
                               edtDataContem.Date  := dmAdmDados.cdsVendaContasCOT_DTCONTEMPLACAO.AsDateTime;
                               edtValorAcento.Value := dmAdmDados.cdsVendaContasCOT_VALACERTO.AsFloat;
                          End;
                         //
                         BtGravar.Enabled   := False;
                         BtCancelar.Enabled := False;
                         //
                         dsVendaContasStateChange(Sender);
                   End
                   ELSE
                   begin
                      dsVendaContasStateChange(Sender);
                      Raise Exception.Create('Erro ao tentar realizar baixa da lance.');
                   End;
                    //
                   pnlDados.Enabled := False;
               End;
          End;
          {else   /// estorno
          begin
               If Application.MessageBox('Confirma estorno de lance?',
                 'ATENÇÃO', MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2+MB_APPLMODAL) = idYes then
               begin
                    if (dmAdmDados.BaixaEstornoLances(
                                        dmAdmDados.cdsVendaContasCOT_NRVENDA.AsInteger,
                                        dmAdmDados.cdsVendaContasCOT_CDGRUPO.AsInteger,
                                        dmAdmDados.cdsVendaContasCOT_NRCOTA.AsInteger, StrtoInt(edtNRASSE.Text),
                                        TIPO, 'E', edtValorLance.Value, edtValorAcento.Value, edtDataContem.Date)) Then
                                        //dmAdmDados.cdsVendaContasCOT_VALORLANCE.AsFloat, dmAdmDados.cdsVendaContasCOT_VALACERTO.AsFloat, dmAdmDados.cdsVendaContasCOT_DTCONTEMPLACAO.AsDateTime
                    begin
                         Busca(M_NRVEND, StrtoInt(edtGrupo.Text), StrToInt(edtCota.Text));
                         //
                         Application.MessageBox(PChar(MSG_OK),
                              'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                         Limpar;
                         //
                         BtGravar.Enabled   := False;
                         BtCancelar.Enabled := False;
                         //
                         dsVendaContasStateChange(Sender);
                   End
                   ELSE
                   begin
                       dsVendaContasStateChange(Sender);
                       Raise Exception.Create('Erro ao tentar realizar estorno de lance.');
                   End;
                    //
                    pnlDados.Enabled := False;
              End;
          End; }

       End;
end;

procedure TFrmCaixaBaixaEstornarLances.edtNRASSEExit(Sender: TObject);
begin
  inherited;
       If not uFuncoes.Empty(edtNRASSE.Text) Then
        begin
            If not (dmAdmDados.Grupo_Mult(dmAdmDados.cdsVendaContasCOT_CDGRUPO.AsInteger)) then
             if (dmAdmDados.VerificarBaixaLance(dmAdmDados.cdsVendaContasCOT_CDGRUPO.AsInteger, StrtoInt(edtNRASSE.Text))) Then
              begin
                   edtNRASSE.Clear; 
                   edtNRASSE.SetFocus;
                   raise Exception.Create('Baixa já realizada para esta assembléia.');
              End;
             //
             dmAdmDados.GetAssembleia(dmAdmDados.cdsVendaContasCOT_NRVENDA.AsInteger,
                                      dmAdmDados.cdsVendaContasCOT_CDGRUPO.AsInteger,
                                      dmAdmDados.cdsVendaContasCOT_NRCOTA.AsInteger,
                                      StrtoInt(edtNRASSE.Text),'T',);
             //
             if not (dmAdmDados.cdsGetAssembleia.IsEmpty) Then
              begin
                   edtValorLance.Value := dmAdmDados.cdsGetAssembleia.FieldByname('LAN_VALOR').AsFloat;
                   edtDataContem.Date  := dmAdmDados.cdsGetAssembleia.FieldByname('LAN_DTMOVI').AsDateTime;
                   //
                   BtGravar.Enabled := True;
                   BtCancelar.Enabled := True;
              End
              Else
              begin
                  dmAdmDados.GetAssembleia(dmAdmDados.cdsVendaContasCOT_NRVENDA.AsInteger,
                                      dmAdmDados.cdsVendaContasCOT_CDGRUPO.AsInteger,
                                      dmAdmDados.cdsVendaContasCOT_NRCOTA.AsInteger,
                                      StrtoInt(edtNRASSE.Text),'',);

                 if not (dmAdmDados.cdsGetAssembleia.IsEmpty) Then
                 begin
                   edtValorLance.Value := dmAdmDados.cdsGetAssembleia.FieldByname('LAN_VALOR').AsFloat;
                   edtDataContem.Date  := dmAdmDados.cdsGetAssembleia.FieldByname('LAN_DTMOVI').AsDateTime;
                   //
                   BtGravar.Enabled := True;
                   BtCancelar.Enabled := True;
                 End
                 else
                 begin
                   //
                   edtNRASSE.Clear;
                   edtNRASSE.SetFocus;
                   Raise Exception.Create('Assembleia não existe.');
                 End;
              End;
        End;
end;

procedure TFrmCaixaBaixaEstornarLances.BtCancelarClick(Sender: TObject);
begin
  inherited;
     Limpar;
     //
     btnBaixa.Enabled    := True;
     btnEstornar.Enabled := True;
     btnRecibo.Enabled   := True;
     //
     BtGravar.Enabled   := False;
     BtCancelar.Enabled := False;
     //
     pnlDados.Enabled   := False; 
     //
     dsVendaContasStateChange(Sender);
end;

procedure TFrmCaixaBaixaEstornarLances.Tratabotoes;
begin
     btnBaixa.Enabled    := not btnBaixa.Enabled;
     btnEstornar.Enabled := not btnEstornar.Enabled;
     btnRecibo.Enabled   := not btnRecibo.Enabled;
     //
     BtGravar.Enabled   := not BtGravar.Enabled;
     BtCancelar.Enabled := not BtCancelar.Enabled;
end;

procedure TFrmCaixaBaixaEstornarLances.btnEstornarClick(Sender: TObject);
Var
    TIPO : string;
begin
  inherited;
       {btnBaixa.Enabled    := False;
       btnEstornar.Enabled := False;
       btnRecibo.Enabled   := False;
       //
       BtGravar.Enabled   := True;
       BtCancelar.Enabled := True;}
       pnlDados.Enabled := False;
       //
       M_FLESTO := True;
       //
      If not (dmAdmDados.cdsVendaContas.IsEmpty) Then
       begin
         if (rbTipoBaixa.ItemIndex = 0) Then
             TIPO := 'P'
          else
             TIPO := 'V';

               If Application.MessageBox('Confirma estorno de lance?',
                 'ATENÇÃO', MB_YESNO+MB_ICONQUESTION+MB_DEFBUTTON2+MB_APPLMODAL) = idYes then
               begin
                    if (dmAdmDados.BaixaEstornoLances(
                                        dmAdmDados.cdsVendaContasCOT_NRVENDA.AsInteger,
                                        dmAdmDados.cdsVendaContasCOT_CDGRUPO.AsInteger,
                                        dmAdmDados.cdsVendaContasCOT_NRCOTA.AsInteger, StrtoInt(edtNRASSE.Text), 1 ,
                                        TIPO, 'E', edtValorLance.Value, edtValorAcento.Value, edtDataContem.Date)) Then
                                        //dmAdmDados.cdsVendaContasCOT_VALORLANCE.AsFloat, dmAdmDados.cdsVendaContasCOT_VALACERTO.AsFloat, dmAdmDados.cdsVendaContasCOT_DTCONTEMPLACAO.AsDateTime
                    begin
                         Busca(M_NRVEND, StrtoInt(edtGrupo.Text), StrToInt(edtCota.Text));
                         //
                         Application.MessageBox(PChar(MSG_OK),
                              'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                         Limpar;
                         //
                         BtGravar.Enabled   := False;
                         BtCancelar.Enabled := False;
                         //
                         dsVendaContasStateChange(Sender);
                   End
                   ELSE
                   begin
                       dsVendaContasStateChange(Sender);
                       Raise Exception.Create('Erro ao tentar realizar estorno de lance.');
                   End;
                    //
                    pnlDados.Enabled := False;
              End;
      End;        
end;

procedure TFrmCaixaBaixaEstornarLances.Limpar;
begin
     edtNRASSE.Clear;
     edtValorLance.Clear;
     edtDataContem.Clear;
     edtValorAcento.Clear;
end;

procedure TFrmCaixaBaixaEstornarLances.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
     dmPesquisas.cdsConsultaCota.Close;
     dmAdmDados.cdsVendaContas.Close;
end;

procedure TFrmCaixaBaixaEstornarLances.CarregarDadosRecibo;
Var
   M_TPHIST : String;
   M_DTMOVI : Tdate;
   M_VLMOVI : Double;
begin
     if not (dmRelatorios.cdsReciboLances2.Active) Then
         dmRelatorios.cdsReciboLances2.Open;
     //
     dmRelatorios.cdsReciboLances2.EmptyDataSet;
     //
     with dmPesquisas.cdsConsultaCota do
      begin
           DisableControls;
           First;
           While not (Eof) do
            begin
                 if (FieldByName('REC_FORMABAIXA').AsString  = 'L') or (FieldByName('rec_tpcredito').AsString  = 'L') Then
                 begin
                      if (FieldByName('REC_FORMABAIXA').AsString = 'L') Then
                      begin
                          M_TPHIST := 'BL';
                          M_DTMOVI := fieldbyname('REC_DTPAGA').AsDateTime;
                          M_VLMOVI := fieldbyname('REC_TOTAL_PAGO').AsFloat;
                      End;
                      //
                      if (FieldByName('rec_tpcredito').AsString = 'L') Then
                      begin
                          M_TPHIST := 'CL';
                          M_DTMOVI := fieldbyname('REC_DTCREDITO').AsDateTime;
                          M_VLMOVI := fieldbyname('REC_CREDITO').AsFloat;
                      End;
                      //
                      dmRelatorios.AddDadosLance(fieldbyname('REC_NRVEND').AsInteger,
                                                 fieldbyname('REC_CDGRUP').AsInteger,
                                                 fieldbyname('REC_NRCOTA').AsInteger,
                                                 fieldbyname('REC_NRPARC').AsInteger,
                                                 M_TPHIST,
                                                 fieldbyname('REC_DTVENC').AsDateTime,
                                                 M_DTMOVI,
                                                 fieldbyname('REC_TOTAL_CALC').AsFloat,
                                                 M_VLMOVI);
                 End;
                 // Proximo 
                 next;
            End;
            //
           EnableControls;
      End;
end;

procedure TFrmCaixaBaixaEstornarLances.Grupos1Click(Sender: TObject);
begin
  inherited;
        frmMain.AbreForm(TfrmCadGrupo, frmCadGrupo);
end;

procedure TFrmCaixaBaixaEstornarLances.Cliente1Click(Sender: TObject);
begin
  inherited;
    frmMain.AbreForm(TfrmCadClientes, frmCadClientes);
end;

procedure TFrmCaixaBaixaEstornarLances.Vendas1Click(Sender: TObject);
begin
  inherited;
     frmMain.AbreForm(TfrmVendas, frmVendas);
end;

procedure TFrmCaixaBaixaEstornarLances.Caixa1Click(Sender: TObject);
begin
  inherited;
     frmBaixaEstornoParcelas := TfrmBaixaEstornoParcelas.create ( application );
     try
         uFrmBaixaEstornoPC.M_NRFROM := 2;
         frmBaixaEstornoParcelas.ShowModal
     finally
         frmBaixaEstornoParcelas.Release;
         frmBaixaEstornoParcelas := nil;
     end;
end;

procedure TFrmCaixaBaixaEstornarLances.FormCreate(Sender: TObject);
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
              Strtoint(uFrmAdmMain.M_CDUSUA), dmAdmDados.GetCodMenu('Baixa / Estorno de Lance (Contemplação) ...'));
           //
           novo    := uFrmAdmMain.aNovo;
           alterar := uFrmAdmMain.aAlterar;
           apagar  := uFrmAdmMain.aApagar;
           //
     End;
     //
     frmMain.Limpar_Acessos;
     //
     btnBaixa.Visible     := (novo = 'S');
     btnEstornar.Visible  := (alterar = 'S');
     //btnEstorna.Visible   := (apagar = 'S');
     //
   End;
end;

End.
