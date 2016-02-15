function [centers_matrix]=Initial_centers(data,K)
%Choose initial clustering centers for kmeans
    a=std(data,0,1);
    [~,index] = sort(a,'descend');
    topN=1;
    b=index(topN);
    c=data(:,b);

    [~,index] = sort(c,'descend');
    n=size(c,1);
    step=floor(n/K);
    indexC=zeros(K,1);

    for i=1:K
        indexC(i)=index(1+(i-1)*step);
    end
    centers_matrix=data(indexC,:);
    
end