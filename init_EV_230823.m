clear;clc;
%% 
P_nom      =8800;     %[W] Nominal power 
U_nom      =300;      %[V] DC-link voltage
N_nom      = 2600 ;   %[rpm] Nominal speed
Omega_nom  = 273.3;   %[rad/s] Nominal speed 
I_s_nom    = 40;      %[A] Nominal current
R_s        = 6.5e-3;  %[Ohm] Stator winding resistance =
L_d        = 3.05e-3; %[H] d-axis inductancce
L_q        = 6.2e-3;  %[H] q-axis inductance
Phi_PM     = 0.0948;  %[wb] Pm flux
j          = 0.01;    %[kgm^2] Moment of inertia 
p          = 3 ;      % Number of pole pairs 
U_m_lim    = 1/2*sqrt(2)*U_nom;   %[V] limit voltage applied to the motor
I_q_nom    = sqrt(2)*I_s_nom;     %[A] obtained by letting Id=0
Omega_base = U_m_lim/sqrt((L_q*I_q_nom)^2+Phi_PM^2);

%% Load
T_set=24; %  [Nm]
t_a=1.2; % [sec] step time