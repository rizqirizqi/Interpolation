function gambar_soal1_endslope(h)
end_condition = 0.67295;
start_condition = -0.67295;

f = @fungsi_soal1;
x = [-4:h:4];
max_x = x(length(x));
for i = 1 : length(x)
    y(i) = f(x(i));
end
xx = [-4:0.01:max_x];
yy = cubic_spline_custom_end(x, y, xx, end_condition, start_condition);

grid on; hold on;
plot(x,y,'o',xx,yy);
title('Cubic Spline Interpolation Soal 1');
end