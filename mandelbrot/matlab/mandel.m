function mandel(centre,width,grid,depth,cmapindx)

    x = linspace(real(centre)-(width/2),real(centre)+(width/2),grid);
    y = linspace(imag(centre)-(width/2),imag(centre)+(width/2),grid)';

    n = length(x);
    e = ones(n,1);

    % setup 2D complex initial mesh
    z0 = x(e,:) + i*y(:,e);

    % working complex plane
    z = zeros(n,n);
    % working escape count
    c = zeros(n,n);

    % generate mandelbrot set 
    for k = 1:depth
        %mandelbrot formual (2D grid)
        z = z.^2 + z0;
        %set escape count
        c(abs(z) < 2) = k;
    end
    
    % create image, mapping escape count grid to colour map
     image(c)
     axis image
     colormap(flipud(jet(depth)))
%     spinmap(10)
%    surf(c);
    
end

% mandel(-.7700-.1300i,0.1,2048,512)
