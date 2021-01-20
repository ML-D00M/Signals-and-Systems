clear all;
close all;
N = 100;
E = eye(N);
j = sqrt(-1);
w0 = 2*pi/N;
%create the basis set pf normalized orthogonal basis vectors
% the norm of exp(j*w0*k*(0:N-1)) is 1/sqrt(N)
for k=0:N-1
    B(:,k+1) = 1/sqrt(N)*exp(j*w0*k*(0:N-1));
end;
% check that the basis set(columns of B) is orthonormal
imagesc([real(B'*B) imag(B'*B)]);
colorbar;
% generate an arbitrary sequence
s = zeros(1,N);
s(1:fix(N/2)) = cos(5*1*w0*(0:fix(N/2)-1));
figure
subplot(2,1,1)
plot(s,'o');
%compute decomposition coefficients
c = B'*s(:);
subplot(2,1,2)
plot(abs(c),'-.')
sh = B*c;
subplot(2,1,1);
hold on;
plot(real(sh),'r.'); % use real part to exclude numerical error
% and not ashow the small values in the imag part
%We can also verify Parseval's relation
s(:)'*s(:)
c(:)'*c(:)

