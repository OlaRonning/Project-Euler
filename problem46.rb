require 'prime'
primes = []
bool = false
for i in 3..10000000 
  if Prime.prime?(i) then
    primes.push i
  else
    primes.each do |p|
      n = (i-p)
      if( n % 2 == 0) then
        if ((Math.sqrt((n / 2 )) % 1.0) == 0.0) then
          bool = true
      end
     end
   end
   if (!bool && (i % 2) == 1) then
      puts i
      break
    else
      bool = false
    end
  end
end

