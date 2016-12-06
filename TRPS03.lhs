TRPS03.lhs

http://itpro.nikkeibp.co.jp/article/COLUMN/20061005/249933/?itp_leaf_index

> module TRPS03 where

  *TRPS03> :info Functor 
  class Functor (f :: * -> *) where
    fmap :: (a -> b) -> f a -> f b
    (<$) :: a -> f b -> f a
      -- Defined in ‘GHC.Base’
  instance Functor (Either a) -- Defined in ‘Data.Either’
  instance Functor [] -- Defined in ‘GHC.Base’
  instance Functor Maybe -- Defined in ‘GHC.Base’
  instance Functor IO -- Defined in ‘GHC.Base’
  instance Functor ((->) r) -- Defined in ‘GHC.Base’
  instance Functor ((,) a) -- Defined in ‘GHC.Base’   

  *TRPS03> :info Applicative 
  class Functor f => Applicative (f :: * -> *) where
    pure :: a -> f a
    (<*>) :: f (a -> b) -> f a -> f b
    (*>) :: f a -> f b -> f b
    (<*) :: f a -> f b -> f a
      -- Defined in ‘GHC.Base’
  instance Applicative (Either e) -- Defined in ‘Data.Either’
  instance Applicative [] -- Defined in ‘GHC.Base’
  instance Applicative Maybe -- Defined in ‘GHC.Base’
  instance Applicative IO -- Defined in ‘GHC.Base’
  instance Applicative ((->) a) -- Defined in ‘GHC.Base’
  instance Monoid a => Applicative ((,) a) -- Defined in ‘GHC.Base’

  *TRPS03> :info Monad 
  class Applicative m => Monad (m :: * -> *) where
    (>>=) :: m a -> (a -> m b) -> m b
    (>>) :: m a -> m b -> m b
    return :: a -> m a
    fail :: String -> m a
      -- Defined in ‘GHC.Base’
  instance Monad (Either e) -- Defined in ‘Data.Either’
  instance Monad [] -- Defined in ‘GHC.Base’
  instance Monad Maybe -- Defined in ‘GHC.Base’
  instance Monad IO -- Defined in ‘GHC.Base’
  instance Monad ((->) r) -- Defined in ‘GHC.Base’


