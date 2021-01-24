clear all;
close all;
clc;

I=imread('F:\BMI\data\circles.png');
% figure(1);
% imshow(I);
% d=imdistline; 
% delete(d);

% gray_image=rgb2gray(I);
% figure(2);
% imshow(gray_image);
% 40 and 50
[center,radii]=imfindcircles(I,[20 40],'ObjectPolarity','dark'), ... 'Sensitivity' ,0.9);
imshow(I);
h=viscircles(center,radii);
delete(h);


 
 [center,radii]=imfindcircles(I,[20 40],'ObjectPolarity','dark'), ... 'Sensitivity' ,0.92);    
 h=viscircles(center,radii);
 length(center)
 
 [center,radii]=imfindcircles(I,[20 50],'ObjectPolarity','dark'), ... 'Sensitivity' ,0.92,'Method','twostage');
 delete(h);
 viscircles(center,radii);

% imshow(gray_image);
%  [centerBright,radiiBright]=imfindcircles(I,[20 50],'ObjectPolarity','bright'), ... 'Sensitivity' ,0.92);
%  imshow(I);
%  hBright=viscircles(centerBright,radiiBright);


 [centerBright,radiiBright]=imfindcircles(I,[20 50],'ObjectPolarity','bright'), ... 'Sensitivity',1,'EdgeThresold', 0.9);
 %delete(hBright);
 hBright=viscircles(centerBright,radiiBright,'color','b');
 h=viscircles(center,radii); 