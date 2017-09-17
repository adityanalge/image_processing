% Code referred from the following link:https://www.mathworks.com/matlabcentral/answers/22358-how-to-do-convolution-without-commands

function [img1] = myImageFilter(img0,h)
N=ndims(img0);
if N == 3
    img0=rgb2gray(img0);
end
img0 = padarray(img0,10);
[r c] = size(img0);
[m n] = size(h);
k = rot90(h, 2);
center = floor((size(k)+1)/2);
left = center(2) - 1;
right = n - center(2);
top = center(1) - 1;
bottom = m - center(1);
Rep = zeros(r + top + bottom, c + left + right);
for x = 1 + top : r + top
    for y = 1 + left : c + left
        Rep(x,y) = img0(x - top, y - left);
    end
end
img1 = zeros(r , c);
for x = 1 : r
    for y = 1 : c
        for i = 1 : m
            for h = 1 : n
                q = x - 1;
                w = y -1;
                img1(x, y) = img1(x, y) + (Rep(i + q, h + w) * k(i, h));
            end
        end
    end
end

%for checking the obtained output we find the expected output and compare
%img2 = conv2(double(img0),double(k)); 
%subplot(3,1,1);imshow(img0);

subplot(3,1,1);imshow(img1);

%subplot(3,1,3);imshow(img2);

end