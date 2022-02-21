Program Pzim ;
uses crt;

var
	A,B,C : integer;
	
Begin
	repeat
		write ('Digite o primeiro número:');
  	readln (A);
  	write ('Digite o segundo número:');
  	readln (B);
  	write ('Digite o terceiro número:');
  	readln (C);
  	clrscr;
  until (A+B>C) and (A+C>B) and (B+C>A); 
	 
  if (A = B) and (B=C) then
  writeln ('Triângulo Equilátero') 
	 
  else if (A=B) or (A=C) or (B=C) then
  writeln ('Triângulo Isósceles') 
	 
  else 
  writeln ('Triângulo Escaleno');
  readln;
End.