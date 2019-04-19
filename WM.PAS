unit wm;{ver. 1.3}
interface
procedure wellcome(input_name:string;number:string);
implementation
              uses crt,graph;
              const
                   bd=70;
                   n=4;{number of words}
                   m=14;
                   d=150;{delay of showing words}
              var
                 input_name:string[m];
                 number:integer;
                 mwm:array[1..n] of string;
                 color:array[0..4] of integer;
                 color_check:array[1..2] of integer;
                 border:array[1..3] of char;
              function clrchk(var color_check:array of integer):integer;
              begin
                   color_check[1]:=random(4);
                   while (color_check[0]=color_check[1]) do
                   begin
                        color_check[1]:=random(4);
                   end;
                       color_check[0]:=color_check[1];
                       clrchk:=color[color_check[1]];
              end;
              {x,y-coordinates, w,z-parameters}
              procedure horizontal_border(var x,y,w,z:integer);
              var
                 i:integer;
              begin
                   for i:=1 to w do
                   begin
                        textbackground(clrchk(color_check));
                        gotoxy(x,y);
                        write(border[1]);
                        delay(bd-40);
                        x:=x+1;
                   end;
              textbackground(0);
              end;
              {x,y-coordinates, w,z-parameters}
              procedure vertical_border(var x,y,w,z:integer);
              var
                 i:integer;
              begin
                   y:=y+1;
                   for i:=1 to z do
                   begin
                        textbackground(clrchk(color_check));
                        gotoxy(x,y);
                        write(border[3]);
                        delay(bd);
                        y:=y+1;
                   end;
              textbackground(0);
              end;
              procedure borders;
              var
                 x,y,i,z,w:integer;
              begin
                   w:=30;
                   z:=6;
                   x:=28;
                   y:=8;
                   gotoxy(x,y);
                   write(border[2]);
                   x:=x+1;
                   horizontal_border(x,y,w,z);
                   write(border[2]);
                   vertical_border(x,y,w,z);
                   gotoxy(x,y);
                   write(border[2]);
                   x:=x-(w+1);
                   gotoxy(x,y);
                   write(border[2]);
                   x:=x+1;
                   gotoxy(x,y);
                   horizontal_border(x,y,w,z);
                   {left border}
                   x:=x-(w+1);
                   y:=y-(z+1);
                   gotoxy(x,y);
                   vertical_border(x,y,w,z);
                   {---}
                   textbackground(black);
              end;
              procedure wellcome(input_name:string;number:string);
              var
                 l,i,j,x,x2,y:integer;
              begin
                   {coordinates}
                   borders;
                   x:=37;
                   y:=10;
                   randomize;
                   l:=length(input_name);
                   color_check[1]:=1;
                   for i:=1 to n do
                   begin
                        gotoxy(x,y);
                        if (i=1) then
                           write('   ')
                        else if (i=2) then
                             write(' ');
                        for j:=1 to length(mwm[i]) do
                        begin
                            textcolor(clrchk(color_check));
                            write(mwm[i][j]);
                            delay(d);
                        end;
                        {input name}
                        if (i=2) then
                        begin
                           textcolor(white);
                           for j:=1 to length(input_name) do
                           begin
                                if (j>16) then
                                   break;
                                textbackground(clrchk(color_check));
                                if (input_name[j]=' ') then
                                   textbackground(0);
                                write(input_name[j]);
                                delay(d);
                           end;
                           textbackground(0);
                        end;
                        {/input name}
                        if (i=3) then
                           x:=x+length(mwm[i])
                        else
                           y:=y+1;
                   end;
                   {Number of labaratory}
                   for i:=1 to length(number) do
                   begin
                        textcolor(clrchk(color_check));
                        write(number[i]);
                        delay(d);
                   end;
              textcolor(white);
              {clear clipboard(bufer obmena)}
              MemW[Seg0040:$1C]:=MemW[Seg0040:$1A];
              {--}
              while(keypressed<>true) do
              begin
                   gotoxy(x-16,y);
                   write('Press');
                   textcolor(red);
                   write(' ANYKEY');
                   textcolor(white);
                   write(' to continue');
                   delay(500);
                   gotoxy(x-16,y);
                   write('                        ');
                   delay(500);
              end;
              end;
begin
   {Color}
   color[0]:=9;
   color[1]:=10;
   color[2]:=12;
   color[3]:=13;
   color[4]:=14;
   {words}
   mwm[1]:='Program';
   mwm[2]:='by ';
   mwm[3]:='Laboratory ';
   mwm[4]:='#';
   {borders}
   border[1]:='-';
   border[2]:='+';
   border[3]:='|';
end.
