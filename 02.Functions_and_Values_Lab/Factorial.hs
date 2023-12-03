main :: IO ()
main = do
    -- Reads a line of numbers separated by spaces
    input <- getLine
    
    -- Converts the string to an Integer
    let number = read input :: Integer

    -- Creating the factorial function
    let factorial x = if x == 1
                      then 1
                      else x * factorial (x - 1)
    
    let result = factorial number

    -- Prints the result
    putStrLn (show result)
