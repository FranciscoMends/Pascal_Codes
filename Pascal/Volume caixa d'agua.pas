Program Pzim ;
var
  altura,raio,pi,V : real;
Begin
  pi := 3.1415;
	write ('Insira a altura da caixa de �gua: ');
	readln (altura);
	writeln;
	write ('Insira a medida do raio da caixa de �gua: '); 
	readln (raio);
	writeln;
	V := pi*(raio*raio)*altura;
	writeln ('O volume de sua caixa de �gua �: ',V:10:3);
	readln;
	 
End.