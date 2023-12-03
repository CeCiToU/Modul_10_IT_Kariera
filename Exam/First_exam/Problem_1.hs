checkingPasscode :: [Char] -> IO()
checkingPasscode [] = return()
checkingPasscode (x:y:z:m:xs) 
    | x <= '0' || x >= '9' = putStrLn "Invalid code"
    | y <= '0' || y >= '9' = putStrLn "Invalid code"
    | z <= '0' || z >= '9' = putStrLn "Invalid code"
    | m <= '0' || m >= '9' = putStrLn "Invalid code"
    | otherwise = do 
        if x == m && z == y then putStrLn "Unlock" else 
            do putStrLn "Not unlock"

main :: IO()
main = do
    input <- getLine
    if length input /= 4 then putStrLn "Invalid code" else do
        checkingPasscode input
        