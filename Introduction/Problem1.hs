main = do

    -- Reads first name from terminal
    firstName <- getLine
    
    -- Reads last name from terminal
    lastName <- getLine
    
    -- Prints first and last name
    putStrLn ( firstName ++ " " ++ lastName)
