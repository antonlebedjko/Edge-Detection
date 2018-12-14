function y = my_zero_crossing( image )
amount_of_rows = size(image, 2);
amount_of_columns = size(image, 1);
for r=1:(amount_of_columns)
    for c=1:(amount_of_rows-1)
        
        first_pixel = image(r, c);
        second_pixel = image(r, c+1);
        if((first_pixel>0 & second_pixel>0) |(first_pixel<0 & second_pixel<0) )
            y(r, c+1) = 0;
        else
            y(r,c+1) = 1;
        end
    end
end

