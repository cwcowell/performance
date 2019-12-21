import datetime, math

PRIME_COUNT = 5_000
primes = [2]

def is_prime(num):
    max_factor = math.floor(math.sqrt(num))
    for factor in range(2, max_factor + 1):
        if num % factor == 0:
            return False
    return True

start_time = datetime.datetime.now()
candidate = 3
while len(primes) < PRIME_COUNT:
    if is_prime(candidate):
        primes.append(candidate)
    candidate += 2
elapsed = datetime.datetime.now() - start_time

print(f'last prime: {primes[-1]}')
print(f'elapsed: {elapsed}')
