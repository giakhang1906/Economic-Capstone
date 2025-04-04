function [lhs, rhs] = static_resid(y, x, params)
T = NaN(13, 1);
lhs = NaN(26, 1);
rhs = NaN(26, 1);
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
lhs(1) = y(4);
rhs(1) = (params(1)*T(2))^(1/(-params(2)));
lhs(2) = y(15);
rhs(2) = y(25)+y(8)/y(7)*(y(26)-y(25));
lhs(3) = y(5);
rhs(3) = y(4)*T(3);
lhs(4) = y(6);
rhs(4) = y(4)*T(4);
lhs(5) = exp(y(26));
rhs(5) = (y(23)+1/params(1)-1+y(23)-exp(y(26)))/(1-y(23));
lhs(6) = exp(y(25));
rhs(6) = (1/params(1)-1+y(23))/(1-y(23));
lhs(7) = y(7);
rhs(7) = y(18)+(1-params(6))*y(7);
lhs(8) = y(19);
rhs(8) = y(8)-y(8)*(1-params(7));
lhs(9) = y(20);
rhs(9) = y(9)-y(9)*(1-params(8));
lhs(10) = y(8);
rhs(10) = T(6);
lhs(11) = y(9);
rhs(11) = y(7)*(1-y(8)/y(7));
lhs(12) = y(23);
rhs(12) = (-T(8));
lhs(13) = y(1);
rhs(13) = y(2)+y(3);
lhs(14) = y(2);
rhs(14) = y(24)*T(9);
lhs(15) = y(3);
rhs(15) = params(15)*y(11)^params(5);
lhs(16) = y(10);
rhs(16) = (params(3)*y(26)*(1-params(11))/(y(8)*y(13)*params(9)*(params(3)-1)))^(1/(params(9)-1));
lhs(17) = y(11);
rhs(17) = (y(25)*params(3)/((params(3)-1)*y(9)*y(14)*params(10)))^(1/(params(10)-1));
lhs(18) = y(13);
rhs(18) = T(10)*T(11);
lhs(19) = y(14);
rhs(19) = T(12)*T(13);
lhs(20) = y(12);
rhs(20) = y(13)*y(5)/y(4)+y(14)*y(6)/y(4);
lhs(21) = y(18);
rhs(21) = y(1)-y(4);
lhs(22) = log(y(24));
rhs(22) = log(y(24))*params(12)+x(1);
lhs(23) = y(16);
rhs(23) = y(13)*y(2)-y(10)*y(26)*params(11);
lhs(24) = y(17);
rhs(24) = y(14)*y(3)-y(25)*y(11);
lhs(25) = y(22);
rhs(25) = y(4)*params(13)*y(12)+params(14)*(y(16)+y(17));
lhs(26) = y(21);
rhs(26) = y(22)-y(10)*y(26)*params(11);
end
