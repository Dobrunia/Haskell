import qualified Data.Char as Char

main :: IO ()
main = ask

capitalized :: String -> String
capitalized "" = ""
capitalized (x:xs) = Char.toUpper x : map Char.toLower xs

ask :: IO ()
ask = do 
    putStrLn "Как тебя зовут?"
    name <- getLine
    if name == ""
        then putStrLn "Ты не ввел имя!" >> ask
        else do
            putStrLn ("Привет, " ++ capitalized name ++ "!")
            continue

continue :: IO ()
continue = do 
    putStrLn "Продолжить? (y/n)"
    x <- getLine
    if map Char.toLower x == "y"
        then ask
        else putStrLn "Спасибо за внимание!"
