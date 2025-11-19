
clc;
%format short g;
A = [-3,-1,-2;-1,-1,1;-2,1,-2];
f = [-8;-5;-3];
disp(['Матрица']);
A
f
disp(['Ответ']);
disp([Gauss(A,f)]);

disp(['Мера обусловленности: ' num2str(pwrmethod(A)*pwrmethod_inv(A))]);
disp(['Мера обусловленности через cond(A): ' num2str(cond(A))]);