PRIME_COUNT = 500_000
primes = [2]

def prime?(num)
  max_factor = Math.sqrt(num).floor
  (2..max_factor).each do |factor|
    return false if (num % factor).zero?
  end
  true
end

start_time = Time.now
candidate = 3
while primes.size < PRIME_COUNT do
  primes << candidate if prime?(candidate)
  candidate += 2
end
elapsed = Time.now - start_time

puts "last prime found: #{primes[-1]}"
puts "elapsed: #{elapsed}"
