function [T_order, T] = dynamic_resid_tt(y, x, params, steady_state, T_order, T)
if T_order >= 0
    return
end
T_order = 0;
if size(T, 1) < 29
    T = [T; NaN(29 - size(T, 1), 1)];
end
T(1) = y(56)^(-params(2));
T(2) = exp(T(1)*(1-params(6)+y(67)));
T(3) = 1/(-params(2));
T(4) = (1+params(13))*y(39)/y(38);
T(5) = 1/params(4);
T(6) = T(4)^(-params(3))*T(5);
T(7) = (1+params(13))*y(40)/y(38);
T(8) = 1/params(5);
T(9) = T(7)^(-params(3))*T(8);
T(10) = (y(56)-y(30))/y(30);
T(11) = exp(T(10));
T(12) = 1/params(1)-1+y(49)*T(11);
T(13) = exp(y(78)*T(10));
T(14) = T(12)+y(49)*T(13)-exp(y(78))*T(11);
T(15) = 1-y(49)*T(11);
T(16) = exp(y(56))*exp(y(78)-y(51));
T(17) = exp(y(78)-y(51))^2;
T(18) = T(16)/(y(49)*T(17));
T(19) = (-params(2))*y(56)^(-1);
T(20) = exp(y(56)*T(19));
T(21) = y(36)^params(4);
T(22) = params(3)*y(52)*(1-params(11))/(y(34)*y(39)*params(9)*(params(3)-1));
T(23) = 1/(params(9)-1);
T(24) = y(25)*params(3)/((params(3)-1)*y(35)*y(40)*params(10));
T(25) = 1/(params(10)-1);
T(26) = params(3)*y(52)*(1-params(11))/((params(3)-1)*y(50)*params(9));
T(27) = T(18)^(1-params(9));
T(28) = y(25)*params(3)/((params(3)-1)*params(15)*params(9));
T(29) = T(18)^(1-params(10));
end
