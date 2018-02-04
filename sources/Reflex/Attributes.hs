{-| This module enriches 'elDynAttr' (and its family of functions), by providing specializations on every @DOM@ element type for

That is, replacing untyped attributes:

@
type AttributesMap = Map Text Text
@

with a (strongly-typed) record of attributes for every HTML@ element tag:

@
type 'DivAttributes'    = ...
type 'AnchorAttributes' = ...
...
@

e.g. Replace:

@
import Reflex.Dom

-- valid
elAttr "div" ("" =: "" <> ...) ...
elAttr "a"   ("" =: "https://github.com/reflex-frp" <> ...) ... 

-- invalid
elAttr "div" ("href" =: "..." <> ...) ...
-- ^ this in a silent runtime error (incorrect attributes, from typos\/misunderstandings\/etc, are ignored by browsers). 
@

with:

@
import Reflex.Dom
import Reflex.Attributes

-- valid
div_ ( =: "" <> ...) ...
a_   (href =: "" <> ...) ...

-- invalid
div_ (href =: "" :& ...) ...
-- ^ this is a type error
@

Furthermore, record types (@vinyl@'s 'Rec') provide some subtyping:

@
div_ () ...
a_   () ...
-- ^ @<div>@s and @<a>@s share many DOM attributes,
--   as @div_@ and @a_@ share Haskell identifiers for that attribute name.
@

And, somewhat relatedly, as demonstrated above these exported reflex element constructors can take any subset of their supported attributes.

@
@

Thus, without requiring explicit default variables or wrapping every attribute in @Maybe@. (where 'RNil', the empty record, means providing nothing (i.e. @<div>...</div>@).

-}
module Reflex.Attributes
  ( module Reflex.Attributes.HTML
  , module Reflex.Attributes.CSS
  ) where

import Reflex.Attributes.HTML
import Reflex.Attributes.CSS

