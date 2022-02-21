Program Quest_6 ;
uses 
	crt;
var
	num,cont,contf : integer; //variáveis usadas
Begin
	repeat        //repetir até um número positivo 
	  write ('Insira um número inteiro/positivo: ');
  	readln (num);    //variável principal
  	clrscr;
  until num>0;
  
  for cont := 1 to num do    //operação começa do 1 até a variável escolhida
		if num mod cont = 0 then
			begin
				contf := contf + cont;
			end;
		if num = (contf - num) then
			writeln ('Seu número é PERFEITO! ')
		else if num < (contf - num) then
		  writeln ('Seu número é DEFICIENTE! ')
		else if num > (contf - num) then
		  writeln ('Seu número é ABUNDANTE! ');
    
  write ('Tecle ENTER para sair. ');
  readln;
End.

//Um número perfeito é um inteiro positivo tal que a 
//soma dos seus divisores próprios é igual ao próprio 
//número. Por exemplo, 28 =1 + 2 + 4 + 7 + 14 é um número 
//perfeito. Se a soma dos divisores é menor que o número ele 
//é deficiente. Se a soma maior que o número ele é abundante. 
//Faça um programa que leia um número inteiro positivo N e imprima 
//uma mensagem indicando se o número é perfeito, deficiente 
//ou abundante.