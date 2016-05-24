function [error] = error_soal1(h)
f = @fungsi_soal1;

x = [-4:h:4];
max_x = x(length(x));
for i = 1 : length(x)
    y(i) = f(x(i));
end
xx = [-4+h/2:h:max_x];
yy = cubic_spline(x, y, xx);

for i = 1 : length(xx)
    y_bener = f(xx(i));
    err(i) = abs((y_bener - yy(i)) / y_bener);
end
error = max(err);
end