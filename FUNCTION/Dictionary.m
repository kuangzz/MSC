function [Centers]=Dictionary(data,K)
    [centers_matrix]=Initial_centers(data,K);
    [idx Centers]=kmeans(data,K,'Distance','city','Start',centers_matrix);
end