function T = mandel_type(dt)
switch (dt)
    case 'double'
        T.x = double([]);
        T.y = double([]);
    case 'single'
        T.x = single([]);
        T.y = single([]);

    case 'fixed'
        F = fimath('RoundingMethod', 'Convergent', ...
            'OverflowAction', 'Saturate', ...
            'ProductMode', 'FullPrecision', ...
            'SumMode', 'FullPrecision');
        T.x = fi([], 1, 16, 14, F);
        T.y = fi([], 1, 16, 14, F);
    case 'scaled'
        T.x = fi([], 1, 16, 14, 'datatype', 'ScaledDouble');
        T.y = fi([], 1, 16, 14, 'datatype', 'ScaledDouble');
       
end