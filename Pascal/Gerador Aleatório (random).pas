Program Random ;
uses
	crt;
const
	TAM = 10;
var              '
	a,c,i : integer;
	b : real;
Begin
  randomize;
  	a := random(TAM);
  	b := random(TAM);
  writeln(a);
  writeln(b:2:1);
  writeln;
  for i:=1 to TAM do
  	begin
  		c := random(TAM);
  		writeln (i, '° número: ',c);
		end;
  readln;
End.