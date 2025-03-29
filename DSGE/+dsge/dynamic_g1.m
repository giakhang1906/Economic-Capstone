function g1 = dynamic_g1(T, y, x, params, steady_state, it_, T_flag)
% function g1 = dynamic_g1(T, y, x, params, steady_state, it_, T_flag)
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
%   g1
%

if T_flag
    T = dsge.dynamic_g1_tt(T, y, x, params, steady_state, it_);
end
g1 = zeros(26, 35);
g1(1,6)=1;
g1(1,29)=(-(params(1)*T(2)*T(38)*T(39)));
g1(1,33)=(-(T(39)*params(1)*T(1)*T(2)));
g1(2,9)=(-((y(28)-y(2))*(-y(10))/(y(9)*y(9))));
g1(2,10)=(-((y(28)-y(2))*1/y(9)));
g1(2,17)=1;
g1(2,2)=(-(1-y(10)/y(9)));
g1(2,28)=(-(y(10)/y(9)));
g1(3,6)=(-T(6));
g1(3,7)=1;
g1(3,14)=(-(y(6)*T(59)));
g1(3,15)=(-(y(6)*T(64)));
g1(4,6)=(-T(9));
g1(4,8)=1;
g1(4,14)=(-(y(6)*T(62)));
g1(4,16)=(-(y(6)*T(8)*T(61)*T(63)));
g1(5,6)=(-(T(34)/T(35)));
g1(5,29)=(-((T(15)*T(41)-T(14)*T(42))/T(35)));
g1(5,25)=(-((T(15)*(T(11)+T(13))-T(14)*T(67))/T(35)));
g1(5,34)=exp(y(34))-T(82)/T(15);
g1(6,6)=(-(T(36)/T(35)));
g1(6,29)=(-(T(43)/T(35)));
g1(6,25)=(-((T(11)*T(15)-T(12)*T(67))/T(35)));
g1(6,27)=exp(y(27));
g1(7,9)=(-(1-params(6)));
g1(7,30)=1;
g1(7,20)=(-1);
g1(8,10)=1-params(7);
g1(8,31)=(-1);
g1(8,21)=1;
g1(9,11)=1-params(8);
g1(9,32)=(-1);
g1(9,22)=1;
g1(10,29)=(-T(18));
g1(10,31)=1;
g1(10,25)=(-T(69));
g1(10,27)=(-T(78));
g1(10,34)=(-T(84));
g1(11,30)=(-(1-y(31)/y(30)+y(30)*(-((-y(31))/(y(30)*y(30))))));
g1(11,31)=(-(y(30)*(-(1/y(30)))));
g1(11,32)=1;
g1(12,29)=T(20)*T(45);
g1(12,25)=1;
g1(13,3)=1;
g1(13,4)=(-1);
g1(13,5)=(-1);
g1(14,4)=1;
g1(14,12)=(-(y(26)*T(56)));
g1(14,26)=(-T(21));
g1(15,5)=1;
g1(15,13)=(-(params(15)*getPowerDeriv(y(13),params(5),1)));
g1(16,10)=(-(T(50)*T(51)));
g1(16,12)=1;
g1(16,15)=(-(T(51)*T(65)));
g1(16,28)=(-(T(51)*T(79)));
g1(17,11)=(-(T(54)*T(55)));
g1(17,13)=1;
g1(17,16)=(-(T(55)*T(66)));
g1(17,2)=(-(T(55)*T(73)));
g1(18,29)=(-(T(26)*T(18)*T(46)));
g1(18,15)=1;
g1(18,25)=(-(T(26)*T(46)*T(69)));
g1(18,26)=(-(T(27)*T(72)));
g1(18,27)=(-(T(26)*T(46)*T(78)));
g1(18,28)=(-(T(27)*T(80)));
g1(18,34)=(-(T(26)*T(46)*T(84)));
g1(19,29)=(-(T(28)*T(18)*T(47)));
g1(19,16)=1;
g1(19,25)=(-(T(28)*T(47)*T(69)));
g1(19,2)=(-(T(29)*T(74)));
g1(19,27)=(-(T(28)*T(47)*T(78)));
g1(19,34)=(-(T(28)*T(47)*T(84)));
g1(20,6)=(-(y(15)*(-y(7))/(y(6)*y(6))+y(16)*(-y(8))/(y(6)*y(6))));
g1(20,7)=(-(y(15)*T(40)));
g1(20,8)=(-(y(16)*T(40)));
g1(20,14)=1;
g1(20,15)=(-(y(7)/y(6)));
g1(20,16)=(-(y(8)/y(6)));
g1(21,3)=(-1);
g1(21,6)=1;
g1(21,20)=1;
g1(22,1)=(-(params(12)*1/y(1)));
g1(22,26)=1/y(26);
g1(22,35)=(-1);
g1(23,4)=(-y(15));
g1(23,12)=y(28)*params(11);
g1(23,15)=(-y(4));
g1(23,18)=1;
g1(23,28)=y(12)*params(11);
g1(24,5)=(-y(16));
g1(24,13)=y(27);
g1(24,16)=(-y(5));
g1(24,19)=1;
g1(24,27)=y(13);
g1(25,6)=(-(params(13)*y(14)));
g1(25,14)=(-(y(6)*params(13)));
g1(25,18)=(-params(14));
g1(25,19)=(-params(14));
g1(25,24)=1;
g1(26,12)=y(28)*params(11);
g1(26,23)=1;
g1(26,24)=(-1);
g1(26,28)=y(12)*params(11);

end
