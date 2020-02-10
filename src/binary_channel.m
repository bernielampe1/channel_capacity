function P = binary_channel(m, n)

P = zeros(m+1, n+1);
for j = 0:m
    for k = 0:n
        P(j+1,k+1) = nchoosek(n, k) * ((j./m).^k) * ((1 - j./m).^(n-k));
    end
end

end