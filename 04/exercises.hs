module Exercises where

isPalindrome :: Eq a => [a] -> Bool
isPalindrome s = s == reverse s

myAbs :: Integer -> Integer
myAbs i = if i > 0 then i else i * (-1)

f :: (a, b) -> (c, d) -> ((b, d), (a, c))
f t1 t2 = ((snd t1, snd t2), (fst t1, fst t2))

x = (+)

lengthPlusOne :: [Char] -> Int
lengthPlusOne xs = w `x` 1
    where w = length xs

id' :: a -> a
id' x = x

fst' :: (a, b) -> a
fst' (a, b) = a


