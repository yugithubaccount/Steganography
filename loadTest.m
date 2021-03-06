function [cover,text] = loadTest(i)
  pkg load image;
  if i==1
    display("Laoding South Dakota Image");
    cover = imread("tests/south_dakota_cover.jpg");
    fid = fopen("tests/south_dakota_message.txt");
    text = fgetl(fid);
    fclose(fid);
    imshow(cover)
    else
    display("Laoding Tokyo Image");
    cover = imread("tests/Tokyo.jpg");
    fid = fopen("tests/Tokyo.txt");
    text = fgetl(fid);
    fclose(fid);
    imshow(cover)
    endif
end