module McCarthy91 where

mc91 :: Integer -> Integer
mc91 x
    | x > 100 = x - 10
    | x <= 100 = mc91(mc91(x + 11))
