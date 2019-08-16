module Lib
    (chop) where


-- Your code here!
-- Feel free to write helper functions.

-- chop :: [Int] -> [Int]

chop :: [Int] -> [Int]

chop [] = []
chop (x:xs) | x > 0 && xs /= [] = [x - 1] ++ [head xs + length xs] ++ tail xs 
            | x > 0 && xs == [] = [x - 1]
            | otherwise = [0] ++ chop xs
