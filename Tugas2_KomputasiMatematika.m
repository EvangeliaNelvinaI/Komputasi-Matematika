%buat conntoh nested if,dan contoh while
%nested if tentang klasifikasi jenis gerak
v = input('kecepatan(m/s): ');
a = input('percepatan(m/s^2): ');

if v > 0
    if a > 0
        disp('Percepatan Gerak');
    elseif a== 0
        disp('Gerak lurus beraturan');
    else
        disp('Perlambatan gerak');
    end
else
    disp('Nilai kecepatan tidak benar');
end
    
%while tentang klasifikasi jenis gerak
Pengulangan = true;

while Pengulangan
   v = input('kecepatan(m/s): ');
   a = input('percepatan(m/s^2): ');
   if v > 0
    if a > 0
        disp('Percepatan Gerak');
    elseif a== 0
        disp('Gerak lurus beraturan');
    else
        disp('Perlambatan gerak');
    end
   elseif v == 0
       if a == 0
           disp('Benda Diam');
       elseif a < 0
           disp('percepatan tidak valid');
       else
           disp('Benda Mulai bergerak');
       end
   else 
       disp('Nilai kecepatan tidak benar');
   end
   
    jawab = input('Apakah ingin input lagi? (y/n): ', 's');
    if lower(jawab) ~= 'y'
        Pengulangan = false;
    end
end
           