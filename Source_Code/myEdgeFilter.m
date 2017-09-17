%Code referred from the following link:https://www.mathworks.com/help/coder/examples/edge-detection-on-images.html?prodcode=ML 

function [Im,Io,Ix,Iy] = myEdgeFilter(img, sigma)

img = myImageFilter(img,fspecial('gaussian',3 * 3, sigma));

j = [-1 0 +1 ; -2 0 +2 ; -1 0 +1];
k = [1 2 1 ; 0 0 0 ; -1 -2 -1];

Ix = myImageFilter(double(img),j);
Iy = myImageFilter(double(img),k);
Im = sqrt(Ix.*Ix + Iy.*Iy);
Io = atan(Iy./Ix);               

edgeImage = uint8((Im > 50) * 255); %(Here consider threshold = 50)

subplot(3,1,2);imshow(edgeImage);

end