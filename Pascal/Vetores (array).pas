Program Vetores;
Uses
	crt;
Const
	TAM = 10; //quantidade de notas alterável
Var 
	//<nome> : <tipo>;
	media, mediaf : real;
	i : integer;
	
	//<nome> : array[<inicio>..<fim>] of <tipo>;
	notas : array[1..TAM] of real;
Begin
	for i := 1 to TAM do//i := TAM downto 1 do (inverso) 
		begin	
			repeat
				write (i, '° nota: ');
				readln(notas[i]);
				media := notas[i];
				mediaf := media + mediaf;
			clrscr;	
			until (0<=notas[i]) and (notas[i]<=10.0);		  
		end;
clrscr;	
  for i := 1 to TAM do
  	begin
  		writeln(i, '° nota: ', notas[i]:2:1);
  	end;
  writeln;
  mediaf := mediaf / TAM;
  writeln ('A média geral da classe foi: ', mediaf:2:1);	
	readln;
End.