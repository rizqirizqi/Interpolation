function [error] = error_soal1_endslope(h)
end_condition = 0.67295;
start_condition = -0.67295;
f = @fungsi_soal1;

x = [-4:h:4];
max_x = x(length(x));
for i = 1 : length(x)
    y(i) = f(x(i));
end
xx = [-4+h/2:h:max_x];
yy = cubic_spline_custom_end(x, y, xx, end_condition, start_condition);

for i = 1 : length(xx)
    y_bener = f(xx(i));
    err(i) = abs((y_bener - yy(i)) / y_bener);
end
error = max(err);
end