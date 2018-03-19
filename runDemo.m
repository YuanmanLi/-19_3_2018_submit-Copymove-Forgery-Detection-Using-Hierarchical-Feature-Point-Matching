
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%
% This code was developed by Li Yuanman 
% yuanmanx.li@gmail.com
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Please cite the paper if you use this code:
% Y. M. Li and J. T. Zhou, ��Image Copy-Move Forgery Detection Using Hierarchical Feature Point Matching��, ASC, 2016.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

clc 
clear all
dbstop if error
addpath 'lib\vlfeat-0.9.18\mexw64' 'functions'

img_name = 'wading_copy_r120.png';

im_file = ['test_pic\', img_name];
fprintf('Processing: %s\n',im_file);
tstart = tic;
[countTrasfGeom,map] = process_image(im_file,0);
tproc = toc(tstart);
tps = datestr(datenum(0,0,0,0,0,tproc),'HH:MM:SS');

 
imshow(map)
fprintf('\nComputational time: %s\n', tps);