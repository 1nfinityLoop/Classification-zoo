function [layer1,output] = feedforward (input , weight1,weight2)
    layer1 = sigmoid(input*weight1);
    output= sigmoid(layer1*weight2);
    
endfunction
