{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE OverloadedLists #-}

{-# LANGUAGE RankNTypes #-}
{-# LANGUAGE DataKinds, ConstraintKinds #-}

{-|

-}
module Reflex.Vinyl.Extra
 ( module Reflex.Vinyl.Extra
 , Text
-- , module Prelude.Spiros
 ) where

import qualified Reflex     as R

--import qualified Reflex.Dom as R

import qualified Data.Vinyl as V

-- import Prelude.Spiros

import Reflex.Dom hiding (element)

import Data.Text (Text)
import qualified Data.Text as T

--import Prelude.Spiros hiding (Text)--,div)

----------------------------------------

type E = R.Event
type B = R.Behavior
type D = R.Dynamic

type R = V.Rec

----------------------------------------

----------------------------------------

{-|

@
> mainWidget :: SomeWidget () -> IO ()
@

-}
type SomeWidget a = (forall x. Widget x a)

-- | 
type SomeWidget_ = (forall x. Widget x ())

{-|

@
> :i Widget
-- module Reflex.Dom.Main
type Widget x =
  PostBuildT
    DomTimeline
    (ImmediateDomBuilderT
       DomTimeline
       (WithJSContextSingleton
          x
          (PerformEventT DomTimeline DomHost)))
  :: *
  -> *

instance Monad (Widget x)

> :i Widget_
-- module Cards.Frontend.Extra
type Widget_ x =
  PostBuildT DomTimeline
    (ImmediateDomBuilderT DomTimeline
       (WithJSContextSingleton x
          (PerformEventT DomTimeline
             DomHost
             ())))
             
  :: *

type DomTimeline = Spider

type role WithJSContextSingleton phantom representational nominal

@

-}
type Widget_ x = Widget x ()

----------------------------------------

{-| (just an alias) -}
type DynamicAttributes t = Dynamic t AttributeMap

----------------------------------------

s2t :: String -> Text
s2t = T.pack

t2s :: Text -> String  
t2s = T.unpack

----------------------------------------

----------------------------------------

-- -- | @<div>...</div>@
-- div :: (MonadWidget t m) => m () -> m ()
-- div = el "div"

-- -- | the HTML equivalent of the newline @"\n"@. 
-- div_ :: (MonadWidget t m) => m ()
-- div_ = div blank

----------------------------------------
