function im = apply_first_order_gaussian( image, gaussian_filter )
    Cell_after_gausian = conv2(image, gaussian_filter, 'same');
    gaussian_first_X = [0.0544886845496429,0.244201342003233,0.402619946894247,0.244201342003233,0.0544886845496429];
    gaussian_first_Y = gaussian_first_X';
    Cell_gaussian_first_X = conv2(Cell_after_gausian, gaussian_first_X, 'same');
    Cell_gaussian_first_Y = conv2(Cell_after_gausian, gaussian_first_Y, 'same');
    im = abs(Cell_gaussian_first_X) + abs(Cell_gaussian_first_Y);
end

