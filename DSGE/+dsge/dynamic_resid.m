function residual = dynamic_resid(T, y, x, params, steady_state, it_, T_flag)
% function residual = dynamic_resid(T, y, x, params, steady_state, it_, T_flag)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T             [#temp variables by 1]     double   vector of temporary terms to be filled by function
%   y             [#dynamic variables by 1]  double   vector of endogenous variables in the order stored
%                                                     in M_.lead_lag_incidence; see the Manual
%   x             [nperiods by M_.exo_nbr]   double   matrix of exogenous variables (in declaration order)
%                                                     for all simulation periods
%   steady_state  [M_.endo_nbr by 1]         double   vector of steady state values
%   params        [M_.param_nbr by 1]        double   vector of parameter values in declaration order
%   it_           scalar                     double   time period for exogenous variables for which
%                                                     to evaluate the model
%   T_flag        boolean                    boolean  flag saying whether or not to calculate temporary terms
%
% Output:
%   residual
%

if T_flag
    T = dsge.dynamic_resid_tt(T, y, x, params, steady_state, it_);
end
residual = zeros(26, 1);
    residual(1) = (y(6)) - ((params(1)*T(2))^T(3));
    residual(2) = (y(17)) - (y(2)+y(10)/y(9)*(y(28)-y(2)));
    residual(3) = (y(7)) - (y(6)*T(6));
    residual(4) = (y(8)) - (y(6)*T(9));
    residual(5) = (exp(y(34))) - (T(14)/T(15));
    residual(6) = (exp(y(27))) - (T(12)/T(15));
    residual(7) = (y(30)) - (y(20)+(1-params(6))*y(9));
    residual(8) = (y(21)) - (y(31)-y(10)*(1-params(7)));
    residual(9) = (y(22)) - (y(32)-(1-params(8))*y(11));
    residual(10) = (y(31)) - (T(18));
    residual(11) = (y(32)) - (y(30)*(1-y(31)/y(30)));
    residual(12) = (y(25)) - ((-T(20)));
    residual(13) = (y(3)) - (y(4)+y(5));
    residual(14) = (y(4)) - (y(26)*T(21));
    residual(15) = (y(5)) - (params(15)*y(13)^params(5));
    residual(16) = (y(12)) - (T(22)^T(23));
    residual(17) = (y(13)) - (T(24)^T(25));
    residual(18) = (y(15)) - (T(26)*T(27));
    residual(19) = (y(16)) - (T(28)*T(29));
    residual(20) = (y(14)) - (y(15)*y(7)/y(6)+y(16)*y(8)/y(6));
    residual(21) = (y(20)) - (y(3)-y(6));
    residual(22) = (log(y(26))) - (params(12)*log(y(1))+x(it_, 1));
    residual(23) = (y(18)) - (y(15)*y(4)-y(12)*y(28)*params(11));
    residual(24) = (y(19)) - (y(16)*y(5)-y(27)*y(13));
    residual(25) = (y(24)) - (y(6)*params(13)*y(14)+params(14)*(y(18)+y(19)));
    residual(26) = (y(23)) - (y(24)-y(12)*y(28)*params(11));

end
