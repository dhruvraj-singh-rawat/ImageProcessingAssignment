%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                               Fig_1

I=imread('fig_1.PNG');
subplot(2,1,1);
imshow(I);
title('Original Image');

J=imcomplement(I);
J=imadjust(I,[0,1],[0,1],.5);
subplot(2,1,2);
imshow(J1);
title('Gamma Correction');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%                               Fig_2
figure;

I=imread('fig_2.jpg');
subplot(2,1,1);
imshow(I);
title('Original Image');

J=imcomplement(I);
J=imadjust(I,[0,1],[0,1],.4);
subplot(2,1,2);
imshow(J);
title('Gamma Correction');





