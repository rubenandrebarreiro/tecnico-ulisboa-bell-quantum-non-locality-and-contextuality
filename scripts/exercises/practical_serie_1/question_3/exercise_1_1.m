% Clear Command Window
clc;


% Compute the CHSH Coefficients Matrix
% for the CHSH Inequality with
% the notation a_0 x b_0 + a_0 x b_0 + 
%              a_1 x b_0 - a_1 x b_1 <= L,
% which results on the following matrix:
%      b_0  b_1  b_2
% a_0   1    1    0
% a_1   1   -1    0
% a_2   0    0    0
chsh_coefficients_matrix = ...
    [1  1  0; ...
     1 -1  0; ...
     0  0  0];

% Create the number of inputs and outputs
% for Alice and Bob, regarding the setup of
% the CHSH Inequality
chsh_num_inputs_alice = 2;
chsh_num_inputs_bob = 2;
chsh_num_outputs_alice = 2;
chsh_num_outputs_bob = 2;

% Compute the vector of 4 elements
% with the number of outputs of Alice,
% number of outputs of Bob, number of inputs of Alice,
% and number of inputs of Bob, in this order
chsh_description = [ chsh_num_outputs_alice chsh_num_outputs_bob ...
                     chsh_num_inputs_alice chsh_num_inputs_bob ];

% Compute the (classical) local
% upper bound L for the CHSH Inequality
chsh_inequality_local_upper_bound_L = ...
    BellInequalityMax( chsh_coefficients_matrix, ...
                       chsh_description, ...
                       'fc', 'classical');

% Print of the complete solution of
% the maximization optimization problem
% for the estimation of the upper bound
% for the CHSH Inequality
fprintf(['(Classical) Local Upper Bound L ' ...
         'for CHSH Inequality:\n'])
fprintf(['  a_0 x b_0 + a_0 x b_0 + a_1 x b_0 - a_1 x b_1 ' ...
         '<= L^(C) = %d\n'], ...
         chsh_inequality_local_upper_bound_L);

% Print a blank line
fprintf('\n');

% Print of the constraints of
% the maximization optimization problem
% for the estimation of the upper bound
% for the CHSH Inequality
fprintf('Such that:\n');
fprintf('  a_0 E {-1, +1}\n');
fprintf('  a_1 E {-1, +1}\n');
fprintf('  b_0 E {-1, +1}\n');
fprintf('  b_1 E {-1, +1}\n');


% Print a blank line
fprintf('\n');
