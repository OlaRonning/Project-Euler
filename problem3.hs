primes = sieve [2..]
  where
    sieve (p:xs) = p : sieve [x|x <- xs, x `mod` p > 0]
 
primesof x a = 
	filter (\y -> x `mod` y == 0) 
	(takeWhile (<a) primes)
