
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE OverloadedLists #-}

{-# OPTIONS_GHC -fno-warn-missing-signatures #-} -- to test inference

{-| This module provides an example program. 
Please read the source too <https://hackage.haskell.org/package/reflex-vinyl/docs/src/Reflex-Vinyl-Example.html (direct Hackage link)>. 

Being a @library@ module, it's typechecked with the package, 
and thus should always build.

Only public interfaces are imported (i.e. no @.Internal@s),
and there are minimal other dependencies. 

'main' is executed by the @reflex-vinyl-example@ executable. 

-}
module Reflex.Vinyl.Example where

import Reflex.Vinyl
--TODO only public api
import Reflex.Vinyl.Extra (SomeWidget_)
--TODO reexport
import Reflex
import Reflex.Dom
--import Data.Vinyl
import Control.Lens

import qualified Lucid

--import qualified Data.ByteString.Lazy       as B
import qualified Data.ByteString.Lazy.Char8 as B8

import System.Environment

{-|

Running:

@
cabal build && cabal run example-reflex-vinyl
@

@
stack build && stack exec -- example-reflex-vinyl
@

-}
main :: IO ()
main = do
 arguments <- getArgs >>= \case
  [s] -> return (s)
  _ -> return ("")
 mainWith arguments

mainWith _s = do
 putStrLn "[Reflex.Vinyl.Example...]"

 B8.putStrLn $ Lucid.renderBS (Lucid.p_ [Lucid.style_ "color:red"] "Hello!")

 -- mainWidget myWidget

myWidget :: SomeWidget_
myWidget = do
 let child = blank
 
 (es_1, x) <- elFor'
             (Click :& Mousemove :& RNil)
             "div"
             (constDyn mempty)
             child
 
 (es_2)   <- elFor
             _MousingEvents
             "div"
             (constDyn mempty)
             child

 -- `_eClick_1 and `_eClick_2` are equivalent
 
 let _eClick_1     = es_1 ^. event Click 
 let _eMousemove_1 = es_1 ^. event Mousemove 

 let _eClick_2     = es_2 ^. _Click 
 let _eMousemove_2 = es_2 ^. _Mousemove

 -- let eClick     = ( es ^. (rget Click     . _EventOf) ) 
 -- let eMousemove = ( es ^. (rget Mousemove . _EventOf) )

 return x

{-

 ClickTag
 DblclickTag
 MouseenterTag
 MouseleaveTag


myWidget :: SomeWidget_
myWidget = do
 let child = blank
 
 (es,x) <- elFor'
             (Click :& Mousemove :& RNil)
             "div"
             (constDyn mempty)
             child
 
 let _eClick     = es ^. event Click 
 let _eMousemove = es ^. event Mousemove 

 -- let eClick     = ( es ^. (rget Click     . _EventOf) ) 
 -- let eMousemove = ( es ^. (rget Mousemove . _EventOf) )

 return x

-}
