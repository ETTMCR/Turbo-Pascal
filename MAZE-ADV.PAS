program maze;
uses crt;
type
    arrmat=array [1..10,1..10]of char;

procedure print(mat:arrmat);
var
   i,j:integer;
begin
    for i:=1 to 10 do
         for j:=1 to 10 do
         begin
             write (mat[i,j]);
             if j=10 then writeln;
         end;
    writeln;
    delay(500);
end; {of print}

procedure A_near_B(mat:arrmat;Ajx,Aiy,Biy,Bjx:integer;var can_go:boolean);
begin
     can_go:=true;

     if can_go and (mat[Aiy+1,Ajx]='B')then
     begin
          writeln('A find B game over');
          can_go:=false;
     end;

     if can_go and (mat[Aiy-1,Ajx]='B')then
     begin
          writeln('A find B game over');
         can_go:=false;
     end;

     if can_go and (mat[Aiy,Ajx+1]='B')then
     begin
          writeln('A find B game over');
          can_go:=false;
     end;

     if can_go and (mat[Aiy,Ajx-1]='B')then
     begin
          writeln('A find B game over');
         can_go:=false;
     end;

end;{of A_near_B}

procedure stak(var mat:arrmat;Ajx,Aiy,Biy,Bjx:integer;var can_go:boolean);
var
   away:boolean;
begin
      away:=true;
     if (can_go)and(away)and ((mat[Aiy+1,Ajx]='*') or (mat[Aiy+1,Ajx]='/')) and ((mat[Aiy-1,Ajx]='*') or (mat[Aiy-1,Ajx]='/'))
        and ((mat[Aiy,Ajx+1]='*') or (mat[Aiy,Ajx+1]='/')) and ((mat[Aiy,Ajx-1]='*') or (mat[Aiy,Ajx-1]='/')) then
     begin
          writeln ('A is stak in his place. game over!'); away:=false; can_go:=false;
     end;

     if (can_go)and(away)and ((mat[Biy+1,Bjx]='*') or (mat[Biy+1,Bjx]='/')) and ((mat[Biy-1,Bjx]='*') or (mat[Biy-1,Bjx]='/'))
        and ((mat[Biy,Bjx+1]='*') or (mat[Biy,Bjx+1]='/')) and ((mat[Biy,Bjx-1]='*') or (mat[Biy,Bjx-1]='/')) then
     begin
          writeln ('unable to get B. game over!'); away:=false; can_go:=false;
     end;

end; {of stak}

procedure search(var mat:arrmat;var Ajx:integer;var Aiy:integer;Biy:integer;Bjx:integer;var can_go:boolean);
var
   awayup,awayright:boolean;
begin
     awayup:=true;  awayright:=true;

        while (mat[Aiy+1,Ajx]=' ') do   {up}
        begin
        if (not can_go) then exit;
        mat[Aiy,Ajx]:='.'; mat[Aiy+1,Ajx]:='A';  Aiy:=Aiy+1; awayup:=false;
        A_near_B(mat,Ajx,Aiy,Biy,Bjx,can_go);
        print(mat);{}
        end;

        while awayup and (mat[Aiy-1,Ajx]=' ')  do    {down}
        begin
        if (not can_go) then exit;
        mat[Aiy,Ajx]:='.'; mat[Aiy-1,Ajx]:='A'; Aiy:=Aiy-1;
        A_near_B(mat,Ajx,Aiy,Biy,Bjx,can_go);
        print(mat);{}
        end;

        while (mat[Aiy,Ajx+1]=' ') do    {left}
        begin
        if (not can_go) then exit;
        mat[Aiy,Ajx]:='.'; mat[Aiy,Ajx+1]:='A'; Ajx:=Ajx+1; awayright:=false;
        A_near_B(mat,Ajx,Aiy,Biy,Bjx,can_go);
        print(mat);{}
        end;

        while awayright and (mat[Aiy,Ajx-1]=' ') do   {right}
        begin
        if (not can_go) then exit;
        mat[Aiy,Ajx]:='.' ; mat[Aiy,Ajx-1]:='A'; Ajx:=Ajx-1;
        A_near_B(mat,Ajx,Aiy,Biy,Bjx,can_go);
        print(mat);{}
        end;

end; {of search}

var
   Biy,Bjx,Ajx,Aiy,A,i,j,pin:integer;
   mat:arrmat;
   can_go,ok:boolean;

begin  {main}
             {making the maze}
     randomize;             {inner walls}

     for i:=1 to 10 do
         for j:=1 to 10 do
             mat[i,j]:=' ';

     for i:=1 to 10 do
         for j:=1 to 10 do
         begin
             pin:=random(10)+1;
             if pin mod 3=0 then
                mat[i,j]:='*';
         end;

     for i:=1 to 10 do  {ribua walls}
         mat[i,1]:='/';
     for i:=1 to 10 do
         mat[i,10]:='/';
     for j:=1 to 10 do
         mat[1,j]:='/';
     for j:=1 to 10 do
         mat[10,j]:='/';

     i:=10; j:=1;      {putting A com}
     while  (i=10) or (i=1) do
          i:=random(10)+1;
     while  (j=1) or (j=10) do
          j:=random(10)+1;
     mat[i,j]:='A';
     Aiy:=i; Ajx:=j;

     i:=10; j:=1;   ok:=true;   {putting B exit}
     while ok do
     begin
       while  (i=1)or(i=10) do
            i:=random(10)+1;
       while  (j=1) or (j=10) do
            j:=random(10)+1;
       if (not((Aiy=i) and (Ajx=j))) then
       begin
          mat[i,j]:='B';
          Biy:=i; Bjx:=j;
          ok:=false;
       end;

     end;

     print(mat);
            {done making}

     can_go:=true;
     stak(mat,Ajx,Aiy,Biy,Bjx,can_go);
     A_near_B(mat,Ajx,Aiy,Biy,Bjx,can_go);
     while can_go=true do
     search(mat,Ajx,Aiy,Bjx,Biy,can_go);

end.
