main :: IO ()
main = do
    -- Reads the number
    input <- getLine

    -- Converts string to an Integer
    let number = read input :: Integer

    -- Creating the isEven function
    let isEven x = if x `mod` 2 == 0
                   then True
                   else False

    -- Applying the isEven function to the number
    let result = isEven number

    -- Prints the result
    putStrLn (show result)
