function [s,image_t] = equalization(test_img, counts)
    [m,n] = size(test_img);
    image_t = zeros(m,n,'uint8');
    
    L = 256;
    s = [];
    prob = [];
    
    for j=1:L
        probk = (counts(j)/(m*n));
        prob = [prob, probk];
    end
    
    for k=0:L-1
        sk = 0;
        for j=1:k
            sk = sk + (L-1)*prob(j);
        end
        sk = round(sk);
        s = [s, sk];
    end
    
    for k=0:L-1
        for i=1:m
            for j=1:n        
                if test_img(i,j) == k
                    image_t(i,j) = s(k+1);
                end
            end
        end
    end
end