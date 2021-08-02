function gradComputation()

       clc;
       close all;
       clear all;
       thresholdGrad = 20;
       
       load 'zoomedView.mat'; 
       xx=double(zoomedView);
       [px,py] = gradient(xx,1,1);

       figure, 
       imagesc(abs(px));
       
       figure, 
       imagesc(abs(py));
       
       res = max(abs(px), abs(py)); 
       
       [r,c] = find(res>=thresholdGrad);
       csvwrite('gradCoord.csv', [r c]); 
       figure, 
       imagesc(res); hold on;
       
       plot(c, r, 'ro', 'MarkerSize', 7, 'MarkerEdgeColor', 'r', 'LineWidth', 2 ); 
end