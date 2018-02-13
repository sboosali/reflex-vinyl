{-# LANGUAGE DataKinds, TypeFamilies #-}

module DOM.Attribute.Record where

--import DOM.Extra
--import DOM.Attribute.Kind
import DOM.Attribute.Singletons
import DOM.Attribute.Types
import DOM.Element.Types (ElementAttributes)

import Reflex

import Data.Vinyl (Rec)

----------------------------------------

--type AttributesOf element = DynamicAttributesOf element 

----------------------------------------

{-|

@AttributeF f@ is isomorphic to @(f ':.' 'AttributesOf')@,
i.e. it's a specialized functor composition (for convenience). 

@AttributeF@ of some functor, is a functor of some type:

@
AttributeF f attribute
~
f _
@

@
AttributeF Identity attribute
~
_
@

-}
newtype AttributeF f attribute = AttributeF
 (f (AttributeType attribute))

----------------------------------------

{-|

-}
type DynamicAttributesOf element t
  = DynamicAttributes t (ElementAttributes element)
  --TODO naming DynamicElementAttributes?

{-|

e.g.

@
DynamicAttributes t [

-}
type DynamicAttributes t = Rec (DynamicAttribute t) --TODO naming

{-|

isomorphic to @('Dynamic' t ':.' 'AttributesOf')@

-}
newtype DynamicAttribute t attribute = DynamicAttribute
 -- { getDynamicAttribute ::
      (Dynamic t (AttributeType attribute))
 -- }

----------------------------------------

type AnchorAttributes     t = DynamicAttributes t ANCHOR_ATTRIBUTES

type AudioAttributes      t = DynamicAttributes t AUDIO_ATTRIBUTES

type AreaAttributes       t = DynamicAttributes t AREA_ATTRIBUTES

type BaseAttributes       t = DynamicAttributes t BASE_ATTRIBUTES

type BlockquoteAttributes t = DynamicAttributes t BLOCKQUOTE_ATTRIBUTES

type ButtonAttributes     t = DynamicAttributes t BUTTON_ATTRIBUTES

type CanvasAttributes     t = DynamicAttributes t CANVAS_ATTRIBUTES

type ColAttributes        t = DynamicAttributes t COL_ATTRIBUTES

type ColgroupAttributes   t = DynamicAttributes t COLGROUP_ATTRIBUTES

type DetailsAttributes    t = DynamicAttributes t DETAILS_ATTRIBUTES

type DelAttributes        t = DynamicAttributes t DEL_ATTRIBUTES

type EmbedAttributes      t = DynamicAttributes t EMBED_ATTRIBUTES

type FieldsetAttributes   t = DynamicAttributes t FIELDSET_ATTRIBUTES

type FormAttributes       t = DynamicAttributes t FORM_ATTRIBUTES

type HtmlAttributes       t = DynamicAttributes t HTML_ATTRIBUTES

type IframeAttributes     t = DynamicAttributes t IFRAME_ATTRIBUTES

type ImgAttributes        t = DynamicAttributes t IMG_ATTRIBUTES

type InsAttributes        t = DynamicAttributes t INS_ATTRIBUTES

type InputAttributes      t = DynamicAttributes t INPUT_ATTRIBUTES

type KeygenAttributes     t = DynamicAttributes t KEYGEN_ATTRIBUTES

type LabelAttributes      t = DynamicAttributes t LABEL_ATTRIBUTES

type LiAttributes         t = DynamicAttributes t LI_ATTRIBUTES

type LinkAttributes       t = DynamicAttributes t LINK_ATTRIBUTES

type MapAttributes        t = DynamicAttributes t MAP_ATTRIBUTES

type MenuAttributes       t = DynamicAttributes t MENU_ATTRIBUTES

type MediaAttributes      t = DynamicAttributes t MEDIA_ATTRIBUTES

type MetaAttributes       t = DynamicAttributes t META_ATTRIBUTES

type MeterAttributes      t = DynamicAttributes t METER_ATTRIBUTES

type QuoteAttributes      t = DynamicAttributes t QUOTE_ATTRIBUTES

type ObjectAttributes     t = DynamicAttributes t OBJECT_ATTRIBUTES

type OlAttributes         t = DynamicAttributes t OL_ATTRIBUTES

type OptgroupAttributes   t = DynamicAttributes t OPTGROUP_ATTRIBUTES

type OptionAttributes     t = DynamicAttributes t OPTION_ATTRIBUTES

type OutputAttributes     t = DynamicAttributes t OUTPUT_ATTRIBUTES

type ParamAttributes      t = DynamicAttributes t PARAM_ATTRIBUTES

type ProgressAttributes   t = DynamicAttributes t PROGRESS_ATTRIBUTES

type ScriptAttributes     t = DynamicAttributes t SCRIPT_ATTRIBUTES

type SelectAttributes     t = DynamicAttributes t SELECT_ATTRIBUTES

type SourceAttributes     t = DynamicAttributes t SOURCE_ATTRIBUTES

type StyleAttributes      t = DynamicAttributes t STYLE_ATTRIBUTES

type TableAttributes      t = DynamicAttributes t TABLE_ATTRIBUTES

type TextareaAttributes   t = DynamicAttributes t TEXTAREA_ATTRIBUTES

type TdAttributes         t = DynamicAttributes t TD_ATTRIBUTES

type ThAttributes         t = DynamicAttributes t TH_ATTRIBUTES

type TimeAttributes       t = DynamicAttributes t TIME_ATTRIBUTES

type TrackAttributes      t = DynamicAttributes t TRACK_ATTRIBUTES

type VideoAttributes      t = DynamicAttributes t VIDEO_ATTRIBUTES

----------------------------------------

{-

type AnchorConfig     = StaticAttributes t AnchorAttributes

type AudioConfig      = StaticAttributes AudioAttributes

type AreaConfig       = StaticAttributes AreaAttributes

type BaseConfig       = StaticAttributes BaseAttributes

type BlockquoteConfig = StaticAttributes BlockquoteAttributes

type ButtonConfig     = StaticAttributes ButtonAttributes

type CanvasConfig     = StaticAttributes CanvasAttributes

type ColConfig        = StaticAttributes ColAttributes

type ColgroupConfig   = StaticAttributes ColgroupAttributes

type DetailsConfig    = StaticAttributes DetailsAttributes

type DelConfig        = StaticAttributes DelAttributes

type EmbedConfig      = StaticAttributes EmbedAttributes

type FieldsetConfig   = StaticAttributes FieldsetAttributes

type FormConfig       = StaticAttributes FormAttributes

type HtmlConfig       = StaticAttributes HtmlAttributes

type IframeConfig     = StaticAttributes IframeAttributes

type ImgConfig        = StaticAttributes ImgAttributes

type InsConfig        = StaticAttributes InsAttributes

type InputConfig      = StaticAttributes InputAttributes

type KeygenConfig     = StaticAttributes KeygenAttributes

type LabelConfig      = StaticAttributes LabelAttributes

type LiConfig         = StaticAttributes LiAttributes

type LinkConfig       = StaticAttributes LinkAttributes

type MapConfig        = StaticAttributes MapAttributes

type MenuConfig       = StaticAttributes MenuAttributes

type MediaConfig      = StaticAttributes MediaAttributes

type MetaConfig       = StaticAttributes MetaAttributes

type MeterConfig      = StaticAttributes MeterAttributes

type QuoteConfig      = StaticAttributes QuoteAttributes

type ObjectConfig     = StaticAttributes ObjectAttributes

type OlConfig         = StaticAttributes OlAttributes

type OptgroupConfig   = StaticAttributes OptgroupAttributes

type OptionConfig     = StaticAttributes OptionAttributes

type OutputConfig     = StaticAttributes OutputAttributes

type ParamConfig      = StaticAttributes ParamAttributes

type ProgressConfig   = StaticAttributes ProgressAttributes

type ScriptConfig     = StaticAttributes ScriptAttributes

type SelectConfig     = StaticAttributes SelectAttributes

type SourceConfig     = StaticAttributes SourceAttributes

type StyleConfig      = StaticAttributes StyleAttributes

type TableConfig      = StaticAttributes TableAttributes

type TextareaConfig   = StaticAttributes TextareaAttributes

type TdConfig         = StaticAttributes TdAttributes

type ThConfig         = StaticAttributes ThAttributes

type TimeConfig       = StaticAttributes TimeAttributes

type TrackConfig      = StaticAttributes TrackAttributes

type VideoConfig      = StaticAttributes VideoAttributes

----------------------------------------






type StaticAttributes = Rec StaticAttribute --TODO naming
--type AttributeValues = Rec AttributeValue --TODO naming

{-|

-}
newtype StaticAttribute attribute = StaticAttribute
 -- { getStaticAttribute ::
      (AttributeType attribute)
 -- }

-- newtype AttributeValue attribute = AttributeValue
--   { getAttribute ::
--       AttributeType attribute
--   }

type StaticAttributesOf element
  = StaticAttributes (ElementAttributes element)
  --TODO naming StaticElementAttributes?



type StaticAttributesOf element
  = StaticAttributes (ElementAttributes element)
  --TODO naming StaticElementAttributes?




{-|

e.g.

@
@

-}
newtype EventF f t a = EventF
 ( Event t (f a)
 )

{-|

e.g.

@
@

-}
newtype BehaviorF f t a = BehaviorF
 ( Behavior t (f a)
 )

{-|

e.g.

@
@

-}
newtype DynamicF f t a = DynamicF
 ( Dynamic t (f a)
 )




-}