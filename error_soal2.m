function [error] = error_soal2(h)
f = @gamma;

x = [1:h:5];
max_x = x(length(x));
for i = 1 : length(x)
    y(i) = f(x(i));
end
xx = [1+h/2:h:max_x];
yy = cubic_spline(x, y, xx);

for i = 1 : length(xx)
    y_bener = f(xx(i));
    err(i) = abs((y_bener - yy(i)) / y_bener);
end
error = max(err);
end