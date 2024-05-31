function f = V0(r)
if (r>=2.0)
    [K, E] = Ellipke((2.0/r)^2);
    f = 1.0/2.0-1.0/6.0/pi*((4.0-r^2)*K+(r^2+4.0)*E);
else
    [K, E] = Ellipke((r/2.0)^2);
    f = 1.0/2.0-1.0/3.0/pi/r*((r^2-4.0)*K+(r^2+4.0)*E);
end
