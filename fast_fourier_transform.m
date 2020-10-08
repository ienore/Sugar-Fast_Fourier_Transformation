function X = fast_fourier_transform(x)
    N = length(x);
    X = zeros([1,N]);
    if N == 1
        X = x;
        return
    end
    x_new = reshape(x,[2,N/2]);
    odd_array = x_new(2,:); %Count from 0
    even_array = x_new(1,:);
    E = fast_fourier_transform(even_array);
    O = fast_fourier_transform(odd_array);
    factor_array = exp(-1i*2*pi/N * (0:1:(N/2-1)));
    X(1:N/2) = E + factor_array.* O;
    X((N/2+1):N) = E - factor_array.* O;
end

