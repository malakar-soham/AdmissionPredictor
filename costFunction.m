function [J, grad] = costFunction(theta, X, y)
%COSTFUNCTION Computing cost and gradient for logistic regression
%   J = COSTFUNCTION(theta, X, y) computes the cost of using theta as the
%   parameter for logistic regression and the gradient of the cost
%   w.r.t. to the parameters.

% Initializing some useful values
m = length(y); % number of training examples
 
J = 0;
grad = zeros(size(theta));

h = sigmoid(X*theta);
y1 = -y.*log(h);
y0 = -(1-y).*log(1-h);

J = sum(y1+y0)/m;

grad = (X'*(h-y))/m;

end
