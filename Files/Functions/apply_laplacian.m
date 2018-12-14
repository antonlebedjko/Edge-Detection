function im = apply_laplacian( image )
    matrix = [0,1,0;1,-4,1;0,1,0];
    im = conv2(image, matrix, 'same');

end

