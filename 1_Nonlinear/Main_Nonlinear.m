%% Main
% Plant dynamics
ap = 1;
kp = 3;
signkp = sign(kp);
G = ss(ap,kp,1,0);
% Reference Dynamics
am = -4;
km = 4;
M = ss(am,km,1,0);
% Adaptive Gains
% First case
Gam = 2*diag([1 1 1 1 1 1]);
%Second case
% Gam = 2*diag([1 1 1 1]);
%Init theta
% Fist case
theta = [0;0;0;0;0;0];
%Second case
% theta = [0;0;0;0];
% vector of unknwon gains for nonlinear function
% First case
theta_f = [0.01;-1;1;0.5];
% second case
% theta_f = [-1;1];