--8.3 a
fizzbuzz :: Integer -> String
fizzbuzz a
    | ((a `mod` 3) == 0) && ((a `mod` 5) == 0) = "fizzbuzz"
    | ((a `mod` 3) == 0) = "fizz"
    | ((a `mod` 5) == 0) = "buzz"
    | otherwise = show a

--8.3 b
right1to16 :: [String]
right1to16 = foldr ((:).fizzbuzz) ["16"] [1..15]

--8.3 c
left1to16 :: [String]
left1to16 = foldl (flip ((:).fizzbuzz)) ["16"] (foldl (flip (:)) []  [1..15])
