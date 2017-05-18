origImg = imread('fish.jpg');
k = 5;
[RGBoutput, meanColors] = quantizeRGB(origImg,k);
imshow(origImg)
[quantizedImg, meanHues] = quantizeHSV(origImg,k);
imshow(origImg)

[error] = computeQuantizationError(origImg,quantizedImg);
error
[error2] = computeQuantizationError(origImg,RGBoutput);
error2
