main :: IO ()
main = do
    -- Reads a line of numbers separated by spaces
    input <- getLine

    -- Splits the string into a list of strings
    let inputs = words input

    -- Takes the command
    let command = (inputs !! 0)
    
    -- Converts last value of the list to Integer
    let number = read (inputs !! 1) :: Integer

    -- Creating the add1 function
    let add1 x = x + 1
    
    -- Creating the remove1 function
    let remove1 x = x - 1
    
    -- Creating the Applying function
    let apply f x = if f == "remove1"
                 then remove1 x
                 else if f == "add1"
                      then add1 x
                      else error "Invalid operation"

    -- Applying the exact function to the number
    let result = apply command number

    -- Prints the result
    putStrLn (show result)
