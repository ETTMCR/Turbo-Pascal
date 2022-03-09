uses crt,dos;
var year,month,day,weekday,hour,minute,sec,sec_100:word;

procedure time(hour:word);
begin
     delay(2000);
     case hour of
     0..6:writeln('you should be sleeping !');
     7..12:writeln('good morning !');
     13..16:writeln('the windows are good !');
     16..19:writeln('later windows are good');
     19..23:writeln('good nigth !');
     end;
     writeln('');writeln('');delay(1500);
end;{of procedure time}

begin      {procedure gameover(q:integer;);}
textcolor(random(15)+blink);
     writeln('            gggg         a             m     m        eeeee')       ;
     writeln('           g            a a           m m   m m       e ')      ;
     writeln('          g   gg       aaaaa         m   m m   m      eee ')     ;
     writeln('           g    g     a     a       m     m     m     e ')     ;
     writeln('            gggg     a       a     m             m    eeeee   ')    ;
     writeln('');writeln('');
     writeln('          oooo       v       v     eeeee      rrr        !!!!      ')   ;
     writeln('         o    o       v     v      e          r  r      ! !! !   ')  ;
     writeln('        o      o       v   v       eee        rrr        !!!!   ')  ;
     writeln('         o    o         v v        e          r  r       !  ! ') ;
     writeln('          oooo           v         eeeee      r   r       !! ');
     writeln(''); writeln('');

     getdate (year,month,day,weekday); gettime(hour,minute,sec,sec_100);
     write ('the date is ',day,'/',month,'/',year);
     writeln(' and the hour is ',hour,':',minute,' .'); time(hour);
end.


        bbb    l           a          cccc      k  k     
        b  b   l          a a        c          k k       
        bbb    l         aaaaa      c           kk     *****  
        b  b   l        a     a      c          k k        
        bbb    lllll   a       a      cccc      k  k       

            j             \\\\      
            j             -0-0-    
        j   j               \      
         j  j              \_/     
          jjj            ettmcr 
  
