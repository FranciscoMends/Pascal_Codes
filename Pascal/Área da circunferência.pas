Program circunferencia ;
var
  pi: real;
  r: real;
  A: real;

Begin
  pi := 3.1415;
  write ('Insira o valor do raio: ');
  readln (r);
  writeln;
  A := pi * r * r;
  writeln ('O valor da �rea da circunfer�ncia � de: ');
	write (A);
	readln;
  
End.