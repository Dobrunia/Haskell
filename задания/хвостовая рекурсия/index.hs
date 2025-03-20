main :: IO ()
main = print (sumNumbers 5)

sumNumbers :: Integer -> Integer
sumNumbers n
    | n < 0     = error "arg must be positive"
    | n == 0    = 0
    | otherwise = n + sumNumbers (n - 1)
