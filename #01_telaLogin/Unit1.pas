unit Unit1;

interface

uses
  Winapi.Windows,
  Winapi.Messages,
  System.SysUtils,
  System.Variants,
  System.Classes,
  Vcl.Graphics,
  Vcl.Controls,
  Vcl.Forms,
  Vcl.Dialogs,
  Vcl.ExtCtrls,
  Vcl.StdCtrls,
  Vcl.Imaging.pngimage,
  Vcl.Imaging.jpeg,
  Vcl.Buttons,
  Vcl.WinXPanels;

type
  TViewLogin = class(TForm)
    pnlImagem: TPanel;
    pnlLogin: TPanel;
    pnlInfoLogin: TPanel;
    pnlTitulo: TPanel;
    lblTitulo: TLabel;
    imgLogoCinza: TImage;
    pnlLogo: TPanel;
    imgLogoAmarela: TImage;
    pnlRodapeLogin: TPanel;
    pnlImagemEmpresa: TPanel;
    imgLogoEmpresa: TImage;
    pnlRSociais: TPanel;
    pnlContatos: TPanel;
    pnlRemoto: TPanel;
    pnlRodapeDadosLogin: TPanel;
    CardPanel_DadosLogin: TCardPanel;
    card_login: TCard;
    lblUsuario: TLabel;
    lblSenha: TLabel;
    edtUsuario: TEdit;
    edtSenha: TEdit;
    pnlLogar: TPanel;
    btnLogar: TSpeedButton;
    pnlCancelar: TPanel;
    SpeedButton1: TSpeedButton;
    imgInstagram: TImage;
    imgContatos: TImage;
    imgTeamview: TImage;
    pnlTitRSociais: TPanel;
    pnlTitContatos: TPanel;
    pnlTitRemoto: TPanel;
    lblTitRSociais: TLabel;
    lblTitContatos: TLabel;
    lblTitSuporte: TLabel;
    procedure FormResize(Sender: TObject);
    procedure imgLogoCinzaMouseEnter(Sender: TObject);
    procedure imgLogoAmarelaMouseLeave(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure btnLogarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewLogin: TViewLogin;

implementation

{$R *.dfm}

procedure TViewLogin.btnLogarClick(Sender: TObject);
begin // login

  // 1º faz um select no banco de dados



  // 2º valida se o usuario e senha estão corregos


  // 3º loga no sistema



  ShowMessage('Deu certo!');

end;

procedure TViewLogin.FormResize(Sender: TObject);
begin

  pnlImagem.Width    := Round(Screen.Width / 3);
  pnlInfoLogin.Top   := Round((CardPanel_DadosLogin.Height - pnlInfoLogin.Height) / 2);
  pnlInfoLogin.Left  := Round((CardPanel_DadosLogin.Width - pnlInfoLogin.Width) / 2);


  // rodape login
  pnlRSociais.Width := Round((pnlImagem.Width - 20) / 3);
  pnlContatos.Width := Round((pnlImagem.Width - 20) / 3);
  pnlRemoto.Width   := Round((pnlImagem.Width - 20) / 3);


end;

procedure TViewLogin.imgLogoAmarelaMouseLeave(Sender: TObject);
begin // mouse leave

  imgLogoCinza.Visible   := True;
  imgLogoAmarela.Visible := False;

end;

procedure TViewLogin.imgLogoCinzaMouseEnter(Sender: TObject);
begin  // mouse enter

  imgLogoCinza.Visible   := False;
  imgLogoAmarela.Visible := True;

end;

procedure TViewLogin.SpeedButton1Click(Sender: TObject);
begin
  Application.Terminate;
end;

end.
