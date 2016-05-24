function gambar_gamma(h)

xx = [1:0.01:5];
yy = gamma(xx);

grid on; hold on;
plot(xx,yy);
title('Gamma built in Soal 2');

end
