function u = normalize(v,type)
    dims = size(v);
    if any(dims==1)    
        if      strcmpi(type,'MINMAX')
            m1= min(v);
            m2= max(v);
            u = (v-m1)/(m2-m1);
        elseif  strcmpi(type,'ABSSUM')
            u = v / sum(abs(v));
        elseif  strcmpi(type,'SUM')
            u = v / sum(v);
        elseif  strcmpi(type,'MAX')
            u = v / max(v);
        end
    else
        M = repmat( sqrt(sum(v.^2,1)), size(v,1), 1 );
        u = v./M;
    end
end