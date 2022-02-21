Program Quest_8 ;
uses
	crt;
Var                      //variáveis utilizadas
	num,numf,numf2,n,cont,mod1,mod2,soma,somaf,valorf : integer;
Begin
  repeat
  	write ('Digite um número inteiro/positivo: ');
  	readln (num);        //variável principal
  	clrscr;
  until num > 0;
  mod1 := 100;              
  mod2 := 10;                
  cont := 2;       //contador
   begin
  	n := num mod mod2;     //início do comando, algarismo "1"
		numf := n * cont;
		cont := cont+1; 
   end;
  while mod1 <= num*10  do 
	 begin	
			n := num mod mod1 - num mod mod2;  
  		n := n DIV mod2; 		  //início do comando, algarismo "10,100,1000,..."
  		mod1 := mod1 * 10;
  		mod2 := mod2 * 10; 
  		numf2 := n * cont;
		  cont := cont+1;
			soma := soma+numf2;				
   end;
	somaf := (soma + numf) MOD 11;        //valor final(digito verificador)
	valorf := 11 - somaf;
	
	if (valorf = 10) or (valorf = 11) then
			valorf := 0;
	
	writeln ('Dígito Verificador: ', valorf); 
	write ('Tecle ENTER para sair. ');
  readln;
End.

//Escreva um programa que, dado um número inteiro positivo, calcule o 
//dígito verificador correspondente.DICA: Para evitar erros de digitação 
//de sequências de números de importância fundamental, como a matrícula de 
//um aluno, o CPF do imposto de renda ou o número de uma conta bancária, 
//geralmente se adiciona ao número original um dígito chamado dígito 
//verificador. Por exemplo: se um número de matrícula é 811057-3, então 
//811057 é o número de matrícula principal e 3 é o dígito verificador. 
//A maneira mais comum de cálculo do dígito verificador é a seguinte:

//1) Cada algarismo do número principal é multiplicado por um peso 
//começando de 2 e crescendo de 1, do dígito menos significativo ao mais 
//significativo, isto é, do dígito mais à direita ao dígito mais à esquerda.
//811057 = 7x2 + 5x3 + 0x4 + 1x5 + 1x6 + 8x7

//2) Somam-se as parcelas obtidas: 14 + 15 + 0 + 5 + 6 + 56 = 96

//3) Calcula-se o resto da divisão desta soma por 11:
//96 dividido por 11 dá resto 8 (96 = 8 x 11 + 8)

//4) Subtrai-se de 11 o resto obtido: 11 – 8 = 3

//5) Se o valor encontrado for 10 ou 11, o dígito verificador será 0; 
//nos outros casos, o dígito verificador é o próprio valor encontrado.









