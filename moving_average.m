function [result] = moving_average(data) % Methode 2: nur vorhandene Nachbarn => /2
    n = length(data);
    result = zeros(size(data));  % Ergebnis-Array vorbereiten

    for i = 1:n
        if i == 1
            % erstes Element: nur sich selbst + nächsten Wert
            result(i) = (data(i) + data(i+1)) / 2;
        elseif i == n
            % letztes Element: nur sich selbst + vorherigen Wert
            result(i) = (data(i-1) + data(i)) / 2;
        else
            % mittlere Elemente: Mittelwert aus vorher, aktuell, nächstem
            result(i) = (data(i-1) + data(i) + data(i+1)) / 3;
        end
    end
end
