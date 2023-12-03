repeatCharacters :: String -> Int -> String
repeatCharacters [] _ = []
repeatCharacters (x:xs) n = replicate n x ++ repeatCharacters xs n

main :: IO ()
main = do
    inputString <- getLine
    inputN <- getLine
    let n = read inputN :: Int
    putStrLn $ repeatCharacters inputString n
