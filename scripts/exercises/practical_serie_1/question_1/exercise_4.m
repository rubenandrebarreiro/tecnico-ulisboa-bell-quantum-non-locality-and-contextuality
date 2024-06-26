% Clear Command Window
clc;


% Create the symbolic numbers
% for the three-dimensional
% unit vector vec(n)
syms n_x n_y n_z;


% Definition of values
% for the three-dimensional
% unit vector vec(n) 
vec_n = [n_x, n_y, n_z];

% Create the assumptions
% regarding the real values
% for the three-dimensional
% unit vector vec(n)
assume(n_x, 'real');
assume(n_y, 'real');
assume(n_z, 'real');

% Create the assumptions
% regarding the squared
% values of the three-dimensional
% unit vector vec(n) being equal
% to the squared values of
% their absolute values
assume(n_x^2 == abs(n_x)^2);
assume(n_y^2 == abs(n_y)^2);
assume(n_z^2 == abs(n_z)^2);

% Create the assumptions
% regarding the Euclidean Norm of
% the three-dimensional unit vector
% vec(n) being equal to 1
assume( norm(vec_n) == 1.0 );
assume( norm(vec_n) == norm(vec_n)^2 );
assume( ( abs(n_x)^2 + abs(n_y)^2 + abs(n_z)^2 )^( 1 / 2 ) == 1.0 );
assume( ( n_x^2 + n_y^2 + n_z^2 )^( 1 / 2 ) == 1.0 );


% Create the Pauli I (sigma_i) Matrix
pauli_sigma_i = full(Pauli('I'));

% Create the Pauli X (sigma_x) Matrix
pauli_sigma_x = full(Pauli('X'));

% Create the Pauli Y (sigma_y) Matrix
pauli_sigma_y = full(Pauli('Y'));

% Create the Pauli Z (sigma_z) Matrix
pauli_sigma_z = full(Pauli('Z'));


% Create the Identity 2x2 Matrix
identity_matrix = eye(2);


% Print a blank line 
fprintf('\n');

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


% Print the content of
% the Identity 2x2 Matrix
fprintf('Identity 2x2 Matrix =\n');
disp(identity_matrix);


% Print a blank line 
fprintf('\n');


% Create the vec(pauli_sigma) as
% an array of the Pauli (sigmas)
% X, Y, and Z Matrices
vec_pauli_sigma = { pauli_sigma_x,...
                    pauli_sigma_y,...
                    pauli_sigma_z };

% Compute the {Pauli (sigma)}_{vec(n)}
% Matrix as the element-wise dot product
% between the three-dimensional unit vector
% vec(n) and the array of the Pauli (sigmas)
% X, Y, and Z Matrices vec(pauli_sigma)
pauli_sigma_vec_n = ...
  ( vec_n(1) * vec_pauli_sigma{1} + ...
    vec_n(2) * vec_pauli_sigma{2} + ...
    vec_n(3) * vec_pauli_sigma{3} );

% Print the content of
% the {Pauli (sigma)}_{vec(n)} Matrix 
fprintf('{sigma}_{vec(n)} =\n')
fprintf('    %s    %s\n', ...
        pauli_sigma_vec_n(1), ...
        pauli_sigma_vec_n(2));
fprintf('    %s    %s\n', ...
        pauli_sigma_vec_n(3), ...
        pauli_sigma_vec_n(4));


% Print a blank line
fprintf('\n');

% Print a blank line
fprintf('\n');


% Compute the squared {Pauli (sigma)}_{vec(n)}
% Matrix, computed before as the element-wise
% dot product between the three-dimensional
% unit vector vec(n) and the array of
% the Pauli (sigmas) X, Y, and Z
% Matrices vec(pauli_sigma)
pauli_sigma_vec_n_squared = ...
    double(simplify(pauli_sigma_vec_n^2));

% If the {Pauli (sigma)}_{vec(n)} Squared Matrix 
% is equal to the Identity 2x2 Matrix
if isequal(pauli_sigma_vec_n_squared,...
           identity_matrix)
    
    % Print information about
    % the {Pauli (sigma)}_{vec(n)} Squared Matrix 
    % being equal to the Identity 2x2 Matrix
    fprintf('({sigma}_{vec(n)})^2 = I_(2x2)\n');

    % Print a blank line 
    fprintf('\n');

    % Print more information about
    % the {Pauli (sigma)}_{vec(n)} Squared Matrix 
    % being equal to the Identity 2x2 Matrix
    fprintf(['The {Pauli (sigma)}_{vec(n)} Squared Matrix ' ...
             'is equal to the Identity 2x2 Matrix\n'])
    
    % Print a blank line 
    fprintf('\n');

end


[pauli_sigma_vec_n_eigenvectors_matrix,...
 pauli_sigma_vec_n_eigenvalues_diagonal_matrix] = ...
    eig(pauli_sigma_vec_n);


pauli_sigma_vec_n_eigenvalues = ...
    diag(pauli_sigma_vec_n_eigenvalues_diagonal_matrix);

pauli_sigma_vec_n_eigenvalue_0 = ...
    pauli_sigma_vec_n_eigenvalues(1);

pauli_sigma_vec_n_eigenvalue_1 = ...
    pauli_sigma_vec_n_eigenvalues(2);

pauli_sigma_vec_n_eigenvector_0 = ...
    pauli_sigma_vec_n_eigenvectors_matrix(:, 1);

pauli_sigma_vec_n_eigenvector_1 = ...
    pauli_sigma_vec_n_eigenvectors_matrix(:, 2);


disp(pauli_sigma_vec_n_eigenvalue_0);
disp(pauli_sigma_vec_n_eigenvalue_1);

disp(pauli_sigma_vec_n_eigenvector_0.');
disp(pauli_sigma_vec_n_eigenvector_1.');

ket_plus_vec_n = pauli_sigma_vec_n_eigenvector_0;
bra_plus_vec_n = conj(transpose(pauli_sigma_vec_n_eigenvector_0));

ket_minus_vec_n = pauli_sigma_vec_n_eigenvector_1;
bra_minus_vec_n = conj(transpose(pauli_sigma_vec_n_eigenvector_1));

outer_prod_plus_vec_n = ket_plus_vec_n * bra_plus_vec_n;
outer_prod_minus_vec_n = ket_minus_vec_n * bra_minus_vec_n;

disp(simplify(outer_prod_plus_vec_n - outer_prod_minus_vec_n));

