module P005 (
    divisible_by_range,
    p005_solution
) where

import Data.List

divisible_by_range :: Int -> Int -> Bool
divisible_by_range ul n | ul == 1 = True | otherwise = if n `mod` ul == 0 then divisible_by_range (ul - 1) n else False 

p005_solution :: String
p005_solution = show $ head $ filter (divisible_by_range 20) [1..] 