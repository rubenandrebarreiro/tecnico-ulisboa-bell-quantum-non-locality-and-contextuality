% Clear Command Window
clc;


% Definition of the maximization optimization
% problem for the estimation of the upper bound
% for the CHSH Inequality
chsh_inequality_algebraic_max_optimization_prob = ...
    optimproblem('ObjectiveSense', 'max');

% Definition of the optimization variables/unknowns
% to be optimized in the maximization optimization
% problem for the estimation of the upper bound
% for the CHSH Inequality
e_xy = optimvar('e_xy', 4, 1, 'Type', 'integer');

% Definition of the objective function of
% the maximization optimization problem
% for the estimation of the upper bound
% for the CHSH Inequality
chsh_inequality_algebraic_max_optimization_prob...
    .Objective = e_xy(1) + e_xy(2) + e_xy(3) - e_xy(4);


% Definition of the constraints
% for the estimation value e_{00} E {-1,+1}
constraint_1 = e_xy(1) >= -1;
constraint_2 = e_xy(1) <= 1;
constraint_3 = e_xy(1)^2 <= 1;
constraint_4 = e_xy(1)^2 >= 1;

% Definition of the constraints
% for the estimation value e_{01} E {-1,+1}
constraint_5 = e_xy(2) >= -1;
constraint_6 = e_xy(2) <= 1;
constraint_7 = e_xy(2)^2 <= 1;
constraint_8 = e_xy(2)^2 >= 1;

% Definition of the constraints
% for the estimation value e_{10} E {-1,+1}
constraint_9 = e_xy(3) >= -1;
constraint_10 = e_xy(3) <= 1;
constraint_11 = e_xy(3)^2 <= 1;
constraint_12 = e_xy(3)^2 >= 1;

% Definition of the constraints
% for the estimation value e_{11} E {-1,+1}
constraint_13 = e_xy(4) >= -1;
constraint_14 = e_xy(4) <= 1;
constraint_15 = e_xy(4)^2 <= 1;
constraint_16 = e_xy(4)^2 >= 1;


% Setup of all the constraints
% for the estimation values
% e_{00}, e_{01}, e_{10}, and e_{11}
% for the maximization optimization
% problem for the estimation of
% the upper bound for the CHSH Inequality
chsh_inequality_algebraic_max_optimization_prob...
    .Constraints.cons1 = constraint_1;
chsh_inequality_algebraic_max_optimization_prob...
    .Constraints.cons2 = constraint_2;
chsh_inequality_algebraic_max_optimization_prob...
    .Constraints.cons3 = constraint_3;
chsh_inequality_algebraic_max_optimization_prob...
    .Constraints.cons4 = constraint_4;
chsh_inequality_algebraic_max_optimization_prob...
    .Constraints.cons5 = constraint_5;
chsh_inequality_algebraic_max_optimization_prob...
    .Constraints.cons6 = constraint_6;
chsh_inequality_algebraic_max_optimization_prob...
    .Constraints.cons7 = constraint_7;
chsh_inequality_algebraic_max_optimization_prob...
    .Constraints.cons8 = constraint_8;
chsh_inequality_algebraic_max_optimization_prob...
    .Constraints.cons9 = constraint_9;
chsh_inequality_algebraic_max_optimization_prob...
    .Constraints.cons10 = constraint_10;
chsh_inequality_algebraic_max_optimization_prob...
    .Constraints.cons11 = constraint_11;
chsh_inequality_algebraic_max_optimization_prob...
    .Constraints.cons12 = constraint_12;
chsh_inequality_algebraic_max_optimization_prob...
    .Constraints.cons13 = constraint_13;
chsh_inequality_algebraic_max_optimization_prob...
    .Constraints.cons14 = constraint_14;
chsh_inequality_algebraic_max_optimization_prob...
    .Constraints.cons15 = constraint_15;
chsh_inequality_algebraic_max_optimization_prob...
    .Constraints.cons16 = constraint_16;

% Show the mathematical formulation of
% the maximization optimization problem
% for the estimation of the upper bound
% for the CHSH Inequality
show(chsh_inequality_algebraic_max_optimization_prob);

% Solve the maximization optimization problem
% for the estimation of the upper bound
% for the CHSH Inequality 
chsh_inequality_algebraic_max_optimization_prob_sol = ...
    solve(chsh_inequality_algebraic_max_optimization_prob);

% Compute all the expectation values
% for the CHSH Inequality that allow to
% estimate the maximum algebraic upper bound L
chsh_inequality_algebraic_max_exp_values = ...
    chsh_inequality_algebraic_max_optimization_prob_sol.e_xy;

% Compute the individual expectation values
% for the CHSH Inequality that allow to estimate
% the maximum algebraic upper bound L
e_00 = chsh_inequality_algebraic_max_exp_values(1);
e_01 = chsh_inequality_algebraic_max_exp_values(2);
e_10 = chsh_inequality_algebraic_max_exp_values(3);
e_11 = chsh_inequality_algebraic_max_exp_values(4);

% Compute the maximum algebraic
% upper bound L for the CHSH Inequality
chsh_inequality_algebraic_max_upper_bound_L = ...
    e_00 + e_01 + e_10 - e_11;

% Print a blank line
fprintf('\n');

% Print of the mathematical form
% for the CHSH Inequality,
% in the correlation form
fprintf('CHSH Inequality:\n');
fprintf('  e_{00} + e_{01} + e_{10} - e_{11} <= L\n');

% Print a blank line
fprintf('\n');

% Print of the constraints of
% the maximization optimization problem
% for the estimation of the upper bound
% for the CHSH Inequality
fprintf('Such that:\n');
fprintf('  e_{00} E {-1, +1}\n');
fprintf('  e_{01} E {-1, +1}\n');
fprintf('  e_{10} E {-1, +1}\n');
fprintf('  e_{11} E {-1, +1}\n');


% Print a blank line
fprintf('\n');

% Print a blank line
fprintf('\n');

% Print of the complete solution of
% the maximization optimization problem
% for the estimation of the upper bound
% for the CHSH Inequality
fprintf(['Maximum Algebraic Upper Bound L ' ...
         'for CHSH Inequality:\n'])
fprintf('  e_{00} + e_{01} + e_{10} - e_{11} =\n');
fprintf('         = %d + %d + %d - (%d) <= L^(A) = %d\n', ...
         e_00, e_01, e_10, e_11, ...
         chsh_inequality_algebraic_max_upper_bound_L);

% Print a blank line
fprintf('\n');

% Print of the variables/unknowns' solution
% of the maximization optimization problem
% for the estimation of the upper bound
% for the CHSH Inequality
fprintf('Such that:\n');
fprintf('  e_{00} = %d\n', e_00);
fprintf('  e_{01} = %d\n', e_01);
fprintf('  e_{10} = %d\n', e_10);
fprintf('  e_{11} = %d\n', e_11);


% Print a blank line
fprintf('\n')