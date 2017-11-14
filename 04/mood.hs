module Mood where

data Mood = Blah | Woot deriving Show

changeMood Blah = Woot
changeMood Woot = Blah
