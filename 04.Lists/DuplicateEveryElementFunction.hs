main :: IO ()
main = do
    -- Reads a line of numbers separated by spaces
    input <- getLine
    
    let inputs = words input
    
    -- Creating duplicate function
    let duplicate :: [String] -> [String] -> [String]
        duplicate list duplicatedList =
            if null list
            then duplicatedList
            else duplicate (tail list) (head list : head list : duplicatedList)

    let result = reverse (duplicate inputs [])

    -- Prints the result
    putStrLn (unwords result)