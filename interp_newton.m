function [f] = interp_newton(x, y, xx)
m(:,1)=y';
for j = 2 : length(x);
    for i = j : length(x);
        m(i,j)= ( m(i-1,j-1)-m(i,j-1)) / (x(i-j+1)-x(i));
    end
end
a = diag(m)';
for i=1:length(xx)
    yy(i) = a(1) + a(2)*(xx(i)-x(1)) + a(3)*(xx(i)-x(1))*(xx(i)-x(2)) + a(4)*(xx(i)-x(1))*(xx(i)-x(2))*(xx(i)-x(3)) + a(5)*(xx(i)-x(1))*(xx(i)-x(2))*(xx(i)-x(3))*(xx(i)-x(4));
end
f = yy;
end