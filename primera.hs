fib::Int->Int
fib 0 = 0
fib 1 = 1
fib n = fib (n-1) + fib (n-2)
fibList n = map fib [1..n]

fib1::Int->[Int]
fib1 0 = [0]
fib1 1 = [1, 0]
fib1 n = (head (fib1 (n-1)) + head (fib1 (n-2))) : fib1 (n-1)

fibo :: (Integral a, Integral b) => a -> [b]
fibo 0 = [0]
fibo n = 0 : fiboHelper 0 1 (n-1)

fiboHelper :: (Integral a, Integral b) => a -> a -> b -> [a]
fiboHelper si si1 n
  | n < 0 = []
  | otherwise = si1 : fiboHelper si1 (si+si1) (n-1)

fibonacci :: (Integral a) => a -> a
fibonacci 0 = 0
fibonacci 1 = 1
fibonacci n = fibonacci (n - 1) + fibonacci (n - 2)