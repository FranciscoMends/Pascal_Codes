Program Pzim ;
var
   F,C : real;
Begin
  writeln ('Transformador de Celsius para Farenheit. ');
	writeln;
	write ('Insira um valor em Celcius: ');
	readln (C);
	writeln;
	F := (C * (9.0/5.0)) + 32.0;
	writeln ('Valor em Celcius selecionado: ', C:3:1);
	writeln ('Valor em Farenheit: ', F:5:1); 
	readln; 
End.