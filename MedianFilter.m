clc;
close all;
clear all;
I = imread('eight.tif');
figure, imshow(I)
[x,y] = size(I);
A = imnoise(I,'salt & pepper',0.02);
figure, imshow(A)

Med = [];   
medianim=zeros(x,y);
medianim=uint8(medianim);
%Modified filter
for i=2:x-1
    for j=2:y-1
        Med(1) = A(i-1,j-1);
        Med(2) =A(i-1,j) ;
        Med(3) = A(i-1,j+1);
        Med(4) = A(i,j-1);
        Med(5) = A(i,j+1);
        Med(6) = A(i+1, j-1);
        Med(7) = A(i+1,j);
        Med(8) = A(i+1,j+1);
        Med(9) = A(i,j);
        
        medianim(i,j) = median(Med);
    end
end
figure, imshow(medianim)