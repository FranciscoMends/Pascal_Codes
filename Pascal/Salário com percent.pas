Program Pzim ;
var
nome : string[20];
horas,valor,T,tz,porcent : real;
filho : integer;
Begin
  write ('Insira seu nome: ');
	readln (nome); 
	writeln;
	write ('Insira quanto voc� ganha por hora trabalhada: ');
	readln(valor);
	writeln;
	write ('Insira o n�mero de horas que voc� trabalhou: ');
	readln (horas);
	writeln;
	write ('Insira quantos filhos voc� tem: ');
	readln (filho);
	clrscr;
	
	tz := (horas*valor);
	porcent := (tz*3/100);
	T := tz+(filho*porcent);
	
	writeln ('Nome: ', nome);
	writeln ('Sal�rio: ', T:6:2);
	 
End.