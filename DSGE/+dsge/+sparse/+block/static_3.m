function [y, T, residual, g1] = static_3(y, x, params, sparse_rowval, sparse_colval, sparse_colptr, T)
residual=NaN(3, 1);
  residual(1)=(y(5))-(y(4)*((1+params(13))*y(13)/y(12))^(-params(3))*1/params(4));
  residual(2)=(y(6))-(y(4)*((1+params(13))*y(14)/y(12))^(-params(3))*1/params(5));
  residual(3)=(y(12))-(y(13)*y(5)/y(4)+y(14)*y(6)/y(4));
if nargout > 3
    g1_v = NaN(7, 1);
g1_v(1)=1;
g1_v(2)=(-(y(13)*1/y(4)));
g1_v(3)=1;
g1_v(4)=(-(y(14)*1/y(4)));
g1_v(5)=(-(y(4)*1/params(4)*(-((1+params(13))*y(13)))/(y(12)*y(12))*getPowerDeriv((1+params(13))*y(13)/y(12),(-params(3)),1)));
g1_v(6)=(-(y(4)*1/params(5)*(-((1+params(13))*y(14)))/(y(12)*y(12))*getPowerDeriv((1+params(13))*y(14)/y(12),(-params(3)),1)));
g1_v(7)=1;
    if ~isoctave && matlab_ver_less_than('9.8')
        sparse_rowval = double(sparse_rowval);
        sparse_colval = double(sparse_colval);
    end
    g1 = sparse(sparse_rowval, sparse_colval, g1_v, 3, 3);
end
end
