function Evaluation(W,distance_matrix,evaFile,flag)

    disp('===================  NN    FT    ST    EM    DCG   AP  =');
    %=====================Baseline=========================================
    [NN,FT,ST,EM,DCG,AP]=psbEvaluation(W,evaFile,flag);
    str=sprintf('Baseline Result  : %.3f %.3f %.3f %.3f %.3f %.3f |',NN,FT,ST,EM,DCG,AP);
    disp(str);
    %=====================Our Result=======================================
    [NN,FT,ST,EM,DCG,AP]=psbEvaluation(distance_matrix,evaFile,flag);
    str=sprintf('PML Re-evaluation: %.3f %.3f %.3f %.3f %.3f %.3f |',NN,FT,ST,EM,DCG,AP);
    disp(str);
    disp('========================Finished!=======================');

end

