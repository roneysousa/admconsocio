unit uFrmSelecionarBanco;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, DB, Grids, DBGrids;

type
  TFrmSelecionarBanco = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    btnOK: TBitBtn;
    BitBtn2: TBitBtn;
    dsDados: TDataSource;
    grdConsultar: TDBGrid;
    procedure FormShow(Sender: TObject);
    procedure btnOKClick(Sender: TObject);
    procedure grdConsultarDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmSelecionarBanco: TFrmSelecionarBanco;

implementation

uses udmAdmDados, uFuncoes;

{$R *.dfm}

procedure TFrmSelecionarBanco.FormShow(Sender: TObject);
begin
     uFuncoes.RefreshCDS(dmAdmDados.cdsListaCedenteBancos);
end;

procedure TFrmSelecionarBanco.btnOKClick(Sender: TObject);
begin
    ModalResult := mrOk;
end;

procedure TFrmSelecionarBanco.grdConsultarDblClick(Sender: TObject);
begin
      if (dsDados.DataSet.Active) and not (dsDados.DataSet.IsEmpty) Then
          btnOKClick(Sender);
end;

End.
