program zikuk;
uses crt;
const
n=41;
var
j,i,koh,mdl,zikukim,zik,mode_num,clr:integer;
mat:array [1..n,1..n] of char;
more,inr:char;

begin
     more:='y';
     randomize;
{make mat} mdl:=((n+1) div 2);
     for i:=1 to n do
         for j:=1 to n do
         mat[i,j]:=' ';

     while more='y' do begin
     writeln ('how much zikukim do u want ?');
     readln(zik) ;
     writeln ('and which mode do u want 1,2,3 ?');
     readln(mode_num);
     writeln('with inner stars? y/n');
     readln (inr);

{much?}for zikukim:= 1 to zik do begin

        if mode_num=1 then
        begin
        clr:=zikukim mod 15;  {how much time i was thinking about this simple line}
        if clr=0 then clr:=15;
        textcolor(clr);
        end;

{runnig}for koh:= 1 to (n div 2) do
        begin
          if mode_num=2 then
          begin
               clr:=koh mod 15; if clr=0 then clr:=15; textcolor(clr);
          end;

{first=5} if koh=1 then
          begin
               mat[mdl,mdl]:='*';
             for i:= 1 to n do
                 for j:= 1 to n do
                 begin
                 write(mat[i,j]);
                 if j=n then writeln;
                 end;
           delay(25);
           clrscr;
          end;

{refresh}   for i:= 1 to n do
                for j:= 1 to n do
                    mat[i,j]:=' ';

{put *}     mat[mdl+koh,mdl-koh]:='*';{1}
            mat[mdl+koh,mdl]:='*';  {2}
            mat[mdl+koh,mdl+koh]:='*';{3}
            mat[mdl,mdl-koh]:='*';  {4}
            mat[mdl,mdl+koh]:='*';  {6}
            mat[mdl-koh,mdl-koh]:='*';{7}
            mat[mdl-koh,mdl]:='*';{8}
            mat[mdl-koh,mdl+koh]:='*';{9}

            if inr='y' then begin
            if koh>2 then begin
            mat[mdl+koh-4,mdl-koh+4]:='*';{1}
            mat[mdl+koh-4,mdl]:='*';  {2}
            mat[mdl+koh-4,mdl+koh-4]:='*';{3}
            mat[mdl,mdl-koh+4]:='*';  {4}
            mat[mdl,mdl+koh-4]:='*';  {6}
            mat[mdl-koh+4,mdl-koh+4]:='*';{7}
            mat[mdl-koh+4,mdl]:='*';{8}
            mat[mdl-koh+4,mdl+koh-4]:='*';{9}
            end;
            if koh>4 then begin
            mat[mdl+koh-8,mdl-koh+8]:='*';{1}
            mat[mdl+koh-8,mdl]:='*';  {2}
            mat[mdl+koh-8,mdl+koh-8]:='*';{3}
            mat[mdl,mdl-koh+8]:='*';  {4}
            mat[mdl,mdl+koh-8]:='*';  {6}
            mat[mdl-koh+8,mdl-koh+8]:='*';{7}
            mat[mdl-koh+8,mdl]:='*';{8}
            mat[mdl-koh+8,mdl+koh-8]:='*';{9}
            end;
            end;
{printing}  for i:= 1 to n do begin
                for j:= 1 to n do
                begin
                   write(mat[i,j]);
                   if j=n then writeln;
                end;
            end;

            if koh<n then
            begin
                delay(20);
                clrscr;
            end;
     end;

     end;
         writeln ('more zikukim y/n ?');
	readln (more);  clrscr;
	if more='n' then exit;     end;

end.

