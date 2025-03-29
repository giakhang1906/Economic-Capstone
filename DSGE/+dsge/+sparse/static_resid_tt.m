function [T_order, T] = static_resid_tt(y, x, params, T_order, T)
if T_order >= 0
    return
end
T_order = 0;
if size(T, 1) < 13
    T = [T; NaN(13 - size(T, 1), 1)];
end
T(1) = y(4)^(-params(2));
T(2) = exp(T(1)*(1-params(6)+y(15)));
T(3) = ((1+params(13))*y(13)/y(12))^(-params(3))*1/params(4);
T(4) = ((1+params(13))*y(14)/y(12))^(-params(3))*1/params(5);
T(5) = exp(y(26)-y(25))^2;
T(6) = exp(y(4))*exp(y(26)-y(25))/(y(23)*T(5));
T(7) = (-params(2))*y(4)^(-1);
T(8) = exp(y(4)*T(7));
T(9) = y(10)^params(4);
T(10) = params(3)*y(26)*(1-params(11))/((params(3)-1)*y(24)*params(9));
T(11) = T(6)^(1-params(9));
T(12) = y(25)*params(3)/((params(3)-1)*params(15)*params(9));
T(13) = T(6)^(1-params(10));
end
