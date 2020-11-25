%% Main
% Plant dynamics
ap = 1;
kp = 3;
signkp =  sign(kp);
G = ss(ap,kp,1,0);
% Reference Dynamics
am = -4;
km = 4;
M = ss(am,km,1,0);
% Adaptive Gains
Gam = 2*diag([1 1 1 1 1 1]);
%Init params
theta = [0;0;0;0;0;0];
theta_f = [0.01;-1;1;0.5];