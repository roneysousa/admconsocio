unit uFrmDados;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids;

type
  TfrmDados = class(TForm)
    grdConsultar: TDBGrid;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDados: TfrmDados;

implementation

Uses uFrmRelCorrespondenciasDiversas;

{$R *.dfm}

end.
