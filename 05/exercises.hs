module Exercises where

-- write a type signature

functionH :: [a] -> a
functionH (x:_) = x

functionC :: Ord a => a -> a -> Bool
functionC x y =
    if (x > y) then True else False

functionS :: (a, b) -> b
functionS (x, y) = y



-- given a type write a function
i :: a -> a
i x = x

c :: a -> b -> a
c x y = x

c'' :: b -> a -> b -- same as c
c'' x y = x

c' :: a -> b -> b
c' x y = y

r :: [a] -> [a]
r x = x

r' :: [a] -> [a]
r' x = reverse x -- also returns a list of a

r'' :: [a] -> [a]
r'' x = tail x -- also returns a list of a - not safe?

r''' :: [a] -> [a]
r''' x = take 1 x -- also returns a list of a - not safe?

co :: (b -> c) -> (a -> b) -> a -> c
co bToc aTob a = bToc $ aTob a

a :: (a -> c) -> a -> a
a _ a = a -- a -> c doesn't do anything useful

a' :: (a -> b) -> a -> b
a' aTob a = aTob a

