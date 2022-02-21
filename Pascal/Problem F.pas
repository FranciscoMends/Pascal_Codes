Program Problem_F;
Uses
	crt;
function main (
):integer;
var
	s:string;
	saque:boolean;
	pontos:array of integer;
	jogos:array of integer;
	haVencedor:boolean;
	vencedor:boolean;
	jogador:boolean;
	i:integer;
	jogador2:boolean;
begin
	readln(s);
	saque := false;
	pontos[] := {0, 0};
	jogos[] := {0, 0};
	haVencedor := false;
	vencedor := false;
	jogador := false;
	while ( true ) do
	begin
		if (jogador=true ) then
		begin
		end;
		if not () then break;
		jogador := true;
		if (((c)=('Q'))) then 
		begin
			i := 0;
			jogador2 := false;
			while ( true ) do
			begin
				if (jogador2=true ) then
				begin
					inc(i);
				end;
				if not (i<2) then break;
				jogador2 := true;
				writeln (jogos[i];)
				if ((haVencedor)) then 
				begin
					if (((vencedor)=(i))) then 
					begin
						writeln (' (winner)');
					end;
				end
				else
				begin
					writeln (' (' << pontos[i]);
					if (((saque)=(i))) then 
					begin
						writeln ('*');
					end;
					writeln (')');
				end;
				if (((i)=(0))) then 
				begin
					writeln (' - ');
				end
				else
				begin
					writeln (endl);
				end;
			end;
		end
		else
		begin
			if ((not(haVencedor))) then 
			begin
				if (((c)=('R'))) then 
				begin
					saque :=  not(saque);
				end;
				inc(pontos[saque]);
				if (((pontos[saque]>=5)and(((pontos[saque]-pontos[not(saque]>=2)))or((pontos[saque])=(10))))) then 
				begin
					pontos[0] := pontos[1] = 0;
					inc(jogos[saque]);
				end;
				if (((jogos[saque])=(2))) then 
				begin
					haVencedor := true;
					vencedor := saque;
				end;
			end;
		end;
	end;
	result:=(0);
	exit;
end;