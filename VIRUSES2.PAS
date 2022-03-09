program incest;    {beginning ?}
uses graph,crt;

var
 gd,gm,mone,hara,fil_i,fil_j,
 i,go_x,go_y,yx,clr:integer;
 viruses:longint;
 virs:text;
 drive:string;
begin
writeln('write your hard disk letter.');
writeln('like c or d or e');
readln(drive) ;

DetectGraph(gd, gm);

randomize;
 {gd:=0;}
 initgraph(gd,gm,'');
 go_x:=250;
go_y:=250;
 putpixel (go_x,go_y,clr);


 for fil_i:=1 to 700 do  {eating  wood !}
      for fil_j:=1 to 500 do
               putpixel (fil_i,fil_j,6);

 delay(1500);

while not(keypressed)do
begin
{}    { delay(1);}{}

     clr:=random(16);

     yx:=random(4);{1up 2down 3right 0left}
     case yx of
     0:go_x:=go_x-1;
     1:go_y:=go_y-1 ;
     2:go_y:=go_y+1 ;
     3:go_x:=go_x+1 ;
     end;
     putpixel (go_x+10,go_y+10,clr);
     delay(1);   {make it}
     putpixel (go_x+10,go_y+10,0); {disepear}

     viruses:=viruses+1;

     {if   viruses mod 15=0 then {hara-in first time looks like a ghost}
      {    putpixel (go_x+10,go_y+10,15);}

end;

 assign(virs,drive+':\viruses.txt');
 rewrite(virs);
writeln(virs,viruses);
close(virs);

{}
end.
