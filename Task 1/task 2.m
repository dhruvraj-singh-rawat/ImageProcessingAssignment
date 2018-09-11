% Loading The Image
image_tom = imread('image_6.jpg');
image_jerry = imread('image_7.jpg');
image_back = imread('image_5.jpg');

% Adding Together Tom and Jerry 
tom_jerry=imadd(imresize(image_tom,[202 270]),imresize(image_jerry,[202 270]));
%Aggressively Deleting the Pixel of tom_jerry from Background
background=image_back -8*tom_jerry;

final=imadd(background,tom_jerry); % Adding Together the Images
imshow(final);
title('Dhruvraj Singh Rawat - 15UEC022');
