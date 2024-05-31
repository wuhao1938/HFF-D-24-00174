function [k,e] = Ellipke(m)
tol=2.0*eps(class(m));
if abs(m - 1.0)<tol
    m=m-tol;
end
a0 = 1.0;
a1=a0;
b0 = sqrt(1.0-m);
s0 = m;
i1 = 0.0;
mm = 10.0;
while (mm > tol)
    a1 = (a0+b0)/2.0;
    b1 = sqrt(a0*b0);
    c1 = (a0-b0)/2.0;
    i1 = i1 + 1.0;
    w1 = 2.0^i1*c1^2;
    mm = w1;
    s0 = s0 + w1;
    a0 = a1;
    b0 = b1;
end
k = pi/(2.0*a1);
e = k*(1.0-s0/2.0);
