function [sensitivity, specificity] = evaluateImage(myImage, testImage)
true_positives =0;   %true Positives
true_negatives =0;   %true Negatives
false_positives = 0;  %false Positives
false_negatives = 0;  %false Negatives

[rows,columns] = size(myImage);

%loop to compare the values
for i = 1:rows
    for j = 1:columns
        if myImage(i,j) == 1 % if positive
            if testImage(i,j) == 255
                true_positives =true_positives+1;
            else
                false_positives =false_positives+1;
            end 
        else            % in case if negative
            if testImage(i,j) == 0
                true_negatives = true_negatives+1;
            else
                false_negatives = false_negatives+1;
            end
        end
    end
end

sensitivity = true_positives/ (true_positives + false_negatives);
specificity = true_negatives/ (true_negatives + false_positives);
end