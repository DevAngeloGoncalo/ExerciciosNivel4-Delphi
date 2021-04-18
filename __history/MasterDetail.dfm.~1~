object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Form3'
  ClientHeight = 534
  ClientWidth = 775
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object TabSheet: TPageControl
    Left = 2
    Top = 8
    Width = 769
    Height = 522
    ActivePage = TabSheet2
    Align = alCustom
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Ruim'
      object Label1: TLabel
        Left = 3
        Top = 13
        Width = 43
        Height = 13
        Caption = 'Produtos'
      end
      object Label3: TLabel
        Left = 384
        Top = 13
        Width = 21
        Height = 13
        Caption = 'Lote'
      end
      object DBGrid1: TDBGrid
        Left = 3
        Top = 32
        Width = 345
        Height = 428
        Align = alCustom
        DataSource = DataSourceProduto
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'CodigoProduto'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Descricao'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'DataCadastro'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'AlteracaoUsuario'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'AlteracaoDataHora'
            Visible = True
          end>
      end
      object DBGrid2: TDBGrid
        Left = 384
        Top = 32
        Width = 361
        Height = 428
        Align = alCustom
        DataSource = DataSourceLote
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object Button1: TButton
        Left = 3
        Top = 466
        Width = 75
        Height = 25
        Caption = 'Ruim'
        TabOrder = 2
        OnClick = Button1Click
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Bom'
      ImageIndex = 1
      object Label4: TLabel
        Left = 3
        Top = 13
        Width = 43
        Height = 13
        Caption = 'Produtos'
      end
      object Label5: TLabel
        Left = 426
        Top = 13
        Width = 21
        Height = 13
        Caption = 'Lote'
      end
      object DBGrid3: TDBGrid
        Left = 3
        Top = 32
        Width = 366
        Height = 428
        Align = alCustom
        DataSource = DataSourceProduto
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object DBGrid4: TDBGrid
        Left = 426
        Top = 32
        Width = 320
        Height = 428
        Align = alCustom
        DataSource = DataSourceLote
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
      object Button2: TButton
        Left = 3
        Top = 466
        Width = 75
        Height = 25
        Caption = 'Bom'
        TabOrder = 2
        OnClick = Button2Click
      end
    end
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=DbKairos_Aprovi'
      'User_Name=sa'
      'Password=admserver01'
      'Server=localhost'
      'DriverID=MSSQL')
    LoginPrompt = False
    Left = 416
    Top = 440
  end
  object FDQueryProduto: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM PRODUTO')
    Left = 216
    Top = 488
  end
  object DataSourceProduto: TDataSource
    DataSet = FDQueryProduto
    OnDataChange = DataSourceProdutoDataChange
    Left = 304
    Top = 488
  end
  object FDQueryLote: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'SELECT * FROM LOTEPRODUTO')
    Left = 600
    Top = 496
  end
  object DataSourceLote: TDataSource
    DataSet = FDQueryLote
    Left = 688
    Top = 496
  end
end
