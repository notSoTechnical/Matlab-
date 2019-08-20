%% Plot 3D

x = linspace(0, 2*pi, 50);
y = sin(x);
z = x' *y; 
surf(x,y,z)