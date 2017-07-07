%Name : Shweti Mahajan SID: 861255856
%Date : 16th April 2017
%Course : CS171 Assignment Number : PS1
function err = llserr(X, Y, w, b)
w = [b ; w];
[m n] = size(X);
a = ones(m,1);
X = [a X];
err = mean((Y - X*w).^2);
end