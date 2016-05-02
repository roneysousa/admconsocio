unit uFrmConsulta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, Grids, DBGrids, FMTBcd, DBClient,
  Provider, DB, SqlExpr;

type
  TfrmConsulta = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    lblConsultar: TLabel;
    edtConsultar: TEdit;
    btnConfirma: TBitBtn;
    grdConsultar: TDBGrid;
    dsConsultar: TDataSource;
    datasetConsultar: TSQLDataSet;
    dspConsultar: TDataSetProvider;
    cdsConsultar: TClientDataSet;
    procedure grdConsultarDblClick(Sender: TObject);
    procedure edtConsultarKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsulta: TfrmConsulta;

implementation

uses udmAdmDados, uFuncoes;

{$R *.dfm}

procedure TfrmConsulta.edtConsultarKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
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

procedure TfrmConsulta.grdConsultarDblClick(Sender: TObject);
begin
      Close;
end;

end.
