%%%%%%%%%%%%%%%%%%%%%%
% Dhruv Singh Rawat(15UEC022)
% Yash Sharma(15UEC076)

clc; 
clear all; 
close all;

img = imread('input1.PNG'); 
img2 = rgb2gray(img);
imshow(img); 
title('INPUT IMAGE'); 
figure; 
imshow(img2); 
title('INPUT IMAGE CNVT TO GRAYSCALE'); 
figure; 
imhist(img2); 
title('INPUT IMAGE HISTOGRAM'); 
figure;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Adding Noise 
j = imnoise(img2,'gaussian',0,0.01); 
imshow(j); 
title('ADDING GAUSSIAN NOISE TO INPUT IMAGE'); 
figure;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Plotting Full Image Histogram 
imhist(j); 
title('INPUT IMAGE NOISE HISTOGRAM'); 
figure;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Cropping a patch 
crop = imcrop(j); 
figure; imhist(crop); 
title('CROPPING A PATCH TO DETECT NOISE TYPE'); 
figure;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Now applying the Arthematic Mean filters 
h1 = fspecial('average',3); 
F_image1 = imfilter(j,h1); 
imshow(F_image1); 
title('OUTPUT IMAGE AFTER ARTHEMATIC MEAN FILTER 3x3'); 
figure;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Now applying the MidPoint Filter 
f1 = ordfilt2(j, 1, ones(3, 3), 'symmetric'); 
f2 = ordfilt2(j, 9, ones(3, 3), 'symmetric'); 
F_image2 = imlincomb(0.5, f1, 0.5, f2); 
imshow(F_image2); 
title('OUTPUT IMAGE AFTER MIDPOINT FILTER 3x3'); 
figure;
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Now applying the Harmonic Mean Filter 
F_image3 = medfilt2(j, [3 3], 'symmetric'); 
imshow(F_image3); 
title('OUTPUT IMAGE AFTER HARMONIC MEAN FILTER 3x3');