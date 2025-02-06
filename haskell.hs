module Stack where

type Stack a = [a]

push :: a -> Stack a -> Stack a
push x xs = x : xs

pop :: Stack a -> (a, Stack a)
pop (x:xs) = (x, xs)

peek :: Stack a -> a
peek (x:_) = x

isEmpty :: Stack a -> Bool
isEmpty [] = True
isEmpty _ = False

main :: IO ()
main = do
    let stack = push 1 (push 2 [])
    print (fst (pop stack))  -- 2