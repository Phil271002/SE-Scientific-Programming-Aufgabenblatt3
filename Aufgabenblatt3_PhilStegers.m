%% Aufgabenblatt 3

%% Aufgabe 1 
% a)

% Funktion mit dem Namen "moving_average" erstellt

%{ 
Recherchiert wie man mit Rändern umgeht - 3 Methoden: 
1. Ränder unverändert lassen
2. nur die vorhandenen Nachbarn verwenden => Funktion: moving_average.m
3. Spiegelung => Funktion: moving_average2.m
%}


v = [1, 2, 3, 4, 5, 6, 7, 8, 9]; % Vektor mit 9 aufeinanderfolgenden Zahlen
ma1 = moving_average(v); % MA nach Methode 2
ma2 = moving_average2(v); % MA nach Methode 3

% b)

x=0:pi/16:2*pi;
y=sin(x);
rauschen = rand(size(y));
signal = y + 0.2*rauschen - 0.1;

% c) 
 
smoothed_signal = moving_average(signal);
smoothed_signal2 = moving_average2(signal);

% d)

figure;
plot(x, y, 'k*', 'DisplayName', 'Original Sine Wave');
hold on;
plot(x, signal, 'r-', 'DisplayName', 'Sine with Random Noise'); 
plot(x, smoothed_signal, 'b-', 'DisplayName', 'Smoothed Sine Wave');
xlabel('Abbildung 1: Beispielplot in MATLAB', 'FontWeight', 'bold');
ylabel('');  % keine y-Achsenbeschriftung
title('Noisy Sine Wave', 'FontWeight', 'bold');
ylim([-1.5, 1.5]);
legend('show', 'Location', 'south', 'Orientation', 'horizontal');
grid on;


%% Aufgabe 2

mynoise = @(data) data + 0.2*rand(size(data)) - 0.1;

% Überprüfen am Array y:
x = 0:pi/16:2*pi;
y = sin(x);

noisy_y = mynoise(y); % verrauschte Version von y

%% Aufgabe 3

% Funktion myBMI.m erstellt

% Funktion aufrufen
[BMI, Klassifikation] = myBMI;