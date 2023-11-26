main :: IO ()
main = do
    -- Reads a line of input
    figure <- getLine
    size <- getLine

    -- Converts the string to an Integer
    let number = read size :: Int

    -- Creating the upsideDownTriangle function
    let upsideDownTriangle x =
            if x == 0
            then ""
            else replicate x '*' ++ "\n" ++ upsideDownTriangle (x - 1)
            
    -- Creating the rectangle function
    let rectangle a b = 
            if b == 0
            then ""
            else replicate a '*' ++ "\n" ++ rectangle a (b - 1)

    -- Check the figure type and print the result
    if figure == "triangle"
    then putStrLn $ upsideDownTriangle number
    else if figure == "rectangle"
    then putStrLn $ rectangle number number
    else putStrLn "Invalid figure!"
