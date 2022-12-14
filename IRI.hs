{-# LANGUAGE GADTs, EmptyDataDecls #-}

module IRI where

import Prelude hiding (zip, unzip)

data Nat where
    O :: Nat
    S :: Nat -> Nat
  deriving (Eq, Show)

data Unit where
  Star :: Unit

data Empty

data List a where
    Nil  :: List a
    Cons :: a -> List a -> List a
  deriving (Eq, Show)

len :: [a] -> Nat
len [] = O
len (x : xs) = S (len xs)

double :: Nat -> Nat
double O = O
double (S n) = S (S (double n))

pd :: Nat -> Nat
pd O = O
pd (S n) = n

plus :: Nat -> Nat -> Nat
plus n O = n
plus n (S m) = S (plus n m)

mult :: Nat -> Nat -> Nat
mult _ O = O
mult n (S m) = plus n (mult n m)

pow :: Nat -> Nat -> Nat
pow _ O = S O
pow n (S m) = mult n (pow n m)

ppow :: Nat -> Nat -> Nat
ppow _ O = S O
ppow n (S m) = pow n (ppow n m)

gig :: Nat -> Nat -> Nat
gig _ O = S O
gig n (S m) = ppow n (gig n m)

fib :: Nat -> Nat
fib (S (S n)) = plus (fib n) (fib (S n))
fib n = n

toNat :: Int -> Nat
toNat 0 = O
toNat x = S (toNat (x - 1))

fact :: Nat -> Nat
fact (S (S n)) = mult (S (S n)) (fact (S n))
fact n = n

zip :: [a] -> [b] -> [(a, b)]
zip _ [] = []
zip [] _ = []
zip (x : xs) (y : ys) = (x, y) : zip xs ys

unzip :: [(a, b)] -> ([a], [b])
unzip [] = ([], [])
unzip ((x, y) : zs) = (x : fst (unzip zs), y : snd (unzip zs))