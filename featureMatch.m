
run('vlfeat-0.9.21/toolbox/vl_setup');

img1 = im2single(imread('gene1.jpg'));
img2 = im2single(imread('gene2.jpg'));
% cati = im2single(imread('einstein3.jpg'));

%% SIFT feature extraction
I1 = rgb2gray(img1);
I2 = rgb2gray(img2);
% I2 = imresize(I2, [488,381]);
[f1, d1] = vl_sift(I1);
[f2, d2] = vl_sift(I2);
d1 = double(d1);
d2 = double(d2);

%% feature matching
[matches, scores] = vl_ubcmatch(d1, d2);
plot_sift(img2, f1, d1);
% plot_match(img1, img2, f1, f2, matches)


