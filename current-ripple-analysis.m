clc;clear all;
Es=120;
L_data = [0.9 0.52 0.307 0.189 0.123 1];
dI=[0.62 0.785 1.07 1.8 3 0.5];
L=0.001:0.0001:1;
n=length(L);
alpha=0.5;
T=1/100;
for i=1:1:n
    DI(i)=alpha*(1-alpha)*Es*T/L(i);
end
plot(L,DI);hold on;grid on;axis([0 1 0 5]);
p = fit(L_data', dI', 'exp2'); % Polynôme de degré 3
x_fit = linspace(0.001, max(L_data), 100); % Points pour tracer la courbe
y_fit = feval(p, x_fit);
%plot(X,Ud);
plot(x_fit, y_fit, 'r-', 'LineWidth', 1.25, 'DisplayName', 'Courbe théorique');
title('∆Id = f(α)');
xlabel('α');
ylabel('∆Id (A)');legend;