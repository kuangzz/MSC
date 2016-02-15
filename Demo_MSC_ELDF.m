function Demo_MSC_ELDF
%Extract MSC+ELDF feature for each shape
%Each keypoint of a shape correspond to a MSC feature
%Each MSC feature contains #scale number of ELDF feature
%ELDF=[LDF,IHK] both LDF and IHK are 64dim features
addpath('FUNCTION');
disp('Extract MSC+ELDF local shape features...');
%% Parameters
bins=64;%ELDF feature size=64+64;
scale=0.01:0.02:0.6;%30 scales are used
n=200;%size of the dataset:255£¬200
shapeFea(1).fea(1).des=zeros(size(scale,2),bins*2);
shapeExPoints(1).ePts=[];
%filePath=importdata('data/McGill/filelist.txt','\n',n);%McGill

%% Feature Extraction
disp('Processing...');
for i=1:n
    offFile=sprintf('data/SHREC10/T%d.off',i-1);%SHREC10
    %offFile=char(filePath(i));%McGill
    disp(offFile);
    [shapeExPoints(i).ePts,shapeFea(i).fea]=FeaExtraction(offFile,scale,bins);
end

%% Save to file
disp('Saving to file...');
save('result/SHREC10/fea','shapeFea');%McGill,SHREC10
save('result/SHREC10/exPoints','shapeExPoints');

disp('Finished!');

end
