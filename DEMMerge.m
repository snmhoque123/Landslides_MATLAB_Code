function DEMMerge()

       clc;
       clear all;
       
       filename1 = 'n22_e091_1arc_v3.tif';
       
       [X1, R1] = geotiffread(filename1); % Bottom-left
       
 %      [X1,~,~,bbox1] = geotiffread(filename1); % Bottom-left
       figure, imagesc(X1);
%       zoomedView = X1(879:1526, 2314:3195); %(Y1:Y2, X1:X2) 
       zoomedView = X1(879:2526, 2314:3595); %(Y1:Y2, X1:X2) 
%       zoomedView = X1(425:682, 2785:3130); %(Y1:Y2, X1:X2) 
       figure, 
       imagesc(zoomedView);
       save('zoomedView.mat','zoomedView');
       
%        [minLonLat] = min(bbox1);
%        [maxLonLat] = max(bbox1);
%        
%        R1.RasterSize = size(mergedDEM);
%        R1.LatitudeLimits = [minLonLat(2) maxLonLat(2)];
%        R1.LongitudeLimits = [minLonLat(1) maxLonLat(1)];
%        
%        geotiffwrite('mergedDEM.tif',mergedDEM, R1);
end