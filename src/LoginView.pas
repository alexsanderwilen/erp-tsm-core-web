unit LoginView;

interface

uses
  System.SysUtils, System.Classes, JS, Web,
  WEBLib.Forms, WEBLib.Controls, WEBLib.StdCtrls, WEBLib.Dialogs;

type
  TfrmLogin = class(TWebForm)
    procedure WebFormCreate(Sender: TObject);
  private
    procedure ConfigurarEventos;
    procedure EfetuarLogin;
  end;

var
  frmLogin: TfrmLogin;

implementation

{$R *.dfm}

procedure TfrmLogin.WebFormCreate(Sender: TObject);
begin
  ConfigurarEventos;
end;

procedure TfrmLogin.ConfigurarEventos;
var
  BtnEntrar: TJSHTMLElement;
  EdtSenha: TJSHTMLElement;
begin
  BtnEntrar := document.getElementById('btnEntrar');
  if Assigned(BtnEntrar) then
    BtnEntrar.addEventListener('click',
      procedure(Event: TJSEvent)
      begin
        EfetuarLogin;
      end
    );

  EdtSenha := document.getElementById('edtSenha');
  if Assigned(EdtSenha) then
    EdtSenha.addEventListener('keydown',
      procedure(Event: TJSEvent)
      begin
        if TJSKeyboardEvent(Event).key = 'Enter' then
          EfetuarLogin;
      end
    );
end;

procedure TfrmLogin.EfetuarLogin;
var
  Email, Senha: string;
  EdtEmail, EdtSenha: TJSHTMLInputElement;
begin
  EdtEmail := TJSHTMLInputElement(document.getElementById('edtEmail'));
  EdtSenha := TJSHTMLInputElement(document.getElementById('edtSenha'));

  if not Assigned(EdtEmail) or not Assigned(EdtSenha) then
  begin
    ShowMessage('Campos de login não encontrados.');
    Exit;
  end;

  Email := Trim(EdtEmail.value);
  Senha := Trim(EdtSenha.value);

  if (Email = '') or (Senha = '') then
  begin
    ShowMessage('Informe e-mail e senha para continuar.');
    Exit;
  end;

  if Pos('@', Email) = 0 then
  begin
    ShowMessage('Informe um e-mail válido.');
    Exit;
  end;

  // TODO: substituir por autenticação real (API JWT/session)
  ShowMessage('Login válido. Integrar com o backend do ERP.');
end;

end.
