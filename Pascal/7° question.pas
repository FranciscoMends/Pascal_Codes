Program Quest_7 ;
Uses 
	crt;
Var
	cont : integer;                    //variáveis utilizadas
	nota,soma,Nmaior,Nmenor,mediaF : real;  
Begin
  cont:= 1;
  Nmenor := 10;
	while (cont < 7) do     
		begin
		repeat
		write('Insira a nota do ',cont,'ª jurado: ');
		readln(nota);
		clrscr;
		until (nota>=0) and (nota<=10); //as notas só poderão ser iseridas de 0 à 10
		soma := soma + nota;
		cont:= cont +1;
	  	begin  
				if (Nmaior>nota) then
				Nmaior := Nmaior             //definião da maior nota
				else if (Nmaior<nota) then	
		  	Nmaior := nota;	
    	end;
    	begin
    		if (Nmenor>nota) then	
		  	Nmenor := nota               //definião da menor nota
				else if (Nmenor<nota) then
				Nmenor := Nmenor; 	
    	end;
		end;
	mediaF:= ((soma - Nmaior) - Nmenor)/4;	      //média final
	writeln('A nota final deste(a) atleta é: ', mediaF:2:2);
	readln;	
End.

//Em uma competição de ginástica olímpica a nota é determinada 
//por um painel de seis juízes. Cada um dos juízes atribui uma nota 
//entre zero e dez para o desempenho do atleta. Para calcular a nota 
//final, a nota mais alta e a nota mais baixa são descartadas e é 
//calculado a média das quatro restantes. Escreva um programa que 
//leia 6 notas entre zero e dez e calcule a média após o descarte 
//da maior e da menor nota.