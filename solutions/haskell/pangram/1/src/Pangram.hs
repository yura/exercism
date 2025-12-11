module Pangram (isPangram) where

import Data.Char

isPangram :: String -> Bool
isPangram text = all (\c -> elem c lower) ['a'..'z']
  where lower = map toLower text
