{-# LANGUAGE DataKinds, TypeOperators, PolyKinds #-}

{-|

-}

module DOM.Extra
 ( module DOM.Extra
 , Rec, CoRec
 , Text
 , Map
 , Proxy, Bool, Either
 ) where

import Data.Vinyl       (Rec)
import Data.Vinyl.CoRec (CoRec)

import Data.Text (Text)

import Data.Map (Map)

import Prelude (Bool,Either,Double)
import GHC.TypeLits (Symbol)
import Data.Proxy (Proxy)

----------------------------------------
-- dom types

type Any = Text -- TODO

type CSSProperties = Map Text Text

type Number = Double -- TODO make consistsent with javascript, like via aeson's Scientific
type LooseNumber = Either Text Number

type Enumeration (symbols :: [Symbol]) = CoRec Proxy symbols

----------------------------------------
-- vinyl stuff

{-| sugar for a type-level pair.

@
>>> :set 
>>> :set -XDataKinds
>>> type Dog f = Record f ["name" ::: String, "age" ::: Natural]
@

-}
type (:::) k a = '(k, a)
infixr 1 ::: 

{-| type-level @fmap@, for type-level lists only, poly kinded.

for example:

@
>>> :kind! MAP Pair [Char,Bool,Int]
    :: [*]
    = '[(Char, Char), (Bool, Bool), (Int, Int)]
@

given:

@
-- type-level @(,)@ 
type family Pair (x :: *) where
  Pair x = (x, x)
@

for more details on Type Families, see <https://kseo.github.io/posts/2017-01-16-type-level-functions-using-closed-type-families.html>

-}
type family MAP (f :: k -> j) (xs :: [k]) :: [j] where
   MAP f '[]       = '[]
   MAP f (x ': xs) = f x ': MAP f xs

-- type family Pair (x :: *) where
--   Pair x = (x, x)

-- type Example_MAP_Pair = MAP Pair [Bool,Bool]

----------------------------------------

