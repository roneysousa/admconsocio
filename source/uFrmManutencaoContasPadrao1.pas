unit uFrmManutencaoContasPadrao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Buttons, StdCtrls, Mask, ToolEdit, DBCtrls, Grids,
  DBGrids, FMTBcd, DB, SqlExpr, DBClient, Provider;

type
  TFrmManutencaoContasPadrao = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Label1: TLabel;
    edtDTINICIAL: TDateEdit;
    edtDTFINAL: TDateEdit;
    Label3: TLabel;
    edtCodigo: TEdit;
    spLocalizar: TSpeedButton;
    edtDescricao: TEdit;
    rgPeriodos: TRadioGroup;
    rgSituacao: TRadioGroup;
    Label5: TLabel;
    Label7: TLabel;
    lbl_TOTABERTAS: TLabel;
    lbl_RECEBIDAS: TLabel;
    DBNavigator1: TDBNavigator;
    BtEditar: TBitBtn;
    BtExcluir: TBitBtn;
    BtSair: TBitBtn;
    grdConsultar: TDBGrid;
    dstConsulta: TSQLDataSet;
    dspConsulta: TDataSetProvider;
    cdsConsulta: TClientDataSet;
    dsConsulta: TDataSource;
    btFiltar: TBitBtn;
    procedure BtSairClick(Sender: TObject);
    procedure edtDTINICIALExit(Sender: TObject);
    procedure edtDTFINALExit(Sender: TObject);
    procedure edtDTINICIALChange(Sender: TObject);
    procedure edtDTFINALChange(Sender: TObject);
    procedure edtCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure edtCodigoChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure LimparLabels;
  end;

var
  FrmManutencaoContasPadrao: TFrmManutencaoContasPadrao;

implementation

uses udmAdmDados, uFuncoes;

{$R *.dfm}

procedure TFrmManutencaoContasPadrao.BtSairClick(Sender: TObject);
begin
      Close;
end;

procedure TFrmManutencaoContasPadrao.edtDTINICIALExit(Sender: TObject);
begin
     If not uFuncoes.Empty(uFuncoes.RemoveChar(edtDTINICIAL.Text)) Then
     Begin
          try
              StrToDate(edtDTINICIAL.Text);
              edtDTINICIAL.Text := DatetoStr(edtDTINICIAL.Date);
              //
           except
                on EConvertError do
                Begin
                     Application.MessageBox(PChar('Data Inválida!!!'),
                         'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                     edtDTINICIAL.Clear;
                     edtDTINICIAL.SetFocus;
                End;
           end;
     End;
end;

procedure TFrmManutencaoContasPadrao.edtDTFINALExit(Sender: TObject);
begin
     If not uFuncoes.Empty(ufuncoes.RemoveChar(edtDTFINAL.Text)) Then
     Begin
          try
              StrToDate(edtDTFINAL.Text);
              edtDTFINAL.Text := DatetoStr(edtDTFINAL.Date);
              //
              If (edtDTFINAL.Date < edtDTINICIAL.Date) Then
              Begin
                   Application.MessageBox(PChar('Período final deve ser maior ou igual ao inicial!!!'),
                         'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                   edtDTFINAL.Date := Date;
                   edtDTFINAL.SetFocus;
                   Exit;
              End;
          except
                on EConvertError do
                Begin
                     Application.MessageBox(PChar('Data Inválida!!!'),
                         'ATENÇÃO', MB_OK+MB_ICONINFORMATION+MB_APPLMODAL);
                     edtDTFINAL.Clear;
                     edtDTFINAL.SetFocus;
                End;
           end;
     End;  
end;

procedure TFrmManutencaoContasPadrao.edtDTINICIALChange(Sender: TObject);
begin
   If uFuncoes.Empty(uFuncoes.RemoveChar(edtDTINICIAL.Text)) Then
    begin
         cdsConsulta.Close;
         LimparLabels;
    End;
end;

procedure TFrmManutencaoContasPadrao.edtDTFINALChange(Sender: TObject);
begin
   If uFuncoes.Empty(uFuncoes.RemoveChar(edtDTFINAL.Text)) Then
   begin
         cdsConsulta.Close;
         LimparLabels;
   End;
end;

procedure TFrmManutencaoContasPadrao.edtCodigoKeyPress(Sender: TObject;
  var Key: Char);
begin
     If not( key in['0'..'9',#8, #13] ) then
         key:=#0;
     If (key = #13) and not uFuncoes.Empty(edtCodigo.Text) Then
     Begin
          Key := #0;
          rgSituacao.SetFocus;
     End;
     //
     {If (key = #13) and uFuncoes.Empty(edtCodigo.Text) Then
     Begin
          Key := #0;
          spLocalizarClick(Sender);
     End;}
end;

procedure TFrmManutencaoContasPadrao.LimparLabels;
begin
     lbl_TOTABERTAS.Caption := '0,00';
     lbl_RECEBIDAS.Caption  := '0,00';
end;

procedure TFrmManutencaoContasPadrao.FormShow(Sender: TObject);
begin
     KeyPreview := true;
     edtDTINICIAL.Date := Date();
     edtDTFINAL.Date   := edtDTINICIAL.Date;
end;

procedure TFrmManutencaoContasPadrao.FormKeyPress(Sender: TObject;
  var Key: Char);
begin
     if (Key = #13) then
       if not (ActiveControl is TDBGrid) then
       begin
            if not (ActiveControl is TDBMemo) Then
            begin
                Key := #0;
                Perform(WM_NEXTDLGCTL, 0, 0);
            End;
       end
       else if (ActiveControl is TDBGrid) then
          with TDBGrid(ActiveControl) do
             if selectedindex < (fieldcount -1) then
               selectedindex := selectedindex +1
             else
               selectedindex := 0;
end;

procedure TFrmManutencaoContasPadrao.edtCodigoChange(Sender: TObject);
begin
     if ufuncoes.Empty(edtCodigo.Text) Then
        LimparLabels;
end;

end.
