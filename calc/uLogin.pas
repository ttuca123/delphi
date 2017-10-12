unit uLogin;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TFrmLogin = class(TForm)
    GroupBox1: TGroupBox;
    EdtSenha: TEdit;
    Label1: TLabel;
    BtnOK: TButton;
    procedure BtnOKClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmLogin: TFrmLogin;

implementation

{$R *.dfm}

uses uPrincipal;

procedure TFrmLogin.BtnOKClick(Sender: TObject);
var

FormPrincipal : TFrmPrincipal;

begin
  if(EdtSenha.Text = '123') then
  begin
     // ShowMessage('Certo');
    FormPrincipal := TFrmPrincipal.Create(Application);
    FormPrincipal.Show;
    FrmLogin.Hide;
    FormPrincipal.FreeOnRelease;

   end

end;

end.
