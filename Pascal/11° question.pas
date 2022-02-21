Program Quest_11 ;
Uses 
	crt;
Var
	l,c,num : integer;   //variáveis utilizadas
Begin
	write('Insira um valor inteiro: ');
	readln(num);           //denominando 'num'
	writeln;
	for l:= 1 to num do
		begin
			for c:= 1 to num do 
				write((l*c):5);      //multiplicaçoes e espaçamento
		writeln;
		end;
		readln;
End.

//Questão 11 - Escreva um programa que gere a tabuada 
//de 1 até um valor N > 0 na forma de uma tabela tal que, 
//na posição da linha i e coluna j da tabela, deve-se 
//encontrar o valor do produto i * j. Por exemplo, 
//para N = 6 o programa deve gerar:
//1   2   3   4   5   6
//2   4   6   8  10  12
//3   6   9  12  15  18
//4   8  12  16  20  24
//5  10  15  20  25  30
//6  12  18  24  30  36