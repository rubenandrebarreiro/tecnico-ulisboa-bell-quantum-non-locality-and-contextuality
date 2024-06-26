% Clear Command Window
clc;


% Create the symbolic numbers
% for the complex coefficients of
% a two-dimensional quantum state
% (i.e., alpha and beta)
syms alpha_0 alpha_1 beta_0 beta_1;


% Create the assumptions regarding
% the real and imaginary parts of
% the complex coefficient alpha
% being real numbers
assume(alpha_0, 'real');
assume(alpha_1, 'real');

% Create the assumptions regarding
% the real and imaginary parts of
% the complex coefficient beta
% being real numbers
assume(beta_0, 'real');
assume(beta_1, 'real');


% Create the complex number alpha
% as the 1st complex coefficient
% for the two-dimensional quantum state
alpha = alpha_0 * 1 + alpha_1 * 1j;

% Create the complex number beta
% as the 2nd complex coefficient for
% the two-dimensional quantum state
beta = beta_0 * 1 + beta_1 * 1j;


% Create the ket vector for
% the two-dimensional quantum state
% denoted as |psi> = ([alpha, beta])^T
ket_psi = [alpha beta].';

% Create the ket vector for
% the two-dimensional quantum state
% denoted as <psi| = (|psi>)^(dagger) = 
% = ([alpha*, beta*])
bra_psi = conj(transpose(ket_psi));

% Compute the density
% matrix rho = |psi><psi| for
% the two-dimensional quantum state psi
rho_density_matrix = ket_psi * bra_psi;


% Print a blank line 
fprintf('\n');

% Print the content of the ket vector
% for the two-dimensional quantum state
% denoted as |psi> = ([alpha, beta])^T
fprintf('|psi> =\n  ');
disp(ket_psi);


% Print the content of the ket vector
% for the two-dimensional quantum state
% denoted as <psi| = (|psi>)^(dagger) = 
% = ([alpha*, beta*])
fprintf('<psi| = (|psi>)^(dagger) =\n  ');
disp(bra_psi);


% Print the content of the density matrix
% rho = |psi><psi| for the two-dimensional
% quantum state psi
fprintf('rho = |psi><psi| =\n');
fprintf('  [%s   %s]\n', ...
        rho_density_matrix(1), ...
        rho_density_matrix(2));
fprintf('  [ %s     %s ]\n', ...
        rho_density_matrix(3), ...
        rho_density_matrix(4));

% Print a blank line 
fprintf('\n');
