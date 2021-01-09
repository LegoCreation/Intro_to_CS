rotate :: Int -> [a] -> [a]
rotate _ [] = []
rotate x xs
       | (x `mod` length(xs)) == 0 = xs
rotate x (y:ys) = rotate ((x-1) `mod` length(ys)) (ys ++ y:[])
--please note that you must load the rotate function from question 3.4a in order to run this program successfully.
circle :: [a] -> [[a]]
circle [] = []
circle xs = [(rotate x xs) | x<-[0..(length(xs)-1)]]

mirror :: [a] -> [a]
mirror [] = []
mirror (y:ys)
	| length(ys) > 0 = mirror ys ++ y:[]
