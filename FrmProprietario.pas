unit FrmProprietario;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls, Vcl.ExtCtrls;

type
  TFrmProprietarioo = class(TForm)
    EDTCodigo: TDBEdit;
    Label1: TLabel;
    EDTNome: TDBEdit;
    EDTEndereco: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    GridProprietario: TDBGrid;
    DSProprietario: TDataSource;
    DBNavigator1: TDBNavigator;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmProprietarioo: TFrmProprietarioo;

implementation

{$R *.dfm}

uses FareDAC01;

procedure TFrmProprietarioo.FormCreate(Sender: TObject);
begin
  DM.QuyProprietario.Open();
end;

procedure TFrmProprietarioo.FormDestroy(Sender: TObject);
begin
  DM.QuyProprietario.Close;
end;

end.
