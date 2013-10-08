fibevensum n (x:y:xs) = 
  if (n > (4*x+y))
  then fibevensum n ((4*x+y):x:y:xs)
  else sum (x:y:xs)
