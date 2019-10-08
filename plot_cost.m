
function [] = plot_cost(cost)
  figure
   subplot(1,7,1);
   plot(cost(:,1))
   subplot(1,7,2);
    plot(cost(:,2))    
   subplot(1,7,3);
   plot(cost(:,3))
   subplot(1,7,4);
   plot(cost(:,4))
   subplot(1,7,5);
   plot(cost(:,5))
   subplot(1,7,6);
    plot(cost(:,6))    
   subplot(1,7,7);
   plot(cost(:,7));
endfunction
