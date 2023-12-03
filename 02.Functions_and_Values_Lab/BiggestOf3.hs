main :: IO ()
main = do
    -- Reads a line of numbers separated by spaces
    input <- getLine

    -- Splits the string into a list of strings
    let inputs = words input

    -- Converts strings to Integers
    let numbers = map read inputs :: [Integer]

    -- Creating the biggestOf3 function
    let biggestOf3 a b c =
          if max a b == a
          then if max a c == a
               then a
               else c
          else if max b c == b
               then b
               else c

    -- Applying the biggestOf3 function to the numbers
    let result = biggestOf3 (numbers !! 0) (numbers !! 1) (numbers !! 2)

    -- Prints the result
    putStrLn (show result)
