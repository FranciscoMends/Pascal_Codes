var i : integer;	
Begin
	write ('Digite o índice de poluição: ');
	readln (i);
	if (0<i) and (i<35) then
	writeln ('Índice de poluição: ', i, ' Agradável!')      
	else if (35<=i) and (i<=60) then
	writeln ('Índice de poluição: ', i, ' Desagradável!')
	else 
	writeln ('Índice de poluição: ', i, ' Perigoso!');  
	readln;
End.