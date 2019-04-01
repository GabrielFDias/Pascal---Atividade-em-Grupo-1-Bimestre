program Media_Alunos;

var
Qtd_Aulas, Qtd_Faltas: integer;
P1, Ma1, Mb1, P2, Ma2, Mb2, A1, A2, MF: real;
Situacao: string;

begin
  clrscr;
  P1 := -1;
  Ma1 := -1;
  Mb1 := -1;
  P2 := -1;
  Ma2 := -1;
  Mb2 := -1;
  Qtd_Aulas := -1;
	Qtd_Faltas := -1;
	
  while (P1 < 0) or (P1 > 10) do
  begin
    write('Ensira uma nota P1 valida (entre 0 e 10): ');
    readln(P1);
  end;
  
  while (Ma1 < 0) or (Ma1 > 10) do
  begin
    write('Ensira uma nota Ma1 valida (entre 0 e 10): ');
    readln(Ma1);
  end;
  
  while (Mb1 < 0) or (Mb1 > 10) do
  begin
    write('Ensira uma nota Mb1 valida (entre 0 e 10): ');
    readln(Mb1);
  end;
  
  A1 := (P1 * 0.7 + Ma1 * 0.2 + Mb1 * 0.1);
  
  writeln('A1: ', A1:2:2);
  
  while (P2 < 0) or (P2 > 10) do
  begin
    write('Ensira uma nota P2 valida (entre 0 e 10): ');
    readln(P2);
  end;
  
  while (Ma2 < 0) or (Ma2 > 10) do
  begin
    write('Ensira uma nota Ma2 valida (entre 0 e 10): ');
    readln(Ma2);
  end;
  
  while (Mb2 < 0) or (Mb2 > 10) do
  begin
    write('Ensira uma nota Mb2 valida (entre 0 e 10): ');
    readln(Mb2);
  end;
  
  A2 := (P2 * 0.7 + Ma2 * 0.2 + Mb2 * 0.1);
  
  writeln('A2: ', A2:2:2);
  
  MF := (A1 + 2 * A2) / 3;
  
  writeln('Media Final: ', MF:2:2);
  while Qtd_Aulas < 0 do
  begin
    write('Ensira uma quantidade de aulas valida (maior que 0): ');
    readln(Qtd_Aulas);
  end;
  
  while Qtd_Faltas < 0 do
  begin
    write('Ensira a quantidade de faltas (maior que 0): ');             
    readln(Qtd_Faltas);
  end;
  
  if (MF>=5) AND (Qtd_Faltas<Qtd_Aulas*0.25) then
  begin
    write ('O aluno está APROVADO!');
  end
  else
  begin
    if (MF<5) AND (MF>=3) AND (Qtd_Faltas<Qtd_Aulas*0.25) then
    begin
      write ('O aluno está de RECUPERACAO!');
    end
    else
    begin
      if MF<3 then
      begin
        write ('O aluno está REPROVADO POR NOTA!');
      end
      else
      begin
        if Qtd_Faltas>Qtd_Aulas*0.25 then
        begin
          write ('O aluno está REPROVADO POR FALTA!');
        end
      end
    end
  end
end.