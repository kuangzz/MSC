function [kpoints]=KeypointDetection(DM,TRI,Phi,Lambda)
    mx=max(DM(:));
    [eigno,npt]=size(Phi);
    pts=zeros(npt,eigno-1);
    for k=2:eigno
        pts(:,k-1)=Phi(k,:)./sqrt(Lambda(k));
    end
    for k=2:eigno
        pts(:,k-1)=pts(:,k-1)-mean(pts(:,k-1));
    end
    
    kpoints=DetectKP(pts,TRI,mx,DM);
    
end