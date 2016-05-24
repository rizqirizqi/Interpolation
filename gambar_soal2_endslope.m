function gambar_soal2_endslope(h)
xi = [1:h:5];
xi(length(xi)+1) = xi(length(xi)) + h;
faksen = diff(gamma(xi));

end_condition = faksen(1);
start_condition = faksen(5);
f = @gamma;

x = [1:h:5];
max_x = x(length(x));
for i = 1 : length(x)
    y(i) = f(x(i));
end
xx = [1:0.01:max_x];
yy = cubic_spline_custom_end(x, y, xx, end_condition, start_condition);

grid on; hold on;
plot(xx,yy);
%plot(x,y,'o');
title('Cubic Spline Interpolation Soal 2');
end