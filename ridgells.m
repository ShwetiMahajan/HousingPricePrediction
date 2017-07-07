%Name : Shweti Mahajan SID: 861255856
%Date : 16th April 2017
%Course : CS171 Assignment Number : PS1
function [w,b] = ridgells(X,Y,lambda)
[m n] = size(X);
a = ones(m,1);
X = [a X];
Xt = X.';
A = (Xt*X);
I = eye((n),n);
i = zeros(n,1);
I = [i I];
i = zeros(n+1,1);
I = [i.';I];
M = A +(lambda*I);
c = Xt*Y;
W = inv(M);
w = W*c;

b = w(1,:);
w(1,:) = []; 

end