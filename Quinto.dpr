program Quinto;

uses
  Vcl.Forms,
  ServidorLocal in 'Exercícios\5 - Quinto\ServidorLocal.pas' {Form4};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm4, Form4);
  Application.Run;
end.
