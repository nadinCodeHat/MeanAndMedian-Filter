clc;
close all;
clear all;
I = imread('eight.tif');
figure, imshow(I)
[x,y] = size(I);
A = imnoise(I,'salt & pepper',0.02);
figure, imshow(A)
imnew=zeros(x,y);
imnew=uint8(imnew);
for i = 2:1:x-1
    for j = 2:y-1
        sum=0;
        sum = (A(i-1,j-1)/9 + A(i-1,j)/9 + A(i-1,j+1)/9 + A(i,j-1)/9 + A(i,j+1)/9 + A(i+1,j-1)/9 + A(i+1,j)/9 + A(i+1,j+1)/9);
        imnew(i,j) = sum ;
    end
end
figure, imshow(imnew)