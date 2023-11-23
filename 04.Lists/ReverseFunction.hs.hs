main :: IO ()
main = do
    -- Reads a line of numbers separated by spaces
    input <- getLine
    
    let inputs = words input
    
    -- Converts the string to an Integer
    let numbers = map read inputs :: [Int]
    
    -- Creating reverse function
    let reverseList :: [a] -> [a] -> [a]
        reverseList list newList =
            if null list
            then newList
            else reverseList (tail list) (head list : newList)

    let result = reverseList numbers []

    -- Prints the result
    putStrLn(show result)
