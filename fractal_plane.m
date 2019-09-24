function fractal_plane()
x1=[0;-1.5;1.5];
y1=-[-sqrt(3);0.5*sqrt(3);0.5*sqrt(3)];
x=[x1,y1];
y=fractal_2(x);
patch(y(:,1:2:end),y(:,2:2:end),[1 1 0]);
axis equal;
