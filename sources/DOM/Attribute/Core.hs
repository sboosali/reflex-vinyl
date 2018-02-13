{-# LANGUAGE DataKinds, TypeOperators, PolyKinds #-}

{-|

Naming: the suffix resolves the conflict with haskell prelude functions (like @id@, @map@, etc). 

-}
module DOM.Attribute.Core where

import DOM.Extra
import DOM.Attribute.Kind
import DOM.Attribute.Singletons
import DOM.Attribute.Types
import DOM.Attribute.Record

import Reflex

import Data.Vinyl 

import Prelude (undefined)
import Prelude.Spiros hiding (Text)

----------------------------------------

{-|

has kind:

@
AttributeTypes :: [ATTRIBUTE] -> [*]
@

semantically, it's:

@
type AttributeTypes attributes = 'MAP' 'AttributeType' attributes
@

but applications of a type family must currently be saturated.

-}
type family AttributeTypes (attributes :: [ATTRIBUTE]) :: [*] where
   AttributeTypes '[]                       = '[]
   AttributeTypes (attribute ': attributes) = AttributeType attribute ': AttributeTypes attributes

{-NOTE inlined, otherwise:

    • The type family ‘AttributeType’ should have 1 argument, but has been given none
    • In the type synonym declaration for ‘AttributeTypes’
   |
34 | type AttributeTypes attributes = MAP AttributeType attributes
   | ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
-}

sequenceAttributeFs
  :: ( Applicative f
     , types ~ AttributeTypes attributes
     )
  =>    Rec (AttributeF f) attributes
  -> f (Rec  Identity      types)
sequenceAttributeFs
  = undefined

rebaseAttributeFs
  :: ( types ~ AttributeTypes attributes
     )
  => Rec (AttributeF f) attributes
  -> Rec f              types
rebaseAttributeFs
  = undefined

----------------------------------------

fromDynamicAttributes
  :: ( Reflex t
     )
  => DynamicAttributes t attributes
  -> Dynamic           t (Map Text Text)

fromDynamicAttributes
  = undefined

{-NOTE

DynamicAttributes t
=
Rec (DynamicAttribute t) 
~ 
Rec (Dynamic t :. AttributesOf)
~ 
Rec (Dynamic t _)

-}

----------------------------------------

{-TODO efficiency?

-- :: fromAttribute :: DynamicAttributes t attributes -> Dynamic (Map Text Text)
-- 
-- DynamicAttributes t = Rec (DynamicAttribute t) 

-- :: fromAttribute :: DynamicAttribute t attribute -> Dynamic (Text,Text)
-- 
-- DynamicAttribute ~ @('Dynamic' t ':.' 'AttributesOf')@


-- Attributes -> Map Text Text

-}

----------------------------------------
-- element :: HTMLAttributes 

----------------------------------------

{-
anchor'
  :: AnchorAttributes t
  -> ()

anchor' = undefined

----------------------------------------

audio'
  :: AudioAttributes t
  -> ()

audio' = undefined

----------------------------------------

area'
  :: AreaAttributes t
  -> ()

area' = undefined

----------------------------------------

base'
  :: BaseAttributes t
  -> ()

base' = undefined

----------------------------------------

blockquote'
  :: BlockquoteAttributes t
  -> ()

blockquote' = undefined

----------------------------------------

button'
  :: ButtonAttributes t
  -> ()

button' = undefined

----------------------------------------

canvas'
  :: CanvasAttributes t
  -> ()

canvas' = undefined

----------------------------------------

col'
  :: ColAttributes t
  -> ()

col' = undefined

----------------------------------------

colgroup'
  :: ColgroupAttributes t
  -> ()

colgroup' = undefined

----------------------------------------

details'
  :: DetailsAttributes t
  -> ()

details' = undefined

----------------------------------------

del'
  :: DelAttributes t
  -> ()

del' = undefined

----------------------------------------

embed'
  :: EmbedAttributes t
  -> ()

embed' = undefined

----------------------------------------

fieldset'
  :: FieldsetAttributes t
  -> ()

fieldset' = undefined

----------------------------------------

form'
  :: FormAttributes t
  -> ()

form' = undefined

----------------------------------------

html'
  :: HtmlAttributes t
  -> ()

html' = undefined

----------------------------------------

iframe'
  :: IframeAttributes t
  -> ()

iframe' = undefined

----------------------------------------

img'
  :: ImgAttributes t
  -> ()

img' = undefined

----------------------------------------

ins'
  :: InsAttributes t
  -> ()

ins' = undefined

----------------------------------------

input'
  :: InputAttributes t
  -> ()

input' = undefined

----------------------------------------

keygen'
  :: KeygenAttributes t
  -> ()

keygen' = undefined

----------------------------------------

label'
  :: LabelAttributes t
  -> ()

label' = undefined

----------------------------------------

li'
  :: LiAttributes t
  -> ()

li' = undefined

----------------------------------------

link'
  :: LinkAttributes t
  -> ()

link' = undefined

----------------------------------------

map'
  :: MapAttributes t
  -> ()

map' = undefined

----------------------------------------

menu'
  :: MenuAttributes t
  -> ()

menu' = undefined

----------------------------------------

media'
  :: MediaAttributes t
  -> ()

media' = undefined

----------------------------------------

meta'
  :: MetaAttributes t
  -> ()

meta' = undefined

----------------------------------------

meter'
  :: MeterAttributes t
  -> ()

meter' = undefined

----------------------------------------

quote'
  :: QuoteAttributes t
  -> ()

quote' = undefined

----------------------------------------

object'
  :: ObjectAttributes t
  -> ()

object' = undefined

----------------------------------------

ol'
  :: OlAttributes t
  -> ()

ol' = undefined

----------------------------------------

optgroup'
  :: OptgroupAttributes t
  -> ()

optgroup' = undefined

----------------------------------------

option'
  :: OptionAttributes t
  -> ()

option' = undefined

----------------------------------------

output'
  :: OutputAttributes t
  -> ()

output' = undefined

----------------------------------------

param'
  :: ParamAttributes t
  -> ()

param' = undefined

----------------------------------------

progress'
  :: ProgressAttributes t
  -> ()

progress' = undefined

----------------------------------------

script'
  :: ScriptAttributes t
  -> ()

script' = undefined

----------------------------------------

select'
  :: SelectAttributes t
  -> ()

select' = undefined

----------------------------------------

source'
  :: SourceAttributes t
  -> ()

source' = undefined

----------------------------------------

style'
  :: StyleAttributes t
  -> ()

style' = undefined

----------------------------------------

table'
  :: TableAttributes t
  -> ()

table' = undefined

----------------------------------------

textarea'
  :: TextareaAttributes t
  -> ()

textarea' = undefined

----------------------------------------

td'
  :: TdAttributes t
  -> ()

td' = undefined

----------------------------------------

th'
  :: ThAttributes t
  -> ()

th' = undefined

----------------------------------------

time'
  :: TimeAttributes t
  -> ()

time' = undefined

----------------------------------------

track'
  :: TrackAttributes t
  -> ()

track' = undefined

----------------------------------------

video'
  :: VideoAttributes t
  -> ()

video' = undefined

----------------------------------------
-}

