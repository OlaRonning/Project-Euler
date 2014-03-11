require "prime"

longest_sequence = 1
longest_sum = 0
sum = 0
limit = 1000000
time_to_break = false

primes = []
sum = 0
Prime.each(1000000) do |p|
  primes.push p
end

for e in 0..primes.length-1 do
primes = primes.drop(e)
  for i in longest_sequence..primes.length-1 do
    sum = primes.take(i).inject{|sum,x| sum + x }
    if (sum > limit) then break end
    if (Prime.prime?(sum) && i > longest_sequence) then
      longest_sum = sum
      longest_sequence = i
    end
    sum = 0
  end
end
puts longest_sum

