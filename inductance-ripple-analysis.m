clc;clear all;
Es=120;
f_data = [90 100 115.5 130 147.1];
dI=[1.17 1.07 0.94 0.815 0.714];
L=0.307;
f=90:0.01:160;
n=length(f);
alpha=0.5;

for i=1:1:n
    DI(i)=alpha*(1-alpha)*Es/(L*f(i));
end
plot(f,DI);hold on;grid on;axis([90 150 0 1.5]);
p = fit(f_data', dI', 'exp2'); % Polynôme de degré 3
x_fit = linspace(90, max(f_data), 100); % Points pour tracer la courbe
y_fit = feval(p, x_fit);
%plot(X,Ud);
plot(x_fit, y_fit, 'r-', 'LineWidth', 1.25, 'DisplayName', 'Courbe théorique');
title('∆Id = f(f)');
xlabel('f (Hz)');
ylabel('∆Id (A)');legend;