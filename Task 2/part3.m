I=imread('fig_4.jpg');
subplot(3,1,1);
imshow(I);
title('Original Image');

b = imsharpen(I);
subplot(3,1,2);
imshow(b);
title('Image after Unsharp-Masking');

h = fspecial('laplacian',.9);
I_laplacian = imfilter(I, h,'replicate');
subplot(3,1,3);
imshow(I_laplacian);
title('Image after Laplacian Filter');