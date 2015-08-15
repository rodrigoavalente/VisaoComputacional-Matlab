% Adição de Imagens em Matlab (No braço rs)
% Author: Rodrigo Araújo Valente

function add_img
    image1 = imread('images/cola1.png');
    image2 = imread('images/cola2.png');
    
    grayscale_image1 = rgb2gray(image1);
    grayscale_image2 = rgb2gray(image2);
    
    [rows, columns] = size(grayscale_image1);
    
    added_image = [];
    
    for i = 1:1:rows
        for j = 1:1:columns
            added_image(i, j) = (grayscale_image1(i, j) ...
                                 + grayscale_image2(i, j))/2;
        end
    end
    
    added_image = uint8(added_image);
    final_image = repmat(added_image, [1 1 3]);
    
    figure()
    subplot(1, 3, 1), subimage(image1);
    subplot(1, 3, 2), subimage(image2);
    subplot(1, 3, 3), subimage(added_image);
end