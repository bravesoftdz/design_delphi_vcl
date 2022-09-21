program Project1;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {ViewPrincipal},
  Unit2 in 'Unit2.pas' {ViewMensagens},
  Unit3 in 'Unit3.pas' {ViewFundo};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TViewPrincipal, ViewPrincipal);
  Application.CreateForm(TViewMensagens, ViewMensagens);
  Application.CreateForm(TViewFundo, ViewFundo);
  Application.Run;
end.
