function f=V7(xin)
B = V0(xin(:,4));
B = B .* B7(xin(:,8)/2);
B = B .* B7( sqrt(xin(:,11).^2+xin(:,12).^2)/2);
B = B .* B7( sqrt(xin(:,14).^2+xin(:,15).^2)/2);
B = B .* B7( sqrt(xin(:,17).^2+xin(:,18).^2)/2);
B = B .* B7( sqrt(xin(:,20).^2+xin(:,21).^2)/2);
f=B;