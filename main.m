clear ; close all; clc

# initialise data
count_test_data = 15
fprintf('Loading data ...\n');
data = csvread('./data/Breast_cancer_data.csv');
X = data(2 :end - count_test_data, 1:5);
y = data(2 :end - count_test_data, 6);

# plot the data in different graphs
# we do this so we can see with what data we are working with
fprintf('Showing 5 graphs for data visualisation ...\n');
#plotData(X,y)

[m, n] = size(X);

# feature scaling
fprintf('Scaling features ...\n');
[X_norm mu sigma] = featureNormalize(X);

# add intercept term to X
X = [ones(m,1) X];
theta = zeros(columns(X), 1);

# find the initial cost and the gradient
fprintf('Finding the cost and the gradient ...\n');
[cost, grad] = costFunction(theta, X, y);

# using the gradient descent algorithm from matlab/octave fmiunc
fprintf('Running gradient descent algorithm to optimize theta ...\n');
options = optimset('GradObj', 'on', 'MaxIter', 500);
[theta, cost] = fminunc(@(t)(costFunction(t, X, y)), theta, options);

fprintf('Found theta: \n');
theta
fprintf('\n');

# test the data
fprintf('Computing the accuracy for the last %d data entries ...\n', count_test_data);
X_test = data(end - count_test_data + 1 :end, 1:5);
y_test = data(end - count_test_data + 1 :end, 6);

[accuracy correct_guesses] = computeAccuracy(X_test, y_test, theta, mu, sigma)

fprintf('Out of %d test entries, %d were correct with an accuracy of %d%%\n', count_test_data, correct_guesses, accuracy);