
{-| Re-exports. 

Examples prefixed by @>>> @ are @doctest@'ed.

-}
module Reflex.Vinyl
 ( module Reflex.Vinyl.Types
 , module Reflex.Vinyl.Core
 , module Reflex.Vinyl.Events

 , module Data.Vinyl
 ) where

import Reflex.Vinyl.Types
import Reflex.Vinyl.Core
import Reflex.Vinyl.Events

import Data.Vinyl hiding ((=:)) -- conflicts with `reflex-dom`
