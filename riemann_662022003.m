function integral = riemann(f, a, b, n, metode)
% RIEMANN Menghitung integral numerik menggunakan metode Riemann
%
% Input:
%   f      = fungsi yang akan diintegralkan (function handle)
%   a      = batas bawah integral
%   b      = batas atas integral
%   n      = jumlah subinterval (harus bilangan bulat positif)
%   metode = jenis metode Riemann ('kiri', 'kanan', atau 'tengah')
%
% Output:
%   integral = nilai aproksimasi integral

% Validasi input
if n <= 0 || mod(n,1) ~= 0
    error('n harus bilangan bulat positif');
end
if ~ismember(metode, {'kiri', 'kanan', 'tengah'})
    error('Metode harus ''kiri'', ''kanan'', atau ''tengah''');
end

h = (b - a)/n;  % Lebar setiap subinterval
x = linspace(a, b, n+1);  % Titik-titik partisi

switch metode
    case 'kiri'
        % Metode Riemann kiri (menggunakan titik ujung kiri)
        titik_sampel = x(1:end-1);
    case 'kanan'
        % Metode Riemann kanan (menggunakan titik ujung kanan)
        titik_sampel = x(2:end);
    case 'tengah'
        % Metode Riemann tengah (menggunakan titik tengah)
        titik_sampel = (x(1:end-1) + x(2:end))/2;
end

% Evaluasi fungsi di titik sampel
nilai_f = f(titik_sampel);

% Hitung integral sebagai jumlah Riemann
integral = h * sum(nilai_f);

% Tampilkan hasil
disp(['Hasil integral dengan metode Riemann ', metode, ': ', num2str(integral)]);
end