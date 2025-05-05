clc
%fungsi f(x) =n2x
f = @(x) 2*x;
%titik evaluasi
x=1;
h_values = 0.01;
%Turunan eksak
df_exact = 2;
disp('perbandingan turunan nomerik untuk f(x) = 2x')

%loop untuk tiap nilai h
for i = 1:5
   h = h_values;
   %metode beda maju
   df_forward = (f(x+h) - f(x))/h;
   %metode beda mundur
   df_backwaard = (f(x)-f(x-h))/h;
   %metode beda tengah
   df_central = (f(x+h) -f(x-h))/(2*h);
   %tampilkan hasil
   disp (['h = ', num2str(h)]);
   disp (['beda maju = ', num2str(df_forward)]);
   disp (['beda mundur = ', num2str(df_backwaard)]);
   disp (['beda tengah = ', num2str(df_central)]);
   disp (['nilai eksak = ', num2str(df_exact)]);
   disp (' ')
end
