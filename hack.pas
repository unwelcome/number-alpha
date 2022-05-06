##
uses school,crt;
begin
  textcolor (2);
  for var i := 1 to 10000 do begin
    var msg:='';
    for var j:=1 to 236 do begin
      var r := Random(0,2);
      case r of
        0: msg+='0';
        1: msg+='1';
        2: msg+=' ';
      end;
    end;
    writeln(msg);
    sleep(10);
  end;
end;