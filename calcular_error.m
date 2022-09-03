function errors = calcular_error(fam1, V1, test_v)%modificar con un for con el numero de fotos
    error1 = abs( fam1(1,:)* V1 - test_v*V1)/abs(fam1(1,:)* V1);
    error2 = abs( fam1(2,:)* V1 - test_v*V1)/abs(fam1(2,:)* V1);
    error3 = abs( fam1(3,:)* V1 - test_v*V1)/abs(fam1(3,:)* V1);
    error4 = abs( fam1(4,:)* V1 - test_v*V1)/abs(fam1(4,:)* V1);
    error5 = abs( fam1(5,:)* V1 - test_v*V1)/abs(fam1(5,:)* V1);
    
    errors = [error1,error2,error3,error4,error5];
end