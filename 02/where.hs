module Where where

import Prelude

x1 = x * 3 + y
    where
        x = 3
        y = 1000

x2 = x * 5
    where
        y = 10
        x = 10 * 5 + y

x3 = z / x + y
    where
        x = 7
        y = negate x
        z = y * 10
