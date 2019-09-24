%康托尔三分集
function fractal_Cantor(x,n)     %第一个输入量为待分线段两端点横坐标；第二个输入量为分形最大精度（连线最小长度）
y=fractal_1(x,n);
size_y=size(y);
patch([y(1:2:end-1);y(2:2:end)],zeros(2,size_y(2)/2),'blue');
axis equal;