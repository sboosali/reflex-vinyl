{-# LANGUAGE DataKinds, TypeOperators #-}

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

type Any = Text -- TODO

type (:::) a b = '(a,b)

type CSSProperties = Map Text Text

type Number = Double -- TODO make consistsent with javascript, like via aeson's Scientific
type LooseNumber = Either Text Number

type Enumeration (symbols :: [Symbol]) = CoRec Proxy symbols

----------------------------------------
