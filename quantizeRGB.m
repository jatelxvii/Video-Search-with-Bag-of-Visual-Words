function [ outputImg, meanColors ] = quantizeRGB(origImg,k )

[a,b,c] = size(origImg);
outputImg = zeros(a,b,c);

origImg = reshape(origImg,a*b,3);
origImg = double(origImg);

[idx,meanColors] = kmeans(origImg,k);
[x,y] = size(origImg);
totalpix = x*y;
    for i=1:totalpix
        curr = origImg(i);
            for x=1:numel(meanColors)
                ind(x) = abs(meanColors(x) - curr);
            end
   
minimum = min(ind);

 for y=1:numel(ind)
     if(minimum == ind(y))
         outputImg(i) = meanColors(y);
         break;
     end
 end
    end
   outputImg =(uint8(outputImg));
end

