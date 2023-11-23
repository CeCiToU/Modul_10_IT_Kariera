main :: IO ()
main = do
    -- Reads the radius
    r <- getLine

    -- Converts string to a Double
    let radius = read r :: Double

    -- Calculates the area of the circle
    let result = pi * radius * radius

    -- Prints the result
    putStrLn (show result)