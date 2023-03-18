object fRelConsulta: TfRelConsulta
  Left = 0
  Top = 0
  Caption = 'fRelConsulta'
  ClientHeight = 544
  ClientWidth = 754
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object RelConsulta: TRLReport
    Left = -5
    Top = 72
    Width = 794
    Height = 1123
    DataSource = fConsulta.dsqConEsc
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 75
      BandType = btTitle
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = False
      BeforePrint = RLBand1BeforePrint
      object Label1: TLabel
        Left = 200
        Top = 24
        Width = 311
        Height = 19
        Caption = 'Relat'#243'rio de Consulta Conforme Escolha'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lbEscolha: TLabel
        Left = 304
        Top = 49
        Width = 75
        Height = 18
        Caption = 'lbEscolha'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = [fsBold, fsItalic]
        ParentColor = False
        ParentFont = False
      end
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 113
      Width = 718
      Height = 320
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object RLLabel1: TRLLabel
        Left = 56
        Top = 32
        Width = 44
        Height = 16
        Caption = 'C'#243'digo'
      end
      object RLLabel2: TRLLabel
        Left = 384
        Top = 32
        Width = 105
        Height = 16
        Caption = 'Data do Cadastro'
      end
      object RLLabel3: TRLLabel
        Left = 56
        Top = 80
        Width = 38
        Height = 16
        Caption = 'Nome'
      end
      object RLLabel4: TRLLabel
        Left = 56
        Top = 122
        Width = 59
        Height = 16
        Caption = 'Endere'#231'o'
      end
      object RLLabel5: TRLLabel
        Left = 56
        Top = 162
        Width = 38
        Height = 16
        Caption = 'Bairro'
      end
      object RLLabel6: TRLLabel
        Left = 384
        Top = 152
        Width = 31
        Height = 16
        Caption = 'CEP'
      end
      object RLLabel7: TRLLabel
        Left = 56
        Top = 202
        Width = 44
        Height = 16
        Caption = 'Cidade'
      end
      object RLLabel8: TRLLabel
        Left = 56
        Top = 236
        Width = 52
        Height = 16
        Caption = 'Telefone'
      end
      object RLLabel9: TRLLabel
        Left = 56
        Top = 288
        Width = 122
        Height = 16
        Caption = 'Data de Nascimento'
      end
      object RLDBText1: TRLDBText
        Left = 130
        Top = 32
        Width = 64
        Height = 16
        DataField = 'id_contato'
        DataSource = fConsulta.dsqConEsc
        Text = ''
      end
      object RLDBText2: TRLDBText
        Left = 512
        Top = 32
        Width = 86
        Height = 16
        DataField = 'data_cadastro'
        DataSource = fConsulta.dsqConEsc
        Text = ''
      end
      object RLDBText3: TRLDBText
        Left = 129
        Top = 80
        Width = 36
        Height = 16
        DataField = 'nome'
        DataSource = fConsulta.dsqConEsc
        Text = ''
      end
      object RLDBText4: TRLDBText
        Left = 130
        Top = 122
        Width = 57
        Height = 16
        DataField = 'endereco'
        DataSource = fConsulta.dsqConEsc
        Text = ''
      end
      object RLDBText5: TRLDBText
        Left = 129
        Top = 152
        Width = 36
        Height = 16
        DataField = 'bairro'
        DataSource = fConsulta.dsqConEsc
        Text = ''
      end
      object RLDBText6: TRLDBText
        Left = 129
        Top = 224
        Width = 49
        Height = 16
        DataField = 'telefone'
        DataSource = fConsulta.dsqConEsc
        Text = ''
      end
      object RLDBText7: TRLDBText
        Left = 129
        Top = 184
        Width = 42
        Height = 16
        DataField = 'cidade'
        DataSource = fConsulta.dsqConEsc
        Text = ''
      end
      object RLLabel10: TRLLabel
        Left = 384
        Top = 192
        Width = 45
        Height = 16
        Caption = 'Estado'
      end
      object RLDBText8: TRLDBText
        Left = 200
        Top = 288
        Width = 64
        Height = 16
        DataField = 'data_nasc'
        DataSource = fConsulta.dsqConEsc
        Text = ''
      end
      object RLDBText9: TRLDBText
        Left = 442
        Top = 192
        Width = 43
        Height = 16
        DataField = 'estado'
        DataSource = fConsulta.dsqConEsc
        Text = ''
      end
      object RLDBText10: TRLDBText
        Left = 442
        Top = 152
        Width = 25
        Height = 16
        DataField = 'cep'
        DataSource = fConsulta.dsqConEsc
        Text = ''
      end
      object RLLabel11: TRLLabel
        Left = 56
        Top = 266
        Width = 41
        Height = 16
        Caption = 'E-mail'
      end
      object RLDBText11: TRLDBText
        Left = 130
        Top = 258
        Width = 35
        Height = 16
        DataField = 'email'
        DataSource = fConsulta.dsqConEsc
        Text = ''
      end
    end
  end
end
