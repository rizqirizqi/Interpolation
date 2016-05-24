x = [1:0.25:10];
y = sin(x);
xx = [1:0.01:10]

yy = spline(x, y, xx)

grid on; hold on;
plot(x,y,'o',xx,yy);
title('Spline Interpolation');