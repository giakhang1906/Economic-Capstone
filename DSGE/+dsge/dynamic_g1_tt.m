function T = dynamic_g1_tt(T, y, x, params, steady_state, it_)
% function T = dynamic_g1_tt(T, y, x, params, steady_state, it_)
%
% File created by Dynare Preprocessor from .mod file
%
% Inputs:
%   T             [#temp variables by 1]     double  vector of temporary terms to be filled by function
%   y             [#dynamic variables by 1]  double  vector of endogenous variables in the order stored
%                                                    in M_.lead_lag_incidence; see the Manual
%   x             [nperiods by M_.exo_nbr]   double  matrix of exogenous variables (in declaration order)
%                                                    for all simulation periods
%   steady_state  [M_.endo_nbr by 1]         double  vector of steady state values
%   params        [M_.param_nbr by 1]        double  vector of parameter values in declaration order
%   it_           scalar                     double  time period for exogenous variables for which
%                                                    to evaluate the model
%
% Output:
%   T           [#temp variables by 1]       double  vector of temporary terms
%

assert(length(T) >= 84);

T = dsge.dynamic_resid_tt(T, y, x, params, steady_state, it_);

T(30) = ((-y(6))-(y(29)-y(6)))/(y(6)*y(6));
T(31) = y(25)*T(11)*T(30);
T(32) = T(31)+y(25)*T(13)*y(34)*T(30)-exp(y(34))*T(11)*T(30);
T(33) = (-T(31));
T(34) = T(15)*T(32)-T(14)*T(33);
T(35) = T(15)*T(15);
T(36) = T(15)*T(31)-T(12)*T(33);
T(37) = getPowerDeriv(y(29),(-params(2)),1);
T(38) = (1-params(6)+y(33))*T(37);
T(39) = getPowerDeriv(params(1)*T(2),T(3),1);
T(40) = 1/y(6);
T(41) = y(25)*T(11)*T(40)+y(25)*T(13)*y(34)*T(40)-exp(y(34))*T(11)*T(40);
T(42) = (-(y(25)*T(11)*T(40)));
T(43) = T(15)*y(25)*T(11)*T(40)-T(12)*T(42);
T(44) = (-params(2))*getPowerDeriv(y(29),(-1),1);
T(45) = T(19)+y(29)*T(44);
T(46) = getPowerDeriv(T(18),1-params(9),1);
T(47) = getPowerDeriv(T(18),1-params(10),1);
T(48) = (-(params(3)*y(28)*(1-params(11))*y(15)*params(9)*(params(3)-1)));
T(49) = y(10)*y(15)*params(9)*(params(3)-1)*y(10)*y(15)*params(9)*(params(3)-1);
T(50) = T(48)/T(49);
T(51) = getPowerDeriv(T(22),T(23),1);
T(52) = (-(y(2)*params(3)*(params(3)-1)*y(16)*params(10)));
T(53) = (params(3)-1)*y(11)*y(16)*params(10)*(params(3)-1)*y(11)*y(16)*params(10);
T(54) = T(52)/T(53);
T(55) = getPowerDeriv(T(24),T(25),1);
T(56) = getPowerDeriv(y(12),params(4),1);
T(57) = (-((1+params(13))*y(15)))/(y(14)*y(14));
T(58) = getPowerDeriv(T(4),(-params(3)),1);
T(59) = T(5)*T(57)*T(58);
T(60) = (-((1+params(13))*y(16)))/(y(14)*y(14));
T(61) = getPowerDeriv(T(7),(-params(3)),1);
T(62) = T(8)*T(60)*T(61);
T(63) = (1+params(13))/y(14);
T(64) = T(5)*T(58)*T(63);
T(65) = (-(params(3)*y(28)*(1-params(11))*(params(3)-1)*y(10)*params(9)))/T(49);
T(66) = (-(y(2)*params(3)*(params(3)-1)*y(11)*params(10)))/T(53);
T(67) = (-T(11));
T(68) = y(25)*T(17)*y(25)*T(17);
T(69) = (-(T(16)*T(17)))/T(68);
T(70) = (-(params(3)*y(28)*(1-params(11))*params(9)*(params(3)-1)));
T(71) = (params(3)-1)*y(26)*params(9)*(params(3)-1)*y(26)*params(9);
T(72) = T(70)/T(71);
T(73) = params(3)/((params(3)-1)*y(11)*y(16)*params(10));
T(74) = params(3)/((params(3)-1)*params(15)*params(9));
T(75) = exp(y(29))*(-exp(y(34)-y(27)));
T(76) = (-exp(y(34)-y(27)))*2*exp(y(34)-y(27));
T(77) = y(25)*T(17)*T(75)-T(16)*y(25)*T(76);
T(78) = T(77)/T(68);
T(79) = params(3)*(1-params(11))/(y(10)*y(15)*params(9)*(params(3)-1));
T(80) = params(3)*(1-params(11))/((params(3)-1)*y(26)*params(9));
T(81) = T(10)*T(13);
T(82) = y(25)*T(81)-exp(y(34))*T(11);
T(83) = exp(y(34)-y(27))*2*exp(y(34)-y(27));
T(84) = (T(16)*y(25)*T(17)-T(16)*y(25)*T(83))/T(68);

end
