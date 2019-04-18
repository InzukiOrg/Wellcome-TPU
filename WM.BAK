unit wm;{ver. 1.01a}
interface
procedure wellcome(input_name:string;number:string);
implementation
              uses crt,graph;
              const
                   n=4;{number of words}
                   m=25;
                   d=150;{delay of showing words}
              var
                 input_name:string[m];
                 number:integer;
                 mwm:array[1..n] of string;
                 color:array[0..4] of integer;
                 color_check:array[1..2] of integer;
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
              procedure wellcome(input_name:string;number:string);
              var
                 l,i,j,x,x2,y:integer;
              begin
                   {coordinates}
                   x:=37;
                   y:=10;
                   randomize;
                   l:=length(input_name);
                   color_check[1]:=1;
                   for i:=1 to n do
                   begin
                        gotoxy(x,y);
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
                                textbackground(clrchk(color_check));
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
end.
