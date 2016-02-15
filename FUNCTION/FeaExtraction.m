function [exPoints,fea]=FeaExtraction(offFile,scale,histSize)
    
    [Lambda,Phi,TRI]=EigSystem(offFile);
    DM=EmbeddingDistance(Lambda,Phi);
    IHK=IntergratedHeatKernel(Lambda,Phi);
    exPoints=KeypointDetection(DM,TRI,Phi,Lambda);
    [fea,exPoints]=DescriptorELDF(DM,exPoints,scale,histSize,IHK);
    
end
