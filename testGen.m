%
%   Intelectual property of Adrian Bogatu.
%     for educational purposes only
%

function [A b x] = testGen(N_MAX)

	if(N_MAX <= 0)
		message = "Can't generate random numbers less than 0"
		return
	end
	n = m = 1;
	while (n == 1) || (m == n)
		n = randperm(N_MAX)(1);
		m = randperm(N_MAX)(1);
	end

	% generam random matricea A a coeficientilor
	A = zeros(n, n);
	for i = 1:n
		% generam un vector random de lungime i
		random = (randperm(N_MAX) - (N_MAX / 2))(randperm(i));
		A(i, 1:i) = random;
		if(A(i, i) == 0)
			A(i, i) = randperm(ceil(N_MAX / 2))(1);
		end
	end

	A

	% generam aleator vectorul de solutii
	x = [];
	for i = 1:(N_MAX / 10 + 1)
		x = [x, (randperm(10) - 5)];
	end
	x = x(1:n);

	x = x'
	b = A * x;
	b = b'

end
