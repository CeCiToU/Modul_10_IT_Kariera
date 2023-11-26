main :: IO ()
main = do
    -- Reads a line of numbers separated by spaces
    input <- getLine
    
    -- Converts the string to an Integer
    let number = read input :: Integer

    -- Creating the corrected tribonacci function
    let tribonacci 0 = 0
        tribonacci 1 = 0
        tribonacci 2 = 1
        tribonacci x = tribonacci (x - 1) + tribonacci (x - 2) + tribonacci (x - 3)   

    let result = tribonacci number

    -- Prints the result
    putStrLn (show result)
