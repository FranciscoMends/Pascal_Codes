Program Game;
Uses
	crt;
Const
	MAX = 1;
Type
	user = record
		nick : string[10];
		level : integer;
		classe : string[20];
		montaria : string[20];
		sexo : string[20];
	end;
Var
	i : integer;
	player : array [1..MAX] of user;
	menu,hub : char;
Begin
	writeln('O que deseja fazer? ');
				writeln('1. criação de personagem.');
				writeln('2. Ver personagem.');
				writeln('3. Sair.');
				menu := readkey;
				clrscr;
	
	Repeat
		if menu = '4' then
			begin
				
				writeln('O que deseja fazer? ');
				writeln('1. criação de personagem.');
				writeln('2. Ver personagem.');
				writeln('3. Sair.');
				menu := readkey;
				clrscr;	
			end
		else if menu = '1' then
			begin
				for i := 1 to MAX do
 		 			begin
  					randomize;
			  		write('Escolha um NickName: ');
 				 		readln(player[i].nick);
 			 			write('Selecione o sexo do personagem (M/F) ');
			  		readln(player[i].sexo);	  			 
  					write('Selecione a classe do personagem: ');
  					readln(player[i].classe);
  					write('Selecione a montaria do personagem: ');
  					readln(player[i].montaria);
  					player[i].level := random(100);
  					writeln;
  					write('Deseja voltar pro MENU? (S/N)');
  					hub := readkey;
  					menu := '4';
  					clrscr;
					end;
			end
 	 	else if menu = '2' then
			begin
				write('Qual personagem deseja ver? ');
				readln(i);
				writeln;
				writeln('Nick: ',player[i].nick);
				writeln('Level: ',player[i].level);
				writeln('Sexo: ',player[i].sexo);
				writeln('Classe: ',player[i].classe);
				writeln('Montaria: ',player[i].montaria);
				writeln;
  			write('Deseja voltar pro MENU? (S/N)');
  			hub := readkey;
  			menu := '4';
  			clrscr;	
			end	
		else if menu = '3' then
			begin
				writeln('Tecle ENTER para sair.');
				readln;
				hub := 'n';
			end;
 	Until hub = 'n';							
End.