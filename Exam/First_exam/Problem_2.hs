main :: IO ()
main = do
    size <- readLn
    putStrLn $ generateChristmasTree (size + 1)

generateChristmasTree :: Int -> String
generateChristmasTree size = unlines $ map (generateLine size) [1..size]

generateLine :: Int -> Int -> String
generateLine totalSize currentSize
  | currentSize == 1 = replicate (totalSize - 1) ' ' ++ "|"
  | otherwise = replicate (totalSize - currentSize) ' ' ++ replicate (currentSize - 1) '*' ++ "|" ++ replicate (currentSize - 1) '*' ++ replicate (totalSize - currentSize) ' '
