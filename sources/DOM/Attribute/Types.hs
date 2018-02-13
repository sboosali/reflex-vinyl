{-# LANGUAGE DataKinds #-}

module DOM.Attribute.Types where

--import DOM.Extra
import DOM.Attribute.Kind
--import DOM.Attribute.Singletons

import Data.Vinyl.TypeLevel (type (++)) --TODO

----------------------------------------

--TODO type DOMAttributes = HTMLAttributes ++ ARIAAttributes

{-| every possible html attributes.

the (type-level) enumeration of 'ATTRIBUTE'. 

-}
type AllHTMLAttributes --TODO
   = GlobalHTMLAttributes
  ++ LocalHTMLAttributes 

----------------------------------------

type GlobalHTMLAttributes --TODO
   = GlobalHTMLAttributes'
  ++ ARIAAttributes

----------------------------------------

{-| global html attributes, i.e. valid for all elements. 

-}
type GlobalHTMLAttributes' =

 -- Standard Attributes
  [ ACCESSKEY
  , CLASSNAME
  , CONTENTEDITABLE
  , CONTEXTMENU
  , DIR
  , DRAGGABLE
  , HIDDEN
  , ID
  , LANG
  , SLOT
  , SPELLCHECK
  , STYLE
  , TABINDEX
  , TITLE

  -- Unknown
  , INPUTMODE
  , IS
  , RADIOGROUP

  -- WAI-ARIA
  , ROLE

  -- RDFa Attributes
  , ABOUT
  , DATATYPE
  , INLIST
  , PREFIX
  , PROPERTY
  , RESOURCE
  , TYPEOF
  , VOCAB

  -- Non-standard Attributes
  , AUTOCAPITALIZE
  , AUTOCORRECT
  , AUTOSAVE
  , COLOR
  , ITEMPROP
  , ITEMSCOPE
  , ITEMTYPE
  , ITEMID
  , ITEMREF
  , RESULTS
  , SECURITY
  , UNSELECTABLE
  ]

----------------------------------------

{-| html attributes for accessibility. 

-}
type ARIAAttributes =
  [ ARIA_ACTIVEDESCENDANT
  , ARIA_ATOMIC
  , ARIA_AUTOCOMPLETE
  , ARIA_BUSY
  , ARIA_CHECKED
  , ARIA_COLCOUNT
  , ARIA_COLINDEX
  , ARIA_COLSPAN
  , ARIA_CURRENT
  , ARIA_DESCRIBEDBY
  , ARIA_DETAILS
  , ARIA_DISABLED
  , ARIA_DROPEFFECT
  , ARIA_ERRORMESSAGE
  , ARIA_EXPANDED
  , ARIA_FLOWTO
  , ARIA_GRABBED
  , ARIA_HASPOPUP
  , ARIA_HIDDEN
  , ARIA_INVALID
  , ARIA_KEYSHORTCUTS
  , ARIA_LABEL 
  , ARIA_LABELLEDBY
  , ARIA_LEVEL
  , ARIA_LIVE
  , ARIA_MODAL
  , ARIA_MULTILINE
  , ARIA_MULTISELECTABLE
  , ARIA_ORIENTATION
  , ARIA_OWNS
  , ARIA_PLACEHOLDER
  , ARIA_POSINSET
  , ARIA_PRESSED
  , ARIA_READONLY
  , ARIA_RELEVANT
  , ARIA_REQUIRED
  , ARIA_ROLEDESCRIPTION
  , ARIA_ROWCOUNT
  , ARIA_ROWINDEX
  , ARIA_ROWSPAN
  , ARIA_SELECTED
  , ARIA_SETSIZE
  , ARIA_SORT
  , ARIA_VALUEMAX
  , ARIA_VALUEMIN
  , ARIA_VALUENOW
  , ARIA_VALUETEXT
  ]
  
----------------------------------------

{-| the rest of the html attributes (i.e. non-global).

-}
type LocalHTMLAttributes = 
  [ ACCEPT
  , ACCEPTCHARSET
  , ACTION
  , ALLOWFULLSCREEN
  , ALLOWTRANSPARENCY
  , ALT
  , AS
  , ASYNC
  , AUTOCOMPLETE
  , AUTOFOCUS
  , AUTOPLAY
  , CAPTURE
  , CELLPADDING
  , CELLSPACING
  , CHALLENGE
  , CHARSET
  , CHECKED
  , CITE
  , CLASSID
  , COLS
  , COLSPAN
  , CONTENT
  , CONTROLS
  , CONTROLSLIST
  , COORDS
  , CROSSORIGIN
  , DATA
  , DATETIME
  , DEFAULT
  , DEFER
  , DIRNAME
  , DISABLED
  , DOWNLOAD
  , ENCTYPE
  , FORM
  , FORMACTION
  , FORMENCTYPE
  , FORMMETHOD
  , FORMNOVALIDATE
  , FORMTARGET
  , FRAMEBORDER
  , HEADERS
  , HEIGHT
  , HIGH
  , HREF
  , HREFLANG
  , HTMLFOR
  , HTTPEQUIV
  , INTEGRITY
  , KEYPARAMS
  , KEYTYPE
  , KIND
  , LABEL
  , LIST
  , LOOP
  , LOW
  , MANIFEST
  , MARGINHEIGHT
  , MARGINWIDTH
  , MAX
  , MAXLENGTH
  , MEDIA
  , MEDIAGROUP
  , METHOD
  , MIN
  , MINLENGTH
  , MULTIPLE
  , MUTED
  , NAME
  , NONCE
  , NOVALIDATE
  , OPEN
  , OPTIMUM
  , PATTERN
  , PLACEHOLDER
  , PLAYSINLINE
  , POSTER
  , PRELOAD
  , READONLY
  , REL
  , REQUIRED
  , REVERSED
  , ROWS
  , ROWSPAN
  , SANDBOX
  , SCOPE
  , SCOPED
  , SCROLLING
  , SEAMLESS
  , SELECTED
  , SHAPE
  , SIZE
  , SIZES
  , SPAN
  , SRC
  , SRCDOC
  , SRCLANG
  , SRCSET
  , START
  , STEP
  , SUMMARY
  , TARGET
  , TYPE
  , USEMAP
  , VALUE
  , WIDTH
  , WMODE
  , WRAP
  ]

----------------------------------------

type AnchorAttributes = GlobalHTMLAttributes ++
  '[ DOWNLOAD
   , HREF
   , HREFLANG
   , MEDIA
   , REL
   , TARGET
   , TYPE
   , AS
   ]

