clc
clear all
close all
warning off;

a=imread('C_SHARPEN.jpg');
b=imread('CUDA_SHARPEN.jpg');

c=imread('C_LAPLACIAN.jpg');
d=imread('CUDA_LAPLACIAN.jpg');

e=imread('C_MEDIAN.jpg');
f=imread('CUDA_MEDIAN.jpg');

g=imread('C_BOX.jpg');
h=imread('CUDA_BOX.jpg');

figure;
montage({a,b})
title("CPU (Left) vs. GPU (Right) SHARPEN")
figure;
montage({c,d})
title("CPU (Left) vs. GPU (Right) LAPLACIAN")
figure;
montage({e,f})
title("CPU (Left) vs. GPU (Right) MEDIAN")
figure;
montage({g,h})
title("CPU (Left) vs. GPU (Right) BOX")
figure;

[ssimval,ssimmap] = ssim(a,b);
imshow(ssimmap,[]);
title("Local SSIM Map of Sharpen with Global SSIM Value: "+num2str(ssimval));
figure;
[ssimval2,ssimmap2] = ssim(c,d);
imshow(ssimmap2,[]);
title("Local SSIM Map of Laplacian with Global SSIM Value: "+num2str(ssimval2));
figure;
[ssimval3,ssimmap3] = ssim(e,f);
imshow(ssimmap,[]);
title("Local SSIM Map of Median with Global SSIM Value: "+num2str(ssimval3));
figure;
[ssimval4,ssimmap4] = ssim(g,h);
imshow(ssimmap2,[]);
title("Local SSIM Map of Box with Global SSIM Value: "+num2str(ssimval4));