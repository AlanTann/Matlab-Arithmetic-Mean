barbara = imread('noisy_barbara.gif');

figure;
imshow(barbara);
impixelinfo;

%mask = zeros(size(barbara,1),size(barbara,2));
%mask(200:240,100:150) = 1;

% (290:320,210:260)
mask_barbara = barbara(290:320,210:260);

figure;
subplot(1,2,1);imhist(barbara);
subplot(1,2,2);imhist(mask_barbara);

figure;
subplot(1,2,1);imshow(barbara);title('Before Filtering');
subplot(1,2,2);imshow(uint8(amean2(double(barbara),7)));title('Arithmetic Mean, After Filtering');
