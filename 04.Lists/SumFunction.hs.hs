main :: IO ()
main = do
    -- Reads a line of numbers separated by spaces
    input <- getLine
    
    let inputs = words input

    -- Converts the string to an Integer
    let numbers = map read inputs :: [Int]

    -- Creating sum function
    let sumList :: [Int] -> Int -> Int
        sumList [] acc = acc
        sumList (x:xs) acc = sumList xs (acc + x)

    let result = sumList numbers 0

    -- Prints the result
    print result
