unit MasterDetailComAssincronia;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MSSQL,
  FireDAC.Phys.MSSQLDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, FireDAC.Comp.Client, FireDAC.Comp.DataSet;

type
  TForm5 = class(TForm)
    FDConnection1: TFDConnection;
    FDQuery1: TFDQuery;
    DataSource1: TDataSource;
    FDMemTable1: TFDMemTable;
    DBGrid1: TDBGrid;
    Button1: TButton;
    FDQuery2: TFDQuery;
    FDMemTable2: TFDMemTable;
    DBGrid2: TDBGrid;
    DataSource2: TDataSource;
    procedure Button1Click(Sender: TObject);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}

procedure TForm5.Button1Click(Sender: TObject);
begin
  FDQuery1.Open('Select * from produto');
  FDQuery2.Open('Select * from loteproduto');
  FDMemTable2.CopyDataSet(FDQuery2, [coStructure, coAppend, coRestart]);
  FDMemTable1.CopyDataSet(FDQuery1, [coStructure, coAppend, coRestart]);
  FDQuery1.close;
  FDQuery2.close;
end;

procedure TForm5.DataSource1DataChange(Sender: TObject; Field: TField);
begin

  FDMemTable2.Filtered := false;
  FDMemTable2.Filter := 'CodigoProduto = ' + FDMemTable1.FieldByName
    ('CodigoProduto').AsString;

  FDMemTable2.Filtered := true;
end;

end.
