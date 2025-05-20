%Plot 2D
% %Spiral Parametrik
% t = linspace(0, 10*pi, 1000);
% x = t .* cos(t);
% y = t .* sin(t);
% 
% plot(x, y, 'm', 'LineWidth', 2);
% xlabel('x');
% ylabel('y');
% title('Spiral Parametrik');
% axis equal;
% grid on;

% % Kontur Fungsi
% [x, y] = meshgrid(-2:0.1:2, -2:0.1:2);
% z = x.^2 - y.^2;
% 
% contour(x, y, z, 20); 
% xlabel('x');
% ylabel('y');
% title('Kontur Fungsi');
% colorbar;

% % Daun Parametrik
% t = linspace(0, 2*pi, 1000);
% x = sin(t) .* (exp(cos(t)) - 2*cos(4*t) - (sin(t/12)).^5);
% y = cos(t) .* (exp(cos(t)) - 2*cos(4*t) - (sin(t/12)).^5);
% 
% plot(x, y, 'g', 'LineWidth', 2);
% axis equal;
% title('Daun Parametrik');

% %pohon_fraktal
% function pohon_fraktal()
%     clf;
%     axis equal off
%     hold on
%     angle = pi/6; % sudut cabang
%     draw_branch(0, 0, pi/2, 100); % pangkal pohon
% end
% 
% function draw_branch(x, y, theta, len)
%     if len < 5
%         return
%     end
%     x2 = x + len*cos(theta);
%     y2 = y + len*sin(theta);
%     plot([x x2], [y y2], 'b', 'LineWidth', len/10);
%     draw_branch(x2, y2, theta + pi/6, len*0.7);
%     draw_branch(x2, y2, theta - pi/6, len*0.7);
% end

% %Spiral Fermat
% n = 1:500;
% phi = pi * (3 - sqrt(5)); % golden angle
% theta = n * phi;
% r = sqrt(n);
% 
% x = r .* cos(theta);
% y = r .* sin(theta);
% 
% scatter(x, y, 10, n, 'filled');
% axis equal off;
% title('Spiral Fermat');

% %bunga polar(5 Kelopak)
% theta = linspace(0, 2*pi, 1000);
% k = 5;
% r = sin(k * theta);
% x = r .* cos(theta);
% y = r .* sin(theta);
% 
% plot(x, y, 'r', 'LineWidth', 2);
% axis equal;
% title(['Bunga Polar (', num2str(k), ' kelopak)']);

% %Fraktal Pakis Barnsley
% n = 100000;
% x = zeros(1, n);
% y = zeros(1, n);
% 
% for i = 2:n
%     r = rand;
%     if r < 0.01
%         x(i) = 0;
%         y(i) = 0.16 * y(i-1);
%     elseif r < 0.86
%         x(i) = 0.85 * x(i-1) + 0.04 * y(i-1);
%         y(i) = -0.04 * x(i-1) + 0.85 * y(i-1) + 1.6;
%     elseif r < 0.93
%         x(i) = 0.2 * x(i-1) - 0.26 * y(i-1);
%         y(i) = 0.23 * x(i-1) + 0.22 * y(i-1) + 1.6;
%     else
%         x(i) = -0.15 * x(i-1) + 0.28 * y(i-1);
%         y(i) = 0.26 * x(i-1) + 0.24 * y(i-1) + 0.44;
%     end
% end
% 
% plot(x, y, '.', 'Color', [0 0.5 0], 'MarkerSize', 1);
% axis off;
% title('Fraktal Pakis Barnsley');

% % Buah Persik
% theta = linspace(0, 2*pi, 1000);
% r = 1 - cos(theta);
% x = r .* cos(theta);
% y = r .* sin(theta);
% 
% plot(x, y, 'm', 'LineWidth', 2);
% axis equal;
% title('Buah Persik');

% %Rose Curve Berwarna
% theta = linspace(0, 2*pi, 1000);
% k = 5; % jumlah kelopak
% r = cos(k * theta);
% 
% x = r .* cos(theta);
% y = r .* sin(theta);
% 
% scatter(x, y, 10, theta, 'filled');
% axis equal;
% colormap(hot);
% title('Rose Curve Berwarna - Bunga');

