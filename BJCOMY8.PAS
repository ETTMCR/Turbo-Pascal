program black_jack;
uses crt,dos;
label fin;
var
   blik,i,money,comoney,sumyou,sumcom,bet,betcom,card1,card2,card3:integer;
   flag:boolean; yn,play,quit:string;  {4D}year,month,day,weekday,hour,minute,sec,sec_100:word;
   gd,gm:integer; clr:word;

{***}procedure snd(bet:integer);
var
wrd:word; i:integer;
begin
  randomize;
  wrd:=random(5500);
  sound(wrd);
  delay(10);
end; {procedure snd}

{***}procedure rndclrga(var clr:word);
begin
     clr:=8;
     while clr=8 do begin
     randomize;
     clr:=random(14)+1;
     textcolor(clr+blink);
     end;
end; {of procedure rndclrga}

{***}procedure rndclr(var clr:word);
begin
     clr:=8;
     while clr=8 do begin
     randomize;
     clr:=random(14)+1;
     textcolor(clr);
     end;
end; {of procedure rndclr}

{***}procedure loto(var money:integer;var comoney:integer;var bet:integer;var betcom:integer);
var
   i,youbin,bin,ss:integer;
begin
     bin:=0; youbin:=1; ss:=0; writeln('');
     for i:=1 to 5 do begin writeln('this is a spacial event !'); delay(500);  end;
     writeln(' you two got the same sum ',sumyou);  delay(500);
     writeln(' so we make loto: say 1 or 0');readln(youbin);bin:=random(2); delay(1000); writeln;

     if bin=youbin then begin write('the loto randomed ',bin,' so you win and you get ',bet div 2);
        writeln(' dollars '); ss:=0; write('wow ! lucky you ! now you have '); money:=(bet div 2)+money;
        writeln(money,' dollars')end
     else begin ss:=1; writeln('the loto randomed ',bin,' so the computer win and he got ',betcom div 2);
          comoney:=(betcom div 2)+comoney ;write(' dollars and now he has ',comoney,' dollars');
          end;
     delay(1000); writeln;
     if bin=youbin then begin write(' and the computer lose ',betcom div 2,' dollars and now he has ');
        comoney:=comoney-(betcom div 2);writeln(comoney,' dollars');end;
     if ss=1 then begin write('and you lose ',bet div 2,' dollars and now you have ');
        money:=money-(bet div 2); writeln (money,' dollars'); end;

end;{of procedure loto}

{***}procedure uls3btcm(var betcom:integer);
begin
     randomize;
     betcom:=random(comoney-1)+1;
     delay(1000);
end;{of procedure uls3btcm}

{***}procedure time(hour:word);
begin

     case hour of
     0..6:writeln('you should be sleeping ;=| ');
     7..12:writeln('good morning :-) ');
     13..16:writeln('the windows are good 8=) ');
     16..19:writeln('later windows are good o-) ');
     19..23:writeln('good nigth |-Z ');
     end;
     writeln('');writeln('');
end;{of procedure time}

{***}procedure kilel(card1:integer);
var
     tkl:integer;
begin
     randomize;
     tkl:=random(19);
     case tkl of
     1:begin delay(1000);writeln;writeln('so loser !');end;
     2:begin delay(1000);writeln;writeln('maniac !');end;
     3:begin delay(1000);writeln;writeln('crazy !');end;
     4:begin delay(1000);writeln;writeln('out of line !');end;
     5:begin delay(1000);writeln;writeln('weard !');end;
     6:begin delay(1000);writeln;writeln('beach !');end;
     7:begin delay(1000);writeln;writeln('why !');end;
     8:begin delay(1000);writeln;writeln('hello !');end;
     9:begin delay(1000);writeln;writeln('world calling !');end;
     0:begin delay(1000);writeln;writeln('we cant give so much money');end;
     17:begin delay(1000);writeln;writeln('so rich ? ');end;
     16:begin delay(1000);writeln;writeln('gonna be poor...');end;
     10:begin delay(1000);writeln;writeln('not here please !');end;
     11:begin delay(1000);writeln;writeln('mind of nuts !');end;
     12:begin delay(1000);writeln;writeln('gonna lose !');end;
     13:begin delay(1000);writeln;writeln(' kidding us !');end;
     15:begin delay(1000);writeln;writeln('what ?!');end;
     14:begin delay(1000);writeln;writeln('!@*# %^@! &*@ !#');end
     else begin delay(1000);writeln;writeln('ben zona !');end;
     end;    delay(750); writeln;
end;{ofprocedure kilel}

{***}procedure gameover(money:integer);
begin

