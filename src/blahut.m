function [C, D] = blahut(P)

[m, n] = size(P);
p_j = ones(m,1) * 1/m;

eps = 0.001;
I_U = 1;
I_L = 0;
while I_U - I_L > eps
    % compute c_j vector
    c_j = zeros(m,1);
    for j = 1:m
        s = 0;
        for k = 1:n
            d = P(j,k) / sum(p_j .* P(:,k));
            s =  s + P(j,k) .* log(d);
        end
        c_j(j) = exp(s);
    end

    I_L = log2(sum(p_j .* c_j));
    I_U = log2(max(c_j));
    p_j = p_j .* (c_j ./ sum(p_j .* c_j));
end
D = p_j;
C = I_L;

end
