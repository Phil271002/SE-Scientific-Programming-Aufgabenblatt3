function [BMI,Klassifikation] = myBMI()

Groesse = input('Bitte geben Sie Ihre Groesse ein (in m):');
Gewicht = input('Bitte geben Sie Ihr Gewicht ein (in kg):');

BMI = Gewicht / (Groesse^2);

    if BMI < 18.5
        Klassifikation = 'untergewichtig';
    elseif BMI > 25
        Klassifikation = 'übergewichtig';
    else
        Klassifikation = 'normalgewichtig';
    end
    
    fprintf('Ihr BMI beträgt: %.2f (%s)\n', BMI, Klassifikation);
end
