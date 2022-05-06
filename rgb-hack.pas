##
uses school,crt;
begin
  //textcolor (2);
  for var i := 1 to 10000 do begin
    for var j:=1 to 236 do begin
      case j of
        1..34:textcolor(4);
        35..68:textcolor(6);
        69..101:textcolor(14);
        102..135:textcolor(10);
        136..168:textcolor(11);
        169..202:textcolor(9);
        203..236:textcolor(5);
      end;
      case Random(0,2) of
        0: write('0');
        1: write('1');
        2: write(' ');
      end;
    end;
    sleep(10);
    writeln();
  end;
end;
{
4 - red
6 - orange
14 - yellow
2/10 - green
11 - blue
9 - BLUE
5 - purple
}