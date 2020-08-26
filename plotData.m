function retval = plotData (X, y)
  
  %% FIGURE 1 - Mean Radius - Mean Texture%%
  # create a figure
  figure;
  
  # make it hold on
  hold on;
  
  pos = find(y==1);
  neg = find(y==0);

  plot(X(pos, 1), X(pos, 2), 'k+', 'LineWidth', 2, 'MarkerSize', 7);
  plot(X(neg, 1), X(neg, 2), 'ko', 'MarkerFaceColor', 'y', 'MarkerSize', 7);
  
  # add labels and legends
  xlabel('Mean Radius');
  ylabel('Mean Texture');
  
  # make it disappear
  hold off;
  
  %% FIGURE 2 - Mean Texture - Mean Perimeter %%
  figure;
  hold on;
  pos = find(y==1);
  neg = find(y==0);

  plot(X(pos, 2), X(pos, 3), 'k+', 'LineWidth', 2, 'MarkerSize', 7);
  plot(X(neg, 2), X(neg, 3), 'ko', 'MarkerFaceColor', 'y', 'MarkerSize', 7);
  
  xlabel('Mean Texture');
  ylabel('Mean Perimeter');
  hold off;
  
  %% FIGURE 3 - Mean Perimeter - Mean Area %%
  figure;
  hold on;
  pos = find(y==1);
  neg = find(y==0);

  plot(X(pos, 3), X(pos, 4), 'k+', 'LineWidth', 2, 'MarkerSize', 7);
  plot(X(neg, 3), X(neg, 4), 'ko', 'MarkerFaceColor', 'y', 'MarkerSize', 7);
  
  xlabel('Mean Perimeter');
  ylabel('Mean Area');
  hold off;
  
  %% FIGURE 4 - Mean Area - Mean Smoothness %%
  figure;
  hold on;
  pos = find(y==1);
  neg = find(y==0);

  plot(X(pos, 4), X(pos, 5), 'k+', 'LineWidth', 2, 'MarkerSize', 7);
  plot(X(neg, 4), X(neg, 5), 'ko', 'MarkerFaceColor', 'y', 'MarkerSize', 7);
  
  xlabel('Mean Area');
  ylabel('Mean Smoothness');
  hold off;
  
  %% FIGURE 5 - Mean Smoothness - Mean Radius %%
  figure;
  hold on;
  pos = find(y==1);
  neg = find(y==0);

  plot(X(pos, 5), X(pos, 1), 'k+', 'LineWidth', 2, 'MarkerSize', 7);
  plot(X(neg, 5), X(neg, 1), 'ko', 'MarkerFaceColor', 'y', 'MarkerSize', 7);
  
  xlabel('Mean Smoothness');
  ylabel('Mean Radius');
  hold off;
endfunction
