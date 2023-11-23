main = do
    -- Reads first number
    valueOne <- getLine
    
    -- Reads second number
    valueTwo <- getLine

    -- Converts strings to numbers
    let numOne = read valueOne :: Int
    let numTwo = read valueTwo :: Int

    -- Calculates the result
    let result = numOne * numTwo

    -- Prints the result
    putStrLn (show result)