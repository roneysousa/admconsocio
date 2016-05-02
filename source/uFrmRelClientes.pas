unit uFrmRelClientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmModRelatorio, StdCtrls, Buttons, ExtCtrls,
  FMTBcd, DB, DBClient,
  Provider, SqlExpr, ppDB, ppDBPipe, ppComm, ppRelatv, ppProd, ppClass,
  ppReport, ppPrnabl, ppCtrls, ppBands, ppCache, ppVar;

type
  TfrmRelClientes = class(TfrmModRelatorio)
    rgOpcoes: TRadioGroup;
    dstRelClientes: TSQLDataSet;
    dspRelClientes: TDataSetProvider;
    cdsRelClientes: TClientDataSet;
    dsRelClientes: TDataSource;
    cdsRelClientesCLI_CODIGO: TIntegerField;
    cdsRelClientesCLI_NOME: TStringField;
    cdsRelClientesCLI_ESTADO_CIVIL: TStringField;
    cdsRelClientesCLI_SEXO: TStringField;
    cdsRelClientesCLI_CGC: TStringField;
    cdsRelClientesCLI_CPF: TStringField;
    cdsRelClientesCLI_NRIDEN: TStringField;
    cdsRelClientesCLI_DTNASCIMENTO: TDateField;
    cdsRelClientesCLI_NRFONE: TStringField;
    cdsRelClientesCLI_NRCELULAR: TStringField;
    cdsRelClientesCLI_ENDERECO: TStringField;
    cdsRelClientesCLI_NUMCEP: TStringField;
    cdsRelClientesCLI_BAIRRO: TStringField;
    cdsRelClientesCLI_CIDADE: TStringField;
    cdsRelClientesCLI_UFCLIE: TStringField;
    ppReport1: TppReport;
    ppDBPipeline1: TppDBPipeline;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppImage1: TppImage;
    ppLine3: TppLine;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    ppSystemVariable4: TppSystemVariable;
    lblTitulo: TppLabel;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLine1: TppLine;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppLine2: TppLine;
    dstRelatorio: TSQLDataSet;
    dspRelatorio: TDataSetProvider;
    cdsCidadeBairro: TClientDataSet;
    dsCidadeBairro: TDataSource;
    cdsCidadeBairroCLI_CODIGO: TIntegerField;
    cdsCidadeBairroCLI_NOME: TStringField;
    cdsCidadeBairroCLI_CIDADE: TStringField;
    cdsCidadeBairroCLI_BAIRRO: TStringField;
    cdsCidadeBairroCLI_ENDERECO: TStringField;
    cdsCidadeBairroCLI_NUMCEP: TStringField;
    cdsCidadeBairroCLI_NRFONE: TStringField;
    cdsCidadeBairroCLI_UFCLIE: TStringField;
    cdsCidadeBairroCOT_NRVENDA: TIntegerField;
    cdsCidadeBairroCOT_CDGRUPO: TIntegerField;
    cdsCidadeBairroCOT_NRCOTA: TIntegerField;
    cdsCidadeBairroCOT_POSICAO: TStringField;
    cdsCidadeBairroCOT_FLCONTEMPLADO: TStringField;
    ppReport2: TppReport;
    ppDBPipeline2: TppDBPipeline;
    ppHeaderBand2: TppHeaderBand;
    ppDetailBand2: TppDetailBand;
    ppFooterBand2: TppFooterBand;
    ppImage2: TppImage;
    ppLabel15: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLine4: TppLine;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppLabel23: TppLabel;
    ppDBText17: TppDBText;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel30: TppLabel;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppDBText25: TppDBText;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppDBText26: TppDBText;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    cdsCidadeBairroCLI_SEXO: TStringField;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLabel31: TppLabel;
    ppLabel34: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppSystemVariable2: TppSystemVariable;
    Panel2: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    edtCidade: TEdit;
    edtBairro: TEdit;
    cdsClientesPorBairro: TClientDataSet;
    dsClientesBairro: TDataSource;
    cdsClientesPorBairroCLI_CODIGO: TIntegerField;
    cdsClientesPorBairroCLI_NOME: TStringField;
    cdsClientesPorBairroCLI_CIDADE: TStringField;
    cdsClientesPorBairroCLI_BAIRRO: TStringField;
    cdsClientesPorBairroCLI_ENDERECO: TStringField;
    cdsClientesPorBairroCLI_NUMCEP: TStringField;
    cdsClientesPorBairroCLI_NRFONE: TStringField;
    cdsClientesPorBairroCLI_UFCLIE: TStringField;
    cdsClientesPorBairroCLI_SEXO: TStringField;
    ppReport3: TppReport;
    ppDBPipeline3: TppDBPipeline;
    ppHeaderBand3: TppHeaderBand;
    ppDetailBand3: TppDetailBand;
    ppFooterBand3: TppFooterBand;
    cdsCidadeBairroCLI_STATUS: TStringField;
    cdsCidadeBairroCLI_FLCONT: TStringField;
    ppImage3: TppImage;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppLabel37: TppLabel;
    ppLine10: TppLine;
    ppLabel38: TppLabel;
    ppLabel39: TppLabel;
    ppLabel40: TppLabel;
    ppLine11: TppLine;
    ppLabel41: TppLabel;
    ppLabel42: TppLabel;
    ppSystemVariable5: TppSystemVariable;
    ppSystemVariable6: TppSystemVariable;
    ppLabel43: TppLabel;
    ppLabel44: TppLabel;
    ppDBText29: TppDBText;
    ppDBText30: TppDBText;
    ppDBText31: TppDBText;
    ppDBText32: TppDBText;
    ppDBText33: TppDBText;
    ppDBText34: TppDBText;
    ppDBText35: TppDBText;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppGroup4: TppGroup;
    ppGroupHeaderBand4: TppGroupHeaderBand;
    ppGroupFooterBand4: TppGroupFooterBand;
    ppDBText36: TppDBText;
    ppLabel45: TppLabel;
    ppLabel46: TppLabel;
    ppLabel47: TppLabel;
    ppLine12: TppLine;
    ppDBText37: TppDBText;
    ppLabel48: TppLabel;
    ppLine13: TppLine;
    ppLabel49: TppLabel;
    ppDBCalc4: TppDBCalc;
    ppLine14: TppLine;
    ppDBCalc1: TppDBCalc;
    cdsClientesPorBairroFONE: TStringField;
    cdsClientesPorBairroCEP: TStringField;
    cdsCidadeBairroFONE: TStringField;
    cdsCidadeBairroCEP: TStringField;
    ppTitleBand1: TppTitleBand;
    ppTitleBand2: TppTitleBand;
    ppLabel50: TppLabel;
    ppDBCalc5: TppDBCalc;
    dstClienteParcelaPagas: TSQLDataSet;
    dspClienteParcelaPagas: TDataSetProvider;
    cdsClienteParcelaPagas: TClientDataSet;
    ppRepClientesPagos: TppReport;
    ppDBPClientesPagos: TppDBPipeline;
    cdsClienteParcelaPagasCLI_CODIGO: TIntegerField;
    cdsClienteParcelaPagasCLI_NOME: TStringField;
    cdsClienteParcelaPagasCLI_CIDADE: TStringField;
    cdsClienteParcelaPagasCLI_BAIRRO: TStringField;
    cdsClienteParcelaPagasCLI_ENDERECO: TStringField;
    cdsClienteParcelaPagasCLI_NUMCEP: TStringField;
    cdsClienteParcelaPagasCLI_NRFONE: TStringField;
    cdsClienteParcelaPagasCLI_UFCLIE: TStringField;
    cdsClienteParcelaPagasCLI_SEXO: TStringField;
    cdsClienteParcelaPagasCOT_NRVENDA: TIntegerField;
    cdsClienteParcelaPagasCOT_CDGRUPO: TIntegerField;
    cdsClienteParcelaPagasCOT_NRCOTA: TIntegerField;
    cdsClienteParcelaPagasCOT_POSICAO: TStringField;
    cdsClienteParcelaPagasCOT_FLCONTEMPLADO: TStringField;
    cdsClienteParcelaPagasREC_NRPARC: TIntegerField;
    cdsClienteParcelaPagasREC_DTVENC: TDateField;
    cdsClienteParcelaPagasREC_DTPAGA: TDateField;
    cdsClienteParcelaPagasREC_TOTAL_PAGO: TFMTBCDField;
    dsClienteParcelaPagas: TDataSource;
    ppHeaderBand4: TppHeaderBand;
    ppDetailBand4: TppDetailBand;
    ppFooterBand4: TppFooterBand;
    ppGroup5: TppGroup;
    ppGroupHeaderBand5: TppGroupHeaderBand;
    ppGroupFooterBand5: TppGroupFooterBand;
    ppDBText38: TppDBText;
    ppDBText39: TppDBText;
    ppDBText40: TppDBText;
    ppDBText41: TppDBText;
    ppDBText42: TppDBText;
    ppDBText43: TppDBText;
    ppDBText44: TppDBText;
    ppTitleBand3: TppTitleBand;
    ppImage4: TppImage;
    ppLabel51: TppLabel;
    ppLine15: TppLine;
    ppLabel52: TppLabel;
    ppLabel53: TppLabel;
    ppSystemVariable7: TppSystemVariable;
    ppSystemVariable8: TppSystemVariable;
    ppLine16: TppLine;
    ppLabel54: TppLabel;
    ppLabel55: TppLabel;
    ppLabel56: TppLabel;
    ppLabel57: TppLabel;
    ppLabel58: TppLabel;
    ppLabel59: TppLabel;
    ppLabel60: TppLabel;
    ppLabel61: TppLabel;
    ppLabel62: TppLabel;
    ppLabel63: TppLabel;
    ppDBText45: TppDBText;
    ppDBText46: TppDBText;
    ppDBText47: TppDBText;
    ppDBText48: TppDBText;
    ppDBText49: TppDBText;
    ppDBText50: TppDBText;
    ppLabel64: TppLabel;
    ppLabel65: TppLabel;
    ppLabel66: TppLabel;
    ppLabel67: TppLabel;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppDBCalc6: TppDBCalc;
    ppLine19: TppLine;
    ppDBCalc7: TppDBCalc;
    ppLabel68: TppLabel;
    ppLabel69: TppLabel;
    ppLabel70: TppLabel;
    ppDBText51: TppDBText;
    ppLine20: TppLine;
    cdsClienteParcelaPagasCLI_FLCONT: TStringField;
    cdsClienteParcelaPagasCLI_STATUS: TStringField;
    cdsClienteParcelaPagasFONE: TStringField;
    cdsClienteParcelaPagasCEP: TStringField;
    ppDBText52: TppDBText;
    RadioGroup1: TRadioGroup;
    cdsClienteParcelaPagasREC_VLPARC: TFMTBCDField;
    ppDBText53: TppDBText;
    ppLabel71: TppLabel;
    lblCidade: TppLabel;
    cdsClienteParcelaPagasCOT_TAXA_ADM: TFMTBCDField;
    cdsClienteParcelaPagasCOT_FUNDORES: TFMTBCDField;
    cdsClienteParcelaPagasVALOR_CALC: TFloatField;
    cdsClienteParcelaPagasREC_VLMULT: TFMTBCDField;
    ppDBText54: TppDBText;
    ppLabel72: TppLabel;
    ppLabel73: TppLabel;
    cdsClienteParcelaPagasATRASO: TFloatField;
    ppDBText55: TppDBText;
    ppLabel74: TppLabel;
    ppDBText56: TppDBText;
    cdsClienteParcelaPagasCOT_VALCRE: TFMTBCDField;
    ppLabel75: TppLabel;
    ppDBText57: TppDBText;
    ppRepQuitados: TppReport;
    ppHeaderBand5: TppHeaderBand;
    ppDetailBand5: TppDetailBand;
    ppFooterBand5: TppFooterBand;
    ppImage5: TppImage;
    ppLine21: TppLine;
    ppLabel76: TppLabel;
    lblCidade2: TppLabel;
    ppLine22: TppLine;
    ppLabel78: TppLabel;
    ppLabel79: TppLabel;
    ppSystemVariable9: TppSystemVariable;
    ppSystemVariable10: TppSystemVariable;
    ppDBText58: TppDBText;
    ppDBText59: TppDBText;
    ppDBText60: TppDBText;
    ppDBText61: TppDBText;
    ppDBText62: TppDBText;
    ppDBText63: TppDBText;
    ppDBText64: TppDBText;
    ppDBText65: TppDBText;
    ppDBText66: TppDBText;
    ppLine23: TppLine;
    ppLabel80: TppLabel;
    ppLabel81: TppLabel;
    ppLabel82: TppLabel;
    ppLabel83: TppLabel;
    ppLabel84: TppLabel;
    ppLabel85: TppLabel;
    ppDBText67: TppDBText;
    ppLabel86: TppLabel;
    ppLabel87: TppLabel;
    ppLabel88: TppLabel;
    ppLabel89: TppLabel;
    ppLabel90: TppLabel;
    ppDBText68: TppDBText;
    ppLabel91: TppLabel;
    ppDBText69: TppDBText;
    ppLabel92: TppLabel;
    ppDBText70: TppDBText;
    dstClientesQuitados: TSQLDataSet;
    dspClientesQuitados: TDataSetProvider;
    cdsClientesQuitados: TClientDataSet;
    dsClientesQuitados: TDataSource;
    ppDBQuitados: TppDBPipeline;
    cdsClientesQuitadosCLI_CODIGO: TIntegerField;
    cdsClientesQuitadosCLI_NOME: TStringField;
    cdsClientesQuitadosCLI_CIDADE: TStringField;
    cdsClientesQuitadosCLI_BAIRRO: TStringField;
    cdsClientesQuitadosCLI_ENDERECO: TStringField;
    cdsClientesQuitadosCLI_NUMCEP: TStringField;
    cdsClientesQuitadosCLI_NRFONE: TStringField;
    cdsClientesQuitadosCLI_UFCLIE: TStringField;
    cdsClientesQuitadosCLI_SEXO: TStringField;
    cdsClientesQuitadosCOT_NRVENDA: TIntegerField;
    cdsClientesQuitadosCOT_CDGRUPO: TIntegerField;
    cdsClientesQuitadosCOT_NRCOTA: TIntegerField;
    cdsClientesQuitadosCOT_POSICAO: TStringField;
    cdsClientesQuitadosCOT_VALCRE: TFMTBCDField;
    cdsClientesQuitadosCOT_FLCONTEMPLADO: TStringField;
    cdsClientesQuitadosCOT_TAXA_ADM: TFMTBCDField;
    cdsClientesQuitadosREC_VLMULT: TFMTBCDField;
    cdsClientesQuitadosCLI_FLCONT: TStringField;
    cdsClientesQuitadosCLI_STATUS: TStringField;
    cdsClientesQuitadosCLI_CEP: TStringField;
    cdsClientesQuitadosFONE: TStringField;
    ppSummaryBand1: TppSummaryBand;
    ppLabel77: TppLabel;
    ppDBCalc8: TppDBCalc;
    ppLine24: TppLine;
    procedure btnVisualizarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure rgOpcoesClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure cdsCidadeBairroCalcFields(DataSet: TDataSet);
    procedure cdsClientesPorBairroCalcFields(DataSet: TDataSet);
    procedure cdsClienteParcelaPagasCalcFields(DataSet: TDataSet);
    procedure cdsClientesQuitadosCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
    novo, alterar, apagar : String;
  public
    { Public declarations }
  end;

