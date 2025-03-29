function g1 = static_g1(T, y, x, params, T_flag)
% function g1 = static_g1(T, y, x, params, T_flag)
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
%   g1
%

if T_flag
    T = dsge.static_g1_tt(T, y, x, params);
end
g1 = zeros(26, 26);
g1(1,4)=1-params(1)*T(2)*(1-params(6)+y(15))*getPowerDeriv(y(4),(-params(2)),1)*T(14);
g1(1,15)=(-(T(14)*params(1)*T(1)*T(2)));
g1(2,7)=(-((y(26)-y(25))*(-y(8))/(y(7)*y(7))));
g1(2,8)=(-((y(26)-y(25))*1/y(7)));
g1(2,15)=1;
g1(2,25)=(-(1-y(8)/y(7)));
g1(2,26)=(-(y(8)/y(7)));
g1(3,4)=(-T(3));
g1(3,5)=1;
g1(3,12)=(-(y(4)*1/params(4)*(-((1+params(13))*y(13)))/(y(12)*y(12))*T(19)));
g1(3,13)=(-(y(4)*1/params(4)*T(19)*(1+params(13))/y(12)));
g1(4,4)=(-T(4));
g1(4,6)=1;
g1(4,12)=(-(y(4)*1/params(5)*(-((1+params(13))*y(14)))/(y(12)*y(12))*T(20)));
g1(4,14)=(-(y(4)*1/params(5)*T(20)*(1+params(13))/y(12)));
g1(5,23)=(-((y(23)+1/params(1)-1+y(23)-exp(y(26))+2*(1-y(23)))/((1-y(23))*(1-y(23)))));
g1(5,26)=exp(y(26))-(-exp(y(26)))/(1-y(23));
g1(6,23)=(-((1/params(1)-1+y(23)+1-y(23))/((1-y(23))*(1-y(23)))));
g1(6,25)=exp(y(25));
g1(7,7)=1-(1-params(6));
g1(7,18)=(-1);
g1(8,8)=(-(1-(1-params(7))));
g1(8,19)=1;
g1(9,9)=(-(1-(1-params(8))));
g1(9,20)=1;
g1(10,4)=(-T(6));
g1(10,8)=1;
g1(10,23)=(-T(21));
g1(10,25)=(-T(22));
g1(10,26)=(-T(23));
g1(11,7)=(-(1-y(8)/y(7)+y(7)*(-((-y(8))/(y(7)*y(7))))));
g1(11,8)=(-(y(7)*(-(1/y(7)))));
g1(11,9)=1;
g1(12,4)=T(8)*(T(7)+y(4)*(-params(2))*getPowerDeriv(y(4),(-1),1));
g1(12,23)=1;
g1(13,1)=1;
g1(13,2)=(-1);
g1(13,3)=(-1);
g1(14,2)=1;
g1(14,10)=(-(y(24)*getPowerDeriv(y(10),params(4),1)));
g1(14,24)=(-T(9));
g1(15,3)=1;
g1(15,11)=(-(params(15)*getPowerDeriv(y(11),params(5),1)));
g1(16,8)=(-((-(params(3)*y(26)*(1-params(11))*y(13)*params(9)*(params(3)-1)))/(y(8)*y(13)*params(9)*(params(3)-1)*y(8)*y(13)*params(9)*(params(3)-1))*T(17)));
g1(16,10)=1;
g1(16,13)=(-(T(17)*(-(params(3)*y(26)*(1-params(11))*(params(3)-1)*y(8)*params(9)))/(y(8)*y(13)*params(9)*(params(3)-1)*y(8)*y(13)*params(9)*(params(3)-1))));
g1(16,26)=(-(T(17)*params(3)*(1-params(11))/(y(8)*y(13)*params(9)*(params(3)-1))));
g1(17,9)=(-((-(y(25)*params(3)*(params(3)-1)*y(14)*params(10)))/((params(3)-1)*y(9)*y(14)*params(10)*(params(3)-1)*y(9)*y(14)*params(10))*T(18)));
g1(17,11)=1;
g1(17,14)=(-(T(18)*(-(y(25)*params(3)*(params(3)-1)*y(9)*params(10)))/((params(3)-1)*y(9)*y(14)*params(10)*(params(3)-1)*y(9)*y(14)*params(10))));
g1(17,25)=(-(T(18)*params(3)/((params(3)-1)*y(9)*y(14)*params(10))));
g1(18,4)=(-(T(10)*T(6)*T(15)));
g1(18,13)=1;
g1(18,23)=(-(T(10)*T(15)*T(21)));
g1(18,24)=(-(T(11)*(-(params(3)*y(26)*(1-params(11))*params(9)*(params(3)-1)))/((params(3)-1)*y(24)*params(9)*(params(3)-1)*y(24)*params(9))));
g1(18,25)=(-(T(10)*T(15)*T(22)));
g1(18,26)=(-(T(11)*params(3)*(1-params(11))/((params(3)-1)*y(24)*params(9))+T(10)*T(15)*T(23)));
g1(19,4)=(-(T(12)*T(6)*T(16)));
g1(19,14)=1;
g1(19,23)=(-(T(12)*T(16)*T(21)));
g1(19,25)=(-(T(13)*params(3)/((params(3)-1)*params(15)*params(9))+T(12)*T(16)*T(22)));
g1(19,26)=(-(T(12)*T(16)*T(23)));
g1(20,4)=(-(y(13)*(-y(5))/(y(4)*y(4))+y(14)*(-y(6))/(y(4)*y(4))));
g1(20,5)=(-(y(13)*1/y(4)));
g1(20,6)=(-(y(14)*1/y(4)));
g1(20,12)=1;
g1(20,13)=(-(y(5)/y(4)));
g1(20,14)=(-(y(6)/y(4)));
g1(21,1)=(-1);
g1(21,4)=1;
g1(21,18)=1;
g1(22,24)=1/y(24)-params(12)*1/y(24);
g1(23,2)=(-y(13));
g1(23,10)=y(26)*params(11);
g1(23,13)=(-y(2));
g1(23,16)=1;
g1(23,26)=y(10)*params(11);
g1(24,3)=(-y(14));
g1(24,11)=y(25);
g1(24,14)=(-y(3));
g1(24,17)=1;
g1(24,25)=y(11);
g1(25,4)=(-(params(13)*y(12)));
g1(25,12)=(-(y(4)*params(13)));
g1(25,16)=(-params(14));
g1(25,17)=(-params(14));
g1(25,22)=1;
g1(26,10)=y(26)*params(11);
g1(26,21)=1;
g1(26,22)=(-1);
g1(26,26)=y(10)*params(11);

end
