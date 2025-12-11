module Pangram (isPangram) where

import Data.Char

isPangram :: String -> Bool
isPangram text = all (`elem` lower) ['a'..'z']
  where lower = map toLower text
