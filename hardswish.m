function f = hardswish(x)
f = x.*relu6(x+3.0)*(1.0/6.0);