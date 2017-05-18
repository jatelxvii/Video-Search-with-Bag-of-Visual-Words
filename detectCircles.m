function [ centers ] = detectCircles( im, radius, useGradient )

imgray = rgb2gray(im);
[j,k] = size(imgray);

accArray = zeros(j,k);

totalEdges = edge(imgray,'Canny');
[row, col] = find(totalEdges);
if useGradient == 0
    for i=1:numel(row)
        x = row(i);
        y = col(i);
        for theta=1:360
            a = x - radius*cos(theta);
            b = y + radius*sin(theta);
            a = round(a);
            b = round(b);
                if(a > 0 && a < j && b < k && b > 0)
                    accArray(a,b) = accArray(a,b) + 1;
                end
        end
    end
end 
end

