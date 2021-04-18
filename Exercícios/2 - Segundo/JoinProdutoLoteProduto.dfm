object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Form2'
  ClientHeight = 242
  ClientWidth = 472
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 8
    Top = 0
    Width = 320
    Height = 120
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Server=localhost'
      'User_Name=sa'
      'Password=admserver01'
      'Database=DbKairos_Aprovi'
      'DriverID=MSSQL')
    Connected = True
    LoginPrompt = False
    Left = 376
    Top = 16
  end
  object FDQuery1: TFDQuery
    Active = True
    Connection = FDConnection1
    SQL.Strings = (
      
        'SELECT PRODUTO.CODIGOPRODUTO, PRODUTO.DESCRICAO, LOTEPRODUTO.NUM' +
        'EROLOTE FROM PRODUTO'
      'INNER JOIN LoteProduto'
      'ON PRODUTO.CodigoProduto = LoteProduto.CodigoProduto'
      'WHERE PRODUTO.CodigoProduto = 402')
    Left = 384
    Top = 72
  end
  object DataSource1: TDataSource
    DataSet = FDQuery1
    Left = 384
    Top = 128
  end
end
