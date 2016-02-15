function Demo_PML_SimilarityReEvaluation
addpath('FUNCTION');

%% Intialization
    %disp('Intialization...');
    infile=sprintf('result/McGill/McGill_MSC_ELDF_PA');flag=0;evaFile='data/test_McGill.cla';
    %infile=sprintf('result/SHREC10/SHREC10_MSC_ELDF_PA');flag=0;evaFile='data/test_SHREC10.cla';
    load(infile);
    W=distance_matrix;
    
%% Processing
    %disp('Processing...');
    distance_matrix=PfMetricLearning(W);
    
%% Evaluation
    disp('Evaluation...');
    Evaluation(W,distance_matrix,evaFile,flag);
    
end