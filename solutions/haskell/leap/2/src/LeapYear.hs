module LeapYear (isLeapYear) where

isLeapYear :: Integer -> Bool

-- on every year that is evenly divisible by 4
--   except every year that is evenly divisible by 100
--     unless the year is also evenly divisible by 400
isLeapYear year =
  if year `mod` 4 == 0 && year `mod` 100 /= 0 || year `mod` 400 == 0 then True else False

isLeapYear' year
  | year `mod`   4 /= 0 = False
  | year `mod` 100 /= 0 = True
  | year `mod` 400 /= 0 = False
  | otherwise           = True
