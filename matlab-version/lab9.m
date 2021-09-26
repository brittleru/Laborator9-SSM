% Program simularea functionarii mecanismului biela-manivela
% Data 22.04.2021

raza = 25; 
l = 80;
% excentric = 10;
phi_grade = 0:1:360; 
phi_radian = phi_grade*pi/180; 

x_A = zeros(1, 361);
y_A = zeros(1, 361);
x_B = zeros(1, 361);
y_B = zeros(1, 361);
x_C = zeros(1, 361);
y_C = zeros(1, 361);

M = moviein(361);
for i = 1:361 
    
    x_B(i) = raza.*cos(phi_radian(i));
    y_B(i) = raza.*sin(phi_radian(i)); 
    x_C(i) = raza.*cos(phi_radian(i))+ (sqrt(l^2-(raza*sin(phi_radian(i)))^2));
    y_C(i) = 0;   
     
    clf;
    axis("equal");
    set(gca, "Xlim", [-1.5*raza 1.5*(raza+l)], "Ylim", [-1.5*raza 1.5*raza]);
    grid;
    title('Caracteristica miscarii mecanismului biela-manivela');
    coordonate_A = rectangle('Position', [x_A(i)-3 y_A(i)-3 6 6], 'Curvature', [1,1], 'Facecolor', 'r');
    coordonate_B = rectangle('Position', [x_B(i)-3 y_B(i)-3 6 6], 'Curvature', [1,1], 'Facecolor', 'g');
    dreptunghi = rectangle('Position', [x_C(i)-10, y_C(i)-5, 20, 10], 'Curvature', [0 0], 'FaceColor', 'm');
    coordonate_C = rectangle('Position', [x_C(i)-3 y_C(i)-3 6 6], 'Curvature', [1,1], 'Facecolor', 'b');
    cerc = rectangle('Position', [-25 -25 50 50], 'Curvature', [1,1],'LineStyle', '--');
    manivela = line([x_A(i) x_B(i)], [y_A(i) y_B(i)],'Color', 'k', 'LineWidth', 3);
    biela = line([x_B(i) x_C(i)], [y_B(i) y_C(i)],'Color', 'k', 'LineWidth', 3);
    text(60,30, strcat("\phi = ", num2str(phi_grade(i)), "\circ"));
    ylabel('y [mm]');
    xlabel('x [mm]');
    
    M(:,i)= getframe(gcf);
end
%movie(M, 1, 10);

obj = VideoWriter("video_biela1.avi");
set(obj, "FrameRate", 60);
open(obj);
for k = 1:5
    for jj = 1:361
        writeVideo(obj, M(jj));
    end
end
close(obj);

