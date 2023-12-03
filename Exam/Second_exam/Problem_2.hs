drawTriangle :: Int -> IO ()
drawTriangle n = mapM_ putStrLn [spaces (n - i - 1) ++ stars (2 * i + 1) | i <- [0..n-1]]

spaces :: Int -> String
spaces n = replicate n ' '

stars :: Int -> String
stars n = replicate n '$'

main :: IO ()
main = do
    inputN <- getLine
    let n = read inputN :: Int
    if n > 0
        then drawTriangle n
        else putStrLn "Invalid value!"
