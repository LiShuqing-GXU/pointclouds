function view_correpondences(S1,S2,A,varargin)
    view_scan(S1,'Color','r',varargin{:})
    view_scan(S2,'Color','g',varargin{:})
    cm = colormap;
    ca = ceil(size(cm,1)*(A/max(A))+eps);
    hold on
    if ~isempty(A)
        for idx = 1:size(S1)
            plot3( [S1.points(1,idx),S2.points(1,A(idx))],...
                   [S1.points(2,idx),S2.points(2,A(idx))],...
                   [S1.points(3,idx),S2.points(3,A(idx))],...
                   'Color',cm( ca(A(idx)), : ) );
        end
    end
    hold off
end