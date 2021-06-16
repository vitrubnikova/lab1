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

a:=9.67;
b:=0.065;
x:=6.31;

y1:=power(a, 1.11*b-x)-sqr(arcctg(a+x));
y2:=sec(a+b/3.11/x)*power(cosech(-1.15*b+x), 0.3);
y3:=arctan(a-1.34*b-x)+power(log10(a-b*-1.79*power(x, 4)), 0.2);
y4:=sin(sqr(a)+1.21*b*x)+power(ch(a), 0.1)/ctg(4.97*a+power(b, 3)+x);

writeln('Ответ ',y1/y2 - y3/y4:12:6);

end.