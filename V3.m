function f=V3(xin)
B = V0(xin(:,4));
B = B .* B3(xin(:,8)/2);
f=B;