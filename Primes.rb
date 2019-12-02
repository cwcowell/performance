MAX_CANDIDATE = 10000000

primes = [2]


def prime?(candidate_prime)
  prime = true
  max_candidate_factor = Math.sqrt(candidate_prime).ceil # rounds up
  (2..max_candidate_factor).each do |candidate_factor|
    if (candidate_prime % candidate_factor).zero?
      prime = false
      break
    end
  end
  prime
end

start_time = Time.now
(3..MAX_CANDIDATE).each do |candidate_prime|
  primes << candidate_prime if prime?(candidate_prime)
end
elapsed = Time.now - start_time  

puts "found #{primes.size} primes"
puts "elapsed: #{elapsed}"
