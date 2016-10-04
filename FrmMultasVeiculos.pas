unit FrmMultasVeiculos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids, Vcl.DBCtrls,
  Vcl.StdCtrls, Vcl.Mask, Data.DB, Vcl.ExtCtrls, IWVCLBaseControl,
  IWBaseControl, IWBaseHTMLControl, IWControl, IWCompListbox, IWDBStdCtrls;

type
  TFrmMultaVeiculos = class(TForm)
    DBNavigator1: TDBNavigator;
    DBEdit1: TDBEdit;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    DBEdit3: TDBEdit;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    Label6: TLabel;
    IWDBLookupComboBox1: TIWDBLookupComboBox;
    DSveiculo: TDataSource;
    DSMultas: TDataSource;
    DSproprietario: TDataSource;
    DBNavigator2: TDBNavigator;
    EDTitem: TDBEdit;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    EDTdata: TDBEdit;
    EDThora: TDBEdit;
    EDTvalor: TDBEdit;
    EDTlocal: TDBEdit;
    Label12: TLabel;
    DBGrid2: TDBGrid;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMultaVeiculos: TFrmMultaVeiculos;

implementation

{$R *.dfm}

uses FareDAC01;

procedure TFrmMultaVeiculos.FormCreate(Sender: TObject);
begin
DM.QuyVeiculo.Open();
DM.QuyMulta.Open();
end;

procedure TFrmMultaVeiculos.FormDestroy(Sender: TObject);
begin
DM.QuyVeiculo.Close;
DM.QuyMulta.Close;
end;

end.
