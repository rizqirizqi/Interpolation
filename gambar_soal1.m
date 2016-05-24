function gambar_soal1(h)
f = @fungsi_soal1;
x = [-4:h:4];
max_x = x(length(x));
for i = 1 : length(x)
    y(i) = f(x(i));
end
xx = [-4:0.01:max_x];
yy = cubic_spline(x, y, xx);

grid on; hold on;
plot(xx,yy);
%plot(x,y,'o');
title('Cubic Spline Interpolation Soal 1');
end