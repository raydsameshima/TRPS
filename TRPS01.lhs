TRPS01.lhs

http://itpro.nikkeibp.co.jp/article/COLUMN/20060801/244812/?itp_leaf_index

> module TRPS01 where

> repeated f n = \x -> (iterate f x) !! n
