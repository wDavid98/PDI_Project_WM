function fam = matriz_a_eq(nfotos, nfamosos, rows , cols, nfam, original)
    fam = zeros(nfotos,120*80);
    for i = 1:nfotos
        min_col = (cols/nfotos)*(i-1)+1;
        max_col = (cols/nfotos)*i;
        min_row = (rows/nfamosos)*(nfam-1)+1;
        max_row = (rows/nfamosos)*nfam;
        image = original(min_row:max_row,min_col:max_col);
        counts = imhist(image);
        [s,image_t] = equalization(image, counts);
        fam(i,:) = reshape(transpose(double(image_t)),[1,120*80]);
        %imshow(original(min_row:max_row,min_col:max_col))
    end
end