clc;
clear all;
close all;

type=6; % 1=original
if type==1
    dirs=dir('F:\Maleki\Results\mine\Pareidolic faces\Mine_found_match_for\pareidolic');
    rng=[1:54];
elseif type==2
    dirs=dir('F:\Maleki\Results\mine\Pareidolic faces\Mine_found_match_for\match');
    rng=[1:54];
elseif type==3
    dirs=dir('F:\Maleki\Results\mine\Pareidolic faces\Mine_found_match_for\faces');
    rng=[1:54];    
elseif type==4
    dirs=dir('F:\Maleki\Results\mine\Pareidolic faces\Susan\pareidolic');
    rng=[55:86];
elseif type==5
    dirs=dir('F:\Maleki\Results\mine\Pareidolic faces\Susan\match');
    rng=[55:86];
elseif type==6
    dirs=dir('F:\Maleki\Results\mine\Pareidolic faces\Susan\faces');
    rng=[55:86];   
end

for i=3:length(dirs)
    
    im_resized=imresize(imread([dirs(i).folder,'\',dirs(i).name]),[400 400]);
    if type==1 || type==4
        imwrite(im_resized,['ImageOrig',sprintf('%.3i',rng(i-2)),'.jpg'])
    elseif type==2 || type==5
        imwrite(im_resized,['ImageMtchd',sprintf('%.3i',rng(i-2)),'.jpg'])
    elseif type==3 || type==6
        imwrite(im_resized,['ImageFaces',sprintf('%.3i',rng(i-2)),'.jpg'])        
    end    
end
