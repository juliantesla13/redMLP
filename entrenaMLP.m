function [W,V] = entrenaMLP(W,V,X,D,alpha)
	sz = size(X);
	dW = zeros(size(W));
	dV = zeros(size(V));
	for i = 1:sz(2)
		[Y R Z] = operaMLP(W,V,X(:,i));
		e = D(:,i)-Y;
		dV = dV+alpha*e*[1; Z]';
		dW = dW+alpha*e*(V(2:end)'.*(sech(R).^2))*[1; X(:,i)]';
	end
  W = W+dW;
	V = V+dV;
end