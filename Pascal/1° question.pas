Program Pzim ;
uses
	crt;
var
	cont,num,soma,posi,neg,maior,menor : integer;
	media : real;
Begin
num := 1;
cont := 1;

while num <> 0 do 
	begin
		write('Digite o ',cont,'� n�mero: ');
		readln(num);
		cont := cont + 1;
		soma := soma + num;
		begin
		  if (num < 0) then
		  neg := neg + 1
 		  else if (num > 0) then
 		  posi := posi + 1;
		end;
	  begin
			if (maior>num) then
			maior := maior
			else if (maior<num) then	
		  maior := num;	
    end;
    begin
			if (menor<num) then
			menor := menor
			else if (menor>num) then	
		  menor := num;	
    end;
	end;
writeln('Voc� digitou ',(cont - 2),' n�meros');
writeln('A soma �: ',soma);
media := soma / (cont - 2);
writeln('A m�dia �: ', media :2:2);
writeln((posi/(cont - 2)*100):3:0,' %% positivo');
writeln((neg/(cont - 2)*100):3:0,' %% negativo');
writeln('Maior n�mero: ', maior);
writeln('Menor n�mero: ', menor);
readln;

End.