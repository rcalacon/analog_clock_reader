% Programmer: Rodney Alacon
% Course: CS696 (Applied Computer Vision)
% Semester Project
% Description: Parse analog clock image to determine time and print results

%% Gather images
testimage_location = 'dataset/3.png';
testimage = imread(testimage_location);
testimage = rgb2gray(testimage);

%% Gather general image information
testimage_size = size(testimage);
image_height = testimage_size(1);
image_width = testimage_size(2);

% radius used to detect face
if image_height <= image_width
   radius_min = image_height / 3;
   radius_max = image_height / 2;
else
   radius_min = image_width / 3;
   radius_max = image_width / 2;
end

%% Detect face
%start from middle, gradually increase radius until a face is found.

%% Detect edges
testimage = edge(testimage); %sobel


%% Show results
imshow(testimage);
