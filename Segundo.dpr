program Segundo;

uses
  Vcl.Forms,
  JoinProdutoLoteProduto in 'Exercícios\2 - Segundo\JoinProdutoLoteProduto.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm2, Form2);
  Application.Run;
end.
