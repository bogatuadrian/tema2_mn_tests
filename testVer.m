%
%   Intelectual property of Adrian Bogatu.
%     for educational purposes only
%

% tests the triCC or triCL implementation with some random systems
%
% n_tests = number of tests
% N_MAX = the maxium width and height of the coefficients' matrix
% method = default triCL
function [] = testVer(n_tests = 10, N_MAX = 100, method = "triCL")

  failed = [];
	failed_test = [];
	j = 1;

	for i = 1:n_tests
		n_max = randperm(N_MAX)(1);
		[A b x] = testGen(n_max + 1);
		if(method == "triCC")
			xrez = triCC(A, b)';
		end
		if(method == "triCL")
			xrez = triCL(A, b)';
		end
		if(x != xrez)
			failed = [failed i]
      message = "You failed this test!"
      return
		end
	end
	
	if(length(failed) == 0)
		message = "Good job!"
  end
end
