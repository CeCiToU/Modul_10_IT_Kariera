main :: IO ()
main = do
    -- Reads the number
    input <- getLine

    -- Converts string to an Integer
    let number = read input :: Integer

    -- Creating the doubler function
    let doubler x = x * 2

    -- Applying the doubler function to the number
    let result = doubler number

    -- Prints the result
    putStrLn (show result)
