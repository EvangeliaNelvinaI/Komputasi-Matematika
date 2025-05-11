function X = gauseid(A, b, X0, N, tol)
% GAUSEID Menyelesaikan SPL AX = b menggunakan iterasi Gauss-Seidel.
%
% Input:
%   A   = matriks koefisien dari sistem (n x n)
%   b   = vektor kolom untuk nilai konstanta dari sistem (n x 1)
%   X0  = penyelesaian awal (n x 1) [optional, default = zeros]
%   N   = maksimum iterasi [optional, default = 1000]
%   tol = toleransi keakuratan [optional, default = 1e-6]
%
% Output:
%   X   = penyelesaian sistem (n x 1)

% Set nilai default jika parameter tidak diberikan
if nargin < 5
    tol = 1e-6;
end
if nargin < 4
    N = 1000;
end
if nargin < 3
    X0 = zeros(size(b));
end

n = length(b);
X = X0;
norma = inf;  % Inisialisasi norma
k = 1;        % Counter iterasi

% Iterasi Gauss-Seidel
while k <= N && norma > tol
    X_prev = X;  % Simpan nilai sebelumnya untuk perhitungan error
    
    % Update setiap komponen X secara berurutan
    for i = 1:n
        sigma = 0;
        
        % Hitung jumlah untuk elemen sebelum diagonal
        for j = 1:i-1
            sigma = sigma + A(i,j)*X(j);
        end
        
        % Hitung jumlah untuk elemen setelah diagonal
        for j = i+1:n
            sigma = sigma + A(i,j)*X_prev(j);
        end
        
        % Update nilai X(i)
        X(i) = (b(i) - sigma)/A(i,i);
    end
    
    % Hitung norma infinit selisih solusi
    norma = norm(X - X_prev, inf);
    k = k + 1;
end

% Peringatan jika tidak konvergen
if k > N && norma > tol
    warning('Metode Gauss-Seidel tidak konvergen dalam %d iterasi', N);
end
end