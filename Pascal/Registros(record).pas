Program Registros;
Uses 
	crt;
Const
	MAX = 2;
Type
	//<identificador> = record
	//	<id_campo1> : <tipo1>;
	//	<id_campo2> : <tipo2>;
	//  ...
	//	<id_campoN> : <tipoN>;
	//end;
	Tdata = record
		dia,mes,ano : integer;
	end;
	Taluno = record
		mat : integer;
		nome : string[20];
		nasc : Tdata;
		sexo : char;
	end;
			
Var
	al : Taluno;
	i : integer;
	aluno : array[1..MAX] of Taluno;
		
Begin  
  for i :=1 to MAX do
  	begin
  		write('Informe a matrícula do aluno: ');
  		readln(aluno[i].mat);
  		write('Informe o nome do aluno: ');
  		readln(aluno[i].nome);
  		write('Informe a data de nascimento (dd//mm//aa): ');
  		readln(aluno[i].nasc.dia, aluno[i].nasc.mes, aluno[i].nasc.ano);
  		write('Informe o sexo do aluno: ');
  		readln(aluno[i].sexo);
		  clrscr;
		end;
	for i:= 1 to MAX do
		begin
			writeln(aluno[i].mat); 
			writeln(aluno[i].nome);
			writeln(aluno[i].nasc.dia,'/', aluno[i].nasc.mes,'/', aluno[i].nasc.ano);
			writeln(aluno[i].sexo);
			writeln;	
  	end;
	write('Tecle ENTER para sair. ');  	
  readln;
End.