%aljabar
clc
clear
% 
% %persamaan linier
% syms x;                     %syms itu simbol yang kita gak tau itu apa
% y1 = 2*x + 12*x + 6 == 0;
% 
% %persamaaan kuadrat
% y2 = x^2 -3*x -28;
% 
% %cara 1
% solusi = solve(y2, x)
% 
% %Cara 2
% roots([1, -3, -28])         %digunakan saat fungsinaya kuadrat 

%rumus abc
a = input('nilai a = ');
b = input('nilai b = ');
c = input('nilai c = ');
d = b^2 - (4*a*c);
if d > 0
    x1 = (-b + sqrt(d))/(2*a);
    x2 = (-b - sqrt(d))/(2*a);
    disp(['solusi x1 = ', num2str(x1)]);
    disp(['solusi x2 = ', num2str(x2)]);
elseif d == 0
    x = -b / (2*a);
    disp(['solusi x = ', num2str(x)]);
else
    disp('tidak ada solusi');
end
    1qqq

