
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

import Reflex.Vinyl()

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

mainWith s = do
 putStrLn s
 putStrLn "(Reflex.Vinyl.Example...)"

