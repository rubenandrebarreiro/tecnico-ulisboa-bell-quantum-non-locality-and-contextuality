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


% Create the Pauli I (sigma_i) Squared Matrix
pauli_sigma_i_squared = pauli_sigma_i^2;

% Create the Pauli X (sigma_x) Squared Matrix
pauli_sigma_x_squared = pauli_sigma_x^2;

% Create the Pauli Y (sigma_y) Squared Matrix
pauli_sigma_y_squared = pauli_sigma_y^2;

% Create the Pauli Z (sigma_z) Squared Matrix
pauli_sigma_z_squared = pauli_sigma_z^2;


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
% the Pauli I (sigma_i) Squared Matrix
fprintf('Pauli I^2 Matrix [(sigma_i)^2] =\n');
disp(pauli_sigma_i_squared);

% Print the content of
% the Pauli X (sigma_x) Squared Matrix
fprintf('Pauli X^2 Matrix [(sigma_x)^2] =\n');
disp(pauli_sigma_x_squared);

% Print the content of
% the Pauli Y (sigma_y) Squared Matrix
fprintf('Pauli Y^2 Matrix [(sigma_y)^2] =\n');
disp(pauli_sigma_y_squared);

% Print the content of
% the Pauli Z (sigma_z) Squared Matrix
fprintf('Pauli Z^2 Matrix [(sigma_z)^2] =\n');
disp(pauli_sigma_z_squared);


% Print a blank line 
fprintf('\n');


% Print the content of
% the Identity 2x2 Matrix
fprintf('Identity 2x2 Matrix =\n');
disp(identity_matrix);


% Print a blank line 
fprintf('\n');


% If all the Pauli Matrices Squared
% are equal to the Identity 2x2 Matrix
if isequal(pauli_sigma_i_squared, ...
           pauli_sigma_x_squared, ...
           pauli_sigma_y_squared, ...
           pauli_sigma_z_squared)
    
    % Print the information about
    % the Pauli Matrices Squared
    % being equal to the Identity 2x2 Matrix
    fprintf(['(sigma_i)^2 = ' ...
             '(sigma_x)^2 = \n' ...
             '(sigma_y)^2 = ' ...
             '(sigma_z)^2 = ' ...
             'I_(2x2)\n']);

    % Print a blank line 
    fprintf('\n');

    % Print more information about
    % the Pauli Matrices Squared
    % being equal to the Identity 2x2 Matrix
    fprintf(['All the Pauli Matrices Squared ' ...
             'are equal to the Identity 2x2 Matrix'])
    
    % Print a blank line 
    fprintf('\n');

end


% Print a blank line 
fprintf('\n');
