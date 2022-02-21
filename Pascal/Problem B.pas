Program problem_B;
Uses
	crt;
type 
    PosicaoType = record 
                x, y:Integer 
              end;
    PosicoesType = array[0..1000] of posicaoType;
    NavioType = array[0..3] of Integer;
    NaviosListType = array[0..1000] of NavioType;

Function getPosicao(navio: NavioType; count : Integer): PosicaoType;
var direction, row, column, newY, newX: Integer;
    novaPosicao: PosicaoType;
begin
    direction  := navio[0];
    row        := navio[2];
    column     := navio[3];
    newX       := row + count - 1;
    newY       := column + count - 1;
    
    if(direction = 0) then
        BEGIN;
        novaPosicao.x := row;
        novaPosicao.y := newY;
        end
    else if(direction = 1)then
        begin;
        novaPosicao.x := newX;
        novaPosicao.y := column;
        end;
    getPosicao    := novaPosicao;
end;

Function getPosicoesDoNavio(navio: NavioType): PosicoesType;
var count, length: Integer;
    posicoesList: PosicoesType;
    novaPosicao: PosicaoType;
begin
    count := 1;
    length := navio[1];
    while (count <= length) do
    begin;
        novaPosicao := getPosicao(navio, count);
            posicoesList[count-1] := novaPosicao;
        count := count + 1;
    end;
   getPosicoesDoNavio := posicoesList;
end;

Function eValido(navios: NaviosListType; quant: Integer): Integer;
var 
    navio: NavioType;
    posicoesDoNavio, todasAsPosicoes: PosicoesType;
    i, j,auxiliar, todasPosicoesIndex: Integer;
    posicao, posicaoAuxiliar: posicaoType;
begin
		auxiliar := -1;
    todasPosicoesIndex := 0;
    for i := 0 to quant-1 do
    begin;
        navio := navios[i];
        posicoesDoNavio := getPosicoesDoNavio(navio);
        for j := 0 to navio[1]-1 do
        begin;
            todasAsPosicoes[todasPosicoesIndex] := posicoesDoNavio[j];
            todasPosicoesIndex := todasPosicoesIndex + 1;
        end;
    end;
    for i := 0 to todasPosicoesIndex - 1 do
    begin;
        posicao := todasAsPosicoes[i];
        if(posicao.x > 10 ) or ( posicao.x < 1 ) or ( posicao.y > 10 ) or ( posicao.y < 1) then auxiliar := 0;
        for j := 0 to todasPosicoesIndex - 1 do
        begin;
            posicaoAuxiliar := todasAsPosicoes[j];
            if(posicao.x = posicaoAuxiliar.x) and (posicao.y = posicaoAuxiliar.y ) and (i <> j) then auxiliar := 0;
        end;
    end;
    if auxiliar = 0 then
    	eValido:= 0
    else
    	eValido:=1
end;

var 
  quant, i: Integer;
  navio: NavioType;
  navioList: NaviosListType;

begin
  readln(quant);

  for i := 1 to quant do
  begin;
    readln(navio[0], navio[1], navio[2], navio[3]);
    navioList[i-1] := navio;
  end;
    if (eValido(navioList, quant) = 1) then 
        writeln('Y')
    else
        writeln('N');
	readln;
end.

