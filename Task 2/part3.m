%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%     Dhruvraj Singh Rawat      15UEC022

I=imread('fig_4.jpg'); % Reading Image
subplot(3,1,1);
imshow(I);
title('Original Image');

b = imsharpen(I);   % Applying unsharp masking
subplot(3,1,2);
imshow(b);
title('Image after Unsharp-Masking');

h = fspecial('laplacian',0.5);  
I_laplacian = imfilter(I, h,'replicate');
I_new=imsubtract(I,I_laplacian); % Subtracting Laplacian Mask from Image
subplot(3,1,3);
imshow(I_new);
title('Image after Laplacian Filter');