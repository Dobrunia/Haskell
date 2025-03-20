main :: IO ()
main = print (sumNumbers 10)

sumNumbers :: Integer -> Integer
sumNumbers n
    | n < 0     = error "Argument must be non-negative"
    | otherwise = go n 0
  where
    go 0 acc = acc
    go n acc = go (n - 1) (acc + n)
