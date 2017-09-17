function [R] = myHarrisCorner(Ix,Iy,threshold)

Ix2 = Ix.^2;
Iy2 = Iy.^2;
IxIy = Ix.*Iy;
Ix2 = myImageFilter(Ix2,fspecial('gaussian',3 * 3, 1));
Iy2 = myImageFilter(Iy2,fspecial('gaussian',3 * 3, 1));
IxIy = myImageFilter(IxIy,fspecial('gaussian',3 * 3,1));
R = zeros(1,2);
[r , c] = size(Ix);
for i = 1 : r
    for j = 1 : c       
            M = [Ix2(i,j), IxIy(i,j); IxIy(i,j),Iy2(i,j)];
            detM = ((Ix2(i,j).*Iy2(i,j)) - (IxIy(i,j).*IxIy(i,j)));
            u = detM - 0.04*(Ix(i,j) + Iy(i,j))^2;
            if (u > threshold)
            R = [R;[i j]];
            end
    end
end



