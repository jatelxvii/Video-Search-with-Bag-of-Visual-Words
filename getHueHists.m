function [ histEqual,histClustered ] = getHueHists(im,k )

im = imread('fish.jpg');
k = 4
hueImg = rgb2hsv(im);  

    %get number of pixels
    [r, c, ~] = size(hueImg);
    numpixels = r*c;   
    %reshape image into vector and show histogram 1
    reshapedImg = reshape(hueImg(:, :, 1), numpixels, 1);
    histEqual = hist(reshapedImg, k);
    
for i=1:k+1
    bins(i) = (i-1)/k;
end
histogram(data, bins);
imshow(histEqual)
end