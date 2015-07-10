


figure
    plot(1:1:size(RESULTS.Eigenvalues,1), RESULTS.Eigenvalues, 'o-',...
        'MarkerFaceColor', 'black',...
        'MarkerEdgeColor', 'black')
        title('Scree plot')
    text(1:1:size(RESULTS.Eigenvalues,1)+0.01,RESULTS.Eigenvalues+0.01,...
        num2str(RESULTS.Variance, 4), 'HorizontalAlignment','left')
figure
    plot(RESULTS.Scores(:,1), RESULTS.Scores(:,2), '.')
        title('Scores plot')
%     text(RESULTS.Scores(:,1)+0.01, ...
%         RESULTS.Scores(:,2)+0.01, ...
%         TABLE.VarName1)
figure
    plot(RESULTS.Loadings(:,1), RESULTS.Loadings(:,2), 'o', ...
        'MarkerFaceColor', 'black',...
        'MarkerEdgeColor', 'black')
        title('Loadings plot')
%     text(RESULTS.Loadings(:,1)+0.01, RESULTS.Loadings(:,2)+0.01, ...
%    TABLE.Properties.VariableNames(:,2:end),...
%    'HorizontalAlignment','left')

figure
    plot(scaledata(RESULTS.Scores(:,1),-1,1), ...
        scaledata(RESULTS.Scores(:,2),-1,1), '.')
%     text(scaledata(RESULTS.Scores(:,1),-1,1)+0.01, ...
%         scaledata(RESULTS.Scores(:,2),-1,1)+0.01, ...
%         TABLE.VarName1)
    hold on
    plot(scaledata(RESULTS.Loadings(:,1),-1,1), ...
         scaledata(RESULTS.Loadings(:,2),-1,1), 'o',...
         'MarkerFaceColor', 'black',...
         'MarkerEdgeColor', 'black')
%     text(scaledata(RESULTS.Loadings(:,1),-1,1)+0.01, ...
%          scaledata(RESULTS.Loadings(:,2),-1,1)+0.01, ...
%          TABLE.Properties.VariableNames(:,2:end),...
%          'HorizontalAlignment','left')
     title('Biplot - data scaled in [-1,1]')
    axis([-1.2 1.2 -1.2 1.2]);
    
figure
    plot(RESULTS.Residual_Matrix, '*')
    title('RESIDUALS')
    xlabel('Row index')
    ylabel('Residual')