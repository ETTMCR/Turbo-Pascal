program code;

var
   s:string;
procedure mors(s:string);
 var i,len:integer;
begin
writeln(' the strin in mors code is');
writeln('ktov string');   readln(s);
     len:=length(s);
     for i:=1 to len do begin
case s[i] of
'a':begin write('._');write(' ');end;
'b':begin write('_...');write(' ');end;
'c':begin write('_._.');write(' ');end;
'd':begin write('_..');write(' ');end;
'e':begin write('.');write(' ');end;
'f':begin write('.._.');write(' ');end;
'g':begin write('_ _.');write(' ');end;
'h':begin write('....');write(' ');end;
'i':begin write('..');write(' ');end;
'j':begin write('._ _ _ _');write(' ');end;
'k':begin write('_._');write(' ');end;
'l':begin write('');write(' ');end;          {***}
'm':begin write('');write(' ');end;
'n':begin write('');write(' ');end;
'o':begin write('');write(' ');end;
'p':begin write('');write(' ');end;
'q':begin write('');write(' ');end;
'r':begin write('');write(' ');end;
's':begin write('');write(' ');end;
't':begin write('');write(' ');end;
'u':begin write('');write(' ');end;
'v':begin write('');write(' ');end;
'w':begin write('');write(' ');end;
'x':begin write('');write(' ');end;
'y':begin write('');write(' ');end;
'z':begin write('');write(' ');end;
'1':begin write('');write(' ');end;
'2':begin write('');write(' ');end;
'3':begin write('');write(' ');end;
'4':begin write('');write(' ');end;
'5':begin write('');write(' ');end;
'6':begin write('');write(' ');end;
'7':begin write('');write(' ');end;
'8':begin write('');write(' ');end;
'9':begin write('');write(' ');end;
'0':begin write('');write(' ');end;
'.':begin write('');write(' ');end;
',':begin write('');write(' ');end;
'?':begin write('');write(' ');end;
'"':begin write('');write(' ');end;
':':begin write('');write(' ');end;
'/':begin write('');write(' ');end;
{:begin write('');write(' ');end;
:begin write('');write(' ');end;
:begin write('');write(' ');end;
:begin write('');write(' ');end;}
else write('   ');
end;
end;
end;

begin
     mors(s);
     writeln;
     write (s);
end.