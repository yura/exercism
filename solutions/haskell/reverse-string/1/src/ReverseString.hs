module ReverseString (reverseString) where

reverseString :: String -> String
-- Verbose style
-- reverseString [] = []
-- reverseString (c:cs) = reverseString cs ++ [c]

-- Folding
-- reverseString = foldl (\r c -> c : r) []

-- Function "alias"
reverseString = reverse


