clc;
clear all;

xl = input('Bisection: Enter the value of xl: ');
xu = input('Bisection: Enter the value of xu: ');
[root1, ea1] = Bisection(xl, xu);

xl = input('False: Enter the value of xl: ');
xu = input('False: Enter the value of xu: ');
[root2, ea2] = False(xl, xu);

xl = input('Newton Rafsan: Enter the value of xl: ');
[root3, ea3] = Newton_Rafsan(xl);

xl = input('Secant: Enter the value of x0: ');
xu = input('Secant: Enter the value of x1: ');
[root4, ea4] = Secant(xl,xu);

x=1:10;
figure
plot(x,root1,'r-*', x, root2, 'g--s',x,root3,'m-*', x, root4, 'k--s');
title('Root ');
xlabel('x^3-1');
ylabel('EA');
legend('Bisection', 'FalsePosition', 'Newton-Raphson','Secant');
grid on

y=1:10;
figure
plot(y,ea1,'b:d',y,ea2, 'm-.^',y,ea3,'b-*',y, ea4, 'k--s');
title('Ea ');
xlabel('x^3-1');
ylabel('Root');
legend('Bisection', 'FalsePosition','Newton-Raphson','Secant');
grid on

