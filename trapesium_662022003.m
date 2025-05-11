function Tn = trapesium(f, x, n)
% TRAPESIUM Menghitung integral numerik menggunakan aturan trapesium
%
% Input:
%   f  = fungsi yang akan diintegralkan (function handle)
%   x  = vektor [a b] yang menentukan interval integrasi
%   n  = jumlah subinterval (harus bilangan bulat positif)
%
% Output:
%   Tn = nilai aproksimasi integral

% Validasi input
if length(x) ~= 2
    error('Vektor x harus memiliki 2 elemen [a b]');
end
if n <= 0 || mod(n,1) ~= 0
    error('n harus bilangan bulat positif');
end

a = x(1);
b = x(2);
h = (b - a)/n;  % Lebar setiap subinterval

% Membuat titik-titik evaluasi
xvek = linspace(a, b, n+1);  % n+1 titik membentuk n subinterval
yvek = f(xvek);             % Evaluasi fungsi di semua titik

% Menghitung integral dengan aturan trapesium
Tn = (h/2) * (yvek(1) + 2*sum(yvek(2:end-1)) + yvek(end));
end