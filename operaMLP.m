function [Y R Z] = operaMLP(W,V,X)
    sz = size(X);
    R = W*[ones(1,sz(2)); X];
    Z = tanh(R);
    Y = V*[ones(1,sz(2)); Z];
end