program lr1zad1;

var a, b, x, y1, y2, y3, y4: real;

function sec(x:real):real; begin sec:=1/cos(x) end;
function ctg(x:real):real; begin ctg:=cos(x)/sin(x) end;
function cosec(x:real):real; begin cosec:=1/sin(x) end;
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

a:=53.25;
b:=0.058;
x:=4.15;

y1:=sec(a+power(b, 3)-3.82*x)/power(arccos(b*x), 3);
y2:=cosech(b/a)*power(6.964, x);
y3:=logN(6, a)-power(ch(x-sqr(b)), 2.9);
y4:=cos(b*1.54*sqr(x))-power(sin(a*0.3*power(b, 4)), 2.8)*log10(sqr(a)+x);

writeln('Ответ ',y1/y2 + y3/y4:12:6);

end.