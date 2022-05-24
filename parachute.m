clc;
clear;
%variables
d = 1:0.1:10; %diameter range (m)
m = 3.5; %mass of the payload (kg)
g = 9.807; %gravitational acceleration (m/s^2)
Cd = 1.75; %typical value of the drag coefficient of a parachute
rho = 1.225; %air density (kg/m^3) taken as the sea level here, can be changed
%formula obtained from https://www.grc.nasa.gov/www/k-12/VirtualAero/BottleRocket/airplane/rktvrecv.html
V = sqrt((8*m*g)./(Cd*rho*pi*d.^2)); %limit velocity formula for a simple parachute (m/s)
%plot
plot(d,V)
xlabel("diameter of the parachute effective area (m)")
ylabel("limit velocity (m/s)")
title("parachute calculation")
