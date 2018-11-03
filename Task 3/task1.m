%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%     Dhruvraj Singh Rawat      15UEC022
%     Yash Sharma               15UEC076

clc;
close all;
clear all;

img = imread('input1.PNG'); % Input image
ref = imread('ref1.PNG');   % The refrence Image

imgR = img(:,:,1);
imgG = img(:,:,2);
imgB = img(:,:,3);

refR = ref(:,:,1);
refG = ref(:,:,2);
refB = ref(:,:,3);

htrefR = imhist(refR);
htrefG = imhist(refG);
htrefB = imhist(refB);

outR = histeq(imgR, htrefR);
outG = histeq(imgG, htrefG);
outB = histeq(imgB, htrefB);

out(:,:,1) = outR;
out(:,:,2) = outG;
out(:,:,3) = outB;

imshow(img)
title('original')
figure;

imshow(ref)
title('ref')
figure;

% Now we are printing the original image
imshow(out)
title('Final output')
