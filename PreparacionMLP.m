% Definir la función escalar f(x, y) = x^2 + y^2
f = @(x) 10 - exp(-(x(1).^2 + 3*x(2).^2));

% Establecer las opciones de optimización
options = optimset('Display', 'iter', 'TolFun', 1e-6, 'TolX', 1e-6);

% Encontrar el mínimo global de la función f
[x_min, f_min] = fminsearch(f, [0, 0], options);

% x_min contendrá las coordenadas del mínimo y f_min el valor mínimo global.
disp(['Coordenadas del mínimo: x = ', num2str(x_min(1)), ', y = ', num2str(x_min(2))]);
disp(['Valor mínimo global: f(x, y) = ', num2str(f_min)]);
