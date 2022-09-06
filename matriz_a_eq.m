function fam = matriz_a_eq(nfotos, m, n, images)
    fam = zeros(nfotos,m*n);
    for i = 1:nfotos
        [counts,binLocations] = imhist(uint8(images(:,:,i)));
        [s,image_t] = equalization(uint8(images(:,:,i)), counts);
        fam(i,:) = reshape(transpose(image_t),[1,m*n]);
    end
end
