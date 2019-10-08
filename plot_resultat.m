
function [retval] = plot_resultat (input,w1,w2,y)
  in = importdata('zoo.txt',',');
  resultat_validation=[];
  resultat_test=[];
  for i=44:48
    [xx,output]= feedforward(input(i,:),w1,w2);
    [M1,I1] = max(output(1,:));
    resultat_validation=[resultat_validation;in(i,18),I1];
   end 
   for i=49:58
    [xx,output]= feedforward(input(i,:),w1,w2);
    [M2,I2] = max(output(1,:));
    resultat_test=[resultat_test;in(i,18),I2];
   end 
   figure
   subplot(2,2,1);
   plot(resultat_validation(:,1),'r');
   title("y validation");
   subplot(2,2,2);
   plot(resultat_validation(:,2),'b');
   title("y' validation");
   subplot(2,2,3);
   plot(resultat_test(:,1),'r');
   title("y test");
   subplot(2,2,4);
   plot(resultat_test(:,2),'b');
   title("y' test");
  
endfunction
