{-# LANGUAGE GADTs, DataKinds, ConstraintKinds #-}

{-# LANGUAGE UndecidableInstances #-}
-- NOTE
--     • Illegal nested type family application ‘GlobalHTMLAttributes
--                                               Data.Vinyl.TypeLevel.++ '['DOM.Attribute.Kind.DOWNLOAD,

                                                
{-|

These names are both elements and attributes:

* @form@
* @label@
* @media@
* @style@

-}
module DOM.Element.Types where
import Reflex.Vinyl.Extra (Text,s2t) --TODO
import DOM.Element.Kind
import DOM.Attribute.Kind (ATTRIBUTE)
import DOM.Attribute.Types

import GHC.TypeLits (Symbol, KnownSymbol, symbolVal)
import Prelude.Spiros (Proxy(..))

----------------------------------------

-- {-| the events that each element can listen to.

-- TODO

-- this type-level function is total.

-- -}
-- type family ElementEvents (element :: ELEMENT) :: [Event] where
--   ElementEvents _ = _AllEvents
  
----------------------------------------

{-| the attributes that each element recognizes. 

this type-level function is total.

-}
type family ElementAttributes (element :: ELEMENT) :: [ATTRIBUTE] where

  ElementAttributes ANCHOR     = ANCHOR_ATTRIBUTES

  ElementAttributes AUDIO      = AUDIO_ATTRIBUTES

  ElementAttributes AREA       = AREA_ATTRIBUTES

  ElementAttributes BASE       = BASE_ATTRIBUTES

  ElementAttributes BLOCKQUOTE = BLOCKQUOTE_ATTRIBUTES

  ElementAttributes BUTTON     = BUTTON_ATTRIBUTES

  ElementAttributes CANVAS     = CANVAS_ATTRIBUTES

  ElementAttributes COL        = COL_ATTRIBUTES

  ElementAttributes COLGROUP   = COLGROUP_ATTRIBUTES

  ElementAttributes DETAILS    = DETAILS_ATTRIBUTES

  ElementAttributes DEL        = DEL_ATTRIBUTES

  ElementAttributes EMBED      = EMBED_ATTRIBUTES

  ElementAttributes FIELDSET   = FIELDSET_ATTRIBUTES

  ElementAttributes FORM       = FORM_ATTRIBUTES

  ElementAttributes HTML       = HTML_ATTRIBUTES

  ElementAttributes IFRAME     = IFRAME_ATTRIBUTES

  ElementAttributes IMG        = IMG_ATTRIBUTES

  ElementAttributes INS        = INS_ATTRIBUTES

  ElementAttributes INPUT      = INPUT_ATTRIBUTES

  ElementAttributes KEYGEN     = KEYGEN_ATTRIBUTES

  ElementAttributes LABEL      = LABEL_ATTRIBUTES

  ElementAttributes LI         = LI_ATTRIBUTES

  ElementAttributes LINK       = LINK_ATTRIBUTES

  ElementAttributes MAP        = MAP_ATTRIBUTES

  ElementAttributes MENU       = MENU_ATTRIBUTES

  ElementAttributes MEDIA      = MEDIA_ATTRIBUTES

  ElementAttributes META       = META_ATTRIBUTES

  ElementAttributes METER      = METER_ATTRIBUTES

  ElementAttributes QUOTE      = QUOTE_ATTRIBUTES

  ElementAttributes OBJECT     = OBJECT_ATTRIBUTES

  ElementAttributes OL         = OL_ATTRIBUTES

  ElementAttributes OPTGROUP   = OPTGROUP_ATTRIBUTES

  ElementAttributes OPTION     = OPTION_ATTRIBUTES

  ElementAttributes OUTPUT     = OUTPUT_ATTRIBUTES

  ElementAttributes PARAM      = PARAM_ATTRIBUTES

  ElementAttributes PROGRESS   = PROGRESS_ATTRIBUTES

  ElementAttributes SCRIPT     = SCRIPT_ATTRIBUTES

  ElementAttributes SELECT     = SELECT_ATTRIBUTES

  ElementAttributes SOURCE     = SOURCE_ATTRIBUTES

  ElementAttributes STYLE      = STYLE_ATTRIBUTES

  ElementAttributes TABLE      = TABLE_ATTRIBUTES

  ElementAttributes TEXTAREA   = TEXTAREA_ATTRIBUTES

  ElementAttributes TD         = TD_ATTRIBUTES

  ElementAttributes TH         = TH_ATTRIBUTES

  ElementAttributes TIME       = TIME_ATTRIBUTES

  ElementAttributes TRACK      = TRACK_ATTRIBUTES

  ElementAttributes VIDEO      = VIDEO_ATTRIBUTES

----------------------------------------

{-| the name of each element, as a dom tag.

almost always identical:

with the exception:

@
 ElementAttributes 'ANCHOR' = "a"
@

this type-level function is total.

-}
type family ElementSymbol (element :: ELEMENT) :: Symbol where

  ElementSymbol ANCHOR     = "a"

  ElementSymbol AUDIO      = "audio"

  ElementSymbol AREA       = "area"

  ElementSymbol BASE       = "base"

  ElementSymbol BLOCKQUOTE = "blockquote"

  ElementSymbol BUTTON     = "button"

  ElementSymbol CANVAS     = "canvas"

  ElementSymbol COL        = "col"

  ElementSymbol COLGROUP   = "colgroup"

  ElementSymbol DETAILS    = "details"

  ElementSymbol DEL        = "del"

  ElementSymbol EMBED      = "embed"

  ElementSymbol FIELDSET   = "fieldset"

  ElementSymbol FORM       = "form"

  ElementSymbol HTML       = "html"

  ElementSymbol IFRAME     = "iframe"

  ElementSymbol IMG        = "img"

  ElementSymbol INS        = "ins"

  ElementSymbol INPUT      = "input"

  ElementSymbol KEYGEN     = "keygen"

  ElementSymbol LABEL      = "label"

  ElementSymbol LI         = "li"

  ElementSymbol LINK       = "link"

  ElementSymbol MAP        = "map"

  ElementSymbol MENU       = "menu"

  ElementSymbol MEDIA      = "media"

  ElementSymbol META       = "meta"

  ElementSymbol METER      = "meter"

  ElementSymbol QUOTE      = "quote"

  ElementSymbol OBJECT     = "object"

  ElementSymbol OL         = "ol"

  ElementSymbol OPTGROUP   = "optgroup"

  ElementSymbol OPTION     = "option"

  ElementSymbol OUTPUT     = "output"

  ElementSymbol PARAM      = "param"

  ElementSymbol PROGRESS   = "progress"

  ElementSymbol SCRIPT     = "script"

  ElementSymbol SELECT     = "select"

  ElementSymbol SOURCE     = "source"

  ElementSymbol STYLE      = "style"

  ElementSymbol TABLE      = "table"

  ElementSymbol TEXTAREA   = "textarea"

  ElementSymbol TD         = "td"

  ElementSymbol TH         = "th"

  ElementSymbol TIME       = "time"

  ElementSymbol TRACK      = "track"

  ElementSymbol VIDEO      = "video"
  
----------------------------------------

-- | 
type KnownElementSymbol element
  = KnownSymbol (ElementSymbol element)

{-| the value-level reflection of 'ElementSymbol'.

NOTE @ElementSymbol@ is total, and returns string literals,
which are thus always well-defined and satisfying KnownSymbol,
but we still must require that constraint.

-}
reflectElementSymbol
  :: forall element proxy.
     ( KnownElementSymbol element
     )
  => proxy element
  -> Text
reflectElementSymbol _ = s2t s
  where
  s = symbolVal (Proxy :: Proxy (ElementSymbol element))

-- {-| the value-level reflection of 'ElementSymbol'.

-- -}
-- elementText :: proxy element -> Text
-- elementText proxy = ElementSymbol element

----------------------------------------
