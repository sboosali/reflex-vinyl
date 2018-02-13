{-# LANGUAGE DataKinds, TypeFamilies #-}

module DOM.Attribute.Record where

--import DOM.Extra
--import DOM.Attribute.Kind
import DOM.Attribute.Singletons
--import DOM.Attribute.Types

import Data.Vinyl (Rec)

----------------------------------------

type AttributeValues = Rec AttributeValue --TODO naming

----------------------------------------

newtype AttributeValue attribute = AttributeValue
  { getAttribute ::
      AttributeType attribute
  }

----------------------------------------
