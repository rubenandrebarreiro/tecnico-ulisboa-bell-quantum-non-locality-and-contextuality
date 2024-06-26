% Clear Command Window
clc;


% Create the Pauli I (sigma_i) Matrix
pauli_sigma_i = full(Pauli('I'));

% Create the Pauli X (sigma_x) Matrix
pauli_sigma_x = full(Pauli('X'));

% Create the Pauli Y (sigma_y) Matrix
pauli_sigma_y = full(Pauli('Y'));

% Create the Pauli Z (sigma_z) Matrix
pauli_sigma_z = full(Pauli('Z'));


% Compute the Eigenvectors' Matrix
% and the Eigenvalues' Diagonal Matrix
% for the Pauli I (sigma_i) Matrix
[pauli_sigma_i_eigenvectors_matrix,...
 pauli_sigma_i_eigenvalues_diagonal_matrix] = ...
    eig(pauli_sigma_i);

% Compute the Eigenvalues as
% the Diagonal Vector from
% the Eigenvalues' Diagonal Matrix
% for the Pauli I (sigma_i) Matrix
pauli_sigma_i_eigenvalues = ...
    diag(pauli_sigma_i_eigenvalues_diagonal_matrix);

% Compute the 1st Eigenvalue
% for the Pauli I (sigma_i) Matrix
pauli_sigma_i_eigenvalue_0 = ...
    pauli_sigma_i_eigenvalues(1);

% Compute the 2nd Eigenvalue
% for the Pauli I (sigma_i) Matrix
pauli_sigma_i_eigenvalue_1 = ...
    pauli_sigma_i_eigenvalues(2);

% Compute the 1st Eigenvector
% for the Pauli I (sigma_i) Matrix
pauli_sigma_i_eigenvector_0 = ...
    pauli_sigma_i_eigenvectors_matrix(:, 1);

% Compute the 2nd Eigenvector
% for the Pauli I (sigma_i) Matrix
pauli_sigma_i_eigenvector_1 = ...
    pauli_sigma_i_eigenvectors_matrix(:, 2);


% Compute the Eigenvectors' Matrix
% and the Eigenvalues' Diagonal Matrix
% for the Pauli X (sigma_x) Matrix
[pauli_sigma_x_eigenvectors_matrix,...
 pauli_sigma_x_eigenvalues_diagonal_matrix] = ...
    eig(pauli_sigma_x);

% Flip the Eigenvectors' Matrix
% for the Pauli X (sigma_x) Matrix 
pauli_sigma_x_eigenvectors_matrix = ...
    flip(pauli_sigma_x_eigenvectors_matrix);

% Compute the Eigenvalues as
% the Diagonal Vector from
% the Eigenvalues' Diagonal Matrix
% for the Pauli X (sigma_x) Matrix
pauli_sigma_x_eigenvalues = ...
    diag(pauli_sigma_x_eigenvalues_diagonal_matrix);

% Compute the 1st Eigenvalue
% for the Pauli X (sigma_x) Matrix
pauli_sigma_x_eigenvalue_0 = ...
    pauli_sigma_x_eigenvalues(1);

% Compute the 2nd Eigenvalue
% for the Pauli X (sigma_x) Matrix
pauli_sigma_x_eigenvalue_1 = ...
    pauli_sigma_x_eigenvalues(2);

% Compute and flip the 1st Eigenvector
% for the Pauli X (sigma_x) Matrix
pauli_sigma_x_eigenvector_0 = ...
    flip(pauli_sigma_x_eigenvectors_matrix(1, :));

% Compute and flip the 2nd Eigenvector
% for the Pauli X (sigma_x) Matrix
pauli_sigma_x_eigenvector_1 = ...
    flip(pauli_sigma_x_eigenvectors_matrix(2, :));


% Compute the Eigenvectors' Matrix
% and the Eigenvalues' Diagonal Matrix
% for the Pauli Y (sigma_y) Matrix
[pauli_sigma_y_eigenvectors_matrix,...
 pauli_sigma_y_eigenvalues_diagonal_matrix] = ...
    eig(pauli_sigma_y);

% Flip the Eigenvectors' Matrix
% for the Pauli Y (sigma_y) Matrix 
pauli_sigma_y_eigenvectors_matrix = ...
    flip(pauli_sigma_y_eigenvectors_matrix);

% Compute the Eigenvalues as
% the Diagonal Vector from
% the Eigenvalues' Diagonal Matrix
% for the Pauli Y (sigma_y) Matrix
pauli_sigma_y_eigenvalues = ...
    diag(pauli_sigma_y_eigenvalues_diagonal_matrix);

% Compute the 1st Eigenvalue
% for the Pauli Y (sigma_y) Matrix
pauli_sigma_y_eigenvalue_0 = ...
    pauli_sigma_y_eigenvalues(1);

% Compute the 2nd Eigenvalue
% for the Pauli Y (sigma_y) Matrix
pauli_sigma_y_eigenvalue_1 = ...
    pauli_sigma_y_eigenvalues(2);

% Compute and flip the 1st Eigenvector
% for the Pauli Y (sigma_y) Matrix
pauli_sigma_y_eigenvector_0 = ...
    flip(pauli_sigma_y_eigenvectors_matrix(:, 1));

% Compute and flip the 2nd Eigenvector
% for the Pauli Y (sigma_y) Matrix
pauli_sigma_y_eigenvector_1 = ...
    flip(pauli_sigma_y_eigenvectors_matrix(:, 2));


