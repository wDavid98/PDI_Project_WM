function fam = matriz_a(nfotos, m, n, images)
    fam = zeros(nfotos,m*n);
    for i = 1:nfotos
        fam(i,:) = reshape(transpose(images(:,:,i)),[1,m*n]);
    end
end
