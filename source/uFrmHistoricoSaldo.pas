unit uFrmHistoricoSaldo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGrids, StdCtrls, Buttons, FMTBcd, DB,
  DBClient, Provider, SqlExpr, ppDB, ppDBPipe, ppComm, ppRelatv, ppProd,
  ppClass, ppReport, ppCtrls, ppPrnabl, ppBands, ppCache, ppVar;

type
  TfrmHisSaldo = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    btnFechar: TBitBtn;
    dstConsulta: TSQLDataSet;
    dspConsulta: TDataSetProvider;
    cdsConsulta: TClientDataSet;
    dsConsulta: TDataSource;
    grdConsultar: TDBGrid;
    cdsConsultaSLD_NRVENDA: TIntegerField;
    cdsConsultaSLD_GRUPO: TIntegerField;
    cdsConsultaSLD_COTA: TIntegerField;
    cdsConsultaSLD_CLIENTE: TIntegerField;
    cdsConsultaSLD_VALOR: TFMTBCDField;
    lblSaldo: TLabel;
    btnImprimir: TBitBtn;
    ppReport1: TppReport;
    ppDBPipeline1: TppDBPipeline;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppImage1: TppImage;
    ppLabel74: TppLabel;
    ppLabel5: TppLabel;
    txtNmCliente: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    ppLine3: TppLine;
    ppLabel6: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppLine14: TppLine;
    ppLabel75: TppLabel;
    ppSystemVariable7: TppSystemVariable;
    ppLabel76: TppLabel;
    ppSystemVariable8: TppSystemVariable;
    procedure btnFecharClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmHisSaldo: TfrmHisSaldo;

implementation

uses udmAdmDados;

{$R *.dfm}

procedure TfrmHisSaldo.btnFecharClick(Sender: TObject);
begin
     Close;
end;

procedure TfrmHisSaldo.FormShow(Sender: TObject);
Var
    fSaldo : Double;
begin
      With cdsConsulta do
       begin
            DisableControls;
            First;
            fSaldo := 0;
            While not (Eof) do
              begin
                   fSaldo := fSaldo +  FieldByname('SLD_VALOR').AsFloat;
                   //
                   Next
              End;
             //
             First;  
             EnableControls;
       End;
      lblSaldo.Caption := 'Saldo : ' + FormatFloat('###,##0.#0', fSaldo) ;
end;

procedure TfrmHisSaldo.btnImprimirClick(Sender: TObject);
begin
     with ppReport1 do
     begin
          If FileExists(ExtractFilePath( Application.ExeName )+ udmAdmDados.M_NMFILE) Then
            ppImage1.Picture.LoadFromFile(ExtractFilePath( Application.ExeName )+ udmAdmDados.M_NMFILE);
          //
          txtNmCliente.Caption := dmAdmDados.GetNomeCliente(cdsConsultaSLD_CLIENTE.AsInteger);
          //
          PrintReport;
     End;
end;

end.
