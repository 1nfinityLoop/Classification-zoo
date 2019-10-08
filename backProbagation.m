function [weight21,weight22] = backProbagation(input, layer1,weight1,weight2,y,output)
    d_weight2=layer1'*(2*(y(1,:)-output).*sigmoid_deriv(output))  ;#derivé d1
    d_weight1=input'*(((2*(y(1,:)-output).*sigmoid_deriv(output))*weight2').*sigmoid_deriv(layer1)); #dérivé d2


    weight22=weight2+d_weight2;#gradient theta2
    weight21=weight1+d_weight1;#gradient theta1
endfunction
