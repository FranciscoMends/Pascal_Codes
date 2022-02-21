Program Quest_6 ;
uses 
	crt;
var
	num,cont,contf : integer; //vari�veis usadas
Begin
	repeat        //repetir at� um n�mero positivo 
	  write ('Insira um n�mero inteiro/positivo: ');
  	readln (num);    //vari�vel principal
  	clrscr;
  until num>0;
  
  for cont := 1 to num do    //opera��o come�a do 1 at� a vari�vel escolhida
		if num mod cont = 0 then
			begin
				contf := contf + cont;
			end;
		if num = (contf - num) then
			writeln ('Seu n�mero � PERFEITO! ')
		else if num < (contf - num) then
		  writeln ('Seu n�mero � DEFICIENTE! ')
		else if num > (contf - num) then
		  writeln ('Seu n�mero � ABUNDANTE! ');
    
  write ('Tecle ENTER para sair. ');
  readln;
End.

//Um n�mero perfeito � um inteiro positivo tal que a 
//soma dos seus divisores pr�prios � igual ao pr�prio 
//n�mero. Por exemplo, 28 =1 + 2 + 4 + 7 + 14 � um n�mero 
//perfeito. Se a soma dos divisores � menor que o n�mero ele 
//� deficiente. Se a soma maior que o n�mero ele � abundante. 
//Fa�a um programa que leia um n�mero inteiro positivo N e imprima 
//uma mensagem indicando se o n�mero � perfeito, deficiente 
//ou abundante.