----------------------------------------

type AudioAttributes = MediaAttributes ++
  '[] -- NOTE the <audio> element only takes the <media> attributes

----------------------------------------

type AreaAttributes = GlobalHTMLAttributes ++
  '[ ALT
   , COORDS
   , DOWNLOAD
   , HREF
   , HREFLANG
   , MEDIA
   , REL
   , SHAPE
   , TARGET
   ]

----------------------------------------

type BaseAttributes = GlobalHTMLAttributes ++
  '[ HREF
   , TARGET
   ]

----------------------------------------

type BlockquoteAttributes = GlobalHTMLAttributes ++
  '[ CITE
   ]

----------------------------------------

type ButtonAttributes = GlobalHTMLAttributes ++
  '[ AUTOFOCUS
   , DISABLED
   , FORM
   , FORMACTION
   , FORMENCTYPE
   , FORMMETHOD
   , FORMNOVALIDATE
   , FORMTARGET
   , NAME
   , TYPE
   , VALUE
   ]

---------------------------------------

type CanvasAttributes = GlobalHTMLAttributes ++
  '[ HEIGHT
   , WIDTH
   ]

---------------------------------------

type ColAttributes = GlobalHTMLAttributes ++
  '[ SPAN
   , WIDTH
   ]

----------------------------------------

type ColgroupAttributes = GlobalHTMLAttributes ++
  '[ SPAN
   ]

