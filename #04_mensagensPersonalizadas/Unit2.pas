unit Unit2;

interface

uses
  System.Classes,
  System.SysUtils,
  System.Variants,

  Vcl.Buttons,
  Vcl.Controls,
  Vcl.Dialogs,
  Vcl.ExtCtrls,
  Vcl.Forms,
  Vcl.Graphics,
  Vcl.Imaging.pngimage,
  Vcl.StdCtrls,

  Winapi.Messages,
  Winapi.Windows, Unit3;

type
  TMyButtons = (mbSim, mbNao, mbOk);

type
  TViewMensagens = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Panel2: TPanel;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Panel3: TPanel;
    Panel4: TPanel;
    Memo1: TMemo;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
  private
    { Private declarations }
  public
    class function Mensagem(Texto: String; Titulo: String; Tipo: Char; Botoes: array of TMyButtons): Boolean;
  end;

var
  ViewMensagens: TViewMensagens;

implementation

{$R *.dfm}

{ TViewMensagem }

class function TViewMensagens.Mensagem(Texto, Titulo: String; Tipo: Char; Botoes: array of TMyButtons): Boolean;
var
  i: Integer;
  view: TViewMensagens;
begin

  view := TViewMensagens.Create(nil);
  try

    view.Label1.Caption := Titulo;
    view.Memo1.Text     := Texto;


    //tratando os botoes
    for i := 0 to Length(Botoes) - 1 do
    begin

      case (Botoes[i]) of
        mbOk: begin
                view.SpeedButton1.Visible := True;
                view.SpeedButton1.Align   := alRight;
              end;

        mbSim: begin
                view.SpeedButton3.Visible := True;
                view.SpeedButton3.Align   := alRight;
               end;

        mbNao: begin
                view.SpeedButton2.Visible := True;
                view.SpeedButton2.Align   := alRight;
               end;

        else begin
            view.SpeedButton1.Visible := True;
            view.SpeedButton1.Align   := alRight;
        end;

      end;

    end;


    // tipo das imagens
    case (Tipo) of
      'I': begin
              view.Image1.Visible := True; //Informação
           end;

      'A': begin
              view.Image2.Visible := True; //Alerta
           end;

      'E': begin
              view.Image3.Visible := True; //Erro
           end;

      else begin
        view.Image1.Visible := True;
      end;

    end;


    //Mostrar o formumário
    ViewFundo.Show;
    view.ShowModal;


    case (view.ModalResult) of
      mrOk, mrYes : result := True;
      else
        result := False;
    end;

  finally
    if (view <> nil) then
    begin
      ViewFundo.Hide;
      FreeAndNil(view);
    end;
  end;
end;

procedure TViewMensagens.SpeedButton1Click(Sender: TObject);
begin
  Self.ModalResult := mrOk;
end;

procedure TViewMensagens.SpeedButton2Click(Sender: TObject);
begin
  Self.ModalResult := mrNo;
end;

procedure TViewMensagens.SpeedButton3Click(Sender: TObject);
begin
  Self.ModalResult := mrYes;
end;

end.
