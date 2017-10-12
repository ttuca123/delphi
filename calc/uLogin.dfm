object FrmLogin: TFrmLogin
  Left = 0
  Top = 0
  Caption = 'FrmLogin'
  ClientHeight = 112
  ClientWidth = 194
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 8
    Top = 0
    Width = 185
    Height = 105
    Caption = 'Login'
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 40
      Width = 30
      Height = 13
      Caption = 'Senha'
    end
    object EdtSenha: TEdit
      Left = 80
      Top = 40
      Width = 89
      Height = 21
      PasswordChar = '*'
      TabOrder = 0
    end
    object BtnOK: TButton
      Left = 80
      Top = 67
      Width = 75
      Height = 25
      Caption = 'Logar'
      TabOrder = 1
      OnClick = BtnOKClick
    end
  end
end
