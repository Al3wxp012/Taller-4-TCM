clc;
clear;

s = tf('s');

% Función de transferencia general
K_vals = [100];  % valores de K para analizar

for K = K_vals
    disp(['K = ', num2str(K)]);
    
    % Transferencia en lazo cerrado: T(s) = K / (s^3 + 8s^2 + 9s + K)
    T = tf(K, [1 8 9 K]);
    
    % Mostrar polos
    disp('Polos:');
    disp(pole(T));
    
    % Mostrar gráfico de polos y ceros
    figure;
    pzmap(T);
    title(['Mapa de Polos y Ceros para K = ', num2str(K)]);
    grid on;

    % Respuesta al escalón
    figure;
    step(T);
    title(['Respuesta al escalón para K = ', num2str(K)]);
    grid on;

end