% %Bintang
% t = linspace(0, 2*pi*10, 5000);
% R = 5; r = 3; d = 5;
% 
% x = (R - r)*cos(t) + d*cos((R - r)/r * t);
% y = (R - r)*sin(t) - d*sin((R - r)/r * t);
% 
% plot(x, y, 'k', 'LineWidth', 1.5);
% axis equal;
% grid on;
% title('Bintang');

% % Kurva hati
% t = linspace(0, 2*pi, 1000);
% x = 16*sin(t).^3;
% y = 13*cos(t) - 5*cos(2*t) - 2*cos(3*t) - cos(4*t);
% 
% % Plot area yang diisi warna (fill)
% fill(x, y, [1 0.2 0.4], 'EdgeColor', 'k', 'LineWidth', 1.5); 
% axis equal;
% grid on;
% title('Kurva Hati');

% %Kurva Mawar 
% % Parameter
% theta = linspace(0, 24*pi, 5000);  % Sudut (semakin besar, semakin kompleks)
% k = 7;                             % Jumlah kelopak kurva (angka ganjil: kelopak = k)
% 
% % Fungsi Rose Curve
% r = sin(k * theta);
% 
% % Konversi ke kartesian
% x = r .* cos(theta);
% y = r .* sin(theta);
% 
% % Plotting
% figure;
% plot(x, y, 'm', 'LineWidth', 1.5);
% axis equal;
% grid on;
% title(['? Rose Curve Artistik dengan k = ' num2str(k)]);
% set(gca, 'Color', 'k');             % Latar belakang hitam
% set(gcf, 'Color', 'k');             % Warna figure

% %Spirograph
% t = linspace(0, 100, 10000);
% x = sin(2*t) .* exp(-0.01*t);
% y = cos(3*t) .* exp(-0.01*t);
% 
% figure;
% plot(x, y, 'c', 'LineWidth', 1);
% axis equal;
% grid on;
% title('? Spirograph Artistik');
% set(gca, 'Color', 'black');
% set(gcf, 'Color', 'black');

% %Harmonograph
% t = linspace(0, 100, 10000);
% x = sin(2*t + pi/2) .* exp(-0.005*t);
% y = sin(3*t) .* exp(-0.007*t);
% 
% figure;
% plot(x, y, 'Color', [0.5, 0.8, 1], 'LineWidth', 1);
% axis equal;
% title('Harmonograph Abstrak');
% set(gca, 'Color', 'black'); set(gcf, 'Color', 'black');
% grid on;

% % Kupu Kupu
% t = linspace(0, 20*pi, 5000);
% x = sin(t) .* (exp(cos(t)) - 2*cos(4*t) - sin(t/12).^5);
% y = cos(t) .* (exp(cos(t)) - 2*cos(4*t) - sin(t/12).^5);
% 
% figure;
% plot(x, y, 'Color', [1, 0.4, 0.6], 'LineWidth', 1);
% axis equal;
% title('Kupu Kupu');
% set(gca, 'Color', 'black'); set(gcf, 'Color', 'black');
% grid on;


%Plot 3D
% %Permukaan z = sin(x^2 + y^2)
% [x, y] = meshgrid(linspace(-2, 2, 100));
% z = sin(x.^2 + y.^2);
% 
% surf(x, y, z);
% xlabel('x');
% ylabel('y');
% zlabel('z');
% title('Permukaan: z = sin(x^2 + y^2)');
% shading interp;
% colormap jet;

% %Tornado
% t = linspace(0, 10*pi, 1000);
% x = cos(t) .* exp(0.05*t);
% y = sin(t) .* exp(0.05*t);
% z = t;
% 
% plot3(x, y, z, 'g', 'LineWidth', 2);
% xlabel('x'); ylabel('y'); zlabel('z');
% title('Tornado');
% grid on;
% axis equal;

