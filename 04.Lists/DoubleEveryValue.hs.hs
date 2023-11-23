main :: IO ()
main = do
    -- Reads a line of numbers separated by spaces
    input <- getLine
    
    let inputs = words input

    -- Converts the string to an Integer
    let numbers = map read inputs :: [Int]

    -- Creating doubler function
    let doubleList list = 
            if null list
            then []
            else (2 * (head list) : (doubleList (tail list)))


    let result = doubleList numbers 

    -- Prints the result
    print result
