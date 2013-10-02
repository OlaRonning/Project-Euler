sumthree x =  sum (takeWhile (<x) [n | n <- [1..], n `mod` 3 == 0 || n `mod` 5 == 0])
