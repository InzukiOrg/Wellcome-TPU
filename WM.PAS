unit wm;
interface
procedure wellcome(input_name:string;number:string);
implementation
              uses crt,graph;
              const
                   n=20;{number of words}
                   m=25;
                   d=150;{delay of showing words}
              var
                 input_name:string[m];
                 number:integer;
                 mwm:array[1..n] of char;
                 color:array[0..4] of integer;
              procedure wellcome(input_name:string;number:string);
              var
                 l,i,j,x,y:integer;
              begin
                   {coordinates}
                   x:=37;
                   y:=10;
                   randomize;
                   l:=length(input_name);
                   gotoxy(x,y);
                   for i:=1 to n do
                   begin
                        if ((i=8) or (i=10)) then
                        begin
                             y:=y+1;
                             gotoxy(x+2,y);
                             if (i=10) then
                             begin
                                gotoxy(x,y);
                                for j:=1 to l do
                                begin
                                    textcolor(color[random(4)]);
                                    write(input_name[j]);
                                    delay(d);
                                end;
                                y:=y+1;
                                gotoxy(x-3,y);
                             end;
                        end;
                        {Writing 'PROGRAM','by' and 'Labaratory #'}
                        textcolor(color[random(4)]);
                        if ((i<n) and (mwm[i+1]='#')) then
                            write(mwm[i],' ')
                        else
                            write(mwm[i]);
                        delay(d);
                   end;
                   {Number of labaratory}
                   for i:=1 to length(number) do
                   begin
                        textcolor(color[random(4)]);
                        write(number[i]);
                        delay(d);
                   end;
              textcolor(white);
              y:=y+1;
              while(keypressed<>true) do
              begin
                   gotoxy(x-8,y);
                   write('Press');
                   textcolor(red);
                   write(' ANYKEY');
                   textcolor(white);
                   write(' to continue');
                   delay(500);
                   gotoxy(x-8,y);
                   write('                       ');
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
   mwm[1]:='P';
   mwm[2]:='R';
   mwm[3]:='O';
   mwm[4]:='G';
   mwm[5]:='R';
   mwm[6]:='A';
   mwm[7]:='M';
   mwm[8]:='B';
   mwm[9]:='y';
   mwm[10]:='L';
   mwm[11]:='a';
   mwm[12]:='b';
   mwm[13]:='a';
   mwm[14]:='r';
   mwm[15]:='a';
   mwm[16]:='t';
   mwm[17]:='o';
   mwm[18]:='r';
   mwm[19]:='y';
   mwm[20]:='#';
end.
