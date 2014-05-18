s=linspace(-1.5,1.5,25);
t=linspace(-pi,pi,25);
[S,T]=meshgrid(s,t);
mesh(cos(T),sin(T),S);%x^2+y^2=1
hold on;
%mesh(cos(T),S,sin(T));%x^2+z^2=1
%plot3(cos(T),sin(T),sin(T),'k',cos(T),sin(T),-sin(T),'k');%½»Ïß
axis equal