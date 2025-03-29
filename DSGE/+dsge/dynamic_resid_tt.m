function T = dynamic_resid_tt(T, y, x, params, steady_state, it_)
% function T = dynamic_resid_tt(T, y, x, params, steady_state, it_)
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

assert(length(T) >= 29);

T(1) = y(29)^(-params(2));
T(2) = exp(T(1)*(1-params(6)+y(33)));
T(3) = 1/(-params(2));
T(4) = (1+params(13))*y(15)/y(14);
T(5) = 1/params(4);
T(6) = T(4)^(-params(3))*T(5);
T(7) = (1+params(13))*y(16)/y(14);
T(8) = 1/params(5);
T(9) = T(7)^(-params(3))*T(8);
T(10) = (y(29)-y(6))/y(6);
T(11) = exp(T(10));
T(12) = 1/params(1)-1+y(25)*T(11);
T(13) = exp(y(34)*T(10));
T(14) = T(12)+y(25)*T(13)-exp(y(34))*T(11);
T(15) = 1-y(25)*T(11);
T(16) = exp(y(29))*exp(y(34)-y(27));
T(17) = exp(y(34)-y(27))^2;
T(18) = T(16)/(y(25)*T(17));
T(19) = (-params(2))*y(29)^(-1);
T(20) = exp(y(29)*T(19));
T(21) = y(12)^params(4);
T(22) = params(3)*y(28)*(1-params(11))/(y(10)*y(15)*params(9)*(params(3)-1));
T(23) = 1/(params(9)-1);
T(24) = y(2)*params(3)/((params(3)-1)*y(11)*y(16)*params(10));
T(25) = 1/(params(10)-1);
T(26) = params(3)*y(28)*(1-params(11))/((params(3)-1)*y(26)*params(9));
T(27) = T(18)^(1-params(9));
T(28) = y(2)*params(3)/((params(3)-1)*params(15)*params(9));
T(29) = T(18)^(1-params(10));

end
