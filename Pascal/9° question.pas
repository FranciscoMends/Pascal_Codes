Program Quest_9 ;
uses crt;
var
	lin,col,num : integer;   //veri�veis utilizadas
Begin
 repeat
	write('Insira um n�mero inteiro positivo: ');
	readln(num);               //dando valor para variavel principal
 until num > 0;
	for lin:= 1 to num do         //qntd de linhas
		begin
			for col:= 1 to num do 
				if lin= col then
					write(' * ')          //qntd de colunas
				else
					write(' - ');			
			writeln;
		end;		
		readln; 
End.

//Escreva um programa que gere, para um valor N = 0 fornecido 
//pelo usu�rio, um "quadrado" de N linhas e N colunas que tenha 
//caracteres '*' (asteriscos) nas posi��es da diagonal principal 
//e os caracteres '-' (h�fen) nas demais posi��es. Por exemplo, 
//para N = 5 o programa deve gerar:
//* - - - -
//- * - - -
//- - * - -
//- - - * -
//- - - - *