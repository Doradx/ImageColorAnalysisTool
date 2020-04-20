function [center,hist,percentage,imageCluster] = colorCluster(image,colorNum)
%colorCluster Image color cluster function based on k-means.
%   Author: Dorad, cug.xia@gmail.com
% image: m*n*3, RGB mode.
% colorNum: the total color number for cluster

%% check param.
if size(image,3)~=3
    error('The size of image must be m*n*3');
end
if colorNum<2
   error('The color number for cluster must biger than 2'); 
end

colorNum=int16(colorNum);

% reshape the image size to m*n*3
data=reshape(image,[size(image,1)*size(image,2),3]);
data=double(data)/255;
%% cluster 
% k-means cluster
[idx,center]=kmeans(data,colorNum);

%% calculate the hist and imageCluster
center=uint8(center*255);
% imageCluster
imageCluster=zeros(size(image));
idxn=reshape(idx,[size(image,1),size(image,2)]);
for r=1:size(image,1)
    for c=1:size(image,2)
        imageCluster(r,c,:)=center(idxn(r,c),:);
    end
end
imageCluster=uint8(imageCluster);
% hist
hist=zeros(size(center,1),1);
for i=1:size(center,1)
    hist(i)=sum(idx==i);
end
[hist,hidx]=sort(hist,'descend');
center=center(hidx,:);

% percentage
percentage=hist/size(image,1)/size(image,2);
end

