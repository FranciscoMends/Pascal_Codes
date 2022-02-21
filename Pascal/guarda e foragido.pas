Program Pzim ;
uses 
	crt;
var
	D,Vf,Vg  : integer;
	Tf, Tg : Real;
Begin
	writeln('Projeto do fugitivo e guarda costeira!');
	writeln;
	write('--> Informe a distância entre a guarda costeira e o fugitivo: ');
	readln(D);
	write('--> Informe a velocidade do fugitivo: ');
	readln(Vf);
	write('--> Informe a velocidade da guarda costeira: ');
	readln(Vg);
	Tf := 12/Vf;
	Tg := (12 + D)/Vg;
	clrscr;
	writeln ('D: ', D,' Vf: ', Vf,' Vg: ', Vg);
	writeln ('Tf: ', Tf,' Tg: ',Tg);
	if(Tf >= Tg) then
		writeln('S')
	else
	 writeln('N');
	write('Tecle enter para sair ---->');
	readln();
End.