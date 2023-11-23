main :: IO ()
main = do
    -- Read a line of numbers separated by spaces
    input <- getLine
    
    -- Split the input string into a list of strings representing numbers
    let inputs = words input

    -- Define the recursive function to reverse a list using pattern matching
    let reverseList :: [a] -> [a]
        -- Base case: an empty list results in an empty list
        reverseList [] = []
        -- Recursive case: reverse the rest of the list and append the current element
        reverseList (x:xs) = reverseList xs ++ [x]

    -- Apply the reverseList function to the list of strings
    let result = reverseList inputs

    -- Print the result
    print result
