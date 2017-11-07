module Reverse where

rvrs :: String -> String
rvrs s =  a ++ b ++ c
    where
        c = take 5 s
        b = take 4 (drop 5 s)
        a = drop 9 s

main :: IO ()
main = print (rvrs "Curry is awesome")