----------------------------------------

type DetailsAttributes = GlobalHTMLAttributes ++
  '[ OPEN
   ]

----------------------------------------

type DelAttributes = GlobalHTMLAttributes ++
  '[ CITE
   , DATETIME
   ]

----------------------------------------

type EmbedAttributes = GlobalHTMLAttributes ++
  '[ HEIGHT
   , SRC
   , TYPE
   , WIDTH
   ]

----------------------------------------

type FieldsetAttributes = GlobalHTMLAttributes ++
  '[ DISABLED
   , FORM
   , NAME
   ]

----------------------------------------

type FormAttributes = GlobalHTMLAttributes ++
  '[ ACCEPTCHARSET
   , ACTION
   , AUTOCOMPLETE
   , ENCTYPE
   , METHOD
   , NAME
   , NOVALIDATE
   , TARGET
   ]

----------------------------------------

type HtmlAttributes = GlobalHTMLAttributes ++
  '[ MANIFEST
   ]

----------------------------------------

type IframeAttributes = GlobalHTMLAttributes ++
  '[ ALLOWFULLSCREEN
   , ALLOWTRANSPARENCY
   , FRAMEBORDER
   , HEIGHT
   , MARGINHEIGHT
   , MARGINWIDTH
   , NAME
   , SANDBOX
   , SCROLLING
   , SEAMLESS
   , SRC
   , SRCDOC
   , WIDTH
   ]

----------------------------------------

type ImgAttributes = GlobalHTMLAttributes ++
  '[ ALT
   , HEIGHT
   , SIZES
   , SRC
   , SRCSET
   , USEMAP
   , WIDTH
   ]

----------------------------------------

type InsAttributes = GlobalHTMLAttributes ++
  '[ CITE
   , DATETIME
   ]

----------------------------------------

type InputAttributes = GlobalHTMLAttributes ++
  '[ ACCEPT
   , ALT
   , AUTOCOMPLETE
   , AUTOFOCUS
   , CAPTURE
     -- https://www.w3.org/TR/html-media-capture/#the-capture-attribute
   , CHECKED
   , CROSSORIGIN
   , DISABLED
   , FORM
   , FORMACTION
   , FORMENCTYPE
   , FORMMETHOD
   , FORMNOVALIDATE
   , FORMTARGET
   , HEIGHT
   , LIST
   , MAX
   , MAXLENGTH
   , MIN
   , MINLENGTH
   , MULTIPLE
   , NAME
   , PATTERN
   , PLACEHOLDER
   , READONLY
   , REQUIRED
   , SIZE
   , SRC
   , STEP
   , TYPE
   , VALUE
   , WIDTH
   ]

----------------------------------------

type KeygenAttributes = GlobalHTMLAttributes ++
  '[ AUTOFOCUS
   , CHALLENGE
   , DISABLED
   , FORM
   , KEYTYPE
   , KEYPARAMS
   , NAME
   ]

----------------------------------------

type LabelAttributes = GlobalHTMLAttributes ++
  '[ FORM
   , HTMLFOR
   ]

----------------------------------------

type LiAttributes = GlobalHTMLAttributes ++
  '[ VALUE
   ]

----------------------------------------

type LinkAttributes = GlobalHTMLAttributes ++
  '[ AS
   , CROSSORIGIN
   , HREF
   , HREFLANG
   , INTEGRITY
   , MEDIA
   , REL
   , SIZES
   , TYPE
   ]

----------------------------------------

type MapAttributes = GlobalHTMLAttributes ++
  '[ NAME
   ]

----------------------------------------

type MenuAttributes = GlobalHTMLAttributes ++
  '[ TYPE
   ]

----------------------------------------

type MediaAttributes = GlobalHTMLAttributes ++
  '[ AUTOPLAY
   , CONTROLS
   , CONTROLSLIST
   , CROSSORIGIN
   , LOOP
   , MEDIAGROUP
   , MUTED
   , PLAYSINLINE
   , PRELOAD
   , SRC
   ]

