main :: IO ()
main = do
    -- Reads a line of numbers separated by spaces
    input <- getLine
    
    -- Converts the string to an Integer
    let number = read input :: Integer

    -- Creating the fibonacci  function
    let fibonacci 0 = 0
        fibonacci 1 = 1
        fibonacci x = fibonacci (x - 1) + fibonacci (x - 2)    
    let result = fibonacci  number

    -- Prints the result
    putStrLn (show result)
