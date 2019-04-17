unit wm;
interface
procedure wellcome(input_name:string;number:string);
implementation
              uses crt;
              const
                   n=13;
                   m=25;
                   d=150;
              var
                 input_name:string[m];
                 number:integer;
                 mwm:array[1..n] of char;
                 color:array[0..4] of integer;
              procedure wellcome(input_name:string;number:string);
              var
                 l,i,j:integer;
              begin
                   randomize;
                   l:=length(input_name);
                   for i:=1 to n do
                   begin
                        if ((i=8) or (i=10)) then
                        begin
                             writeln;
                             if (i=10) then
                             begin
                                for j:=1 to l do
                                begin
                                    textcolor(color[random(4)]);
                                    write(input_name[j]);
                                    delay(d);
                                end;
                                writeln;
                             end;
                        end;
                        textcolor(color[random(4)]);
                        write(mwm[i]);
                        delay(d);
                   end;
                   for i:=1 to length(number) do
                   begin
                        textcolor(color[random(4)]);
                        write(number[i]);
                        delay(d);
                   end;
              textcolor(white);
              end;
begin
{Color}
   color[0]:=9;
   color[1]:=10;
   color[2]:=12;
   color[3]:=13;
   color[4]:=14;
   mwm[1]:='P';
	 mwm[2]:='R';
	 mwm[3]:='O';
	 mwm[4]:='G';
	 mwm[5]:='R';
	 mwm[6]:='A';
	 mwm[7]:='M';
	 mwm[8]:='B';
	 mwm[9]:='Y';
	 mwm[10]:='L';
	 mwm[11]:='A';
	 mwm[12]:='B';
	 mwm[13]:='#';
end.
