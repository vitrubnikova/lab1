program lr1zad3;

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

a:=78.7;
b:=0.035;
x:=5.49;

y1:=cosech(a*4.66*b/power(x, 4))+power(13.428, b/2.83/a);
y2:=ctg(-3.82*x/a)+abs(b-3.68*a);
y3:=arctan(power(b, 3)/0.06/x)*power(cos(a*power(b, 3)*1.04*x), 1.2);
y4:=cth(a*power(b, 3)-0.08*x)-exp(6.71*b/a)/power(x, b/-1.75/a);

writeln('Ответ ',y1/y2 - y3/y4:12:6);

end.