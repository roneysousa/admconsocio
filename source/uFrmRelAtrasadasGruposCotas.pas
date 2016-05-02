unit uFrmRelAtrasadasGruposCotas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uFrmModRelatorio, StdCtrls, Buttons, ExtCtrls, Grids, DBGrids,
  DBCtrls, Mask, Spin, ToolEdit, CurrEdit, DB;

type
  TfrmRelAtrasadasGruposCotas = class(TfrmModRelatorio)
    GroupBox1: TGroupBox;
    DBNavigator1: TDBNavigator;
    grdConsultar: TDBGrid;
    GroupBox2: TGroupBox;
    DBNavigator2: TDBNavigator;
    DBGrid1: TDBGrid;
    GroupBox3: TGroupBox;
    RadioGroup1: TRadioGroup;
    RadioGroup2: TRadioGroup;
    RadioGroup3: TRadioGroup;
    RadioGroup4: TRadioGroup;
    RadioGroup5: TRadioGroup;
    RadioGroup6: TRadioGroup;
    RadioGroup7: TRadioGroup;
    GroupBox4: TGroupBox;
    CheckBox1: TCheckBox;
    CurrencyEdit3: TCurrencyEdit;
    Label9: TLabel;
    CheckBox2: TCheckBox;
    RadioGroup8: TRadioGroup;
    RadioGroup9: TRadioGroup;
    ComboBox1: TComboBox;
    Label6: TLabel;
    Label1: TLabel;
    Edit1: TEdit;
    Label12: TLabel;
    DateEdit1: TDateEdit;
    Label2: TLabel;
    DateEdit2: TDateEdit;
    SpinEdit1: TSpinEdit;
    Label3: TLabel;
    GroupBox5: TGroupBox;
    DBGrid2: TDBGrid;
    DataSource1: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelAtrasadasGruposCotas: TfrmRelAtrasadasGruposCotas;

implementation

uses udmAdmDados, uFuncoes;

{$R *.dfm}

procedure TfrmRelAtrasadasGruposCotas.FormShow(Sender: TObject);
begin
  inherited;
       uFuncoes.RefreshCDS(dmAdmDados.cdsListaGrupos2);
       //
       //
       {dmAdmDados.cdsListaGrupos2.First;
       dmAdmDados.Abrir_Cotas_Grupo(dmAdmDados.cdsListaGrupos2.FieldByName('GRU_CODIGO').AsInteger);}
end;

procedure TfrmRelAtrasadasGruposCotas.Timer1Timer(Sender: TObject);
begin
  inherited;
     if not (dmAdmDados.cdsListaGrupos2.IsEmpty) Then
        dmAdmDados.Abrir_Cotas_Grupo(dmAdmDados.cdsListaGrupos2.FieldByName('GRU_CODIGO').AsInteger);
end;

procedure TfrmRelAtrasadasGruposCotas.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
     dmAdmDados.cdsListaGrupos2.Close; 
end;

end.