% %Fraktal Pakis 3D
% n = 50000;
% x = zeros(1, n);
% y = zeros(1, n);
% z = zeros(1, n);
% 
% for i = 2:n
%     r = rand;
%     if r < 0.01
%         x(i) = 0;
%         y(i) = 0.16 * y(i-1);
%         z(i) = 0.1 * z(i-1);
%     elseif r < 0.86
%         x(i) = 0.85 * x(i-1) + 0.04 * y(i-1);
%         y(i) = -0.04 * x(i-1) + 0.85 * y(i-1) + 1.6;
%         z(i) = z(i-1) + 0.02;
%     elseif r < 0.93
%         x(i) = 0.2 * x(i-1) - 0.26 * y(i-1);
%         y(i) = 0.23 * x(i-1) + 0.22 * y(i-1) + 1.6;
%         z(i) = z(i-1) + 0.01;
%     else
%         x(i) = -0.15 * x(i-1) + 0.28 * y(i-1);
%         y(i) = 0.26 * x(i-1) + 0.24 * y(i-1) + 0.44;
%         z(i) = z(i-1) + 0.01;
%     end
% end
% 
% scatter3(x, y, z, 1, z, 'filled');
% xlabel('x'); ylabel('y'); zlabel('z');
% title('Fraktal Pakis 3D');
% axis off;

% % Permukaan Bunga 3D
% [u, v] = meshgrid(linspace(0, 2*pi, 100), linspace(0, pi, 100));
% r = 1 + 0.3 * sin(6*u) .* sin(3*v);
% x = r .* sin(v) .* cos(u);
% y = r .* sin(v) .* sin(u);
% z = r .* cos(v);
% 
% surf(x, y, z);
% shading interp;
% colormap spring;
% axis equal;
% title('Permukaan Bunga 3D');

% %Daun dalam 3D
% [x, y] = meshgrid(linspace(-2, 2, 100));
% z = exp(-x.^2 - y.^2) .* (x.^2 + y.^2);
% 
% surf(x, y, z);
% xlabel('x'); ylabel('y'); zlabel('z');
% shading interp;
% colormap summer;
% title('Daun dalam 3D');

% %Bunga Teratai 3D
% u = linspace(0, 2*pi, 100);
% v = linspace(0, pi, 50);
% [U, V] = meshgrid(u, v);
% 
% R = 1 + 0.3 * sin(6*U) .* sin(V); % kelopak bergelombang
% X = R .* sin(V) .* cos(U);
% Y = R .* sin(V) .* sin(U);
% Z = R .* cos(V);
% 
% surf(X, Y, Z, 'EdgeColor', 'none');
% colormap(pink);
% lighting gouraud
% camlight headlight
% axis equal
% title('Bunga Teratai 3D');

% %Mutiara Kerang
% [u, v] = meshgrid(linspace(0, 4*pi, 200), linspace(0, 2*pi, 100));
% a = 0.2;
% b = 0.3;
% r = a + b * u;
% 
% x = r .* cos(u) .* cos(v);
% y = r .* cos(u) .* sin(v);
% z = r .* sin(u);
% 
% surf(x, y, z, sin(u), 'EdgeColor', 'none');
% colormap(turbo);
% lighting phong
% camlight left
% axis equal
% title('Mutiara Kerang');

% %Struktur DNA Double Helix 3D
% t = linspace(0, 4*pi, 1000);
% x1 = cos(t);
% y1 = sin(t);
% z1 = t;
% 
% x2 = cos(t + pi);
% y2 = sin(t + pi);
% z2 = t;
% 
% plot3(x1, y1, z1, 'b', x2, y2, z2, 'r', 'LineWidth', 2);
% hold on;
% 
% % tambahkan “tangga” antar helix
% for i = 1:50:length(t)
%     plot3([x1(i) x2(i)], [y1(i) y2(i)], [z1(i) z2(i)], 'k');
% end
% 
% axis equal
% grid on
% title('Struktur DNA Double Helix 3D');

% %Caping
% n = 1:1000;
% phi = pi * (3 - sqrt(5));
% theta = n * phi;
% r = sqrt(n);
% z = exp(-r / 25); % menurun seperti kubah bunga
% 
% x = r .* cos(theta);
% y = r .* sin(theta);
% 
% scatter3(x, y, z, 10, z, 'filled');
% colormap(parula);
% axis equal;
% title('Caping');

% %Otak Kosmik'
% [x, y] = meshgrid(linspace(-3, 3, 300));
% r = sqrt(x.^2 + y.^2);
% z = exp(-r.^2) .* sin(5*r);
% 
% surf(x, y, z, 'EdgeColor', 'none');
% colormap(turbo);
% shading interp;
% lighting phong;
% camlight;
% axis equal;
% title('Otak Kosmik');

