fibevensum n (x:y:xs) = 
  if (n > (y+x))
  then fibevensum n ((x+y):x:y:xs)
  else sum (filter (even) (x:y:xs))
