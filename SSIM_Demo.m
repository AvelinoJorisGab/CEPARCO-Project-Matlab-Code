%clc
%clear all;
%close all ;
%warning off;
x=imread('C_SHARPEN.jpg');
y=imread('CUDA_SHARPEN.jpg');

figure;
montage({x,y})
title("C (Left) vs. CUDA (Right)")
figure;

[ssimval,ssimmap] = ssim(x,y);

imshow(ssimmap,[])
title("Local SSIM Map with Global SSIM Value: "+num2str(ssimval))