% %Cangkang Laut
% theta = linspace(0, 4*pi, 300);
% phi = linspace(0, 2*pi, 100);
% [Theta, Phi] = meshgrid(theta, phi);
% 
% a = 0.2;
% b = 0.6;
% m = 5;
% 
% r = a * exp(b * Theta);
% 
% x = r .* cos(Theta) .* (1 + 0.2*sin(m*Phi));
% y = r .* sin(Theta) .* (1 + 0.2*sin(m*Phi));
% z = r .* cos(Phi);
% 
% surf(x, y, z, 'EdgeColor', 'none');
% colormap(parula);
% lighting gouraud;
% camlight;
% axis equal;
% title('Cangkang Laut');

% %Kurva Harmonograf 3D
% t = linspace(0, 100, 10000);
% x = sin(2*t + pi/4) .* exp(-0.01*t);
% y = sin(3*t) .* exp(-0.012*t);
% z = sin(4*t + pi/6) .* exp(-0.015*t);
% 
% plot3(x, y, z, 'Color', [0.2 0.8 1], 'LineWidth', 1.5);
% axis equal;
% grid on;
% title('Kurva Harmonograf 3D');


% % Superformula
% superformula = @(theta, m, n1, n2, n3, a, b) ...
%     (abs(cos(m*theta/4)/a).^n2 + abs(sin(m*theta/4)/b).^n3).^(-1/n1);
% 
% phi = linspace(0, pi, 100);
% theta = linspace(0, 2*pi, 200);
% [thetaGrid, phiGrid] = meshgrid(theta, phi);
% 
% r1 = superformula(thetaGrid, 7, 0.3, 0.3, 0.3, 1, 1);
% r2 = superformula(phiGrid, 3, 0.2, 1.7, 1.7, 1, 1);
% 
% x = r1 .* sin(phiGrid) .* cos(thetaGrid);
% y = r1 .* sin(phiGrid) .* sin(thetaGrid);
% z = r2 .* cos(phiGrid);
% 
% surf(x, y, z, 'EdgeColor', 'none');
% colormap(jet);
% lighting phong;
% camlight;
% axis equal;
% title('Superformula Organik');

% %Animasi Sederhana
% x = linspace(0, 2*pi, 100);
% h = plot(x, sin(x));
% ylim([-1.5, 1.5]);
% grid on;
% 
% for k = 1:100
%     y = sin(x + k*0.1);
%     set(h, 'YData', y);
%     pause(0.05);
% end

% % Gelombang Sinus Radial Futuristik
% % Parameter meshgrid
% [X, Y] = meshgrid(linspace(-6, 6, 300), linspace(-6, 6, 300));
% R = sqrt(X.^2 + Y.^2); % Jarak dari pusat
% Z = sin(R.^2) ./ (R.^2 + 0.1); % Fungsi gelombang radial
% 
% % Plot surface
% figure;
% surf(X, Y, Z, 'EdgeColor', 'none');
% 
% % Estetika
% colormap turbo;          % Warna keren
% shading interp;          % Halus
% lightangle(-45, 30);     % Sudut pencahayaan
% lighting phong;          % Efek pencahayaan halus
% camlight headlight;      % Tambahan cahaya
% axis tight;
% view(45, 30);            % Sudut pandang 3D
% title('? Gelombang Radial 3D Futuristik');
% xlabel('X');
% ylabel('Y');
% zlabel('Z');

% % Butterfly Surface
% % Grid parameter
% [u, v] = meshgrid(linspace(0, 2*pi, 200), linspace(0, pi, 100));
% 
% % Rumus butterfly 3D surface
% x = sin(u) .* (exp(cos(u)) - 2*cos(4*u) - sin(u/12).^5) .* sin(v);
% y = cos(u) .* (exp(cos(u)) - 2*cos(4*u) - sin(u/12).^5) .* sin(v);
% z = cos(v) .* (exp(cos(u)) - 2*cos(4*u) - sin(u/12).^5);
% 
% figure;
% surf(x, y, z, sin(u), 'EdgeColor', 'none');
% 
% colormap(hot);
% shading interp;
% lighting gouraud;
% camlight;
% axis equal;
% title('Butterfly Surface 3D');
% xlabel('X'); ylabel('Y'); zlabel('Z');
% 
% set(gca, 'Color', 'w');   % Background axes putih
% set(gcf, 'Color', 'w');   % Background figure putih

