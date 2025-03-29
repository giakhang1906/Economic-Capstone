function residual = static_resid(T, y, x, params, T_flag)
% function residual = static_resid(T, y, x, params, T_flag)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T         [#temp variables by 1]  double   vector of temporary terms to be filled by function
%   y         [M_.endo_nbr by 1]      double   vector of endogenous variables in declaration order
%   x         [M_.exo_nbr by 1]       double   vector of exogenous variables in declaration order
%   params    [M_.param_nbr by 1]     double   vector of parameter values in declaration order
%                                              to evaluate the model
%   T_flag    boolean                 boolean  flag saying whether or not to calculate temporary terms
%
% Output:
%   residual
%

if T_flag
    T = dsge.static_resid_tt(T, y, x, params);
end
residual = zeros(26, 1);
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
