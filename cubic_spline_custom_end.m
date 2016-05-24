function [yy] = cubic_spline_custom_end(x,y,xx,end_condition,start_condition)

n = length(x);
for i = 2:n-1
    d(i-1) = (3*(y(i+1)-y(i-1)))/(x(i+1)-x(i));
end

%saksen
d(1) = d(1) - end_condition;
d(length(d)) = d(length(d)) - start_condition;
a = ones(1, n-2)*4;
b = ones(1, n-2);
c = ones(1, n-2);
saksen = zeros(1, n);
saksen(1) = end_condition;
saksen(n) = start_condition;
saksen(2:n-1) = tridiag(a,b,c,d);

%hitung s(t)
m = length(xx);
current_j = 1;
for i = 1:m
    while xx(i) > x(current_j + 1)
        current_j = current_j + 1; 
    end
    yy(i) = hitung_st(x,y,xx(i),saksen,current_j);
end

end

function [st] = hitung_st(x, y, xx, saksen, j)
    c2 = (3*(y(j+1)-y(j))/((x(j+1)-x(j))^2)) - ((2*saksen(j)+saksen(j+1))/(x(j+1)-x(j)));
    c3 = (2*(y(j)-y(j+1)))/((x(j+1)-x(j))^3) + (saksen(j)+saksen(j+1))/((x(j+1)-x(j))^2);
    st = y(j) + saksen(j)*(xx-x(j)) + c2*((xx-x(j))^2) + c3*((xx-x(j))^3);
end