% % 3D Heart 
% [x,y,z] = meshgrid(linspace(-1.8,1.8,120));
% f = (x.^2 + (9/4)*y.^2 + z.^2 - 1).^3 - x.^2.*z.^3 - (9/80)*y.^2.*z.^3;
% 
% figure;
% p = patch(isosurface(x,y,z,f,0));
% p.FaceColor = [1 0 0]; % Warna merah murni [R G B]
% p.EdgeColor = 'none';  % Tidak menampilkan edge
% p.FaceLighting = 'gouraud'; % Lighting yang halus
% 
% view(3); 
% axis equal tight;
% title('3D Heart','FontSize',14);
% grid off;
% axis off;
% 
% light('Style','infinite','Position',[0 0 1]);
% light('Style','infinite','Position',[0 1 0],'Color',[1 1 0.3]);
% light('Style','infinite','Position',[1 0 0],'Color',[1 0.3 0.3]);
% material([0.8 0.2 0.5 25 1]); % Mengatur material properties
% view(-45,30);

% % Pohon Hijau
% function fractaltree
%     figure;
%     hold on;
%     axis equal;
%     axis off;
%     title('Pohon Hijau');
%     tree(0, 0, pi/2, 0.8, 10);
%     
%     function tree(x, y, angle, length, depth)
%         if depth > 0
%             x_end = x + length*cos(angle);
%             y_end = y + length*sin(angle);
%             
%             plot([x x_end], [y y_end], 'Color', [0.4 0.2 0.1], 'LineWidth', depth*0.5);
%             
%             % Cabang kiri dan kanan
%             tree(x_end, y_end, angle + pi/6, length*0.7, depth-1);
%             tree(x_end, y_end, angle - pi/6, length*0.7, depth-1);
%             
%             % Tambahkan daun di ujung cabang
%             if depth == 1
%                 plot(x_end, y_end, 'o', 'MarkerSize', 5, 'MarkerFaceColor', [0 0.6 0], 'MarkerEdgeColor', 'none');
%             end
%         end
%     end
% end

% % Colorful Waves
% [x,y] = meshgrid(-10:0.2:10);
% z = sin(sqrt(x.^2 + y.^2))./sqrt(x.^2 + y.^2);
% 
% figure;
% surf(x,y,z, 'EdgeColor', 'none');
% title('Colorful Waves');
% colormap(jet);
% shading interp;
% light;
% lighting gouraud;
% material shiny;
% view(-30, 60);

% %Plot 3D
% % Buat grid untuk plot
% [x, y] = meshgrid(-3:0.1:3, -3:0.1:3);
% 
% % Fungsi peaks dasar dengan modifikasi spiral
% z = peaks(x, y);
% r = sqrt(x.^2 + y.^2);
% spiral_effect = sin(r*5 - 0.5*pi);  % Efek spiral
% 
% % Gabungkan efek spiral dengan fungsi peaks
% z_mod = z + 0.5*spiral_effect;
% 
% % Plot 3D 
% figure('Color', 'white');
% surf(x, y, z_mod, 'EdgeColor', 'none', 'FaceLighting', 'phong');
% title('\fontsize{14}Plot 3D', 'FontWeight', 'bold');
% xlabel('Sumbu X');
% ylabel('Sumbu Y');
% zlabel('Sumbu Z');
% 
% light('Position', [1 1 1], 'Style', 'infinite');
% light('Position', [-1 -1 -1], 'Style', 'infinite');
% material shiny;  % Memberikan efek material mengkilap
% 
% view(45, 30);
% colorbar;
% colormap(jet(256));  % Anda bisa ganti dengan hot, cool, spring, dll.

