function [y, T] = static_4(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
  y(16)=y(13)*y(2)-y(10)*y(26)*params(11);
  y(17)=y(14)*y(3)-y(25)*y(11);
  y(22)=y(4)*params(13)*y(12)+params(14)*(y(16)+y(17));
  y(21)=y(22)-y(10)*y(26)*params(11);
  y(20)=y(9)-y(9)*(1-params(8));
  y(19)=y(8)-y(8)*(1-params(7));
end
