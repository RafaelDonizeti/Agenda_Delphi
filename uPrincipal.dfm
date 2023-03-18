object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Agenda '
  ClientHeight = 484
  ClientWidth = 702
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object StatusBar1: TStatusBar
    Left = 0
    Top = 452
    Width = 702
    Height = 32
    Panels = <
      item
        Alignment = taCenter
        Width = 300
      end
      item
        Alignment = taCenter
        Width = 50
      end
      item
        Alignment = taCenter
        Text = 'Sistema de Agenda'
        Width = 50
      end>
    ExplicitTop = 464
    ExplicitWidth = 735
  end
  object Timer1: TTimer
    OnTimer = Timer1Timer
    Left = 624
    Top = 392
  end
  object MainMenu1: TMainMenu
    Left = 616
    Top = 288
    object Cadastro1: TMenuItem
      Caption = 'Cadastro'
      OnClick = Cadastro1Click
    end
    object Alterao1: TMenuItem
      Caption = 'Altera'#231#227'o'
      OnClick = Alterao1Click
    end
    object ConsultasRelatrios1: TMenuItem
      Caption = 'Consultas/Relat'#243'rios'
      OnClick = ConsultasRelatrios1Click
    end
    object Excluses1: TMenuItem
      Caption = 'Exclus'#245'es'
    end
    object Sair1: TMenuItem
      Caption = 'Sair'
    end
  end
end
