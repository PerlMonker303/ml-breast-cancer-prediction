function [J, grad] = costFunction(theta, X, y)
  # nr of training examples
  m = length(y);

  J = 0;
  grad = zeros(size(theta));
  
  sum_cost = 0;
  for i = 1:m
    prod = X(i,:) * theta;
    hyp = sigmoid(prod);
    p1 = y(i, 1) * log(hyp);
    p2 = (1-y(i, 1))*log(1 - hyp);
    sum_cost = sum_cost + (p1 + p2);
  endfor

  J = sum_cost / m;
  J *= -1;

  # gradient
  for j = 1:rows(theta)
    sum_grad = 0;
    for i = 1:m
      prod = X(i,:) * theta;
      hyp = sigmoid(prod);
      sum_grad += (hyp - y(i,1)) * X(i, j);
    endfor
    grad(j, 1) = sum_grad / m;
  endfor
endfunction
