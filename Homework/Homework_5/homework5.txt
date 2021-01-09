dectobin :: Int -> [Int]
dectobin 0 = [0]
dectobin n = n `mod` 2 : dectobin (n `div` 2)

count1 :: [Int] -> Int
count1 [] = 0
count1 (x:xs) = x * (count1 xs + 1) + (1-x) * (count1 xs)
--above equation is analogous to bernoulli 
--random variable equation to skip guards

isEvil :: Int -> Bool
isEvil x = (count1(dectobin x) `mod` 2) == 0

evils :: [Int]
evils = [ x | x<- [0..], (isEvil x)]

isOdious :: Int -> Bool
isOdious x = not (isEvil x) 

--those numbers which are not evils are odious ;)

odious :: [Int]
odious = [ x | x<- [0..], (isOdious x)]

