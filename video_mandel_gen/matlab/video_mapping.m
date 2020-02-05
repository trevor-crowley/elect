HEIGHT = 600;
WIDTH = 800;

cartXoffset = 0.3245046418497685;
cartYoffset = + 0.04855101129280834;



zoom_factor = 0.01;


screenX = 0:WIDTH-1;
screenY = 0:HEIGHT-1;

% optimize below for verilog
cartX = +3.0 * (screenX - WIDTH/1.28) .* (zoom_factor * 1/WIDTH)  + cartXoffset;
cartY = -2.0 * (screenY - HEIGHT/2.0) .* (zoom_factor * 1/HEIGHT) + cartYoffset;


tiledlayout(2,1); % Requires R2019b or later
nexttile;
plot(screenX, cartX, 'b.');

nexttile;
plot(screenY, cartY, 'r.');

%{

			// TB:  max zoom factor = 0.01
	        real_top = col - (const fixed_point_scale)(WIDTH * (1.0/1.28));
	        real_btm =  (const fixed_point_scale) (1.0/WIDTH);
	        x0 =  (fixed_point) 3.0 * (fixed_point)(real_top * real_btm * zoom) + moveX;

	        imag_top = row - (const fixed_point_scale)(HEIGHT * 0.5);
	        imag_btm = (fixed_point_scale)(2.0/HEIGHT);
	        y0 = (fixed_point)(imag_top * imag_btm * zoom) + moveY;


for(row = 0; row < height; row ++ ){
    for(col = 0; col < width; col ++){
        
        real = 1.5 * (col - width / 1.3) / (0.5 * zoom * width) + moveX;
        imag = (row - height / 2) / (0.5 * zoom * height) + moveY;
  

screenX = +zoom_factor*cartX + screen_width/2   + offsetX
screenY = -zoom_factor*cartY + screen_height/2  + offsetY

%%%
cartX = (screenX - screen_width/2 - offsetX )*zoom_factor  
cartX = (screenX - screen_width/2 )*zoom_factor  
%}