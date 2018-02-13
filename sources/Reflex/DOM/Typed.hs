{-# LANGUAGE OverloadedStrings #-}

{-# LANGUAGE DataKinds #-}

module Reflex.DOM.Typed where

import DOM.Element
import DOM.Attribute.Record
import DOM.Attribute.Core

import qualified Reflex     as R
import qualified Reflex.Dom as R
--import Reflex.Dom.Builder.Class.Events 

import           Data.Vinyl 
import qualified Data.Vinyl as V

import Prelude (undefined)
import Prelude.Spiros

----------------------------------------

type E = R.Event
type B = R.Behavior
type D = R.Dynamic

type R = V.Rec

-- | 
type EL m t = R.Element R.EventResult (R.DomBuilderSpace m) t

----------------------------------------

-- element :: HTMLAttributes 

{-NOTE

elDynAttr'
  :: (MonadWidget t m)
  => Text
  -> Dynamic t AttributeMap
  -> m a
  -> m (El' (DomBuilderSpace m) t, a)

-}

----------------------------------------
      
elementWith'
  :: ( R.MonadWidget t m
     , KnownElementSymbol element
     )
  => proxy element
  -> DynamicAttributesOf element t
  -> m          a
  -> m (EL m t, a)

elementWith' _element rAttributes child
  = R.elDynAttr' name dAttributes child
  where
  name = reflectElementSymbol _element
  dAttributes = fromDynamicAttributes rAttributes

----------------------------------------

elementWith
  :: ( R.MonadWidget t m
     , KnownElementSymbol element
     )
  => proxy element
  -> DynamicAttributesOf element t
  -> m a
  -> m a

elementWith _element attributes child
   = elementWith' _element attributes child
 <&> snd

----------------------------------------

anchor'
  :: ( R.MonadWidget t m
     )
  => AnchorAttributes t
  -> m          a
  -> m (EL m t, a)
anchor' = elementWith' Anchor

anchor
  :: ( R.MonadWidget t m
     )
  => AnchorAttributes t
  -> m a
  -> m a
anchor = elementWith Anchor

----------------------------------------

{-


anchor_
  :: ( R.MonadWidget t m
     )
  => AnchorAttributes t
  -> m a
  -> m a
anchor_ = elementWith_ Anchor



anchor'
  :: (R.MonadWidget t m)
  => DynamicAttributesOf ANCHOR t
  -> m          a
  -> m (EL m t, a)

anchor' attributes = R.elDynAttr'
  "a"
  undefined




anchor'
  :: (R.MonadWidget t m)
  => AnchorAttributes t
  -> m          a
  -> m (EL m t, a)

anchor' attributes = R.elDynAttr'
  "a"
  undefined


-}
