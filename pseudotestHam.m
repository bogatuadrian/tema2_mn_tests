
function [] = pseudotestHam(n_tests = 10)

	good = 0;
	for j = 1 : n_tests
		% dimensiunea sirului
		n = randperm(100)(50);

		% cream sirul pe care il vom permuta
		for i = 1 : 2 : (n + 1)
			sir(i) = "1";
			sir(i + 1) = "0";
		end

		sir = sir(randperm(n))
		if(formareHam(sir) == corectareHam(formareHam(sir)))
			good++;
		end
	end
	
	if(good == n_tests)	
		message = "Good job!"
	else
		message = "Ai gresit!"
	end

end
