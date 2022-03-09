program virusesohno;
uses graph,crt;

var
 gd,gm,mone,
 i,go_x,go_y,yx,clr:integer;
 viruses:longint;
 virs:text;
begin


DetectGraph(gd, gm);

randomize;
 {gd:=0;}
 initgraph(gd,gm,'');
 go_x:=250;
go_y:=250;
 putpixel (go_x,go_y,clr);
 delay(1500);
while not(keypressed)do
begin
{}     delay(1);{}

     clr:=random(16);

     {this part was my first uses graph}
     {y:=random(500);{screen}
     {x:=random(500);}
     {putpixel(x,y,clr);}

     yx:=random(4);{1up 2down 3right 0left}
     case yx of
     0:go_x:=go_x-1;
     1:go_y:=go_y-1 ;
     2:go_y:=go_y+1 ;
     3:go_x:=go_x+1 ;
     end;
     putpixel (go_x+10,go_y+10,clr);

     {mone:=mone+1;
     if mone=250 then delay(10);}

     viruses:=viruses+1;
end;
{     closegraph; {can't see the result}
{     gotoxy(1,1);
      write(viruses);}
{output style} {}
 assign(virs,'d:\viruses.txt');
 rewrite(virs);
writeln(virs,viruses);
close(virs);
{}
end.
