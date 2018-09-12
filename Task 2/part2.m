%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%     Dhruvraj Singh Rawat      15UEC022

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                               Averaging Filter

I=imread('fig_3.PNG'); % Reading Image
subplot(3,1,1);
imshow(I);
title('Original Image');

h=ones(5,5) / 25;
I2 = imfilter(I , h);
subplot(3,1,2);
imshow(I2);
title('Image after 5*5 Averaging filter ');

h=ones(3,3) / 9;
I2 = imfilter(I , h);
subplot(3,1,3);
imshow(I2);
title('Image after 3*3 Averaging filter ');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                               Median Filter

figure;
I=imread('fig_3.PNG');
subplot(3,1,1);
imshow(I);
title('Original Image');

% Applying Averaging Filter on Different Channel for 3*3
for i = 1:3
    image_medf(:,:,i)=medfilt2(I(:, :, i), [3, 3]);
end

subplot(3,1,2);
imshow(image_medf);
title('After 3*3 Median Filter');

% Applying Averaging Filter on Different Channel 5*5
for i = 1:3
    image_medf(:,:,i)=medfilt2(I(:, :, i), [5, 5]);
end

subplot(3,1,3);
imshow(image_medf);
title('After 5*5 Median Filter');

