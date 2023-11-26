import Data.Char (isDigit)

main :: IO ()
main = do
    -- Input a string from the user
    input <- getLine

    -- Call the sumDigits function and print the result
    let result = sumDigits input
    putStrLn $ show result

-- Function to calculate the sum of decimal digits in a string
sumDigits :: String -> Int
sumDigits str = sum $ filter isDigitInt $ map digitToInt str

-- Helper function to convert a Char to an Int
digitToInt :: Char -> Int
digitToInt c = fromEnum c - fromEnum '0'

-- Helper function to filter only the decimal digits
isDigitInt :: Int -> Bool
isDigitInt x = x >= 0 && x <= 9
