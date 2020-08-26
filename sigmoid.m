function g = sigmoid(z)
  #works with both simple values and vectors/matrices
  
  g = zeros(size(z));

  if (rows(z) > 1 || columns(z) > 1)
    # matrix/vector
    g = (-1) * z;
    g = exp(g);
    g = 1 + g;
    g = 1 ./ g;
  elseif (rows(z) == 1 && columns(z) == 1)
    # simple value
    g = 1 / (1 + exp(-1 * z));  
  endif
end
