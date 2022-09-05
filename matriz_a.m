function fam = matriz_a(nfotos, nfamosos, rows , cols, nfam, original)
    %Transformar para recibir las 5 fotos de diferente tamaño, hacer el resize y generar la matriz A
    fam = zeros(nfotos,120*80);
    for i = 1:nfotos
        min_col = (cols/nfotos)*(i-1)+1;
        max_col = (cols/nfotos)*i;
        min_row = (rows/nfamosos)*(nfam-1)+1;
        max_row = (rows/nfamosos)*nfam;
        fam(i,:) = reshape(transpose(original(min_row:max_row,min_col:max_col)),[1,120*80]);
        %imshow(original(min_row:max_row,min_col:max_col))
    end
end