% %Kebun Bunga
% figure('Color','white');
% axis equal; hold on;
% view(45,30);
% title('Kebun Bunga 3D','FontSize',14,'FontWeight','bold');
% 
% [X,Y] = meshgrid(-5:0.5:5,-5:0.5:5);
% Z = -0.1*ones(size(X));
% surf(X,Y,Z,'FaceColor',[0.6 0.4 0.2],'EdgeColor','none');
% 
% for i = 1:20
%     x0 = 10*rand-5; y0 = 10*rand-5;
%     
%     plot3([x0 x0],[y0 y0],[-0.1 0.2],'g','LineWidth',2);
%     
%     % Kelopak bunga (parametric)
%     theta = linspace(0,2*pi,20);
%     r = 0.3 + 0.1*rand;
%     x = x0 + r*cos(theta);
%     y = y0 + r*sin(theta);
%     z = 0.2 + 0.05*rand(size(theta));
%     patch(x,y,z,rand(1,3),'EdgeColor','none');
%     
%     scatter3(x0,y0,0.25,50,[0.9 0.7 0],'filled');
% end
% 
% light('Position',[1 1 1]);
% lighting gouraud;
% rotate3d on;

% %Bunga Mawar
% function realistic_rose()
%     % Setup figure
%     figure('Color', [0.9 0.95 1], 'Position', [100 100 800 600]);
%     axis equal; axis off; 
%     view(30, 30);
%     hold on;
%     
%     % Warna mawar
%     rose_color = [0.9 0.2 0.2];
%     dark_rose = [0.6 0.1 0.1];
%     
%     % Batang (silinder hijau)
%     [X,Y,Z] = cylinder(0.03, 20);
%     surf(X, Y, Z*3-1.5, 'FaceColor', [0.3 0.7 0.3], 'EdgeColor', 'none');
%     
%     % Duri batang
%     for i = 1:10
%         [x,y,z] = ellipsoid(0, 0.1*randn, 0.5*rand-1.8, 0.05, 0.05, 0.03);
%         surf(x, y, z, 'FaceColor', [0.5 0.3 0.2], 'EdgeColor', 'none');
%     end
%     
%     % Kelopak bunga (perbaikan dimensi matrix)
%     theta = linspace(0, 2*pi, 50);
%     for layer = 1:5
%         radius = 0.5 + 0.2*layer;
%         height = 0.2*layer;
%         
%         for i = 1:12
%             angle = i*pi/6;
%             
%             % Perbaikan: gunakan element-wise multiplication (.*)
%             x = radius * cos(theta) .* (1 + 0.1*sin(2*theta)); % Modified shape
%             y = radius * sin(theta) .* (1 + 0.3*cos(2*theta));
%             z = height * (1 + 0.5*sin(theta));
%             
%             % Rotasi
%             x_rot = x*cos(angle) - y*sin(angle);
%             y_rot = x*sin(angle) + y*cos(angle);
%             z_rot = z;
%             
%             % Warna alternatif
%             if mod(i,2) == 0
%                 patch(x_rot, y_rot, z_rot+0.5, rose_color, 'EdgeColor', 'none');
%             else
%                 patch(x_rot, y_rot, z_rot+0.5, dark_rose, 'EdgeColor', 'none');
%             end
%         end
%     end
%     
%     % Pusat bunga
%     [x,y,z] = sphere(20);
%     surf(x*0.3, y*0.3, z*0.3+0.5, 'FaceColor', [0.5 0.3 0.1], 'EdgeColor', 'none');
%     
%     % Daun (versi sederhana)
%     [X,Y] = meshgrid(linspace(0,1,20), linspace(-0.5,0.5,20));
%     Z = 0.3*sin(pi*X).*Y;
%     surf(X-0.8, Y+0.5, Z-1.2, 'FaceColor', [0.2 0.6 0.3], 'EdgeColor', 'none');
%     
%     % Lighting
%     light('Position', [1 1 1], 'Style', 'infinite');
%     lighting gouraud;
%     
% end

