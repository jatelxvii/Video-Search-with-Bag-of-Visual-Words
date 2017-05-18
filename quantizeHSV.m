function [ outputImg, meanHues ] = quantizeHSV(origImg,k)

[a,b,c] = size(origImg);
outputImg = zeros(a,b,c);
origImg = rgb2hsv(origImg);
outputImg = origImg;

onlypix(:,:,1) = origImg(:,:,1);

onlypix = reshape(onlypix,[],1);
[idx,meanHues] = kmeans(onlypix,k);

for i=1:numel(onlypix)
        curr = origImg(i);
           for j=1:k
               ind(j) = abs(meanHues(j) - curr);
           end
 
    minimum = min(ind);
        for b=1:k
             if(minimum == ind(b))
               outputImg(i) = meanHues(b);
               break;
             end
        end
end
outputImg = hsv2rgb(outputImg);
end

