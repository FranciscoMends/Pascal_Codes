var i : integer;	
Begin
	write ('Digite o �ndice de polui��o: ');
	readln (i);
	if (0<i) and (i<35) then
	writeln ('�ndice de polui��o: ', i, ' Agrad�vel!')      
	else if (35<=i) and (i<=60) then
	writeln ('�ndice de polui��o: ', i, ' Desagrad�vel!')
	else 
	writeln ('�ndice de polui��o: ', i, ' Perigoso!');  
	readln;
End.