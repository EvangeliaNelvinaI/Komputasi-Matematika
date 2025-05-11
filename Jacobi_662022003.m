function X = jacobi(A, b, X0, N, tol)
% JACOBI Menyelesaikan SPL AX = b menggunakan iterasi Jacobi.
%
% Input: 
%   A  = matriks koefisien dari sistem (n x n)
%   b  = vektor konstan dari sistem (n x 1)
%   X0 = penyelesaian awal (n x 1) [optional, default = zeros]
%   N  = maksimum iterasi [optional, default = 1000]
%   tol= toleransi keakuratan [optional, default = 1e-6]
%
% Output: 
%   X  = penyelesaian sistem (n x 1)
% Set nilai default jika parameter tidak diberikan

if nargin < 5, tol = 1e-6; end
if nargin < 4, N = 1000; end
if nargin < 3, X0 = zeros(size(b)); end

n = length(b);
X = X0;
norma = inf;  % Inisialisasi norma
k = 1;        % Inisialisasi counter iterasi

% Membuat matriks P dan vektor Q
P = zeros(n,n);
Q = zeros(n,1);

for i = 1:n
    for j = 1:n
        if i ~= j
            P(i,j) = -A(i,j)/A(i,i);  % Elemen dari matriks inv(D)*(D-A)
        end
    end
    Q(i) = b(i)/A(i,i);         % Elemen dari vektor inv(D)*b
end

% Iterasi Jacobi
while k <= N && norma > tol
    X_prev = X;                 % Simpan nilai sebelumnya untuk perhitungan error
    X = Q + P*X_prev;           % Persamaan iterasi Jacobi
    
    norma = norm(X - X_prev, inf);  % Hitung norma infinit
    k = k + 1;
end

% Peringatan jika tidak konvergen
if k > N && norma > tol
    warning('Metode Jacobi tidak konvergen dalam %d iterasi', N);
end
end