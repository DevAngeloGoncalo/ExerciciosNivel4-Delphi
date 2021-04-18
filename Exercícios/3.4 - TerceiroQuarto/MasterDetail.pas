unit MasterDetail;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MSSQL,
  FireDAC.Phys.MSSQLDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.ComCtrls;

type
  TForm3 = class(TForm)
    FDConnection1: TFDConnection;
    FDQueryProduto: TFDQuery;
    DataSourceProduto: TDataSource;
    FDQueryLote: TFDQuery;
    DataSourceLote: TDataSource;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    DBGrid2: TDBGrid;
    DBGrid3: TDBGrid;
    DBGrid4: TDBGrid;
    Button1: TButton;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    TabSheet: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure DataSourceProdutoDataChange(Sender: TObject; Field: TField);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.Button1Click(Sender: TObject);
begin
  FDQueryProduto.Open;
end;

procedure TForm3.Button2Click(Sender: TObject);
begin
  FDQueryLote.Open;
  FDQueryProduto.Open;
end;

procedure TForm3.DataSourceProdutoDataChange(Sender: TObject; Field: TField);
begin
  if TabSheet1.Visible = true then
  begin
    FDQueryLote.SQL.Clear;
    FDQueryLote.SQL.Add('SELECT * FROM LOTEPRODUTO');
    FDQueryLote.SQL.Add('WHERE CodigoProduto = ' + FDQueryProduto.FieldByName
      ('CodigoProduto').AsString);
    FDQueryLote.Open;
  end
  else
  begin
    FDQueryLote.Filtered := false;

    FDQueryLote.Filter := 'CodigoProduto = ' + FDQueryProduto.FieldByName
      ('CodigoProduto').AsString;

    FDQueryLote.Filtered := true;
  end;
end;
end.
