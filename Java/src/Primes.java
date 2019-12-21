import java.util.ArrayList;
import java.util.List;

public class Primes {

    public static void main(String[] args) {
        final long PRIME_COUNT = 5_000;
        Primes myPrimes = new Primes();
        myPrimes.findPrimes(PRIME_COUNT);
    }

    private boolean isPrime(final long num) {
        final long max_factor = (long) (Math.floor(Math.sqrt(num)));
        for (long factor = 2; factor <= max_factor; factor++) {
            if (num % factor == 0) return false;
        }
        return true;
    }

    private void findPrimes(final long PRIME_COUNT) {
        final long startMillis = System.currentTimeMillis();

        List<Long> primes = new ArrayList<>();
        primes.add(2L);

        long candidate = 3L;
        while (primes.size() < PRIME_COUNT) {
            if (isPrime(candidate)) primes.add(candidate);
            candidate += 2L;
        }

        final long elapsedMillis = System.currentTimeMillis() - startMillis;
        System.out.println("last prime: " + primes.get(primes.size() - 1));
        System.out.println("elapsed: " + elapsedMillis / 1000.0 + " seconds");
    }
}
