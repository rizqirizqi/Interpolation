function gambar_soal2_dirichlet(h)
end_condition = 1;
start_condition = -1;
f = @gamma;

x = [1:h:5];
max_x = x(length(x));
for i = 1 : length(x)
    y(i) = f(x(i));
end
xx = [1:0.01:max_x];
yy = cubic_spline_custom_end(x, y, xx, end_condition, start_condition);

grid on; hold on;
plot(x,y,'o',xx,yy);
title('Cubic Spline Interpolation Soal 2');
end