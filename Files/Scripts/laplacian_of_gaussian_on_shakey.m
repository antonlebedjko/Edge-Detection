standard_deviation = 2.9;
shakey = read_image('', 'shakey.150.gif');
n = laplacian_of_gaussian([-40:1:40], laplacian, standard_deviation);
shakey_after_laplacian_of_gaussian = conv2(shakey, n, 'same');
after_zero_crossing = edge(shakey_after_laplacian_of_gaussian, 'zerocross');
best_threshold = multithresh(double(after_zero_crossing))
show_image(after_zero_crossing> best_threshold);
