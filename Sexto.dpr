program Sexto;

uses
  Vcl.Forms,
  MasterDetailComAssincronia in 'Exercícios\6 - Sexto\MasterDetailComAssincronia.pas' {Form5};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm5, Form5);
  Application.Run;
end.
