function Demo_PA_Encoding
% Feature encoding: MSC+ELDF+PA
addpath('FUNCTION');

%% Parameters
    filename='result/SHREC10/fea';%SHREC10,McGill
    evaFile='data/test_SHREC10.cla';%Evaluation file
    
%% Processing
    display('Read feature...');
    [data_matrix shapeFea]=ImportFeature(filename);
    
    display('Train dictionary...');
    Centers=Dictionary(data_matrix,512);
    %save('result/SHREC10/SHREC10_Centers','Centers');
    
    display('Encoding...');
    new_matrix=MSC_ELDF_PA_Encoding(shapeFea,Centers);
    
    display('Compute distance matrix...');
    distance_matrix=DistanceMatrix(new_matrix);
    
%% Evaluation
    disp('Evaluation...');
    [NN,FT,ST,EM,DCG,AP]=psbEvaluation(distance_matrix,evaFile,0);
    str=sprintf('MSC+ELDF+PA: %.3f,%.3f,%.3f,%.3f,%.3f,%.3f',NN,FT,ST,EM,DCG,AP);
    disp(str);
    
    disp('Finished!');
end