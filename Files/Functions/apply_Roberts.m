function im = apply_Roberts( image, gaussian_filter )
    Cell_after_gausian = conv2(image, gaussian_filter, 'same');
    Roberts_A = [0,1;-1,0];
    Roberts_B = [-1,0;0,1];
    Cell_Roberts_A = conv2(Cell_after_gausian, Roberts_A, 'same');
    Cell_Roberts_B = conv2(Cell_after_gausian, Roberts_B, 'same');
    im = abs(Cell_Roberts_A) + abs(Cell_Roberts_B);
end

