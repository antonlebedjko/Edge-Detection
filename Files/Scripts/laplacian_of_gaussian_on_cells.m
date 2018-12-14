standard_deviation = 2.9;
test_image = read_image('cells/','10905 JL Edges.bmp');
n = laplacian_of_gaussian([-2:1:2], laplacian, standard_deviation);
cell_image_after_laplacian_of_gaussian = conv2(Cell_10905JL_Grey, n, 'same');
after_zero_crossing = edge(cell_image_after_laplacian_of_gaussian, 'zerocross');
best_threshold = multithresh(double(after_zero_crossing))
after_zero_crossing = after_zero_crossing> best_threshold;
after_zero_crossing = double(after_zero_crossing);
show_image(after_zero_crossing);
[sen_l, spe_l] = evaluateImage(after_zero_crossing, test_image)