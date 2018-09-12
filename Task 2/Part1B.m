%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%     Dhruvraj Singh Rawat      15UEC022

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                               Fig_1

I=imread('fig_1.PNG');   % Reading Image
subplot(2,2,1); 
imshow(I);
title('Original Image');

subplot(2,2,2);
imhist(I);
title('Original Image Histogram');

subplot(2,2,3);
J1 = histeq(I,256); % Histogram equalization 
imshow(J1);
title('Histogram Equalization');


subplot(2,2,4);
imhist(J1); %Histogram of Image 
title('Histogram of Image after histeq');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                               Fig_2

I1=imread('fig_2.jpg'); % Reading Second Image
figure;
subplot(2,2,1);
imshow(I1);
title('Original Image');

subplot(2,2,2);
imhist(I1);  %Histogram of Image 
title('Original Image Histogram');

subplot(2,2,3);
J2 = histeq(I1,128);  % Histogram equalization 
imshow(J2);
title('Histogram Equalization');


subplot(2,2,4);
imhist(J2); %Histogram of Image 
title('Histogram of Image after histeq');

