object Prime {
  val primes: Stream[Int] = 2 #:: Stream.from(3).filter { n => !primes.takeWhile(_ <= math.sqrt(n)).exists(n % _ == 0) }

def isPrime(n: Int) = primes.dropWhile(_ < n).head == n

}
