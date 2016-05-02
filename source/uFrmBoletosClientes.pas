unit uFrmBoletosClientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, Grids, DBGrids, DBCtrls, DB, Mask,
  ToolEdit, FMTBcd, Provider, SqlExpr, DBClient;

type
  TfrmBoletosClientes = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    BtSair: TBitBtn;
    grdConsultar: TDBGrid;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    DataSource1: TDataSource;
    Panel3: TPanel;
    lblConsultar: TLabel;
    edtGrupo: TEdit;
    spLocalizarGrupo: TSpeedButton;
    lblNomeGrupo: TLabel;
    Label5: TLabel;
    edtBanco: TEdit;
    spLocalizarBanco: TSpeedButton;
    lblNomeBanco: TLabel;
    BitBtn1: TBitBtn;
    edtDTINIC: TDateEdit;
    edtDTFINA: TDateEdit;
    cdsBoletosClientes: TClientDataSet;
    cdsBoletosClientesCOT_NRVENDA: TIntegerField;
    cdsBoletosClientesCOT_CDGRUPO: TIntegerField;
    cdsBoletosClientesCOT_NRCOTA: TIntegerField;
    cdsBoletosClientesCOT_CDCLIE: TIntegerField;
    cdsBoletosClientesCOT_POSICAO: TStringField;
    cdsBoletosClientesCOUNT: TIntegerField;
    dsBoletosClientes: TDataSource;
    dstBoletos: TSQLDataSet;
    dspBoletos: TDataSetProvider;
    procedure BtSairClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure dsBoletosClientesDataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
    procedure Consultar(aDTINIC, ADTFINA : TDate);
  public
    { Public declarations }
  end;

var
  frmBoletosClientes: TfrmBoletosClientes;

implementation

Uses uFrmEmissaoSlipBanc, udmAdmDados;

{$R *.dfm}

procedure TfrmBoletosClientes.BtSairClick(Sender: TObject);
begin
     Close;
end;

procedure TfrmBoletosClientes.BitBtn1Click(Sender: TObject);
begin
      Consultar(edtDTINIC.Date, edtDTFINA.Date);

end;

procedure TfrmBoletosClientes.Consultar(aDTINIC, ADTFINA : TDate);
Var
   Texto : String;
begin
     Texto := 'Select C.cot_nrvenda, C.cot_cdgrupo, C.cot_nrcota, C.cot_cdclie, ';
     Texto := Texto + 'C.cot_posicao, COUNT(PC.rec_nrvend) FROM cotas C ';
     Texto := Texto + 'inner join PARCELAS PC on C.cot_nrvenda = PC.rec_nrvend';
     Texto := Texto + 'Where (C.cot_cdgrupo = :pGRUPO) And (C.cot_posicao = :pposicao)';
     Texto := Texto + 'And (PC.REC_DTPAGA IS NULL) AND (PC.rec_dtvenc >= :pDTINIC) ';
     Texto := Texto + 'AND (PC.rec_dtvenc <= :pDTFINA) ';
     Texto := Texto + 'Group by C.cot_nrvenda, C.cot_cdgrupo, C.cot_nrcota, C.cot_cdclie, C.cot_posicao';
     //
     With cdsBoletosClientes do
      begin
          Active := False;
          //CommandText :=  texto;
          Params.ParamByName('pGRUPO').AsInteger  := StrtoInt(edtGrupo.Text);
          Params.ParamByName('pposicao').AsString := 'A';
          Params.ParamByName('pDTINIC').AsDate    := edtDTINIC.Date;
          Params.ParamByName('pDTFINA').AsDate    := edtDTFINA.Date;
          Active := True;
      End;

end;

procedure TfrmBoletosClientes.dsBoletosClientesDataChange(Sender: TObject;
  Field: TField);
begin
      dmAdmDados.MOSTRA_SITUACAO_COTA2(cdsBoletosClientesCOT_NRVENDA.AsInteger, cdsBoletosClientesCOT_CDGRUPO.AsInteger,
         cdsBoletosClientesCOT_NRCOTA.AsInteger, 'A', '1');
end;

end.
