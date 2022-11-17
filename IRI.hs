{-# LANGUAGE GADTs, EmptyDataDecls #-}

module IRI where

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