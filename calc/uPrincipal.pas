unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ToolWin, Vcl.ComCtrls,
  Vcl.Menus;

type
  TFrmPrincipal = class(TForm)
    StatusBar1: TStatusBar;
    Label1: TLabel;
    Label2: TLabel;
    edtN1: TEdit;
    EdtN2: TEdit;
    BtnSomar: TButton;
    BtnSubtrair: TButton;
    BtnMultiplicar: TButton;
    BtnDividir: TButton;
    TxtResult: TLabel;
    MainMenu1: TMainMenu;
    Calculadora1: TMenuItem;
    Limpar1: TMenuItem;
    Sobre1: TMenuItem;
    Sair1: TMenuItem;
    procedure FormClick(Sender: TObject);
    procedure BtnSomarClick(Sender: TObject);
    procedure BtnSubtrairClick(Sender: TObject);
    procedure BtnMultiplicarClick(Sender: TObject);
    procedure BtnDividirClick(Sender: TObject);
    procedure Sobre1Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure Limpar1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmPrincipal: TFrmPrincipal;

implementation

{$R *.dfm}

uses uSobre, uLogin;



procedure TFrmPrincipal.BtnSomarClick(Sender: TObject);

var resultado : integer;

begin
    // edtN1.text := '000';
     resultado := StrToInt(edtN1.Text) + StrToInt(edtN2.Text);
     ShowMessage(IntToStr(resultado));
     TxtResult.Caption := 'Resultado:'+IntToStr(resultado);
     TxtResult.Visible := true;
end;


procedure TFrmPrincipal.BtnSubtrairClick(Sender: TObject);

var resultado : integer;

begin
    // edtN1.text := '000';
     resultado := StrToInt(edtN1.Text) - StrToInt(edtN2.Text);
     ShowMessage(IntToStr(resultado));
     TxtResult.Caption := 'Resultado:'+IntToStr(resultado);
     TxtResult.Visible := true;
end;


procedure TFrmPrincipal.BtnMultiplicarClick(Sender: TObject);

var resultado : integer;

begin
    // edtN1.text := '000';
     resultado := StrToInt(edtN1.Text) * StrToInt(edtN2.Text);
     ShowMessage(IntToStr(resultado));
     TxtResult.Caption := 'Resultado:'+IntToStr(resultado);
     TxtResult.Visible := true;
end;


procedure TFrmPrincipal.BtnDividirClick(Sender: TObject);

var resultado : real;

begin
    // edtN1.text := '000';
     resultado := StrToInt(edtN1.Text) / StrToInt(edtN2.Text);
     ShowMessage(FloatToStr(resultado));
     TxtResult.Caption := 'Resultado:'+FloatToStr(resultado);
     TxtResult.Visible := true;
end;



procedure TFrmPrincipal.FormClick(Sender: TObject);
begin
   ShowMessage('O form foi clicado');

end;

procedure TFrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FrmLogin.Close;
end;

procedure TFrmPrincipal.Limpar1Click(Sender: TObject);
begin
  edtN1.Text := '0';
  edtN2.Text := '0';
  TxtResult.Caption := '0';

end;

procedure TFrmPrincipal.Sair1Click(Sender: TObject);
begin
    Application.Terminate;
end;

procedure TFrmPrincipal.Sobre1Click(Sender: TObject);
var
FormSobre : TFrmSobre;

begin
      //  ShowMessage('Calculadora v 1.0');
//      uSobre.FrmSobre.Show;
    FormSobre := TFrmSobre.Create(Application);
    FormSobre.ShowModal;
    FormSobre.FreeOnRelease;
end;

end.
