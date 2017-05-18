function [error] = computeQuantizationError(origImg,quantizedImg)
    [r, c, ~] = size(origImg);
    numpixels = r*c;
    
    origImg = im2double(origImg);
    reshapedImg = reshape(origImg, numpixels, 3);
    reshapedQuantImg = reshape(quantizedImg, numpixels, 3);
    
    error = 0;
    for i = 1:numpixels
        red_err = reshapedImg(i, 1) - reshapedQuantImg(i, 1)^2;
        green_err = reshapedImg(i, 2) - reshapedQuantImg(i, 2)^2;
        blue_err = reshapedImg(i, 3) - reshapedQuantImg(i, 3)^2;
        error = error + red_err + green_err + blue_err;
    end
    
    disp(error)
end





