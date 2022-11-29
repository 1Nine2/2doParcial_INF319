fibs = 1:1:zipWith (+) fibs (tail fibs)
fibonacci :: Integer -> [Integer]
fibonacci 1 = [0]
fibonacci 2 = [0, 1]
fibonacci n = reverse $ (x + y) : upToN
  where
    upToN@(x:y:_) = reverse $ fibonacci (n - 1)

fibs1 = 0 : (go 0 1)
  where go a b = b : go b (a+b)