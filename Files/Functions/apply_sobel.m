function im = apply_sobel( image, gaussian_filter )
    % to use this function expects grayscaled image and gausian matrix as a
    % parameter
    Cell_after_gausian = conv2(image, gaussian_filter, 'same');
    sobelX = [-1,0,1;-2,0,2;-1,0,1];
    sobelY = [1,2,1;0,0,0;-1,-2,-1];
    Cell_Sobel_X = conv2(Cell_after_gausian, sobelX, 'same');
    Cell_Sobel_Y = conv2(Cell_after_gausian, sobelY, 'same');
    im = sqrt(Cell_Sobel_X.^2+Cell_Sobel_Y.^2);
end

