clc
clear all
close all
for n=1:9
    cla
    fractal_k_1(n)
    axis([-250 250 -200 200]);
    axis equal
    axis off
    print('-dpng','-r300','-painters',['Koch',num2str(n)])
end
cla
x=[-150;150;0];
y=[50*sqrt(3);50*sqrt(3);-100*sqrt(3)];      
patch(x,y,[0.5 0.5 1]);
axis([-250 250 -200 200]);
axis equal;
axis off;
title('Recursion:0');
print('-dpng','-r300','-painters','Koch0')