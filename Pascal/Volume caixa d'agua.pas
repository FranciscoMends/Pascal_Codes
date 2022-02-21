Program Pzim ;
var
  altura,raio,pi,V : real;
Begin
  pi := 3.1415;
	write ('Insira a altura da caixa de água: ');
	readln (altura);
	writeln;
	write ('Insira a medida do raio da caixa de água: '); 
	readln (raio);
	writeln;
	V := pi*(raio*raio)*altura;
	writeln ('O volume de sua caixa de água é: ',V:10:3);
	readln;
	 
End.