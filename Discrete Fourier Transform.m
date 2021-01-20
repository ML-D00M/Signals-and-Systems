function dftea = f_dftea (signal)
N = length(signal);
j = sqrt(-1);
w0 = 2*pi/N;

for k = 1:N
    B(:,k) = 1/sqrt(N)*exp(-j*w0*(k-1)*(0:N-1));
end;

dftea = real(signal*B);
end