var Y, Y_G, Y_NG, C, C_G, C_NG, a, a_G, a_NG, 
    K_G, K_NG, P, P_G, P_NG, r_D, pi_G, pi_NG
    I, I_G, I_NG, D,tau, z, A_G, r_f, r; %Endogenous variable

varexo EPS_G;       

parameters beta, psi, phi, alpha_G, alpha_NG %phi = Elasticity of Substitution, %share of parameter in CES
           Delta_agg, Delta_G, Delta_NG, gamma_G, gamma_NG, 
           theta, rho, T_v, T_c, A_NG; 
beta = 0.9;
psi = 0.5; %CES utility for aggregate C
phi = 0.4;
alpha_G = 0.3;
alpha_NG = 0.3;
Delta_agg = 0.7;
Delta_G = 0.4;
Delta_NG = 0.3;
gamma_G = 0.3; %elasticity of capital
gamma_NG = 0.3; %elasticity of capital
theta = 0.4;
rho = 0.3; 
T_v = 0.3; 
T_c = 0.4;
A_NG = 1;

model;

% Define UC, assuming the CES utility for aggregate consumption 
%UC = C^(-psi);

% Define UC(1) 
%UC(+1) = C(+1)^(-psi);

%% Euler Equation 
%UC = beta * exp(UC(+1) * (1 - Delta_agg + r_D(+1)));

%% Euler Equation 
C = (beta * exp(C(+1)^(-psi) * (1 - Delta_agg + r_D(+1))))^(1/(-psi));

%% Return on Portfolio
r_D = r_f(-1) + (a_G / a) * (r - r_f(-1));

%% Intratemporal Condition (share of green consumption)
C_G = ((((1 + T_v)*P_G)/P)^(-phi)) * (1 / alpha_G) * C; 

%% Intratemporal Condition (share of non-green consumption)
C_NG = ((((1 + T_v)*P_NG)/P)^(-phi)) * (1 / alpha_NG) * C;

% Pricing return of risky asset Check asset pricing chapter
exp(r(+1)) = (1/beta - 1 + z * exp((C(+1) - C)/C) + z * exp(((C(+1)-C)/C)*r(+1)) - exp((C(+1)-C)/C) * exp(r(+1))) / (1 - z * exp((C(+1) - C)/ C)); 

% Pricing return on risk-free asset
exp(r_f) = (1/beta - 1 + z * exp((C(+1) - C)/C)) / (1 - z * exp((C(+1) - C) / C));

%% Law of Motion for Aggregate Capital
a(+1) = I + (1-Delta_agg) * a;

%% Green Investment 
I_G = a_G(+1) - (1-Delta_G) * a_G;

% Non-green Investment
I_NG = a_NG(+1) - (1 - Delta_NG) * a_NG;

%% Green Capital Supply
a_G(+1) = a(+1) * (exp(C(+1)) / a(+1)) * (exp(r(+1)-r_f)) / (z * exp(r(+1)-r_f)^2);

% Non-green Capital Supply 
a_NG(+1) = a(+1) * (1 - (a_G(+1) / a(+1)));

%% CRRA
z = -(exp(C(+1)*(-psi*(C(+1)^-1))));

% Aggregate consumption
%C = C_G + C_NG;

% Aggregate output
Y = Y_G + Y_NG;

%% Green Production Function 
Y_G = A_G * K_G^alpha_G; 

%% Non-green Production Function
Y_NG = A_NG * K_NG^alpha_NG;

%% Capital Demand of green firm
K_G = (((1 - theta) * r * phi) / (P_G * gamma_G * a_G * (phi - 1)))^(1 / (gamma_G - 1));

% Capital Demand of non-green firm
K_NG = ((r_f(-1) * phi) / (P_NG * gamma_NG * a_NG * (phi - 1)))^(1 / (gamma_NG - 1));

%% Price Level of green firm
P_G = (((1 - theta) * r * phi) / (gamma_G * A_G * (phi - 1))) * ((exp(C(+1)) * exp(r(+1) - r_f)) / (z * exp(r(+1) - r_f)^2))^(1-gamma_G);

%% Price Level of non-green firm
P_NG = ((r_f(-1) * phi) / (gamma_G * A_NG * (phi - 1))) * ((exp(C(+1)) * exp(r(+1) - r_f)) / (z * exp(r(+1) - r_f)^2))^(1-gamma_NG);

% General Price index 
P = P_G * (C_G/C) + P_NG * (C_NG/C);

%% Market Clearing Condition
I = Y - C; 

%% Productivity of Green Firm
log(A_G) = rho * log(A_G(-1)) + EPS_G;

% Green's Firm Profit 
pi_G = P_G * Y_G - theta * r * K_G;

% Non-green's Firm Profit
pi_NG = P_NG * Y_NG - r_f * K_NG;

%% Government Tax revenue
tau = T_v * P * C + T_c * (pi_G + pi_NG);

%% Government Budget Constraint
D = tau - theta * r * K_G;

end;

initval;   %initial values of endogenous variables for non-linear solver, 
            % choose the steady-state value
A_G = 1; %Delete A_NG
r_f = 1/beta - 1 + Delta_NG;
r = 1/beta - 1 + Delta_G;
r_D = 1/beta + Delta_agg - 1;
P_G = (((1 - theta) * r * phi) / (gamma_G * A_G * (phi - 1))) * (((r - r_f)) / (psi * (r - r_f)^2))^(1-gamma_G);
P_NG =  ((r_f * phi) / (gamma_G * A_G * (phi - 1))) * (((r - r_f)) / (psi * (r - r_f)^2))^(1-gamma_G);
K_G = (((1-theta) * r * phi)/(P_G * gamma_G * (phi - 1)))^(1 / (gamma_G - 1));  
K_NG = ((r_f * phi)/(P_NG * gamma_NG * (phi - 1)))^(1 / (gamma_NG - 1));
Y_G = A_G * K_G;
Y_NG =  A_NG * K_NG;
Y = Y_G + Y_NG; 
z = psi;
I_G =  Delta_G * K_G;
I_NG = Delta_NG * K_NG;
I = I_G + I_NG;
C = Y - I; 
C_G = ((((1 + T_v)*P_G)/P)^(-phi)) * (1 / alpha_G) * C; 
C_NG = ((((1 + T_v)*P_NG)/P)^(-phi)) * (1 / alpha_NG) * C;
a = a_G + a_NG;
a_G  = ((r_D - r_f) / (r - r_f)) * a; 
a_NG = 1 - a_G;
P =  P_G * (C_G/C) + P_NG * (C_NG/C);
%P_G = (((1 - theta) * r * phi) / (gamma_G * A_G * (phi - 1))) * ((C * (r - r_f)) / (psi * (r - r_f)^2))^(1-gamma_G);
%P_NG =  ((r_f * phi) / (gamma_G * A_G * (phi - 1))) * ((C * (r - r_f)) / (psi * (r - r_f)^2))^(1-gamma_G);

end; 

steady;
check;

shocks;

var EPS_G;
stderr 0.01;

end;

stoch_simul(order=4, irf=20);
 
          