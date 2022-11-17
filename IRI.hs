{-# LANGUAGE GADTs, EmptyDataDecls #-}

module IRI where

data Nat where
    O :: Nat
    S :: Nat -> Nat
  deriving (Eq, Show Int)

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

fib :: Nat -> Nat
fib (S (S n)) = plus (fib n) (fib (S n))
fib n = n

mult :: Nat -> Nat -> Nat
mult _ O = O
mult n (S m) = plus n (mult n m)

toNat :: Int -> Nat
toNat 0 = O
toNat x = S (toNat (x - 1))

fact :: Nat -> Nat
fact (S (S n)) = mult (S (S n)) (fact (S n))
fact n = n