module Wax where

waxOn = x * 5
    where 
        z = 7
        y = z + 8
        x = y ^ 2

waxOff x = triple x

triple x = x * 3
