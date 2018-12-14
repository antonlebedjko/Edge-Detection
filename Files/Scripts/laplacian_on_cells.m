test_image = read_image('cells/','43590 AM Edges.bmp');
l = apply_laplacian(Cell_43590AM_Grey, gaussian_filter_5x5);
zero = edge(l,'zerocross'); 
l_thresh = multithresh(double(zero))
l = zero>l_thresh;
show_image(l);
[sen_l, spe_l] = evaluateImage(l, test_image)