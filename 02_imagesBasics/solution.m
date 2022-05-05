%% 1 - Load and show
img = imread('cells.png');
imshow(img)

%% 2 - Plot channels separately
img = imread('cells.png');

for i = 1:3
    subplot(1,3,i)
    imshow(img(:,:,i))
    title(sprintf('Channel #%u',i))
end

%% 3 - Histogram and saturated pixels
img = imread('cells.png');
img = img(:,:,3);
imhist(img)
title(sprintf('%u pixels are black - %u pixels are white',...
    sum(img==0,'all'), sum(img==255,'all')))

%% 4 & 5 - ROIs and average intensity

numROIs = 2;        % Change this line to modify the number of ROIs to consider
% -------------------------------------------------------------------------

img = imread('cells.png');
imshow(img)

masks = zeros([size(img,[1,2]),numROIs], 'logical');
for i = 1:numROIs
    title(sprintf('Draw ROI #%u',i))
    roi = drawfreehand();
    masks(:,:,i) = roi.createMask();
    delete(roi)
end
title('Done. Look at the results.')

ROInumber = zeros(numROIs,1);
myMean = zeros(numROIs,1);
myMedian = zeros(numROIs,1);
myMode = zeros(numROIs,1);
for i = 1:numROIs
    ROInumber(i) = i;
    myMean(i) = mean(img(masks(:,:,i)),"all");
    myMedian(i) = median(img(masks(:,:,i)),"all");
    myMode(i) = mode(img(masks(:,:,i)),"all");
end
t = table(ROInumber,myMean,myMedian,myMode, 'VariableNames',{'ROI number','Mean','Median','Mode'});

%% 6 - Segmentation
thresholdValue = 90;

img = imread('mouse.png');
img = rgb2gray(img);
mask = img<thresholdValue;
imshow(mask)

%% 7 - Segmentation (1) - Find threshold values

rgb = imread('coloredChips.png');

% Convert image to HSV color space
hsv = rgb2hsv(rgb);

% Show the RGB version of the image along with the Hue, Saturation and Value 
% channels (channel#1, #2, #3) in the hsv Image. 
% From here you can see that the blue circles have a hue
% around 0.6. Also they are very saturated so you should expect saturation
% to be a high number (close to 1). Also the chips are relatively bright,
% so all the numbers in the Value channels are close to 1. Note that the
% pen, that is pretty dark, is clearly visible in the Value channel.
subplot(2,2,1)
imshow(rgb)
title('RGB Image')
titles = {'Hue','Saturation','Value'};
for i = 1:3
    subplot(2,2,i+1)
    imagesc(hsv(:,:,i));
    title(titles{i})
    colorbar
    axis off, axis image
end

linkaxes

%% 7 - Segmentation (1) - Segment

h = [0.5, 0.7];
s = [0.7, 1];
v = [0.1, 1];

maskHue = (hsv(:,:,1) > h(1)) & (hsv(:,:,1) <= h(2));
maskSat = (hsv(:,:,2) > s(1)) & (hsv(:,:,2) <= s(2));
maskVal = (hsv(:,:,3) > v(1)) & (hsv(:,:,3) <= v(2));

finalMask = maskHue & maskSat & maskVal;

subplot(1,2,1)
imshow(rgb)
title('Raw Image')

subplot(1,2,2)
imshow(finalMask)
title('Mask')






