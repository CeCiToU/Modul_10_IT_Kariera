import Data.Char (isLower, isUpper, isLetter)

main :: IO ()
main = do
    -- Input a string from the user
    input <- getLine

    -- Call the analyzeString function and print the result
    let (lowercaseCount, uppercaseCount, otherCount) = analyzeString input
    putStrLn $ show lowercaseCount ++ " " ++ show uppercaseCount ++ " " ++ show otherCount

-- Function to analyze a string
analyzeString :: String -> (Int, Int, Int)
analyzeString str =
    let lowercaseCount = length $ filter isLower str
        uppercaseCount = length $ filter isUpper str
        otherCount = length $ filter (not . isLetter) str
    in
        (lowercaseCount, uppercaseCount, otherCount)
