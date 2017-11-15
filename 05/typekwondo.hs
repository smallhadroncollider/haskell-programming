module TypeKwonDo where

-- 01

f :: Int -> String
f = undefined

g :: String -> Char
g = undefined

h :: Int -> Char
h = g . f

h' :: Int -> Char
h' x = g $ f x -- without composition


-- 02

data A
data B
data C

q :: A -> B
q = undefined

w :: B -> C
w = undefined

e :: A -> C
e = w . q

e' :: A -> C
e' x = w $ q x -- without composition


-- 03

data X
data Y
data Z

xz :: X -> Z
xz = undefined

yz :: Y -> Z
yz = undefined

xform :: (X, Y) -> (Z, Z)
xform t = (xz x, yz y)
    where
        x = fst t
        y = snd t

xform' :: (X, Y) -> (Z, Z)
xform' t = (xz $ fst t, yz $ snd t) -- smaller, but harder to follow


-- 04

munge :: (x -> y) -> (y -> (w, z)) -> x -> w
munge xToy yTowz = fst . yTowz . xToy

munge' :: (x -> y) -> (y -> (w, z)) -> x -> w
munge' xToy yTowz x = fst $ yTowz $ xToy x -- without composition
