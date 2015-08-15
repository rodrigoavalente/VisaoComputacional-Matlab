% Subtração de Imagens em Matlab (No braço rs)
% Author: Rodrigo Araújo Valente

function sub_img
    image1 = imread('images/cola1.png', 'png');
    image2 = imread('images/cola2.png', 'png');
    
    grayscale_image1 = rgb2gray(image1);
    grayscale_image2 = rgb2gray(image2);
    
    subtracted_image = [];
    [rows, columns] = size(grayscale_image1);
    
    for i = 1:1:rows
        for j = 1:1:columns
            subtracted_image(i, j) = (grayscale_image1(i, j) ...
                                      - grayscale_image2(i, j));
        end
    end
    
    subtracted_image = uint8(subtracted_image);
    final_image = repmat(subtracted_image, [1 1 3])
        
    figure()
    subplot(1, 3, 1), subimage(image1);
    subplot(1, 3, 2), subimage(image2);
    subplot(1, 3, 3), subimage(final_image);    
end