----------------------------------------

type MetaAttributes = GlobalHTMLAttributes ++
  '[ CHARSET
   , CONTENT
   , HTTPEQUIV
   , NAME
   ]

----------------------------------------

type MeterAttributes = GlobalHTMLAttributes ++
  '[ FORM
   , HIGH
   , LOW
   , MAX
   , MIN
   , OPTIMUM
   , VALUE
   ]

----------------------------------------

type QuoteAttributes = GlobalHTMLAttributes ++
  '[ CITE
   ]

----------------------------------------

type ObjectAttributes = GlobalHTMLAttributes ++
  '[ CLASSID
   , DATA
   , FORM
   , HEIGHT
   , NAME
   , TYPE
   , USEMAP
   , WIDTH
   , WMODE
   ]

----------------------------------------

type OlAttributes = GlobalHTMLAttributes ++
  '[ REVERSED
   , START
   ]

----------------------------------------

type OptgroupAttributes = GlobalHTMLAttributes ++
  '[ DISABLED
   , LABEL
   ]

----------------------------------------

type OptionAttributes = GlobalHTMLAttributes ++
  '[ DISABLED
   , LABEL
   , SELECTED
   , VALUE
   ]

----------------------------------------

type OutputAttributes = GlobalHTMLAttributes ++
  '[ FORM
   , HTMLFOR
   , NAME
   ]

----------------------------------------

type ParamAttributes = GlobalHTMLAttributes ++
  '[ NAME
   , VALUE
   ]

----------------------------------------

type ProgressAttributes = GlobalHTMLAttributes ++
  '[ MAX
   , VALUE
   ]

----------------------------------------

type ScriptAttributes = GlobalHTMLAttributes ++
  '[ ASYNC
   , CHARSET
   , CROSSORIGIN
   , DEFER
   , INTEGRITY
   , NONCE
   , SRC
   , TYPE
   ]

----------------------------------------

type SelectAttributes = GlobalHTMLAttributes ++
  '[ AUTOFOCUS
   , DISABLED
   , FORM
   , MULTIPLE
   , NAME
   , REQUIRED
   , SIZE
   , VALUE
   ]

----------------------------------------

type SourceAttributes = GlobalHTMLAttributes ++
  '[ MEDIA
   , SIZES
   , SRC
   , SRCSET
   , TYPE
   ]

----------------------------------------

type StyleAttributes = GlobalHTMLAttributes ++
  '[ MEDIA
   , NONCE
   , SCOPED
   , TYPE
   ]

----------------------------------------

type TableAttributes = GlobalHTMLAttributes ++
  '[ CELLPADDING
   , CELLSPACING
   , SUMMARY
   ]

----------------------------------------

type TextareaAttributes = GlobalHTMLAttributes ++
  '[ AUTOCOMPLETE
   , AUTOFOCUS
   , COLS
   , DIRNAME
   , DISABLED
   , FORM
   , MAXLENGTH
   , MINLENGTH
   , NAME
   , PLACEHOLDER
   , READONLY
   , REQUIRED
   , ROWS
   , VALUE
   , WRAP
   ]

----------------------------------------

type TdAttributes = GlobalHTMLAttributes ++
  '[ COLSPAN
   , HEADERS
   , ROWSPAN
   , SCOPE
   ]

----------------------------------------

type ThAttributes = GlobalHTMLAttributes ++
  '[ COLSPAN
   , HEADERS
   , ROWSPAN
   , SCOPE
   ]

----------------------------------------

type TimeAttributes = GlobalHTMLAttributes ++
  '[ DATETIME
   ]

----------------------------------------

type TrackAttributes = GlobalHTMLAttributes ++
  '[ DEFAULT
   , KIND
   , LABEL
   , SRC
   , SRCLANG
   ]

----------------------------------------

type VideoAttributes = MediaAttributes ++ 
  '[ HEIGHT
   , PLAYSINLINE
   , POSTER
   , WIDTH
   ]

----------------------------------------