% function plot_custom_equation()
%     % Bersihkan workspace
%     clf; clear; close all;
%     
%     % Buat figure dengan zoom 0.5x
%     figure('Position', [100 100 600*0.5 600*0.5]);
%     
%     % Rentang x dan y
%     x = linspace(-2, 2, 500);
%     y = linspace(-2, 2, 500);
%     [X, Y] = meshgrid(x, y);
%     
%     % Hitung persamaan
%     Eq = (X.^2 + Y.^6 - 1).*(2*X.^3 + 4*Y).*(2*Y.^3 + 2*X).*(2*X.^3 - 4*Y).*(2*Y.^3 - 2*X);
%     
%     % Plot dengan contour level di 0
%     contourf(X, Y, Eq, [0 0], 'k', 'LineWidth', 1.5);
%     
%     % Format plot
%     axis equal;
%     axis([-1.5 1.5 -1.5 1.5]); % Zoom 0.5x dari rentang normal
%     title('Plot (x^2+y^6-1)(2x^3+4y)(2y^3+2x)(2x^3-4y)(2y^3-2x)=0');
%     xlabel('x');
%     ylabel('y');
%     colormap([1 1 1; 0 0 0]); % Latar putih, garis hitam
%     set(gca, 'FontSize', 8); % Ukuran font lebih kecil untuk zoom
%     
%     % Tambahkan grid
%     grid on;
%     box on;
% end

% %Plot Burung terbang
% function plot_3d_equation()
%     % Bersihkan workspace
%     clf; clear; close all;
%     
%     % Buat figure dengan ukuran zoom 0.5x
%     figure('Position', [100 100 600*0.5 600*0.5]);
%     
%     % Rentang x, y, z (dengan zoom 0.5x)
%     x = linspace(-2, 2, 80);
%     y = linspace(-1, 1, 80);
%     z = linspace(-2, 2, 80);
%     [X,Y,Z] = meshgrid(x, y, z);
%     
%     % Hitung persamaan
%     Eq = (1.2*X.^2 + 1.2*Z.^2 - 5*(Y+0.5).^3.*(0.5-Y).^3) ...
%         .*(1.2*X.^5 + 1.2*Z.^3 - 5*(Y+0.5).^3.*(0.5+Y).^3) ...
%         .*(1.2*(-X).^5 + 1.2*(-Z).^3 - 5*(Y+0.5).^3.*(0.5+Y).^3);
%     
%     % Plot isosurface di level 0
%     p = patch(isosurface(X,Y,Z,Eq,0));
%     isonormals(X,Y,Z,Eq,p);
%     
%     % Format plot
%     set(p, 'FaceColor', [0.8 0.2 0.2], 'EdgeColor', 'none');
%     axis equal;
%     axis([-1 1 -0.5 0.5 -1 1]); % Zoom 0.5x
%     view(30,30);
%     camlight;
%     lighting gouraud;
%     title('Plot Burung terbang');
%     xlabel('x'); ylabel('y'); zlabel('z');
%     set(gca, 'FontSize', 8);
%     
%     % Tambahkan colorbar
%     colorbar;
% end


% % orbital atomik
% a = 0.1; % Anda bisa menyesuaikan nilai a sesuai kebutuhan
% z_factor = (1 - sqrt(5 - sqrt(10))) / 2;
% constant_term = (1 + 3*sqrt(5))/4;
% 
% % Buat grid 3D
% [x, y, z] = meshgrid(linspace(-2, 2, 100), linspace(-2, 2, 100), linspace(-2, 2, 100));
% 
% part1 = z_factor * z;
% 
% part2 = x.^2 + y.^2 - 1 + constant_term * z.^2;
% part2_squared = part2.^2;
% a_factor = a * 3.85983843766;
% 
% theta = 2*pi/5; % Sudut dasar
% terms = zeros(size(x));
% for k = 1:4
%     angle = k*theta;
%     terms = terms + log(cos(angle)*x - sin(angle)*y - z);
% end
% 
% terms = terms + log(x - z); % Ini untuk term (x-z)
% product_terms = exp(terms); % Menggunakan properti log untuk menghitung produk
% 
% F = part1 .* part2_squared - a_factor * product_terms;
% p = patch(isosurface(x, y, z, F, 0));
% isonormals(x, y, z, F, p);
% set(p, 'FaceColor', 'red', 'EdgeColor', 'none');
% 
% % Pengaturan plot
% view(3);
% axis equal;
% axis vis3d;
% camlight;
% lighting gouraud;
% xlabel('x');
% ylabel('y');
% zlabel('z');
% title('orbital atomik');
% grid on;

