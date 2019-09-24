% Fractal----Koch Snowflake
function fractal_k_1(n)    %n最大递归次数
x1=[-150;150;0];
x2=[50*sqrt(3);50*sqrt(3);-100*sqrt(3)];
x=[x1,x2];                                           
[y1,n1,d]=fractal_snowflake_1(x([3 1],:),n,0);
y2=fractal_snowflake_1(x([1 2],:),n,0);
y3=fractal_snowflake_1(x([2 3],:),n,0);
y=[y1;y2;y3];
title(['Recursion:',num2str(n1)]);
patch(y(:,1),y(:,2),[0.5 0.5 1]);
axis equal
axis off