difSquareSum x = ((^2) $ (sum [0..x])) - (sum $ map (^2) [1..x])
