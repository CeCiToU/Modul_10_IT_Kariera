main :: IO ()
main = do
    -- Reads a line of numbers separated by spaces
    input <- getLine

    -- Converts the string to an Integer
    let number = read input :: Int

    -- Creating the upsideDownTriangle function
    let upsideDownTriangle x =
            if x == 0
            then ""
            else replicate x '*' ++ "\n" ++ upsideDownTriangle (x - 1)

    let result = upsideDownTriangle number

    -- Prints the result
    putStrLn result
