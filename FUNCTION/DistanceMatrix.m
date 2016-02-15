function [ DM ] = DistanceMatrix(M)
    n=size(M,1);
    DM=zeros(n,n);
    for i=1:n
       for j=i+1:n
           DM(i,j)=sum(abs(M(i,:)-M(j,:)));
           DM(j,i)=DM(i,j);
       end
    end
end