for blik:=1 to 9 do begin  writeln;writeln;writeln;writeln;writeln;writeln;
rndclrga(clr);     writeln('            gggg         a             m     m        eeeee  '); randomize;
rndclrga(clr);     writeln('           g            a a           m m   m m       e      '); randomize;
rndclrga(clr);     writeln('          g   gg       aaaaa         m   m m   m      eee    '); randomize;
rndclrga(clr);     writeln('           g    g     a     a       m     m     m     e      '); randomize;
rndclrga(clr);     writeln('            gggg     a       a     m             m    eeeee  '); randomize;
rndclrga(clr);     writeln('');writeln('');  writeln('');
rndclrga(clr);     writeln('          oooo       v       v     eeeee      rrr          !!!!     ');  randomize;
rndclrga(clr);     writeln('         o    o       v     v      e          r  r        ! !! !      ');  randomize;
rndclrga(clr);     writeln('        o      o       v   v       eee        rrr          !!!!         ');  randomize;
rndclrga(clr);     writeln('         o    o         v v        e          r  r         !  !     ');  randomize;
rndclrga(clr);     writeln('          oooo           v         eeeee      r   r         !!          ');  randomize;
delay(300); nosound; if blik<9 then  clrscr; end;

     writeln(''); writeln(''); writeln(''); textcolor(15);
    getdate (year,month,day,weekday); gettime(hour,minute,sec,sec_100);
     write ('the date is ',day,'/',month,'/',year);
     writeln(' and the hour is ',hour,':',minute,' .'); time(hour);
end; {of procedure gameover}

{***}procedure computer(var comoney:integer; var sumcom:integer;var money:integer;
                   var sumyou:integer;var betcom:integer;var bet:integer);
var
   anothercard3,card3,card1,card2:integer;
    {flags}ss,bin,youbin:integer;   {flag}com21:boolean;
begin
           writeln;writeln;   delay(1000);
           writeln('    ***  now it is the computer torn please be paitioent !  ***'); delay(750);
           writeln;writeln;      delay(1000);
           write(' we give mr. com. ',comoney,' dollars');
           randomize;
           betcom:=random(comoney-1)+1; {never lose his money}
           writeln (' mr. com. bet ',betcom,' dollars');  kilel(card1);

{the 2 cards}randomize;
           card1:=random(13)+1;
           card2:=random(13)+1;
           while card1=card2 do card2:=random(13)+1;
           sumcom:=card1+card2;
           writeln(' and we give him two cards whice are ',card1,' and ',card2);delay(1000);writeln;
           writeln(' the sum of the two cards is ',sumcom);  delay(1500);writeln;

               com21:=true;
{*}           if sumcom=21 then
              begin
                   writeln(' !!! the computer has black jack so he win !!!');
                   comoney:=comoney+betcom*3;   com21:=false;
                   writeln(' and now he has ',comoney,' dollars');
                   writeln(' super loser! you ! give us ',bet,' dollars'); money:=money-bet;
              end;

{*}           if sumcom>21 then
               begin
                    comoney:=comoney-betcom;  com21:=false;
                    writeln(' the computer lose by ',sumcom,' so now he has ',comoney,' dollars');
                    writeln(' and you take your bet of ',bet,' dollars'); money:=money+bet;
               end;

               anothercard3:=0;
               write(' mr. com. do you take or not another card3 ?'); delay(1500);

{*}            if (sumcom<21) and (sumcom<sumyou)  then  begin
                   anothercard3:=1; writeln(' sure !');  end
               else  if  (sumcom>16) and ((card1>5) or (card2>5)) and (sumcom<21) then
                     begin anothercard3:=0; writeln(' no !'); end
                     else begin anothercard3:=1; writeln('  I take'); end;
                 delay(1500); writeln;
{sumyou}                                                     {****}
{*}               if (anothercard3=0) and (sumcom<sumyou) and(com21)then begin
                    writeln(' the computer lose by ',sumcom,' against your score ',sumyou);
                    comoney:=comoney-betcom; delay(1000); writeln;
                    writeln(' so now he has ',comoney,' dollars');
                    writeln(' and you win ',bet,' dollars'); money:=money+bet;
                    end;

{*}               if (anothercard3=0) and (sumcom>sumyou) and (com21) then begin
                    writeln(' the computer win by ',sumcom,' against your score ',sumyou);
                    comoney:=comoney+betcom;   delay(1000); writeln;
                    writeln(' so now he has ',comoney,' dollars');
                    writeln(' and we take you ',bet,' dollars'); money:=money-bet;
                    end;

{*}              if (anothercard3=0) and (sumyou=sumcom) then loto(money,comoney,bet,betcom);

