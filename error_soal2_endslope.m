function [error] = error_soal2(h)
xi = [1:h:5];
xi(length(xi)+1) = xi(length(xi)) + h;
faksen = diff(gamma(xi));

end_condition = faksen(1);
start_condition = faksen(length(faksen));
f = @gamma;

x = [1:h:5];
max_x = x(length(x));
for i = 1 : length(x)
    y(i) = f(x(i));
end
xx = [1+h/2:h:max_x];
yy = cubic_spline_custom_end(x, y, xx, end_condition, start_condition);

for i = 1 : length(xx)
    y_bener = f(xx(i));
    err(i) = abs((y_bener - yy(i)) / y_bener);
end
error = max(err);
end