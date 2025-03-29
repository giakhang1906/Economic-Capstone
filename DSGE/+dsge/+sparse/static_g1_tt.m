function [T_order, T] = static_g1_tt(y, x, params, T_order, T)
if T_order >= 1
    return
end
[T_order, T] = dsge.sparse.static_resid_tt(y, x, params, T_order, T);
T_order = 1;
if size(T, 1) < 23
    T = [T; NaN(23 - size(T, 1), 1)];
end
T(14) = getPowerDeriv(params(1)*T(2),1/(-params(2)),1);
T(15) = getPowerDeriv(T(6),1-params(9),1);
T(16) = getPowerDeriv(T(6),1-params(10),1);
T(17) = getPowerDeriv(params(3)*y(26)*(1-params(11))/(y(8)*y(13)*params(9)*(params(3)-1)),1/(params(9)-1),1);
T(18) = getPowerDeriv(y(25)*params(3)/((params(3)-1)*y(9)*y(14)*params(10)),1/(params(10)-1),1);
T(19) = getPowerDeriv((1+params(13))*y(13)/y(12),(-params(3)),1);
T(20) = getPowerDeriv((1+params(13))*y(14)/y(12),(-params(3)),1);
T(21) = (-(exp(y(4))*exp(y(26)-y(25))*T(5)))/(y(23)*T(5)*y(23)*T(5));
T(22) = (y(23)*T(5)*exp(y(4))*(-exp(y(26)-y(25)))-exp(y(4))*exp(y(26)-y(25))*y(23)*(-exp(y(26)-y(25)))*2*exp(y(26)-y(25)))/(y(23)*T(5)*y(23)*T(5));
T(23) = (exp(y(4))*exp(y(26)-y(25))*y(23)*T(5)-exp(y(4))*exp(y(26)-y(25))*y(23)*exp(y(26)-y(25))*2*exp(y(26)-y(25)))/(y(23)*T(5)*y(23)*T(5));
end
