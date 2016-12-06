TRPS04.lhs

http://itpro.nikkeibp.co.jp/article/COLUMN/20061031/252259/?itp_leaf_index

> module TRPS04 where

  *TRPS04> :info []
  data [] a = [] | a : [a]  -- Defined in ‘GHC.Types’

  instance Eq a => Eq [a] -- Defined in ‘GHC.Classes’
  instance Monad [] -- Defined in ‘GHC.Base’
  instance Functor [] -- Defined in ‘GHC.Base’
  instance Ord a => Ord [a] -- Defined in ‘GHC.Classes’
  instance Read a => Read [a] -- Defined in ‘GHC.Read’
  instance Show a => Show [a] -- Defined in ‘GHC.Show’
  instance Applicative [] -- Defined in ‘GHC.Base’
  instance Foldable [] -- Defined in ‘Data.Foldable’
  instance Traversable [] -- Defined in ‘Data.Traversable’
  instance Monoid [a] -- Defined in ‘GHC.Base’


