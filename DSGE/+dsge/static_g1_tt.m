function T = static_g1_tt(T, y, x, params)
% function T = static_g1_tt(T, y, x, params)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T         [#temp variables by 1]  double   vector of temporary terms to be filled by function
%   y         [M_.endo_nbr by 1]      double   vector of endogenous variables in declaration order
%   x         [M_.exo_nbr by 1]       double   vector of exogenous variables in declaration order
%   params    [M_.param_nbr by 1]     double   vector of parameter values in declaration order
%
% Output:
%   T         [#temp variables by 1]  double   vector of temporary terms
%

assert(length(T) >= 23);

T = dsge.static_resid_tt(T, y, x, params);

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