var
  frmRelClientes: TfrmRelClientes;

implementation

uses udmAdmDados, uFuncoes, udmRelatorios, uFrmAdmMain;

{$R *.dfm}


procedure TfrmRelClientes.btnVisualizarClick(Sender: TObject);
Var
  M_FLSITU : String;
begin
  inherited;
     if (rgOpcoes.ItemIndex = 0) or (rgOpcoes.ItemIndex = 1) Then
     begin
       try
            uFuncoes.RefreshCDS(dmAdmDados.cdsConfig);
            //
            With cdsRelClientes do
              begin
                   Active := False;
                   CommandText := 'Select CLI_CODIGO, CLI_NOME, CLI_ESTADO_CIVIL, CLI_SEXO, CLI_CGC, CLI_CPF, CLI_NRIDEN, CLI_DTNASCIMENTO, CLI_NRFONE, CLI_NRCELULAR, CLI_ENDERECO, CLI_NUMCEP, CLI_BAIRRO, CLI_CIDADE, CLI_UFCLIE from clientes ';
                   If (rgOpcoes.ItemIndex = 0) Then
                       CommandText := CommandText + ' order by CLI_CODIGO';
                   If (rgOpcoes.ItemIndex = 1) Then
                       CommandText := CommandText + ' order by CLI_NOME';
                   Active := True;
                   //
                   If not (IsEmpty) Then
                     Begin
                          If FileExists(ExtractFilePath( Application.ExeName )+ udmAdmDados.M_NMFILE) Then
                              ppImage1.Picture.LoadFromFile(ExtractFilePath( Application.ExeName )+ udmAdmDados.M_NMFILE);
                          //
                          If (rgOpcoes.ItemIndex = 0) Then
                             lblTitulo.Caption := 'Lista de Clientes - Ordem de Código';
                          If (rgOpcoes.ItemIndex = 1) Then
                             lblTitulo.Caption := 'Lista de Clientes - Ordem de Nome';
                          //
                          ppReport1.PrintReport;
                     End;
              End;
       finally
              cdsRelClientes.Close;
       End;
     //
     End;
     //
     if (rgOpcoes.ItemIndex = 2)  Then
      begin
       try
            uFuncoes.RefreshCDS(dmAdmDados.cdsConfig);
            //
            With cdsClientesPorBairro do
              begin
                   Active := False;
                   CommandText := 'Select CL.cli_codigo, cl.cli_nome, cl.cli_cidade, CL.CLI_BAIRRO, CL.CLI_ENDERECO, ';
                   CommandText := CommandText + 'CL.CLI_NUMCEP, CL.CLI_NRFONE, cl.cli_ufclie, cl.cli_sexo ';
                   CommandText := CommandText + 'From Clientes CL ';
                   if (rgOpcoes.ItemIndex >= 2) Then
                    begin
                      If not uFuncoes.Empty(edtCidade.Text) and uFuncoes.Empty(edtBairro.Text) Then
                          CommandText := CommandText + 'Where (cl.cli_cidade = '+QuotedStr(edtCidade.Text)+ ')';
                      //
                      If not uFuncoes.Empty(edtCidade.Text) and not uFuncoes.Empty(edtBairro.Text) Then
                          CommandText := CommandText + 'Where (cl.cli_cidade = '+QuotedStr(edtCidade.Text)+ ') and (CL.CLI_BAIRRO = '+QuotedStr(edtBairro.Text)+')';
                    End;
                   //
                   CommandText := CommandText + 'Group by CL.cli_codigo, cl.cli_nome, ';
                   CommandText := CommandText + 'cl.cli_cidade, CL.CLI_BAIRRO, CL.CLI_ENDERECO, CL.CLI_NUMCEP, CL.CLI_NRFONE, ';
                   CommandText := CommandText + 'cl.cli_ufclie, cl.cli_sexo ';
                   CommandText := CommandText + 'Order By CL.CLI_BAIRRO, cl.cli_nome';
                   Active := True;
                   //
                   If not (IsEmpty) Then
                     Begin
                          If FileExists(ExtractFilePath( Application.ExeName )+ udmAdmDados.M_NMFILE) Then
                              ppImage3.Picture.LoadFromFile(ExtractFilePath( Application.ExeName )+ udmAdmDados.M_NMFILE);
                          //
                          ppReport3.PrintReport;
                     End;
              End;
       finally
             cdsClientesPorBairro.Close;
       End;
      End;
     //
     if (rgOpcoes.ItemIndex = 3)  Then
      begin
       try
            uFuncoes.RefreshCDS(dmAdmDados.cdsConfig);
            //
            With cdsCidadeBairro do
              begin
                   Active := False;
                   CommandText := 'Select CL.cli_codigo, cl.cli_nome, cl.cli_cidade, CL.CLI_BAIRRO, CL.CLI_ENDERECO, ';
                   CommandText := CommandText + 'CL.CLI_NUMCEP, CL.CLI_NRFONE, cl.cli_ufclie, cl.cli_sexo, C.COT_NRVENDA, C.COT_CDGRUPO, ';
                   CommandText := CommandText + 'C.cot_nrcota, C.COT_POSICAO, C.COT_FLCONTEMPLADO From Clientes CL ';
                   CommandText := CommandText + 'inner join COTAS C on CL.CLI_CODIGO = C.COT_CDCLIE ';
                   if (rgOpcoes.ItemIndex >= 2) Then
                    begin
                      If not uFuncoes.Empty(edtCidade.Text) and uFuncoes.Empty(edtBairro.Text) Then
                          CommandText := CommandText + 'Where (cl.cli_cidade = '+QuotedStr(edtCidade.Text)+ ')';
                      //
                      If not uFuncoes.Empty(edtCidade.Text) and not uFuncoes.Empty(edtBairro.Text) Then
                          CommandText := CommandText + 'Where (cl.cli_cidade = '+QuotedStr(edtCidade.Text)+ ') and (CL.CLI_BAIRRO = '+QuotedStr(edtBairro.Text)+')';
                    End;
                   //
                   CommandText := CommandText + 'Group by CL.cli_codigo, cl.cli_nome, ';
                   CommandText := CommandText + 'cl.cli_cidade, CL.CLI_BAIRRO, CL.CLI_ENDERECO, CL.CLI_NUMCEP, CL.CLI_NRFONE, ';
                   CommandText := CommandText + 'cl.cli_ufclie, cl.cli_sexo, C.COT_NRVENDA, C.COT_CDGRUPO, C.cot_nrcota, C.COT_POSICAO, ';
                   CommandText := CommandText + 'C.COT_FLCONTEMPLADO Order By CL.CLI_BAIRRO, cl.cli_nome';
                   Active := True;
                   //
                   If not (IsEmpty) Then
                     Begin
                          If FileExists(ExtractFilePath( Application.ExeName )+ udmAdmDados.M_NMFILE) Then
                              ppImage2.Picture.LoadFromFile(ExtractFilePath( Application.ExeName )+ udmAdmDados.M_NMFILE);
                          //
                          {If (rgOpcoes.ItemIndex = 0) Then
                             lblTitulo.Caption := 'Lista de Clientes - Ordem de Código';
                          If (rgOpcoes.ItemIndex = 1) Then
                             lblTitulo.Caption := 'Lista de Clientes - Ordem de Nome';}
                          //
                          ppReport2.PrintReport;
                     End;
              End;
       finally
              cdsCidadeBairro.Close;
       End;
      End;
      // novo 31/07/2009
     if (rgOpcoes.ItemIndex = 4)  Then
      begin
       if uFuncoes.Empty(edtCidade.Text) Then
        begin
             Application.MessageBox('Digite o nome da cidade.','ATENÇÃO',
               MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
             edtCidade.SetFocus;
             Exit;
        End;
       //
       case RadioGroup1.ItemIndex of
           0 : M_FLSITU := 'A';
           1 : M_FLSITU := 'I';
           2 : M_FLSITU := 'Q';
           3 : M_FLSITU := '';
        end;
        //
       btnVisualizar.Enabled := false;
       try
            uFuncoes.RefreshCDS(dmAdmDados.cdsConfig);
            //
           If (M_FLSITU = 'Q') Then
           begin
                 With cdsClientesQuitados do
                  begin
                       Active := False;
                       CommandText := 'Select CL.cli_codigo, cl.cli_nome, cl.cli_cidade, CL.CLI_BAIRRO, CL.CLI_ENDERECO, ';
                       CommandText := CommandText + ' CL.CLI_NUMCEP, CL.CLI_NRFONE, cl.cli_ufclie, cl.cli_sexo, C.COT_NRVENDA, C.COT_CDGRUPO,';
                       CommandText := CommandText + ' C.cot_nrcota, C.COT_POSICAO, COT_VALCRE, C.COT_FLCONTEMPLADO, C.COT_TAXA_ADM, C.COT_FUNDORES REC_VLMULT  From Clientes CL ';
                       CommandText := CommandText + ' inner join COTAS C on CL.CLI_CODIGO = C.COT_CDCLIE Where (cl.cli_cidade = :pCidade) AND (C.COT_POSICAO = :pPOSICAO) ';
                       If not uFuncoes.Empty(M_FLSITU) Then
                            CommandText := CommandText + ' AND (C.COT_POSICAO = :pPOSICAO) ';
                       If not uFuncoes.Empty(edtBairro.Text) Then
                           CommandText := CommandText + ' and (CL.CLI_BAIRRO ='+QuotedStr(edtBairro.Text)+')';
                       CommandText := CommandText + ' Group by CL.cli_codigo, cl.cli_nome, cl.cli_cidade, CL.CLI_BAIRRO, CL.CLI_ENDERECO, CL.CLI_NUMCEP, CL.CLI_NRFONE, ';
                       CommandText := CommandText + ' cl.cli_ufclie, cl.cli_sexo, C.COT_NRVENDA, C.COT_CDGRUPO, C.cot_nrcota, C.COT_POSICAO, COT_VALCRE, ';
                       CommandText := CommandText + ' C.COT_FLCONTEMPLADO, C.COT_TAXA_ADM, C.COT_FUNDORES ';
                       CommandText := CommandText + ' Order By CL.CLI_BAIRRO ';
                       //
                       Params.ParamByName('pCidade').AsString  := edtCidade.Text;
                       If not uFuncoes.Empty(M_FLSITU) Then
                           Params.ParamByName('pPOSICAO').AsString := M_FLSITU;
                       Active := True;
                       //
                       If not (IsEmpty) Then
                         Begin
                                If FileExists(ExtractFilePath( Application.ExeName )+ udmAdmDados.M_NMFILE) Then
                                  ppImage5.Picture.LoadFromFile(ExtractFilePath( Application.ExeName )+ udmAdmDados.M_NMFILE);
                                //
                                lblCidade2.Caption := edtCidade.Text;
                                ppRepQuitados.PrintReport;
                         End
                         Else
                             Application.MessageBox('Não há dados para esta consulta.','ATENÇÃO',
                                MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                  End;      // fim-do-with
           End
           Else
           begin
            With cdsClienteParcelaPagas do
              begin
                   Active := False;
                   CommandText := 'Select CL.cli_codigo, cl.cli_nome, cl.cli_cidade, CL.CLI_BAIRRO, CL.CLI_ENDERECO, ';
                   CommandText := CommandText + 'CL.CLI_NUMCEP, CL.CLI_NRFONE, cl.cli_ufclie, cl.cli_sexo, C.COT_NRVENDA, C.COT_CDGRUPO, ';
                   CommandText := CommandText + 'C.cot_nrcota, C.COT_POSICAO, COT_VALCRE, C.COT_FLCONTEMPLADO, ';
                   CommandText := CommandText + 'R.rec_nrparc, r.rec_dtvenc, R.rec_dtpaga, R.rec_total_pago, R.REC_VLPARC, C.COT_TAXA_ADM, C.COT_FUNDORES ';
                   CommandText := CommandText + ', REC_VLMULT  From Clientes CL ';
                   CommandText := CommandText + 'inner join COTAS C on CL.CLI_CODIGO = C.COT_CDCLIE ';
                   CommandText := CommandText + 'inner join PARCELAS R on R.rec_nrvend = C.COT_NRVENDA ';
                   CommandText := CommandText + 'Where (cl.cli_cidade = :pCidade) and not (R.rec_dtpaga is null) and (r.rec_total_pago > 0) ';
                   If not uFuncoes.Empty(M_FLSITU) Then
                        CommandText := CommandText + ' AND (C.COT_POSICAO = :pPOSICAO) ';
                   If not uFuncoes.Empty(edtBairro.Text) Then
                       CommandText := CommandText + ' and (CL.CLI_BAIRRO ='+QuotedStr(edtBairro.Text)+')';
                   CommandText := CommandText + 'Group by CL.cli_codigo, cl.cli_nome, ';
                   CommandText := CommandText + 'cl.cli_cidade, CL.CLI_BAIRRO, CL.CLI_ENDERECO, CL.CLI_NUMCEP, CL.CLI_NRFONE, ';
                   CommandText := CommandText + 'cl.cli_ufclie, cl.cli_sexo, C.COT_NRVENDA, C.COT_CDGRUPO, C.cot_nrcota, C.COT_POSICAO, COT_VALCRE,';
                   CommandText := CommandText + 'C.COT_FLCONTEMPLADO, R.rec_nrparc, r.rec_dtvenc, R.rec_dtpaga, R.rec_total_pago, R.REC_VLPARC, C.COT_TAXA_ADM, C.COT_FUNDORES , REC_VLMULT ';
                   CommandText := CommandText + 'Order By CL.CLI_BAIRRO';
                   //
                   Params.ParamByName('pCidade').AsString  := edtCidade.Text;
                   If not uFuncoes.Empty(M_FLSITU) Then
                       Params.ParamByName('pPOSICAO').AsString := M_FLSITU;
                   Active := True;
                   //
                   If not (IsEmpty) Then
                     Begin
                                If FileExists(ExtractFilePath( Application.ExeName )+ udmAdmDados.M_NMFILE) Then
                                  ppImage4.Picture.LoadFromFile(ExtractFilePath( Application.ExeName )+ udmAdmDados.M_NMFILE);
                                //
                                lblCidade.Caption := edtCidade.Text;
                                ppRepClientesPagos.PrintReport;
                     End
                     Else
                         Application.MessageBox('Não há dados para esta consulta.','ATENÇÃO',
                             MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
              End;
         End;
       finally
              cdsClienteParcelaPagas.Close;
              //
              btnVisualizar.Enabled := true;
       End;
      End;
end;

procedure TfrmRelClientes.FormCreate(Sender: TObject);
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
              Strtoint(uFrmAdmMain.M_CDUSUA), dmAdmDados.GetCodMenu('Lista de Clientes'));
           //
           novo    := uFrmAdmMain.aNovo;
           alterar := uFrmAdmMain.aAlterar;
           apagar  := uFrmAdmMain.aApagar;
           //
     End;
     //
     frmMain.Limpar_Acessos;
     //
     btnVisualizar.Visible     := (novo = 'S');
   End;

end;

procedure TfrmRelClientes.rgOpcoesClick(Sender: TObject);
begin
  inherited;
      if (rgOpcoes.ItemIndex  >= 2) Then
            Panel2.Enabled := True
       Else
            Panel2.Enabled := False;
       //
       If (rgOpcoes.ItemIndex = 4) Then
          RadioGroup1.Enabled := True
       Else
          RadioGroup1.Enabled := False;
end;

procedure TfrmRelClientes.FormShow(Sender: TObject);
begin
  inherited;
     Panel2.Enabled := False;
     RadioGroup1.Enabled := False;
end;

procedure TfrmRelClientes.cdsCidadeBairroCalcFields(DataSet: TDataSet);
begin
  inherited;
     If (cdsCidadeBairroCOT_FLCONTEMPLADO.AsString = 'S') then
         cdsCidadeBairroCLI_FLCONT.AsString := 'Contemplado'
     Else
         cdsCidadeBairroCLI_FLCONT.AsString := 'Não-Contemplado';
     //
     If (cdsCidadeBairroCOT_POSICAO.AsString = 'A') then
         cdsCidadeBairroCLI_STATUS.AsString := 'Ativo';
     If (cdsCidadeBairroCOT_POSICAO.AsString = 'I') then
         cdsCidadeBairroCLI_STATUS.AsString := 'Inativo';
     If (cdsCidadeBairroCOT_POSICAO.AsString = 'P') then
         cdsCidadeBairroCLI_STATUS.AsString := 'Inativo-Pago';
     If (cdsCidadeBairroCOT_POSICAO.AsString = 'R') then
         cdsCidadeBairroCLI_STATUS.AsString := 'Reativado';
     If (cdsCidadeBairroCOT_POSICAO.AsString = 'Q') then
         cdsCidadeBairroCLI_STATUS.AsString := 'Quitado';
     //
     If not uFuncoes.Empty(cdsCidadeBairroCLI_NRFONE.AsString) Then
        cdsCidadeBairroFONE.AsString := uFuncoes.FormataFONE(cdsCidadeBairroCLI_NRFONE.AsString)
     Else
        cdsCidadeBairroFONE.AsString := '';
     //
     If not uFuncoes.Empty(cdsCidadeBairroCLI_NUMCEP.AsString) Then
         cdsCidadeBairroCEP.AsString := uFuncoes.FormataCep(cdsCidadeBairroCLI_NUMCEP.AsString)
     Else
         cdsCidadeBairroCEP.AsString := '';
end;


procedure TfrmRelClientes.cdsClientesPorBairroCalcFields(
  DataSet: TDataSet);
begin
  inherited;
     If not uFuncoes.Empty(cdsClientesPorBairroCLI_NRFONE.AsString) Then
        cdsClientesPorBairroFONE.AsString := uFuncoes.FormataFONE(cdsClientesPorBairroCLI_NRFONE.AsString)
     Else
        cdsClientesPorBairroFONE.AsString := '';
     //
     If not uFuncoes.Empty(cdsClientesPorBairroCLI_NUMCEP.AsString) Then
         cdsClientesPorBairroCEP.AsString := uFuncoes.FormataCep(cdsClientesPorBairroCLI_NUMCEP.AsString)
     Else
         cdsClientesPorBairroCEP.AsString := '';
end;

procedure TfrmRelClientes.cdsClienteParcelaPagasCalcFields(
  DataSet: TDataSet);
begin
  inherited;
     If (cdsClienteParcelaPagas.State in [dsInternalCalc]) Then
      begin
           cdsClienteParcelaPagasVALOR_CALC.AsFloat :=
                 uFuncoes.Arredondar(cdsClienteParcelaPagasREC_VLPARC.AsFloat+
                 uFuncoes.Gerapercentual(cdsClienteParcelaPagasREC_VLPARC.AsFloat, cdsClienteParcelaPagasCOT_TAXA_ADM.AsFloat)+
                 uFuncoes.Gerapercentual(cdsClienteParcelaPagasREC_VLPARC.AsFloat, cdsClienteParcelaPagasCOT_FUNDORES.AsFloat),2);
           //
           If (cdsClienteParcelaPagasCOT_FLCONTEMPLADO.AsString = 'S') then
               cdsClienteParcelaPagasCLI_FLCONT.AsString := 'Contemplado'
           Else
               cdsClienteParcelaPagasCLI_FLCONT.AsString := 'Não-Contemplado';
           //
           If (cdsClienteParcelaPagasCOT_POSICAO.AsString = 'A') then
               cdsClienteParcelaPagasCLI_STATUS.AsString := 'Ativo';
           If (cdsClienteParcelaPagasCOT_POSICAO.AsString = 'I') then
               cdsClienteParcelaPagasCLI_STATUS.AsString := 'Inativo';
           If (cdsClienteParcelaPagasCOT_POSICAO.AsString = 'P') then
               cdsClienteParcelaPagasCLI_STATUS.AsString := 'Inativo-Pago';
           If (cdsClienteParcelaPagasCOT_POSICAO.AsString = 'R') then
               cdsClienteParcelaPagasCLI_STATUS.AsString := 'Reativado';
           If (cdsClienteParcelaPagasCOT_POSICAO.AsString = 'Q') then
               cdsClienteParcelaPagasCLI_STATUS.AsString := 'Quitado';
           //
           If not uFuncoes.Empty(cdsClienteParcelaPagasCLI_NRFONE.AsString) Then
              cdsClienteParcelaPagasFONE.AsString := uFuncoes.FormataFONE(cdsClienteParcelaPagasCLI_NRFONE.AsString)
           Else
              cdsClienteParcelaPagasFONE.AsString := '';
           //
           If not uFuncoes.Empty(cdsClienteParcelaPagasCLI_NUMCEP.AsString) Then
               cdsClienteParcelaPagasCEP.AsString := uFuncoes.FormataCep(cdsClienteParcelaPagasCLI_NUMCEP.AsString)
           Else
               cdsClienteParcelaPagasCEP.AsString := '';
           //
           If (cdsClienteParcelaPagasREC_DTPAGA.AsDateTime >
               cdsClienteParcelaPagasREC_DTVENC.AsDateTime) Then
                cdsClienteParcelaPagasATRASO.AsFloat :=
                     cdsClienteParcelaPagasREC_DTPAGA.AsDateTime -
                     cdsClienteParcelaPagasREC_DTVENC.AsDateTime
           Else
               cdsClienteParcelaPagasATRASO.AsFloat := 0;
      End;
end;

procedure TfrmRelClientes.cdsClientesQuitadosCalcFields(DataSet: TDataSet);
begin
  inherited;
      If (cdsClientesQuitados.State in [dsInternalCalc]) Then
      begin
           If (cdsClientesQuitadosCOT_FLCONTEMPLADO.AsString = 'S') then
               cdsClientesQuitadosCLI_FLCONT.AsString := 'SIM'
           Else
               cdsClientesQuitadosCLI_FLCONT.AsString := 'NÃO';
           //
           If (cdsClientesQuitadosCOT_POSICAO.AsString = 'A') then
               cdsClientesQuitadosCLI_STATUS.AsString := 'Ativo';
           If (cdsClientesQuitadosCOT_POSICAO.AsString = 'I') then
               cdsClientesQuitadosCLI_STATUS.AsString := 'Inativo';
           If (cdsClientesQuitadosCOT_POSICAO.AsString = 'P') then
               cdsClientesQuitadosCLI_STATUS.AsString := 'Inativo-Pago';
           If (cdsClientesQuitadosCOT_POSICAO.AsString = 'R') then
               cdsClientesQuitadosCLI_STATUS.AsString := 'Reativado';
           If (cdsClientesQuitadosCOT_POSICAO.AsString = 'Q') then
               cdsClientesQuitadosCLI_STATUS.AsString := 'Quitado';
           //
           If not uFuncoes.Empty(cdsClientesQuitadosCLI_NRFONE.AsString) Then
              cdsClientesQuitadosFONE.AsString := uFuncoes.FormataFONE(cdsClientesQuitadosCLI_NRFONE.AsString)
           Else
              cdsClientesQuitadosFONE.AsString := '';
           //
           If not uFuncoes.Empty(cdsClientesQuitadosCLI_NUMCEP.AsString) Then
               cdsClientesQuitadosCLI_CEP.AsString := uFuncoes.FormataCep(cdsClientesQuitadosCLI_NUMCEP.AsString)
           Else
               cdsClientesQuitadosCLI_CEP.AsString := '';
      End;
end;

end.
