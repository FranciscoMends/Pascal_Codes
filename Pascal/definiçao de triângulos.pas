Program Pzim ;
uses crt;

var
	A,B,C : integer;
	
Begin
	repeat
		write ('Digite o primeiro n�mero:');
  	readln (A);
  	write ('Digite o segundo n�mero:');
  	readln (B);
  	write ('Digite o terceiro n�mero:');
  	readln (C);
  	clrscr;
  until (A+B>C) and (A+C>B) and (B+C>A); 
	 
  if (A = B) and (B=C) then
  writeln ('Tri�ngulo Equil�tero') 
	 
  else if (A=B) or (A=C) or (B=C) then
  writeln ('Tri�ngulo Is�sceles') 
	 
  else 
  writeln ('Tri�ngulo Escaleno');
  readln;
End.