{anothercard3}
{*}             if (anothercard3=1) and (com21) then begin
                   card3:=random(13)+1;       delay(1000); writeln;
                   while (card1=card3) or (card3=card2)  do card3:=random(13)+1;
                   writeln(' the computer cards are ',card1,' and ' ,card2,' so he took third card ',card3);
                   sumcom:=card3+sumcom;
                   end;
                                                     {****}
{*}           if (sumcom=21) and (anothercard3=1) and(com21) then begin
                   writeln(' the computer has black jack so he win');
                   comoney:=comoney+betcom*2;      delay(1000); writeln;
                   writeln(' and now he has ',comoney,' dollars');
                   writeln(' and you lose ',bet,' dollars'); money:=money-bet;
                   end;

{*}           if (sumcom>21) and (anothercard3=1) and (com21) then begin
                    comoney:=comoney-betcom;       delay(1000); writeln;
                    writeln(' the computer lose by ',sumcom,' so now he has ',comoney,' dollars');
                    writeln(' and you win ',bet,' dollars'); money:=money+bet;
                   end;

{*}               if (anothercard3=1) and(sumcom<21) and(sumcom<sumyou) then begin
                    writeln(' the computer lose by ',sumcom,' against your score ',sumyou);
                    comoney:=comoney-betcom;       delay(1000); writeln;
                    writeln(' so now he has ',comoney,' dollars');
                    writeln(' and you win ',bet,' dollars'); money:=money+bet;
                    end;

{*}               if (anothercard3=1) and(sumcom<21)and (sumcom>sumyou) then begin
                    writeln(' the computer win by ',sumcom,' against your score ',sumyou);
                    comoney:=comoney+betcom;       delay(1000); writeln;
                    writeln(' so now he has ',comoney,' dollars');
                    writeln(' and you lose ',bet,' dollars'); money:=money-bet;
                    end;

{*}              if (anothercard3=1) and (sumyou=sumcom) and (sumcom<21) then loto(money,comoney,bet,betcom);

writeln;writeln;
writeln ('    *** the torn of the computer is end ***');
writeln;writeln;       delay(3000);
end;{of procedure computer}


{****}
procedure you(var money:integer;var bet:integer;var sumyou:integer;var comoney:integer;var sumcom:integer;var betcom:integer);

begin
          writeln;writeln ('do you want to quit now ? yes or no'); readln(quit);
                           if quit='yes' then Exit ;
           writeln(' we give you : ',money,' dollar.'); delay(500);
           writeln(' you can bet till ',money,' dollar');  readln(bet); kilel(card1);
           while (bet>money) or (bet<0) or (bet=0) do begin   writeln(' ktov bet again'); readln (bet); kilel(card1); end;

{the cards}randomize;
           card1:=random(13)+1;
           card2:=random(13)+1;
           while card1=card2 do card2:=random(13)+1;
           sumyou:=card1+card2;
           writeln(' we give you two cards'); delay(1000);
           writeln(' card1 is ',card1,' and card2 is ',card2,' the sum is ',sumyou); delay(1500);
           flag:=true;

{*}        if sumyou=21 then
           begin flag:=false;
              for i:=1 to 5 do begin writeln('  !!!! black jack !!!! '); delay(250);clrscr; end;
              writeln (' you have luck on first shot');
              bet:=bet*3;writeln(' so you get triple bet of ',bet,' dollars');money:=money+bet;
              writeln(' which means that your acount of dollars stands on ',money,' dollars');
              betcom:=random(comoney-1)+1;
              writeln ('the computer bet before on ',betcom,' dollars and we take it!');
              comoney:=comoney-betcom;
              end;

{sumyou<>21}
{*}           if (sumyou>21) and (flag) then begin writeln ('you lose by ',sumyou); money:=money-bet;
                 writeln(' you lose ',bet,' dollars');   randomize;
                 betcom:=random(comoney-1)+1;  comoney:=comoney+betcom;
                 writeln (' the computer bet before on ',betcom,' dollars and he did it!');
                 end;

              if (sumyou<21)and (flag) then begin writeln (' do you want another card? yes or no?'); readln(yn);
{torncom-yn=no}     if yn='no' then computer(comoney,sumcom,money,sumyou,betcom,bet);

{card3}          if (yn='yes')and (flag)then begin  card3:=random(13)+1;
                                  while (card1=card3) or (card3=card2)  do card3:=random(13)+1;
                                  writeln('card3 is ',card3);
                                  sumyou:=sumyou+card3;
                                  writeln (' the sum  now is ',sumyou);    delay(1500);

{*}                               if sumyou=21 then begin
                                     for i:=1 to 5 do begin writeln('  !!!! black jack !!!! ');delay(250);end;
                                     write(' you win your double bet of ');
                                     writeln(bet*2,' dollars');
                                     write(' we take the computer is bet of ');uls3btcm(betcom);
                                     write(betcom); write(' and he has ');
                                     comoney:=comoney-betcom; write(comoney); writeln(' greens .');
                                     end;

