%clc
%clear all;
%close all ;
%warning off;

%To test different filters change the file names of the x and y variables
%FOR SHARPEN x: C_SHARPEN.jpg / y: CUDA_SHARPEN.jpg
%FOR LAPLACIAN x: C_LAPLACIAN.jpg / y: CUDA_LAPLACIAN.jpg
%FOR MEDIAN x: C_MEDIAN.jpg / y: CUDA_MEDIAN.jpg
%FOR BOX x: C_BOX.jpg / y: CUDA_BOX.jpg

x=imread('C_SHARPEN.jpg');
y=imread('CUDA_SHARPEN.jpg');

figure;
montage({x,y})
title("C (Left) vs. CUDA (Right)")
figure;

[ssimval,ssimmap] = ssim(x,y);

imshow(ssimmap,[])
title("Local SSIM Map with Global SSIM Value: "+num2str(ssimval))



