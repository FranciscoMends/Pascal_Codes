Program Quest_7 ;
Uses 
	crt;
Var
	cont : integer;                    //vari�veis utilizadas
	nota,soma,Nmaior,Nmenor,mediaF : real;  
Begin
  cont:= 1;
  Nmenor := 10;
	while (cont < 7) do     
		begin
		repeat
		write('Insira a nota do ',cont,'� jurado: ');
		readln(nota);
		clrscr;
		until (nota>=0) and (nota<=10); //as notas s� poder�o ser iseridas de 0 � 10
		soma := soma + nota;
		cont:= cont +1;
	  	begin  
				if (Nmaior>nota) then
				Nmaior := Nmaior             //defini�o da maior nota
				else if (Nmaior<nota) then	
		  	Nmaior := nota;	
    	end;
    	begin
    		if (Nmenor>nota) then	
		  	Nmenor := nota               //defini�o da menor nota
				else if (Nmenor<nota) then
				Nmenor := Nmenor; 	
    	end;
		end;
	mediaF:= ((soma - Nmaior) - Nmenor)/4;	      //m�dia final
	writeln('A nota final deste(a) atleta �: ', mediaF:2:2);
	readln;	
End.

//Em uma competi��o de gin�stica ol�mpica a nota � determinada 
//por um painel de seis ju�zes. Cada um dos ju�zes atribui uma nota 
//entre zero e dez para o desempenho do atleta. Para calcular a nota 
//final, a nota mais alta e a nota mais baixa s�o descartadas e � 
//calculado a m�dia das quatro restantes. Escreva um programa que 
//leia 6 notas entre zero e dez e calcule a m�dia ap�s o descarte 
//da maior e da menor nota.