%Burung Hantu
% function plot_owl()
%     % Parameter dasar
%     theta = linspace(0, 2*pi, 1000);
%     t = linspace(-pi, pi, 1000);
%     
%     r_head = 1 + 0.1*cos(5*theta);  % Efek bergelombang
%     x_head = r_head .* cos(theta);
%     y_head = r_head .* sin(theta) + 1.5;
%     
%     x_eye_left = -0.4 + 0.3*cos(theta);
%     y_eye_left = 1.6 + 0.4*sin(theta);
%     x_eye_right = 0.4 + 0.3*cos(theta);
%     y_eye_right = 1.6 + 0.4*sin(theta);
%     
%     x_pupil_left = -0.4 + 0.1*cos(theta);
%     y_pupil_left = 1.6 + 0.1*sin(theta);
%     x_pupil_right = 0.4 + 0.1*cos(theta);
%     y_pupil_right = 1.6 + 0.1*sin(theta);
%     
%     x_beak = [-0.1 0 0.1];
%     y_beak = [1.3 1.45 1.3];
%     
%     x_body = 0.8*cos(theta);
%     y_body = 0.5*sin(theta) - 0.2;
%     
%     x_wing_left = -0.5 + 0.7*cos(t).^3;
%     y_wing_left = 0.3*sin(t) - 0.2;
%     x_wing_right = 0.5 - 0.7*cos(t).^3;
%     y_wing_right = 0.3*sin(t) - 0.2;
%     
%     x_feet = [-0.4 -0.3 -0.2 -0.1 0 0.1 0.2 0.3 0.4];
%     y_feet = [-0.7 -0.8 -0.7 -0.8 -0.7 -0.8 -0.7 -0.8 -0.7];
%     
%     % Plot semua komponen
%     figure('Color', 'white');
%     hold on;
%     axis equal;
%     axis off;
%     
%     fill(x_head, y_head, [0.3 0.2 0.1]); % Coklat tua
%     fill(x_body, y_body, [0.4 0.3 0.2]); % Coklat sedang
%     
%     fill(x_wing_left, y_wing_left, [0.35 0.25 0.15]);
%     fill(x_wing_right, y_wing_right, [0.35 0.25 0.15]);
%     
%     fill(x_eye_left, y_eye_left, 'white');
%     fill(x_eye_right, y_eye_right, 'white');
%     fill(x_pupil_left, y_pupil_left, 'black');
%     fill(x_pupil_right, y_pupil_right, 'black');
%     
%     fill(x_beak, y_beak, [1 0.8 0.2]); % Kuning
%     plot(x_feet, y_feet, 'LineWidth', 3, 'Color', [1 0.7 0]);
% 
%     plot(-0.4, 1.6, 'o', 'MarkerSize', 8, 'Color', 'white'); % Pantulan mata
%     plot(0.4, 1.6, 'o', 'MarkerSize', 8, 'Color', 'white');
%     
%     plot(0, 1.3 + 0.05*sin(20*theta), 'k', 'LineWidth', 1); % Garis paruh
%     
%     title('Burung Hantu', 'FontSize', 14);
%     hold off;
% end

% %Kinjeng
% theta = linspace(0, 24*pi, 2000);
% r = cos(6*theta) + sin(4*theta);
% x = r .* cos(theta);
% y = r .* sin(theta);
% 
% scatter(x, y, 5, 'filled');
% axis equal;
% axis off;
% title('Kinjeng', 'FontSize', 14);

% %Bunga Mawar ver.2
% n = 800;
% A = 1.995653;
% B = 1.27689;
% C = 8;
% r = linspace(0,1,n);
% theta = linspace(-2,20*pi,n);
% [R, THETA] = ndgrid(r, theta);
% 
% petalNum = 3.6;
% x = 1 - (1/2)*((5/4)*(1-mod (petalNum * THETA, 2*pi)/pi).^2 - 1/4).^2;
% phi = (pi/2)*exp(-THETA/(C*pi));
% y = A*(R.^2).*(B*R - 1).^2.*sin(phi);
% R2 = x.*(R.*sin(phi) + y.*cos(phi));
% X = R2.*sin(THETA);
% Y = R2.*cos(THETA);
% Z= x.*(R.*cos(phi) - y.*sin(phi));
% 
% red_map = linspace (1,0.25, 10)';
% red_map(:,2)= 0;
% red_map(:,3)= 0;
% clf
% surf(X,Y,Z,'LineStyle','none')
% view([-40.50 42.00])
% colormap(red_map)


