Program Quest_8 ;
uses
	crt;
Var                      //vari�veis utilizadas
	num,numf,numf2,n,cont,mod1,mod2,soma,somaf,valorf : integer;
Begin
  repeat
  	write ('Digite um n�mero inteiro/positivo: ');
  	readln (num);        //vari�vel principal
  	clrscr;
  until num > 0;
  mod1 := 100;              
  mod2 := 10;                
  cont := 2;       //contador
   begin
  	n := num mod mod2;     //in�cio do comando, algarismo "1"
		numf := n * cont;
		cont := cont+1; 
   end;
  while mod1 <= num*10  do 
	 begin	
			n := num mod mod1 - num mod mod2;  
  		n := n DIV mod2; 		  //in�cio do comando, algarismo "10,100,1000,..."
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
	
	writeln ('D�gito Verificador: ', valorf); 
	write ('Tecle ENTER para sair. ');
  readln;
End.

//Escreva um programa que, dado um n�mero inteiro positivo, calcule o 
//d�gito verificador correspondente.DICA: Para evitar erros de digita��o 
//de sequ�ncias de n�meros de import�ncia fundamental, como a matr�cula de 
//um aluno, o CPF do imposto de renda ou o n�mero de uma conta banc�ria, 
//geralmente se adiciona ao n�mero original um d�gito chamado d�gito 
//verificador. Por exemplo: se um n�mero de matr�cula � 811057-3, ent�o 
//811057 � o n�mero de matr�cula principal e 3 � o d�gito verificador. 
//A maneira mais comum de c�lculo do d�gito verificador � a seguinte:

//1) Cada algarismo do n�mero principal � multiplicado por um peso 
//come�ando de 2 e crescendo de 1, do d�gito menos significativo ao mais 
//significativo, isto �, do d�gito mais � direita ao d�gito mais � esquerda.
//811057 = 7x2 + 5x3 + 0x4 + 1x5 + 1x6 + 8x7

//2) Somam-se as parcelas obtidas: 14 + 15 + 0 + 5 + 6 + 56 = 96

//3) Calcula-se o resto da divis�o desta soma por 11:
//96 dividido por 11 d� resto 8 (96 = 8 x 11 + 8)

//4) Subtrai-se de 11 o resto obtido: 11 � 8 = 3

//5) Se o valor encontrado for 10 ou 11, o d�gito verificador ser� 0; 
//nos outros casos, o d�gito verificador � o pr�prio valor encontrado.









