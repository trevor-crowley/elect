HEIGHT = 720;
WIDTH = 1280;
zoom = 1.0;


vw = 0:WIDTH-1;
vh = 0:HEIGHT-1;


cr = 1.5 * ( vw - WIDTH/1.3) ./ (0.5 * zoom * WIDTH);
ci = 1.0 * (vh - HEIGHT/2.0) ./ (0.5 * zoom * HEIGHT);


%{
for(row = 0; row < height; row ++ ){
    for(col = 0; col < width; col ++){
        
        real = 1.5 * (col - width / 1.3) / (0.5 * zoom * width) + moveX;
        imag = (row - height / 2) / (0.5 * zoom * height) + moveY;
%}
  


        
        