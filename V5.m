function f=V5(xin)
B = V0(xin(:,4));
B = B .* B5(xin(:,8)/2);
B = B .* B5( sqrt(xin(:,11).^2+xin(:,12).^2)/2);
B = B .* B5( sqrt(xin(:,14).^2+xin(:,15).^2)/2);
f=B;