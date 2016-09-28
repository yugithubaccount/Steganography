global Ones;
global Zeros;
[Ones,Zeros] = cumulateTypes();
disp("Cumulative frequency of Ones and Zeros Patters found");
DecompressedImage = zeros(size(X,1),size(X,2));
for i = 1:size(X,1)
  for j = 1:3:size(X,2)
    DecompressedImage(i,[j:j+2]) = decodeBit(Output(i,((j-1)/3)+1));
  endfor
endfor
disp("Decompressing done");
disp("Program paused. Press Enter to Continue");
pause;
#imwrite(DecompressedImage,"Images/decompressedImage1","bmp");
imwrite(DecompressedImage,"Images/initialdecompressedImage","bmp");
nhood = logical([0 1 0 1 1 1 0 1 0]);
DecompressedImage = medfilt2(DecompressedImage,nhood);
imwrite(DecompressedImage,"Images/noisereduceddecompressedImage","bmp");
disp("Decompressed Image stored as decompressedImade.bmp");
disp("Program paused. Press Enter to Continue");
pause;
imshow([I Output DecompressedImage]);
