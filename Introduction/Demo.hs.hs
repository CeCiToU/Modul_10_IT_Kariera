-- Without this row it can't be runned
main = do
   -- Reads value from console
    value <- getLine
    -- Converts the value to int
    let intValue = read value :: Int
    
    -- Adds 5 to the absolute value after checking if it is negative or  positive
        plusFive = if intValue < 0
                        then (-intValue) + 5
                        else intValue + 5
    -- Prints the final result
    putStrLn (show plusFive)
