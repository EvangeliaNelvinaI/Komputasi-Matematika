% Definisikan fungsi
f = inline('x^2-3','x');

X = [1 2];
%panggil fungsi bagi dua
% [x, galat] = bagidua(f,X);
% disp(x);
% disp(galat);

%panggil fungsi posisi palsu
[x, galat] = PosisiPalsu(f, X);
disp(x);
disp(galat);