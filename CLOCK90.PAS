var
hour,min,i,mone:integer;
begin
mone:=0; hour:=0;

for hour :=0 to 720 do
 for min:=0 to 60 do begin
{   hour:=hour+5;}
    if (abs(min-(hour mod 60))=15) then
    begin
       mone :=mone+1;
       writeln ('min=',min ,' hour=',hour div 60,' ',hour mod 60);
    end;
end;

{the hour moves only 5 min on every 60 min}
writeln(mone);
end.
