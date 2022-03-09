program matrix_code_3;
 uses crt;

procedure snd(numc:integer);
var
wrd:word; i:integer;
begin
  randomize;
  wrd:=random(9000)+1000;
  sound(wrd);
  delay(10);
end;

procedure rndclr(ss:string);
var
   tclr:integer;
begin
     randomize;
     tclr:=random(15);
     textcolor(tclr);
      while tclr=8 do begin
     		randomize;
     		tclr:=random(15);
    		textcolor(tclr);
     		end;
end;

var
   ss,agian:string;
   k,j,i,numc,max:integer;
   let:char;   bfr:string;     {the bfr letters}
begin
     agian:='yes';
     while agian='yes' do  begin
     writeln;writeln;writeln;writeln;writeln;writeln;writeln;writeln;writeln;writeln;
     writeln('             ktov string');
     write('              ');
     readln(ss)   ;
     numc:=length(SS);
         max:=numc;
     for j:=1 to numc do      {how many let to do}
     BEGIN
         for let:='a'to  ss[j] do
         begin
              for i:=1 to max do writeln; {downong lines}
              if max mod 40=0 then begin clrscr; max:=0; end;   {new scr}
              writeln('             ',bfr,let); snd(numc); rndclr(ss);
              delay (70); max:=max+1; clrscr;  {the trick here for disvisiability}
         end;
         bfr :=concat(bfr,ss[j]);    {need to know bfr let of word}
    end;

      nosound; writeln;writeln;writeln;writeln;writeln;writeln;writeln;writeln;writeln;writeln;
     write('             ',ss);
    delay(1000);  clrscr;  bfr :='';
          writeln;writeln;writeln;writeln;writeln;writeln;writeln;writeln;writeln;writeln;
          writeln('             agian ? yes or no');
          write('             ');readln (agian); clrscr;
    end;{of while}
end.