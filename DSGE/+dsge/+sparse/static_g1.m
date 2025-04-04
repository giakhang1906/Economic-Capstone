function [g1, T_order, T] = static_g1(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T_order, T)
if nargin < 8
    T_order = -1;
    T = NaN(23, 1);
end
[T_order, T] = dsge.sparse.static_g1_tt(y, x, params, T_order, T);
g1_v = NaN(91, 1);
g1_v(1)=1;
g1_v(2)=(-1);
g1_v(3)=(-1);
g1_v(4)=1;
g1_v(5)=(-y(13));
g1_v(6)=(-1);
g1_v(7)=1;
g1_v(8)=(-y(14));
g1_v(9)=1-params(1)*T(2)*(1-params(6)+y(15))*getPowerDeriv(y(4),(-params(2)),1)*T(14);
g1_v(10)=(-T(3));
g1_v(11)=(-T(4));
g1_v(12)=(-T(6));
g1_v(13)=T(8)*(T(7)+y(4)*(-params(2))*getPowerDeriv(y(4),(-1),1));
g1_v(14)=(-(T(10)*T(6)*T(15)));
g1_v(15)=(-(T(12)*T(6)*T(16)));
g1_v(16)=(-(y(13)*(-y(5))/(y(4)*y(4))+y(14)*(-y(6))/(y(4)*y(4))));
g1_v(17)=1;
g1_v(18)=(-(params(13)*y(12)));
g1_v(19)=1;
g1_v(20)=(-(y(13)*1/y(4)));
g1_v(21)=1;
g1_v(22)=(-(y(14)*1/y(4)));
g1_v(23)=(-((y(26)-y(25))*(-y(8))/(y(7)*y(7))));
g1_v(24)=1-(1-params(6));
g1_v(25)=(-(1-y(8)/y(7)+y(7)*(-((-y(8))/(y(7)*y(7))))));
g1_v(26)=(-((y(26)-y(25))*1/y(7)));
g1_v(27)=(-(1-(1-params(7))));
g1_v(28)=1;
g1_v(29)=(-(y(7)*(-(1/y(7)))));
g1_v(30)=(-((-(params(3)*y(26)*(1-params(11))*y(13)*params(9)*(params(3)-1)))/(y(8)*y(13)*params(9)*(params(3)-1)*y(8)*y(13)*params(9)*(params(3)-1))*T(17)));
g1_v(31)=(-(1-(1-params(8))));
g1_v(32)=1;
g1_v(33)=(-((-(y(25)*params(3)*(params(3)-1)*y(14)*params(10)))/((params(3)-1)*y(9)*y(14)*params(10)*(params(3)-1)*y(9)*y(14)*params(10))*T(18)));
g1_v(34)=(-(y(24)*getPowerDeriv(y(10),params(4),1)));
g1_v(35)=1;
g1_v(36)=y(26)*params(11);
g1_v(37)=y(26)*params(11);
g1_v(38)=(-(params(15)*getPowerDeriv(y(11),params(5),1)));
g1_v(39)=1;
g1_v(40)=y(25);
g1_v(41)=(-(y(4)*1/params(4)*(-((1+params(13))*y(13)))/(y(12)*y(12))*T(19)));
g1_v(42)=(-(y(4)*1/params(5)*(-((1+params(13))*y(14)))/(y(12)*y(12))*T(20)));
g1_v(43)=1;
g1_v(44)=(-(y(4)*params(13)));
g1_v(45)=(-(y(4)*1/params(4)*T(19)*(1+params(13))/y(12)));
g1_v(46)=(-(T(17)*(-(params(3)*y(26)*(1-params(11))*(params(3)-1)*y(8)*params(9)))/(y(8)*y(13)*params(9)*(params(3)-1)*y(8)*y(13)*params(9)*(params(3)-1))));
g1_v(47)=1;
g1_v(48)=(-(y(5)/y(4)));
g1_v(49)=(-y(2));
g1_v(50)=(-(y(4)*1/params(5)*T(20)*(1+params(13))/y(12)));
g1_v(51)=(-(T(18)*(-(y(25)*params(3)*(params(3)-1)*y(9)*params(10)))/((params(3)-1)*y(9)*y(14)*params(10)*(params(3)-1)*y(9)*y(14)*params(10))));
g1_v(52)=1;
g1_v(53)=(-(y(6)/y(4)));
g1_v(54)=(-y(3));
g1_v(55)=(-(T(14)*params(1)*T(1)*T(2)));
g1_v(56)=1;
g1_v(57)=1;
g1_v(58)=(-params(14));
g1_v(59)=1;
g1_v(60)=(-params(14));
g1_v(61)=(-1);
g1_v(62)=1;
g1_v(63)=1;
g1_v(64)=1;
g1_v(65)=1;
g1_v(66)=1;
g1_v(67)=(-1);
g1_v(68)=(-((y(23)+1/params(1)-1+y(23)-exp(y(26))+2*(1-y(23)))/((1-y(23))*(1-y(23)))));
g1_v(69)=(-((1/params(1)-1+y(23)+1-y(23))/((1-y(23))*(1-y(23)))));
g1_v(70)=(-T(21));
g1_v(71)=1;
g1_v(72)=(-(T(10)*T(15)*T(21)));
g1_v(73)=(-(T(12)*T(16)*T(21)));
g1_v(74)=(-T(9));
g1_v(75)=(-(T(11)*(-(params(3)*y(26)*(1-params(11))*params(9)*(params(3)-1)))/((params(3)-1)*y(24)*params(9)*(params(3)-1)*y(24)*params(9))));
g1_v(76)=1/y(24)-params(12)*1/y(24);
g1_v(77)=(-(1-y(8)/y(7)));
g1_v(78)=exp(y(25));
g1_v(79)=(-T(22));
g1_v(80)=(-(T(18)*params(3)/((params(3)-1)*y(9)*y(14)*params(10))));
g1_v(81)=(-(T(10)*T(15)*T(22)));
g1_v(82)=(-(T(13)*params(3)/((params(3)-1)*params(15)*params(9))+T(12)*T(16)*T(22)));
g1_v(83)=y(11);
g1_v(84)=(-(y(8)/y(7)));
g1_v(85)=exp(y(26))-(-exp(y(26)))/(1-y(23));
g1_v(86)=(-T(23));
g1_v(87)=(-(T(17)*params(3)*(1-params(11))/(y(8)*y(13)*params(9)*(params(3)-1))));
g1_v(88)=(-(T(11)*params(3)*(1-params(11))/((params(3)-1)*y(24)*params(9))+T(10)*T(15)*T(23)));
g1_v(89)=(-(T(12)*T(16)*T(23)));
g1_v(90)=y(10)*params(11);
g1_v(91)=y(10)*params(11);
if ~isoctave && matlab_ver_less_than('9.8')
    sparse_rowval = double(sparse_rowval);
    sparse_colval = double(sparse_colval);
end
g1 = sparse(sparse_rowval, sparse_colval, g1_v, 26, 26);
end
