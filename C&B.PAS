program infected_washroom;
{carius and baktus}
uses crt,Graph;

var
 Gd, Gm: Integer;
 rds,i,rndx,rndy: Integer;
begin
 Gd := Detect;
 InitGraph(Gd, Gm, ' ');
 if GraphResult <> grOk then
   Halt(1);
   delay(1500);
   randomize;

while not(keypressed) do
begin

rds:=random(15);{the radius size of the colony}
rndx:=random(600);{where to put the colony}
rndy:=random(450);
setcolor(random(15));

 for i := 1 to rds do{print the colony}
 begin
   delay(5);
   Circle(rndx, rndy,i);
   end;

 end;{while key}
 readln;
  delay(1500);
{ CloseGraph;}
end.