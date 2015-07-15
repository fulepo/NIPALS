


figure
    plot(1:1:size(RESULTS.Eigenvalues,1), RESULTS.Eigenvalues, 'o-',...
        'MarkerFaceColor', 'black',...
        'MarkerEdgeColor', 'black')
    text(1:1:size(RESULTS.Eigenvalues,1)+0.01,RESULTS.Eigenvalues+0.01,...
        num2str(RESULTS.Variance, 4), 'HorizontalAlignment','left')
    title('Scree plot')
    xlabel('Eigenvalue index')
    ylabel('Eigenvalue')
    
figure
    plot(RESULTS.Scores(:,1), RESULTS.Scores(:,2), '.')
        title('Scores plot')
    title('Scores plot')
    xlabel('PLS-1')
    ylabel('PLS-2')
        
figure
    plot(RESULTS.Loadings(:,1), RESULTS.Loadings(:,2), 'o', ...
        'MarkerFaceColor', 'black',...
        'MarkerEdgeColor', 'black')
        title('Loadings plot')
    title('Loadings plot')
    xlabel('PLS-1')
    ylabel('PLS-2')
        

figure
    plot(scaledata(RESULTS.Scores(:,1),-1,1), ...
        scaledata(RESULTS.Scores(:,2),-1,1), '.')
    hold on
    plot(scaledata(RESULTS.Loadings(:,1),-1,1), ...
         scaledata(RESULTS.Loadings(:,2),-1,1), 'o',...
         'MarkerFaceColor', 'black',...
         'MarkerEdgeColor', 'black')
     title('Biplot - data scaled in [-1,1]')
       xlabel('PLS-1')
    ylabel('PLS-2')
     axis([-1.2 1.2 -1.2 1.2]);
    
figure
    plot(RESULTS.Residual_Matrix, '*')
    title('RESIDUALS')
    xlabel('Row index')
    ylabel('Residual')