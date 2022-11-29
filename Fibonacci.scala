object Fibonacci {
   def fibonacci(n: Int): Int = 
        if (n < 3) 1 
              else fibonacci(n - 1) + fibonacci(n - 2)
    def fib2(n: Long): Long = {
    var first = 0
    var second = 1
    var count = 0

    while(count < n){
        val sum = first + second
        first = second
        second = sum
        count = count + 1
    }

    return first
    }

    def fib3(n: Int): Int = {
    def fib_tail(n: Int, a: Int, b: Int): Int = n match {
        case 0 => a
        case _ => fib_tail(n - 1, b, a + b)
    }
    return fib_tail(n, 0 , 1)
    }
    def main(args: Array[String]) {
        for {i <- List.range(1, 17)} 
            yield { print(fib3(i) + ", ") }
        println("...")
    }

    val fib: Stream[BigInt] = BigInt(0) #:: BigInt(1) #:: fib.zip(fib.tail).map(p => p._1 + p._2)

    def fib4(n: Int) = fib(n)
}
