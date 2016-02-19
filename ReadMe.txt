This is the supplementary code for our paper:
*********************************************
*Shape similarity assessment based on partial feature aggregation and ranking lists
*Submitted to Pattern Recognition Letters for Review
*Contact: Zhenzhong Kuang(zzkuang@foxmail.com)
*
*Version: v1
*2/15/2016

Software: MATLAB
(1) By running "Demo_MSC_ELDF.m", you can extract local shape feature (MSC+ELDF) on the attached datasets (SHREC10 and McGill).
   The results will be save in result folder (Note that all the shape are downsamped to 2000 faces).

(2) By running "Demo_PA_Encoding.m", you can represent each shape by MSC+ELDF+PA.
    At the same time, your can see the evaluation results.

(3) By running "Demo_PML_SimilarityReEvaluation.m", you can re-evaluate the results of (2) by metric learning
    At the same time, your can see the evaluation results.

Please do not distribute the code before acceptance. 
If there are any problems, please email us (zzkuang@foxmail.com). Thanks.
We will optimize our codes to make them easy to read by releasing a new version (including more comments and implementation details) shortly.