% Compute the Eigenvectors' Matrix
% and the Eigenvalues' Diagonal Matrix
% for the Pauli Z (sigma_z) Matrix
[pauli_sigma_z_eigenvectors_matrix,...
 pauli_sigma_z_eigenvalues_diagonal_matrix] = ...
    eig(pauli_sigma_z);

% Compute the Eigenvalues as
% the Diagonal Vector from
% the Eigenvalues' Diagonal Matrix
% for the Pauli Z (sigma_z) Matrix
pauli_sigma_z_eigenvalues = ...
    diag(pauli_sigma_z_eigenvalues_diagonal_matrix);

% Compute the 1st Eigenvalue
% for the Pauli Z (sigma_z) Matrix
pauli_sigma_z_eigenvalue_0 = ...
    pauli_sigma_z_eigenvalues(1);

% Compute the 2nd Eigenvalue
% for the Pauli Z (sigma_z) Matrix
pauli_sigma_z_eigenvalue_1 = ...
    pauli_sigma_z_eigenvalues(2);

% Compute the 1st Eigenvector
% for the Pauli Z (sigma_z) Matrix
pauli_sigma_z_eigenvector_0 = ...
    pauli_sigma_z_eigenvectors_matrix(:, 1);

% Compute the 2nd Eigenvalue
% for the Pauli Z (sigma_z) Matrix
pauli_sigma_z_eigenvector_1 = ...
    pauli_sigma_z_eigenvectors_matrix(:, 2);


% Print the content of
% the Pauli I (sigma_i) Matrix
fprintf('Pauli I Matrix (sigma_i) =\n');
disp(pauli_sigma_i);

% Print the content of
% the Pauli X (sigma_x) Matrix
fprintf('Pauli X Matrix (sigma_x) =\n');
disp(pauli_sigma_x);

% Print the content of
% the Pauli Y (sigma_y) Matrix
fprintf('Pauli Y Matrix (sigma_y) =\n');
disp(pauli_sigma_y);

% Print the content of
% the Pauli Z (sigma_z) Matrix
fprintf('Pauli Z Matrix (sigma_z) =\n');
disp(pauli_sigma_z);


% Print a blank line 
fprintf('\n');


% Print the content of the Eigenvalues of
% the Pauli I (sigma_i) Matrix
fprintf(['The Eigenvalues of ' ...
         'Pauli I (sigma_i) Matrix are:\n']);
disp([pauli_sigma_i_eigenvalue_0, ...
      pauli_sigma_i_eigenvalue_1]);

% Print the content of the Eigenvalues of
% the Pauli X (sigma_x) Matrix
fprintf(['The Eigenvalues of ' ...
         'Pauli X (sigma_x) Matrix are:\n']);
disp(flip([pauli_sigma_x_eigenvalue_0, ...
           pauli_sigma_x_eigenvalue_1]));

% Print the content of the Eigenvalues of
% the Pauli Y (sigma_y) Matrix
fprintf(['The Eigenvalues of ' ...
         'Pauli Y (sigma_y) Matrix are:\n']);
disp(flip([pauli_sigma_y_eigenvalue_0, ...
           pauli_sigma_y_eigenvalue_1]));

% Print the content of the Eigenvalues of
% the Pauli Z (sigma_z) Matrix
fprintf(['The Eigenvalues of ' ...
         'Pauli Z (sigma_z) Matrix are:\n']);
disp(flip([pauli_sigma_z_eigenvalue_0, ...
           pauli_sigma_z_eigenvalue_1]));


% Print a blank line 
fprintf('\n');

% Print the content of the Eigenvectors of
% the Pauli I (sigma_i) Matrix
fprintf(['The Eigenvectors of ' ...
         'Pauli I (sigma_i) Matrix are:\n']);
fprintf('   v_0 =');
disp(pauli_sigma_i_eigenvector_0.');
fprintf('   v_1 =');
disp(pauli_sigma_i_eigenvector_1.');

% Print a blank line
fprintf('\n');

% Print the content of the Eigenvectors of
% the Pauli X (sigma_x) Matrix
fprintf(['The Eigenvectors of ' ...
         'Pauli X (sigma_x) Matrix are:\n']);
fprintf('   v_0 = |+> =');
disp(pauli_sigma_x_eigenvector_0);
fprintf('   v_1 = |-> =');
disp(pauli_sigma_x_eigenvector_1);

% Print a blank line
fprintf('\n');

% Print the content of the Eigenvectors of
% the Pauli Y (sigma_y) Matrix
fprintf(['The Eigenvectors of ' ...
         'Pauli Y (sigma_y) Matrix are:\n']);
fprintf('   v_0 = |L> =');
disp(-flip(pauli_sigma_y_eigenvector_0).');
fprintf('   v_1 = |R> =');
disp(flip(pauli_sigma_y_eigenvector_1).');

% Print a blank line
fprintf('\n');

% Print the content of the Eigenvectors of
% the Pauli Z (sigma_z) Matrix
fprintf(['The Eigenvectors of ' ...
         'Pauli Z (sigma_z) Matrix are:\n']);
fprintf('   v_0 = |0> =');
disp(flip(pauli_sigma_z_eigenvector_0).');
fprintf('   v_1 = |1> =');
disp(flip(pauli_sigma_z_eigenvector_1).');
