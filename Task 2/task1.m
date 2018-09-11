I=imread('fig_1.PNG');

J=imcomplement(I);
J=imadjust(I,[0,1],[0,1],.5);
%J = imadjust(I,[0 1],[0 1],gamma);
imshow(J);
h=ones(10,10)/100;
imshow(imfilter(I,h));