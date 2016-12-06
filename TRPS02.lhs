TRPS02.lhs

http://itpro.nikkeibp.co.jp/article/COLUMN/20060801/244812/?itp_leaf_index

> module TRPS02 where
> 
> import Data.ByteString.Char8
> import Control.Exception
>
> import TRPS01 (repeated)

  *TRPS02> :t repeated 
  repeated :: (a -> a) -> Int -> a -> a

Polymorphic type
parametric polymorphisms

  *TRPS02 Data.Tree> :t (++)
  (++) :: [a] -> [a] -> [a]

ad-hoc polymorphisms (with "context")
  
  *TRPS02 Data.Tree> :t (+)
  (+) :: Num a => a -> a -> a

Data.ByteString

  *TRPS02> :t repeated $ flip append $ pack " ring-ring"
  repeated $ flip append $ pack " ring-ring"
    :: Int -> ByteString -> ByteString
  *TRPS02> repeated (++ " ring-ring") 5 "Ring:"
  "Ring: ring-ring ring-ring ring-ring ring-ring ring-ring"

(IO) action

  *TRPS02> :t finally
  finally :: IO a -> IO b -> IO a
  *TRPS02> :t print
  print :: Show a => a -> IO ()
  *TRPS02>  (\x -> repeated (\y -> finally y x) 5 (return ())) (print 5)
  5
  5
  5
  5
  5

> printThenAdd v = do
>   x <- v
>   print x
>   return $ x+1
  
  *TRPS02> repeated printThenAdd 5 (return 0)
  0
  1
  2
  3
  4
  5
  *TRPS02> repeated printThenAdd 5 (return 4)
  4
  5
  6
  7
  8
  9


