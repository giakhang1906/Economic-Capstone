function [residual, T_order, T] = static_resid(y, x, params, T_order, T)
if nargin < 5
    T_order = -1;
    T = NaN(13, 1);
end
[T_order, T] = dsge.sparse.static_resid_tt(y, x, params, T_order, T);
residual = NaN(26, 1);
    residual(1) = (y(4)) - ((params(1)*T(2))^(1/(-params(2))));
    residual(2) = (y(15)) - (y(25)+y(8)/y(7)*(y(26)-y(25)));
    residual(3) = (y(5)) - (y(4)*T(3));
    residual(4) = (y(6)) - (y(4)*T(4));
    residual(5) = (exp(y(26))) - ((y(23)+1/params(1)-1+y(23)-exp(y(26)))/(1-y(23)));
    residual(6) = (exp(y(25))) - ((1/params(1)-1+y(23))/(1-y(23)));
    residual(7) = (y(7)) - (y(18)+(1-params(6))*y(7));
    residual(8) = (y(19)) - (y(8)-y(8)*(1-params(7)));
    residual(9) = (y(20)) - (y(9)-y(9)*(1-params(8)));
    residual(10) = (y(8)) - (T(6));
    residual(11) = (y(9)) - (y(7)*(1-y(8)/y(7)));
    residual(12) = (y(23)) - ((-T(8)));
    residual(13) = (y(1)) - (y(2)+y(3));
    residual(14) = (y(2)) - (y(24)*T(9));
    residual(15) = (y(3)) - (params(15)*y(11)^params(5));
    residual(16) = (y(10)) - ((params(3)*y(26)*(1-params(11))/(y(8)*y(13)*params(9)*(params(3)-1)))^(1/(params(9)-1)));
    residual(17) = (y(11)) - ((y(25)*params(3)/((params(3)-1)*y(9)*y(14)*params(10)))^(1/(params(10)-1)));
    residual(18) = (y(13)) - (T(10)*T(11));
    residual(19) = (y(14)) - (T(12)*T(13));
    residual(20) = (y(12)) - (y(13)*y(5)/y(4)+y(14)*y(6)/y(4));
    residual(21) = (y(18)) - (y(1)-y(4));
    residual(22) = (log(y(24))) - (log(y(24))*params(12)+x(1));
    residual(23) = (y(16)) - (y(13)*y(2)-y(10)*y(26)*params(11));
    residual(24) = (y(17)) - (y(14)*y(3)-y(25)*y(11));
    residual(25) = (y(22)) - (y(4)*params(13)*y(12)+params(14)*(y(16)+y(17)));
    residual(26) = (y(21)) - (y(22)-y(10)*y(26)*params(11));
end
