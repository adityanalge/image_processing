%Script is divided into 5 parts. Each part represents modification of 1 image
%Close and reopen a new output window for every new image

img = imread('img01.jpg');
h = [0 -1 0; -1 4 -1; 0 -1 0];
img1 = myImageFilter(img,h);
[Ix,Iy,Im,Io] = myEdgeFilter(img,1);
R = myHarrisCorner(Ix,Iy,35000);
subplot(3,1,3);imshow(img);
hold on
plot(R(:,2),R(:,1),'r*');

%img = imread('img02.jpg');
%h = [0 -1 0; -1 4 -1; 0 -1 0];
%img1 = myImageFilter(img,h);
%[Ix,Iy,Im,Io] = myEdgeFilter(img,1);
%R = myHarrisCorner(Ix,Iy,35000);
%subplot(3,1,3);imshow(img);
%hold on
%plot(R(:,2),R(:,1),'r*');

%img = imread('img03.jpg');
%h = [0 -1 0; -1 4 -1; 0 -1 0];
%img1 = myImageFilter(img,h);
%[Ix,Iy,Im,Io] = myEdgeFilter(img,1);
%R = myHarrisCorner(Ix,Iy,115000);
%subplot(3,1,3);imshow(img);
%hold on
%plot(R(:,2),R(:,1),'r*');

%img = imread('img04.jpg');
%h = [0 -1 0; -1 4 -1; 0 -1 0];
%img1 = myImageFilter(img,h);
%[Ix,Iy,Im,Io] = myEdgeFilter(img,1);
%R = myHarrisCorner(Ix,Iy,75000);
%subplot(3,1,3);imshow(img);
%hold on
%plot(R(:,2),R(:,1),'r*');

%img = imread('img05.jpg');
%h = [0 -1 0; -1 4 -1; 0 -1 0];
%img1 = myImageFilter(img,h);
%[Ix,Iy,Im,Io] = myEdgeFilter(img,1);
%R = myHarrisCorner(Ix,Iy,50000);
%subplot(3,1,3);imshow(img);
%hold on
%plot(R(:,2),R(:,1),'r*');
