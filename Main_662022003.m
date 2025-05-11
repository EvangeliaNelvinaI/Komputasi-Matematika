clc

% Matriks koefisien A dan vektor b
A = [10, -1, 2, 0;
     -1, 11, -1, 3;
     2, -1, 10, -1;
     0, 3, -1, 8];

b = [6;25;-11;15];

% Jacobi
[x_jacobi] = Jacobi_662022003(A, b);

% Gauss-Seidel
[x_gausseidel] = gauseid_6620220003(A, b);

%jacobi
disp('akar hampiran Jacobi = ')
disp(x_jacobi)

%gauss-seidel
disp('akar hampiran Gauss-Seidel = ')
disp(x_gausseidel)

% Integral 2x^3 dari 0 ke 1
f = @(x) 2*x.^3;
hasil_Trapesium = trapesium_662022003(f, [0 1], 100);

disp(['Hasil integral dengan metode trapesium 2x^3 dari 0 ke 1: ', num2str(hasil_Trapesium)]);
disp('')

% Menggunakan berbagai metode Riemann
hasil_kiri = riemann_662022003(f, 0, 1, 100, 'kiri');
hasil_kanan = riemann_662022003(f, 0, 1, 100, 'kanan');
hasil_tengah = riemann_662022003(f, 0, 1, 100, 'tengah');

% Bandingkan dengan hasil eksak (0.5 untuk integral 2x^3 dari 0 ke 1)
disp(['Error metode kiri: ', num2str(abs(0.5 - hasil_kiri))]);
disp(['Error metode kanan: ', num2str(abs(0.5 - hasil_kanan))]);
disp(['Error metode tengah: ', num2str(abs(0.5 - hasil_tengah))]);
