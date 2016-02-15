function [Dis]=PfMetricLearning(W)

    [GL_B,GL_A,cluster_num] = GraphLaplacian_RKNN(W);
    [Mu,Psi]=SpectralSpace(GL_B,GL_A,cluster_num);
    Dis=PML_EmbeddingMetric(Psi,Mu);
    
end