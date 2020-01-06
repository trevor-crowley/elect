
function [z, c] = mandel_fi(centre,width,grid,depth) %#codegen

    x = (linspace(real(centre)-(width/2),real(centre)+(width/2),grid));
    y = (linspace(imag(centre)-(width/2),imag(centre)+(width/2),grid))';

    n = (length(x));
    e = (ones(n,1));

    % setup 2D complex initial mesh
    z0 = x(e,:) + 1i*y(:,e);

    % working complex plane
    z = complex(zeros(n,n));
    % working escape count
    c = zeros(n,n, 'uint16');

    % generate mandelbrot set 
    for k = 1:depth
        %mandelbrot formula (2D grid)
        z = z.^2 + z0;
        %set escape count
        c(abs(z) < 2) = k;
    end
   
end

%%
%     % create image, mapping escape count grid to colour map
%      image(c)
%      axis image
%      colormap(flipud(jet(depth)))


% mandel_test(-.7700-.1300i,0.1,2048,512)
