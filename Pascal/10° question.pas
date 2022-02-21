Program Quest_10 ;
Uses 
	crt;
Var
	D,dia,salto,n : integer;  //variáveis utilizadas
Begin
	repeat
	write('Insira o dia em que o mês começa: ');
	readln(D);               //valor de 'D'
	until(D > 0)and(D<8);
	write('Insira a quantidade de dias deste mês: ');
	readln(n);                //valor de 'n'
	salto:= 1;
	writeln;
	writeln('  D  S  T  Q  Q  S  S');   //dias da semana
	while (salto < D) do
		begin
			write('   ');
			salto:= salto + 1;
		end;
	dia:= 1;
	while (dia <= n) do
		begin
			write(dia:3);
			dia:=dia+1;
			if (D mod 7 = 0) then
				writeln;
			D := D + 1;
		end;
		readln;
End.

//Escreva um programa que imprime um calendário para um determinado 
//mês. O calendário deve conter cada dia do mês e o dia da semana 
//correspondente. A entrada consiste de um inteiro P (1 = P = 7) 
//especificando em que dia da semana cai o primeiro dia do mês 
//(1 = Domingo, 2 = Segunda, ..., 7 = Sábado) e um inteiro N 
//(1 = N = 31) especificando o número de dias que o mês possui. 
//Segue um exemplo para P = 3 e N = 31:
//D     S     T     Q     Q     S      S
//            1     2     3     4      5
//6     7     8     9    10    11     12
//13   14    15    16    17    18     19
//20   21    22    23    24    25     26
//27   28    29    30    31
          