function [s] = sigmoid_deriv(x)
  for i=1:size(x,2)
    s(1,i)=exp(-x(1,i))/((1+exp(-x(1,i)))^2);
    end
  
 
endfunction
