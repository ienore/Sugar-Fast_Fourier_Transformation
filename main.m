x = rand([1,2^10]);
fftx_zjy = fast_fourier_transform(x);
fftx = fft(x);
diff = fftx_zjy - fftx;
plot(abs(diff))
