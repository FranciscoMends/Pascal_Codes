Program Problem_G;
Uses
	crt;
Function getCaixa(): Integer;
begin;
    getCaixa := random (2000) - 1000;
end;

var 
    i, quant, caixa, pontuacao, pontuacaoMaxima: Integer;
begin
		write('Insira a quantidade de caixas: ');
    readln(quant);
		writeln;
    
    pontuacao := 100;
    pontuacaoMaxima := 100;

    for i := 1 to quant do
    begin;
    	caixa := getCaixa();
      writeln(i,'� caixa: ',caixa);
      pontuacao := pontuacao + caixa;
      if pontuacao > pontuacaoMaxima then 
				pontuacaoMaxima := pontuacao;
    end;
		writeln;
    writeln('Maximo de valor obtido na sequencia: ',pontuacaoMaxima);
    readln;
end.
