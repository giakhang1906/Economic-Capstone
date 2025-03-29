function [residual, T_order, T] = dynamic_resid(y, x, params, steady_state, T_order, T)
if nargin < 6
    T_order = -1;
    T = NaN(29, 1);
end
[T_order, T] = dsge.sparse.dynamic_resid_tt(y, x, params, steady_state, T_order, T);
residual = NaN(26, 1);
    residual(1) = (y(30)) - ((params(1)*T(2))^T(3));
    residual(2) = (y(41)) - (y(25)+y(34)/y(33)*(y(52)-y(25)));
    residual(3) = (y(31)) - (y(30)*T(6));
    residual(4) = (y(32)) - (y(30)*T(9));
    residual(5) = (exp(y(78))) - (T(14)/T(15));
    residual(6) = (exp(y(51))) - (T(12)/T(15));
    residual(7) = (y(59)) - (y(44)+(1-params(6))*y(33));
    residual(8) = (y(45)) - (y(60)-y(34)*(1-params(7)));
    residual(9) = (y(46)) - (y(61)-(1-params(8))*y(35));
    residual(10) = (y(60)) - (T(18));
    residual(11) = (y(61)) - (y(59)*(1-y(60)/y(59)));
    residual(12) = (y(49)) - ((-T(20)));
    residual(13) = (y(27)) - (y(28)+y(29));
    residual(14) = (y(28)) - (y(50)*T(21));
    residual(15) = (y(29)) - (params(15)*y(37)^params(5));
    residual(16) = (y(36)) - (T(22)^T(23));
    residual(17) = (y(37)) - (T(24)^T(25));
    residual(18) = (y(39)) - (T(26)*T(27));
    residual(19) = (y(40)) - (T(28)*T(29));
    residual(20) = (y(38)) - (y(39)*y(31)/y(30)+y(40)*y(32)/y(30));
    residual(21) = (y(44)) - (y(27)-y(30));
    residual(22) = (log(y(50))) - (params(12)*log(y(24))+x(1));
    residual(23) = (y(42)) - (y(39)*y(28)-y(36)*y(52)*params(11));
    residual(24) = (y(43)) - (y(40)*y(29)-y(51)*y(37));
    residual(25) = (y(48)) - (y(30)*params(13)*y(38)+params(14)*(y(42)+y(43)));
    residual(26) = (y(47)) - (y(48)-y(36)*y(52)*params(11));
end