{*}                                 if sumyou>21 then
                                        begin   writeln('you lose by ',sumyou,' after you take the third card');
                                        writeln ('you lose your bet of ',bet,' dollars');money:=money-bet;
                                        writeln(' and now you have ',money,' dollars '); uls3btcm(betcom);
                                        writeln('and the computer win is bet of ',betcom,' papers');comoney:=comoney+betcom;
                                        end;

{*}                 {sumyou<>21}     if sumyou<21 then
                                        computer(comoney,sumcom,money,sumyou,betcom,bet);


                           end;{of card3}
                   end;{of torncom}
              {end;ofif flag}
              delay(2500);
end;{of procedure you}

{***}begin  {of main}

     clrscr;
     money:=50; bet:=0; sumyou:=0; comoney:=50; sumcom:=0; betcom:=0;

     for blik:=1 to 9 do begin  writeln;writeln;writeln;writeln;writeln;writeln;  snd(bet);
rndclr(clr);     writeln('         bbb    l           a          cccc      k  k      '); randomize;
rndclr(clr);     writeln('         b  b   l          a a        c          k k       '); randomize;
rndclr(clr);     writeln('         bbb    l         aaaaa      c           kk     *****  '); randomize;
rndclr(clr);     writeln('         b  b   l        a     a      c          k k        '); randomize;
rndclr(clr);     writeln('         bbb    lllll   a       a      cccc      k  k       '); randomize;
rndclr(clr);     writeln;writeln;writeln;
rndclr(clr);     writeln('            j        a         cccc      k  k        \\\\      '); randomize;
rndclr(clr);     writeln('            j       a a       c          k k         -0-0-     '); randomize;
rndclr(clr);     writeln('        j   j      aaaaa     c           kk            \       '); randomize;
rndclr(clr);     writeln('         j  j     a     a     c          k k          \_/      '); randomize;
rndclr(clr);     writeln('          jjj    a       a     cccc      k  k      6/03  ettmcr '); randomize;
  delay(300); nosound; if blik<9 then  clrscr; end;

     delay(1000);
     writeln;writeln;writeln; textcolor(15);
     getdate (year,month,day,weekday); gettime(hour,minute,sec,sec_100);
     write ('the date is ',day,'/',month,'/',year);
     writeln(' and the hour is ',hour,':',minute,' .'); time(hour); delay(2000);
     writeln('we anvite you to play: yes or no?'); readln(play);

     while (comoney>0) and(money>0) and(play='yes') do begin
           if quit='yes' then goto fin;
           you(money,bet,sumyou,comoney,sumcom,betcom);  end; {of while money}

{***}fin:
         writeln;writeln;writeln;

       if (comoney>money)  then  begin
          for i:=1 to 5 do begin snd(bet); writeln('    !!! you have ',money,' dollar. computer win by ',comoney,'  !!!');
           delay(250); end;
          nosound; delay(2500);    end
          else begin
               for i:=1 to 5 do begin snd(bet);writeln('    !!! you have ',money,' dollar. computer lose by ',comoney,'  !!!');
               delay(250);end;
               nosound; delay(2500);
          end;

       if money=0 then begin
          for i:=1 to 5 do begin snd(bet); writeln('    !!! you have ',money,' dollar. computer win !!!'); delay(250); end;
          nosound; delay(2500);    end;

       if money=comoney then begin
          for i:=1 to 5 do begin snd(bet);writeln('    !!! both of you have ',money,' dollar. nobody win !!!'); delay(250);end;
          nosound; delay(2500);    end;

       if (money<0) then   begin
          for i:=1 to 5 do begin snd(bet);
          writeln('    !!! you have ',money,' dollar. computer win !!!');delay(250); end; nosound;
          write('  hey !!! ');delay(1000);write('what with our money ? '); delay(750); writeln(' fuck !!!');delay(1000);
          end;

       if comoney=0 then  begin
          for i:=1 to 5 do begin snd(bet); writeln('    !!! the computer have ',money,' dollar. you win !!!');delay(250);  end;
          nosound; delay(2500); end;

       if (comoney<0) then  begin
          for i:=1 to 5 do begin snd(bet); writeln('    !!! the computer have ',money,' dollar. you win !!!');delay(250); end;
          nosound; write('  hey !!! ');delay(1000);write('what with our money ? '); delay(750); writeln(' fuck !!!');
          delay(1000);
          end;

       writeln;writeln;writeln;
       gameover(money); writeln('thank you for playing !'); delay(3000);
end.



