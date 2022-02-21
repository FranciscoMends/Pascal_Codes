Program Pzim ;
uses 
	crt;
var
	N,cont : integer;	
	soma1,soma2,soma2i,soma2p,soma3,s1,s2,s3 : real;
Begin
	write ('Escolha um número inteiro: ');
	readln (N);
  begin
		for cont := 1 to N do
  		begin
  			soma1 := soma1 + s1;		
			end; 
		  begin
		  	if (cont mod 2 = 0) then
		  		begin 
		  	  	soma2i := soma2i + s2
					end
		  	else if (cont mod 2 = 1) then 
		  		begin
		  		s2 := 1/cont;
					soma2p := -(soma2p + s2);
					end;
			writeln('S2: ', s2:3:2);
			writeln('Soma 2 par: ', soma2p:3:2); 
			writeln('Soma 2 impar: ', soma2i:3:2);
		  end;
 
soma2 := soma2i + soma2p;
		  
	end;		
		
writeln('Soma 1: ', soma1:3:2);  
//writeln('Soma 2: ', soma2:3:2);
//writeln('Soma 3: ', soma3:3:3);
readln;  
End.