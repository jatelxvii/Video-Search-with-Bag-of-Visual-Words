origImg = imread('fish.jpg');
I = computeQuantizationError(origImg, i);
imshow(I)