main :: IO ()
main = do
    -- Reads a line of numbers separated by spaces
    input <- getLine
    
    let inputs = words input
    
    -- Converts the string to an Integer
    let numbers = map read inputs :: [Int]
    
    -- Creating length function
    let listLength list x =
            if null list
            then x
            else listLength (tail list) (x + 1)

    let result = listLength numbers 0

    -- Prints the result
    putStrLn (show result)
