function [data_matrix,shape]= ImportFeature(filename)

    feaDim=128;
    scaleNum=30;
    pCount=0;
    
    load(filename);
    n=numel(shapeFea);
    
    for i=1:n
        num=size(shapeFea(i).fea,2);
        pCount=pCount+num;
    end
    data_matrix=zeros(pCount*scaleNum,feaDim);
    shape(1).fea(1).des=[];
    index=0;
    for i=1:n
        num=size(shapeFea(i).fea,2);
        for j=1:num
            for k=1:scaleNum
                index=index+1;
                shape(i).fea(j).des(k,:)=shapeFea(i).fea(j).des(k,1:feaDim);
                data_matrix(index,:)=shape(i).fea(j).des(k,:);
            end
        end
    end
end
