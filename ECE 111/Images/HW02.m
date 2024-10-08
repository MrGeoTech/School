% Question 1
T = [10,-10];
R = 2000 .* exp((4200 ./ (T + 273)) - (4200 ./ 298));
V = (R ./ (R + 4000)) .* 10;
disp("Resistance:");
disp(R);
disp("Voltage");
disp(V);

%{
Resistance:
   4.2214e+03   1.3050e+04
Voltage
   5.1347   7.6539
%}

% Question 2
T = [-30:0.01:30];
R = 2000 .* exp((4200 ./ (T + 273)) - (4200 ./ 298));
plot(T,R);
ylabel("Resistance");
xlabel("Temperature");
title("Temperature vs Resistance");

uiwait(gcf()); % Waits until you close the graph before continuing

% See graph

% Question 3
Y1 = [1, 4, -5];
Y2 = [1, 1, -2];
Y3 = [1, 15, 58, -60, -1184, -1920];
R1 = roots(Y1);
R2 = roots(Y2);
R3 = roots(Y3);

disp("Roots of y = x^2 + 4x - 5");
disp(R1);
disp("Roots of y = x^2 + x - 2");
disp(R2);
disp("Roots of y = x^5 + 15x^4 + 58x^3 - 60x^2 - 1184x - 1920");
disp(R3);

%{
Roots of y = x^2 + 4x - 5
  -5
   1
Roots of y = x^2 + x - 2
  -2
   1
Roots of y = x^5 + 15x^4 + 58x^3 - 60x^2 - 1184x - 1920
  -9.2725 +      0i
   3.8346 +      0i
  -3.7435 + 3.4653i
  -3.7435 - 3.4653i
  -2.0752 +      0i
%}

% Question 4
function [result] = phasor(complex)
  result = [
    sqrt(real(complex) .* real(complex) + imag(complex) .* imag(complex)),
    atan(imag(complex) ./ real(complex)) .* 180 ./ 3.14159
  ];
end

C1 = 2 + 5j;
C2 = -3 + 10j;
C3 = 18 - 3j;
P1 = phasor(C1);
P2 = phasor(C2);
P3 = phasor(C3);
disp("Phasor of the complex number x = 2 + j5:");
disp(P1);
disp("Phasor of the complex number x = -3 + j10:");
disp(P2);
disp("Phasor of the complex number x = 18 - j3:");
disp(P3);

%{
Phasor of the complex number x = 2 + j5:
    5.3852
   68.1986
Phasor of the complex number x = -3 + j10:
   10.440
  -73.301
Phasor of the complex number x = 18 - j3:
   18.2483
   -9.4623
%}

% Question 5
function [result] = complex(phasor)
  angle = phasor(2) .* 3.14159 ./ 180;
  result = phasor(1) .* cos(angle) + phasor(1) .* sin(angle) .* j;
end

P4 = [2, 40];
P5 = [-3, 25];
P6 = [-12, -110];
C4 = complex(P4);
C5 = complex(P5);
C6 = complex(P6);
disp("Complex of the phasor number x = 2<40:");
disp(C4);
disp("Complex of the phasor number x = -3<25:");
disp(C5);
disp("Complex of the phasor number x = -12<-110:");
disp(C6);

%{
Complex of the phasor number x = 2<40:
   1.5321 + 1.2856i
Complex of the phasor number x = -3<25:
   -2.7189 - 1.2679i
Complex of the phasor number x = -12<-110:
   4.1042 + 11.2763i
%}

% Question 6
grid on;
plot(real(C1), imag(C1), 'o');
hold on;
plot(real(C2), imag(C2), 'o');
hold on;
plot(real(C3), imag(C3), 'o');
hold on;
plot(real(C4), imag(C4), 'o');
hold on;
plot(real(C5), imag(C5), 'o');
hold on;
plot(real(C6), imag(C6), 'o');

xlabel("Real");
ylabel("Imaginary");
title("Complex Numbers");

% See graph
