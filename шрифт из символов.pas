##
uses school,crt;

function cut(bs:string; fr,tt:char):string;
begin
  var b:=false;
  var ss:string;
  foreach var i:char in bs do begin
    if i=fr then begin b:=true;continue;end;
    if i=tt then b:=false;
    if b=true then ss+=i;
  end;
  result:=ss;
end;

function getNext(str:string; i:char):char;
begin
  var b:=false;
  foreach var j:char in str do begin
    if b then begin result:=j;exit; end;
    if i=j then begin b:=true;continue;end;
  end;
end;

  var a: array of string;
  SetLength(a,5);
  a[0]:= 'а   @    б@@@@ в@@@  г@@@@ д @@@@  е@@@@ ж@ @ @ з@@@  и@  @ к@  @ л   @ м@   @ н@  @ о @@@  п@@@@ р@@@  с @@@ т@@@@@ у@   @ ф @@@  х@   @ ц@  @  ч@  @ ш@ @ @ щ@ @ @  ъ@@    ы@    @ ь@    э @@@ ю@  @@  я @@@ q';
  a[1]:= 'а  @ @   б@    в@  @ г@    д @  @  е@    ж @@@  з   @ и@  @ к@ @  л  @@ м@@ @@ н@  @ о@   @ п@  @ р@  @ с@    т  @   у @ @  ф@ @ @ х @ @  ц@  @  ч@  @ ш@ @ @ щ@ @ @  ъ @    ы@    @ ь@    э@  @ ю@ @  @ я@  @ q';
  a[2]:= 'а @@@@@  б@@@  в@@@  г@    д @  @  е@@@@ ж  @   з@@@  и@ @@ к@@   л @ @ м@ @ @ н@@@@ о@   @ п@  @ р@@@  с@    т  @   у  @   ф @@@  х  @   ц@  @  ч@@@@ ш@ @ @ щ@ @ @  ъ @@@  ы@@@  @ ь@@@  э  @@ ю@@@  @ я @@@ q';
  a[3]:= 'а@     @ б@  @ в@  @ г@    д@@@@@@ е@    ж @@@  з   @ и@@ @ к@ @  л @ @ м@   @ н@  @ о@   @ п@  @ р@    с@    т  @   у @    ф  @   х @ @  ц@@@@  ч   @ ш@ @ @ щ@@@@@  ъ @  @ ы@  @ @ ь@  @ э@  @ ю@ @  @ я @ @ q';
  a[4]:= 'а@     @ б@@@  в@@@  г@    д@    @ е@@@@ ж@ @ @ з@@@  и@  @ к@  @ л@  @ м@   @ н@  @ о @@@  п@  @ р@    с @@@ т  @   у@     ф  @   х@   @ ц   @@ ч   @ ш@@@@@ щ    @@ ъ @@@  ы@@@  @ ь@@@  э @@@ ю@  @@  я@  @ q';
  var b:= 'абвгдежзиклмнопрстуфхцчшщъыьэюяq';
  var str:='я люблю россию';
  for var i:= 0 to 4 do begin
    var st:='';
    foreach var let:char in str do begin
      if(let = ' ') then
         st += '   '
      else st += cut(a[i],let,getNext(b,let));
    end;
    writeln(st);
  end;