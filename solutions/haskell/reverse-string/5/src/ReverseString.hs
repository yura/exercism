module ReverseString (reverseString) where

-- | Verbose style
-- reverseString :: String -> String
-- reverseString [] = []
-- reverseString (c:cs) = reverseString cs ++ [c]

-- | Folding
-- reverseString :: String -> String
-- reverseString = foldl (\r c -> c : r) []
-- Nice improvement by menketechnologies
-- https://exercism.org/tracks/haskell/exercises/reverse-string/solutions/menketechnologies
-- reverseString = foldl (flip (:)) []

-- | Function "alias"
reverseString :: String -> String
reverseString = reverse

-- | Grapheme cluster support
-- 1. Install icu4c https://github.com/haskell/text-icu
-- 2. Add text-icu to package.yaml

-- import qualified Data.Text as T
-- import qualified Data.Text.ICU as I

-- reverseString :: String -> String
-- reverseString s = T.unpack . T.concat . reverse $ map I.brkBreak (I.breaks (I.breakCharacter (I.Locale "en_US")) (T.pack s))
