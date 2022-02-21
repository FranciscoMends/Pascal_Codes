Program Pzim ;
uses 
	crt;
var
	v,vf : real;
	m,n : LongInt;

Begin 
		repeat
			textcolor (red);
			write ('Informe o valor da aposta:');
			readln (v);	
			writeln;
			
    until (0.01 <= v) and (v <= 1000.00);
    
		repeat
			textcolor (blue);
			write ('Informe o número que deseja jogar:');
			readln (n);
			writeln;	
			
    until (0 <= n) and (n <= 1000000);
    
    textcolor (green);
    writeln ('Valor apostado: ', v:4:2);                
    writeln ('Número apostado: ', n);
    writeln;                                                            
		
			m := 21234; 
			
				if (n mod 10000 = m mod 10000)then				
						v := v * 3000								  
				else if (n mod 1000 = m mod 1000)then				
						v := v * 500								
				else if (n mod 100 = m mod 100)then				
						v := v * 50						
				else if ((m mod 100 = 0) or (n mod 100 = 0)) then
					if ((m mod 100 = 0) and ((99 div 4) = ((n mod 100 - 1) div 4))) then			  
						v := v * 16				  				 				
					else if ((n mod 100 = 0) and ((99 div 4) = ((m mod 100 - 1) div 4))) then 
				  	v := v * 16				  	 				
					else
						V := 0.00								
				else if (((m mod 100 - 1) div 4) = ((n mod 100 - 1) div 4)) then
					v := v * 16				  																				
			  else			 
					v := 0.00;
				
				writeln ('Valor final R$:',v:9:2);
				readln;						
End.