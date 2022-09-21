unit Unit1;

{

  paleta de cores:
  https://paletadecores.com/cores/preto/
  Segunda opção

}

interface

uses
  System.Classes,
  System.SysUtils,
  System.Variants,

  Vcl.Controls,
  Vcl.Dialogs,
  Vcl.ExtCtrls,
  Vcl.Forms,
  Vcl.Graphics,

  Winapi.Messages,
  Winapi.Windows, Vcl.CategoryButtons, Vcl.WinXCtrls, Vcl.StdCtrls, Vcl.Imaging.pngimage, System.Actions, Vcl.ActnList,
  System.ImageList, Vcl.ImgList, Vcl.Buttons;

type
  TViewPrincipal = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    SplitView1: TSplitView;
    CategoryButtons1: TCategoryButtons;
    Image1: TImage;
    Panel3: TPanel;
    Panel4: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Image2: TImage;
    ImageList1: TImageList;
    ActionList1: TActionList;
    Action1: TAction;
    Action2: TAction;
    Action3: TAction;
    Panel5: TPanel;
    Panel6: TPanel;
    Image3: TImage;
    Image4: TImage;
    Panel7: TPanel;
    SpeedButton1: TSpeedButton;
    Panel8: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    SplitView2: TSplitView;
    FlowPanel1: TFlowPanel;
    SpeedButton2: TSpeedButton;
    ImageList2: TImageList;
    ActionList2: TActionList;
    Action4: TAction;
    Action5: TAction;
    Action6: TAction;
    Action7: TAction;
    Action8: TAction;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    Panel9: TPanel;
    Label5: TLabel;
    Image5: TImage;
    Panel10: TPanel;
    procedure Image2Click(Sender: TObject);
    procedure Image1MouseEnter(Sender: TObject);
    procedure Image2MouseLeave(Sender: TObject);
    procedure Action1Execute(Sender: TObject);
    procedure Action2Execute(Sender: TObject);
    procedure Action3Execute(Sender: TObject);
    procedure Image3MouseEnter(Sender: TObject);
    procedure Image4MouseLeave(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Action4Execute(Sender: TObject);
    procedure Action5Execute(Sender: TObject);
    procedure Action6Execute(Sender: TObject);
    procedure Action7Execute(Sender: TObject);
    procedure Action8Execute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ViewPrincipal: TViewPrincipal;

implementation

{$R *.dfm}

procedure TViewPrincipal.Action1Execute(Sender: TObject);
begin //
  SplitView2.Open;
end;

procedure TViewPrincipal.Action2Execute(Sender: TObject);
begin //

end;

procedure TViewPrincipal.Action3Execute(Sender: TObject);
begin //

end;

procedure TViewPrincipal.Action4Execute(Sender: TObject);
begin
  SplitView2.Close;
end;

procedure TViewPrincipal.Action5Execute(Sender: TObject);
begin
//
end;

procedure TViewPrincipal.Action6Execute(Sender: TObject);
begin
//
end;

procedure TViewPrincipal.Action7Execute(Sender: TObject);
begin
//
end;

procedure TViewPrincipal.Action8Execute(Sender: TObject);
begin
//
end;

procedure TViewPrincipal.Image1MouseEnter(Sender: TObject);
begin
  Image1.Visible := False;
  Image2.Visible := True;
end;

procedure TViewPrincipal.Image2Click(Sender: TObject);
begin
  if SplitView1.Opened then
    SplitView1.Close
  else
    SplitView1.Open;
end;

procedure TViewPrincipal.Image2MouseLeave(Sender: TObject);
begin
  Image1.Visible := True;
  Image2.Visible := False;
end;

procedure TViewPrincipal.Image3MouseEnter(Sender: TObject);
begin
  Image3.Visible := False;
  Image4.Visible := True;
end;

procedure TViewPrincipal.Image4Click(Sender: TObject);
begin
  ShowMessage('Usuarios');
end;

procedure TViewPrincipal.Image4MouseLeave(Sender: TObject);
begin
  Image3.Visible := True;
  Image4.Visible := False;
end;

procedure TViewPrincipal.SpeedButton1Click(Sender: TObject);
begin
  Application.Terminate;
end;

end.
