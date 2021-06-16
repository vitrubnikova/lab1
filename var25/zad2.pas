program lr1zad2;

var a, b, x, y1, y2, y3, y4: real;

function sec(x:real):real; begin sec:=1/cos(x) end;
function ctg(x:real):real; begin ctg:=cos(x)/sin(x) end;
function cosec(x:real):real; begin cosec:=1/sin(x) end;
function sh(x:real):real; begin sh:=(exp(x)-exp(-x))/2 end;
function sech(x:real):real; begin sech:=2/(exp(x)+exp(-x)) end;
function ch(x:real):real; begin ch:=(exp(x)+exp(-x))/2 end;
function cosech(x:real):real; begin cosech:=2/(exp(x)-exp(-x)) end;
function th(x:real):real; begin th:=(exp(x)-exp(-x))/(exp(x)+exp(-x)) end;
function cth(x:real):real; begin cth:=(exp(x)+exp(-x))/(exp(x)-exp(-x)) end;
function arcctg(x:real):real; begin arcctg:=Pi/2-arctan(x) end;
function arcsin(x:real):real; begin
if x=1 then arcsin:=Pi/2
else if x=-1 then arcsin:=-Pi/2
else arcsin:=arctan(x/sqrt(1-x*x)) end;

begin

a:=36.42;
b:=0.016;
x:=1.09;

y1:=power(17.202, -1.38*b)+power(sec(power(b, 3)/x), 1.6);
y2:=th(a*-2.89*power(b, 3)/x)-power(cosec(6.12*b), 1.5);
y3:=sin(1.13*x)/power(cosech(4.29*x), 1.3);
y4:=sh(x/1.11/a)/power(logN(9, x), 0.59)/cos(a-sqr(b));

writeln('Ответ ',y1/y2 + y3/y4:12:6);

end.