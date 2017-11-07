module Functions where

exclaim :: String -> String
exclaim s = s ++ "!"

fifth :: String -> Char
fifth s = s !! 4

from9 :: String -> String
from9 s = drop 9 s

thirdLetter :: String -> Char
thirdLetter s = s !! 2

curryIndex :: Int -> Char
curryIndex i = s !! i
    where s = "Curry is awesome!"

rvrs :: String
rvrs =  a ++ b ++ c
    where
        s = "Curry is awesome"
        c = take 5 s
        b = take 4 (drop 5 s)
        a = drop 9 s
        
