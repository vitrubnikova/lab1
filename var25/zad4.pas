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

a:=34.82;
b:=0.028;
x:=1.92;

y1:=cosec(b*x)/power(log10(a+6.78*b/x), 2.3);
y2:=sec(2.09*x/a)-power(cos(a*4.05*b*x), 2.8);
y3:=arccos(power(b, 4)/4.37/x)*power(ch(a*b+1.56*x), 3);
y4:=tan(b+x)/power(th(6.65*a*power(b, 3)/x), 1.9)-power(b, b/-0.72/a);

writeln('Ответ ',y1/y2 + y3/y4:12:6);

end.