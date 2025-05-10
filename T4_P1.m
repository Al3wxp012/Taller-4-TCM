clc;
clear;

% Funciones de transferencia en lazo abierto:
G = tf([1 1], [1 7 20]);
H = tf(4, [1 3 4]);

% Sistema en lazo cerrado: T(s) = G(s)*H(s) / (1 + G(s)*H(s))
T = feedback(G*H, 1);

% Mostrar polos y ceros
pzmap(T);  % gráfico de polos y ceros
grid on;

% Mostrar los polos en la consola
disp('Polos del sistema:');
pole(T)
