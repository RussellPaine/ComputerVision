%Load in default image
%Linux
oImage = imread('images/starfish.jpg');

%A histogram for each layer of the image
figure
subplot(2,2,1)
rHist = histogram(oImage(:,:,1)).BinCounts;
subplot(2,2,2)
gHist = histogram(oImage(:,:,2)).BinCounts;
subplot(2,2,3)
bHist = histogram(oImage(:,:,3)).BinCounts;



%This applys a meadian filter to a iamge directly converted to grayscale
deSPImageRGBtoGray = medfilt2(rgb2gray(oImage));

figure
subplot(1,2,1)
imshow(oImage)
subplot(1,2,2)
imshow(deSPImageRGBtoGray)


r = uint8(conv2(ones(4), oImage(:,:,1)));
g = uint8(conv2(ones(4), oImage(:,:,2)));
b = uint8(conv2(ones(4), oImage(:,:,3)));

deSPImageRGBByChannel= cat(3,r, g, b);

figure
subplot(1,2,1)
imshow(oImage)
subplot(1,2,2)
imshow(deSPImageRGBChannel)
