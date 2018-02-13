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
type ALL_ATTRIBUTES --TODO
   = GLOBAL_ATTRIBUTES
  ++ LOCAL_ATTRIBUTES 

----------------------------------------

type GLOBAL_ATTRIBUTES --TODO
   = GLOBAL_ATTRIBUTES_
  ++ ARIA_ATTRIBUTES

----------------------------------------

{-| global html attributes, i.e. valid for all elements. 

-}
type GLOBAL_ATTRIBUTES_ =

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
type ARIA_ATTRIBUTES =
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
type LOCAL_ATTRIBUTES = 
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

{-| All @<anchor>@ attributes.

-}
type ANCHOR_ATTRIBUTES = ANCHOR_ATTRIBUTES_ ++ GLOBAL_ATTRIBUTES

{-| @<anchor>@-specific attributes.

-}
type ANCHOR_ATTRIBUTES_ =
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

{- |

@<audio>@ subtypes @<media>@.  

-}
type AUDIO_ATTRIBUTES = AUDIO_ATTRIBUTES_ ++ MEDIA_ATTRIBUTES

{-| @<audio>@-specific attributes (NOTE there are none).

-}
type AUDIO_ATTRIBUTES_ = ('[] :: [ATTRIBUTE])
  -- the <audio> element only takes the <media> attributes

----------------------------------------

{-| All @<area>@ attributes.

-}
type AREA_ATTRIBUTES = AREA_ATTRIBUTES_ ++ GLOBAL_ATTRIBUTES

{-| @<area>@-specific attributes.

-}
type AREA_ATTRIBUTES_ =
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

{-| All @<base>@ attributes.

-}
type BASE_ATTRIBUTES = BASE_ATTRIBUTES_ ++ GLOBAL_ATTRIBUTES

{-| @<base>@-specific attributes.

-}
type BASE_ATTRIBUTES_ =
  '[ HREF
   , TARGET
   ]

----------------------------------------

{-| All @<blockquote>@ attributes.

-}
type BLOCKQUOTE_ATTRIBUTES = BLOCKQUOTE_ATTRIBUTES_ ++ GLOBAL_ATTRIBUTES

{-| @<blockquote>@-specific attributes.

-}
type BLOCKQUOTE_ATTRIBUTES_ =
  '[ CITE
   ]

----------------------------------------

{-| All @<button>@ attributes.

-}
type BUTTON_ATTRIBUTES = BUTTON_ATTRIBUTES_ ++ GLOBAL_ATTRIBUTES

{-| @<button>@-specific attributes.

-}
type BUTTON_ATTRIBUTES_ =
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

{-| All @<canvas>@ attributes.

-}
type CANVAS_ATTRIBUTES = CANVAS_ATTRIBUTES_ ++ GLOBAL_ATTRIBUTES

{-| @<canvas>@-specific attributes.

-}
type CANVAS_ATTRIBUTES_ =
  '[ HEIGHT
   , WIDTH
   ]

---------------------------------------

{-| All @<col>@ attributes.

-}
type COL_ATTRIBUTES = COL_ATTRIBUTES_ ++ GLOBAL_ATTRIBUTES

{-| @<col>@-specific attributes.

-}
type COL_ATTRIBUTES_ =
  '[ SPAN
   , WIDTH
   ]

----------------------------------------

{-| All @<colgroup>@ attributes.

-}
type COLGROUP_ATTRIBUTES = COLGROUP_ATTRIBUTES_ ++ GLOBAL_ATTRIBUTES

{-| @<colgroup>@-specific attributes.

-}
type COLGROUP_ATTRIBUTES_ =
  '[ SPAN
   ]

----------------------------------------

{-| All @<details>@ attributes.

-}
type DETAILS_ATTRIBUTES = DETAILS_ATTRIBUTES_ ++ GLOBAL_ATTRIBUTES

{-| @<details>@-specific attributes.

-}
type DETAILS_ATTRIBUTES_ =
  '[ OPEN
   ]

----------------------------------------

{-| All @<del>@ attributes.

-}
type DEL_ATTRIBUTES = DEL_ATTRIBUTES_ ++ GLOBAL_ATTRIBUTES

{-| @<del>@-specific attributes.

-}
type DEL_ATTRIBUTES_ =
  '[ CITE
   , DATETIME
   ]

----------------------------------------

{-| All @<embed>@ attributes.

-}
type EMBED_ATTRIBUTES = EMBED_ATTRIBUTES_ ++ GLOBAL_ATTRIBUTES

{-| @<embed>@-specific attributes.

-}
type EMBED_ATTRIBUTES_ =
  '[ HEIGHT
   , SRC
   , TYPE
   , WIDTH
   ]

----------------------------------------

{-| All @<fieldset>@ attributes.

-}
type FIELDSET_ATTRIBUTES = FIELDSET_ATTRIBUTES_ ++ GLOBAL_ATTRIBUTES

{-| @<fieldset>@-specific attributes.

-}
type FIELDSET_ATTRIBUTES_ =
  '[ DISABLED
   , FORM
   , NAME
   ]

----------------------------------------

{-| All @<form>@ attributes.

-}
type FORM_ATTRIBUTES = FORM_ATTRIBUTES_ ++ GLOBAL_ATTRIBUTES

{-| @<form>@-specific attributes.

-}
type FORM_ATTRIBUTES_ =
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

{-| All @<html>@ attributes.

-}
type HTML_ATTRIBUTES = HTML_ATTRIBUTES_ ++ GLOBAL_ATTRIBUTES

{-| @<html>@-specific attributes.

-}
type HTML_ATTRIBUTES_ =
  '[ MANIFEST
   ]

----------------------------------------

{-| All @<iframe>@ attributes.

-}
type IFRAME_ATTRIBUTES = IFRAME_ATTRIBUTES_ ++ GLOBAL_ATTRIBUTES

{-| @<iframe>@-specific attributes.

-}
type IFRAME_ATTRIBUTES_ =
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

{-| All @<img>@ attributes.

-}
type IMG_ATTRIBUTES = IMG_ATTRIBUTES_ ++ GLOBAL_ATTRIBUTES

{-| @<img>@-specific attributes.

-}
type IMG_ATTRIBUTES_ =
  '[ ALT
   , HEIGHT
   , SIZES
   , SRC
   , SRCSET
   , USEMAP
   , WIDTH
   ]

----------------------------------------

{-| All @<ins>@ attributes.

-}
type INS_ATTRIBUTES = INS_ATTRIBUTES_ ++ GLOBAL_ATTRIBUTES

{-| @<ins>@-specific attributes.

-}
type INS_ATTRIBUTES_ =
  '[ CITE
   , DATETIME
   ]

----------------------------------------

{-| All @<input>@ attributes.

-}
type INPUT_ATTRIBUTES = INPUT_ATTRIBUTES_ ++ GLOBAL_ATTRIBUTES

{-| @<input>@-specific attributes.

-}
type INPUT_ATTRIBUTES_ =
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

{-| All @<keygen>@ attributes.

-}
type KEYGEN_ATTRIBUTES = KEYGEN_ATTRIBUTES_ ++ GLOBAL_ATTRIBUTES

{-| @<keygen>@-specific attributes.

-}
type KEYGEN_ATTRIBUTES_ =
  '[ AUTOFOCUS
   , CHALLENGE
   , DISABLED
   , FORM
   , KEYTYPE
   , KEYPARAMS
   , NAME
   ]

----------------------------------------

{-| All @<label>@ attributes.

-}
type LABEL_ATTRIBUTES = LABEL_ATTRIBUTES_ ++ GLOBAL_ATTRIBUTES

{-| @<label>@-specific attributes.

-}
type LABEL_ATTRIBUTES_ =
  '[ FORM
   , HTMLFOR
   ]

----------------------------------------

{-| All @<li>@ attributes.

-}
type LI_ATTRIBUTES = LI_ATTRIBUTES_ ++ GLOBAL_ATTRIBUTES

{-| @<li>@-specific attributes.

-}
type LI_ATTRIBUTES_ =
  '[ VALUE
   ]

----------------------------------------

{-| All @<link>@ attributes.

-}
type LINK_ATTRIBUTES = LINK_ATTRIBUTES_ ++ GLOBAL_ATTRIBUTES

{-| @<link>@-specific attributes.

-}
type LINK_ATTRIBUTES_ =
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

{-| All @<map>@ attributes.

-}
type MAP_ATTRIBUTES = MAP_ATTRIBUTES_ ++ GLOBAL_ATTRIBUTES

{-| @<map>@-specific attributes.

-}
type MAP_ATTRIBUTES_ =
  '[ NAME
   ]

----------------------------------------

{-| All @<menu>@ attributes.

-}
type MENU_ATTRIBUTES = MENU_ATTRIBUTES_ ++ GLOBAL_ATTRIBUTES

{-| @<menu>@-specific attributes.

-}
type MENU_ATTRIBUTES_ =
  '[ TYPE
   ]

----------------------------------------

{-| All @<media>@ attributes.

-}
type MEDIA_ATTRIBUTES = MEDIA_ATTRIBUTES_ ++ GLOBAL_ATTRIBUTES

{-| @<media>@-specific attributes.

-}
type MEDIA_ATTRIBUTES_ =
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

{-| All @<meta>@ attributes.

-}
type META_ATTRIBUTES = META_ATTRIBUTES_ ++ GLOBAL_ATTRIBUTES

{-| @<meta>@-specific attributes.

-}
type META_ATTRIBUTES_ =
  '[ CHARSET
   , CONTENT
   , HTTPEQUIV
   , NAME
   ]

----------------------------------------

{-| All @<meter>@ attributes.

-}
type METER_ATTRIBUTES = METER_ATTRIBUTES_ ++ GLOBAL_ATTRIBUTES

{-| @<meter>@-specific attributes.

-}
type METER_ATTRIBUTES_ =
  '[ FORM
   , HIGH
   , LOW
   , MAX
   , MIN
   , OPTIMUM
   , VALUE
   ]

----------------------------------------

{-| All @<quote>@ attributes.

-}
type QUOTE_ATTRIBUTES = QUOTE_ATTRIBUTES_ ++ GLOBAL_ATTRIBUTES

{-| @<quote>@-specific attributes.

-}
type QUOTE_ATTRIBUTES_ =
  '[ CITE
   ]

----------------------------------------

{-| All @<object>@ attributes.

-}
type OBJECT_ATTRIBUTES = OBJECT_ATTRIBUTES_ ++ GLOBAL_ATTRIBUTES

{-| @<object>@-specific attributes.

-}
type OBJECT_ATTRIBUTES_ =
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

{-| All @<ol>@ attributes.

-}
type OL_ATTRIBUTES = OL_ATTRIBUTES_ ++ GLOBAL_ATTRIBUTES

{-| @<ol>@-specific attributes.

-}
type OL_ATTRIBUTES_ =
  '[ REVERSED
   , START
   ]

----------------------------------------

{-| All @<optgroup>@ attributes.

-}
type OPTGROUP_ATTRIBUTES = OPTGROUP_ATTRIBUTES_ ++ GLOBAL_ATTRIBUTES

{-| @<optgroup>@-specific attributes.

-}
type OPTGROUP_ATTRIBUTES_ =
  '[ DISABLED
   , LABEL
   ]

----------------------------------------

{-| All @<option>@ attributes.

-}
type OPTION_ATTRIBUTES = OPTION_ATTRIBUTES_ ++ GLOBAL_ATTRIBUTES

{-| @<option>@-specific attributes.

-}
type OPTION_ATTRIBUTES_ =
  '[ DISABLED
   , LABEL
   , SELECTED
   , VALUE
   ]

----------------------------------------

{-| All @<output>@ attributes.

-}
type OUTPUT_ATTRIBUTES = OUTPUT_ATTRIBUTES_ ++ GLOBAL_ATTRIBUTES

{-| @<output>@-specific attributes.

-}
type OUTPUT_ATTRIBUTES_ =
  '[ FORM
   , HTMLFOR
   , NAME
   ]

----------------------------------------

{-| All @<param>@ attributes.

-}
type PARAM_ATTRIBUTES = PARAM_ATTRIBUTES_ ++ GLOBAL_ATTRIBUTES

{-| @<param>@-specific attributes.

-}
type PARAM_ATTRIBUTES_ =
  '[ NAME
   , VALUE
   ]

----------------------------------------

{-| All @<progress>@ attributes.

-}
type PROGRESS_ATTRIBUTES = PROGRESS_ATTRIBUTES_ ++ GLOBAL_ATTRIBUTES

{-| @<progress>@-specific attributes.

-}
type PROGRESS_ATTRIBUTES_ =
  '[ MAX
   , VALUE
   ]

----------------------------------------

{-| All @<script>@ attributes.

-}
type SCRIPT_ATTRIBUTES = SCRIPT_ATTRIBUTES_ ++ GLOBAL_ATTRIBUTES

{-| @<script>@-specific attributes.

-}
type SCRIPT_ATTRIBUTES_ =
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

{-| All @<select>@ attributes.

-}
type SELECT_ATTRIBUTES = SELECT_ATTRIBUTES_ ++ GLOBAL_ATTRIBUTES

{-| @<select>@-specific attributes.

-}
type SELECT_ATTRIBUTES_ =
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

{-| All @<source>@ attributes.

-}
type SOURCE_ATTRIBUTES = SOURCE_ATTRIBUTES_ ++ GLOBAL_ATTRIBUTES

{-| @<source>@-specific attributes.

-}
type SOURCE_ATTRIBUTES_ =
  '[ MEDIA
   , SIZES
   , SRC
   , SRCSET
   , TYPE
   ]

----------------------------------------

{-| All @<style>@ attributes.

-}
type STYLE_ATTRIBUTES = STYLE_ATTRIBUTES_ ++ GLOBAL_ATTRIBUTES

{-| @<style>@-specific attributes.

-}
type STYLE_ATTRIBUTES_ =
  '[ MEDIA
   , NONCE
   , SCOPED
   , TYPE
   ]

----------------------------------------

{-| All @<table>@ attributes.

-}
type TABLE_ATTRIBUTES = TABLE_ATTRIBUTES_ ++ GLOBAL_ATTRIBUTES

{-| @<table>@-specific attributes.

-}
type TABLE_ATTRIBUTES_ =
  '[ CELLPADDING
   , CELLSPACING
   , SUMMARY
   ]

----------------------------------------

{-| All @<textarea>@ attributes.

-}
type TEXTAREA_ATTRIBUTES = TEXTAREA_ATTRIBUTES_ ++ GLOBAL_ATTRIBUTES

{-| @<textarea>@-specific attributes.

-}
type TEXTAREA_ATTRIBUTES_ =
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

{-| All @<td>@ attributes.

-}
type TD_ATTRIBUTES = TD_ATTRIBUTES_ ++ GLOBAL_ATTRIBUTES

{-| @<td>@-specific attributes.

-}
type TD_ATTRIBUTES_ =
  '[ COLSPAN
   , HEADERS
   , ROWSPAN
   , SCOPE
   ]

----------------------------------------

{-| All @<th>@ attributes.

-}
type TH_ATTRIBUTES = TH_ATTRIBUTES_ ++ GLOBAL_ATTRIBUTES

{-| @<th>@-specific attributes.

-}
type TH_ATTRIBUTES_ =
  '[ COLSPAN
   , HEADERS
   , ROWSPAN
   , SCOPE
   ]

----------------------------------------

{-| All @<time>@ attributes.

-}
type TIME_ATTRIBUTES = TIME_ATTRIBUTES_ ++ GLOBAL_ATTRIBUTES

{-| @<time>@-specific attributes.

-}
type TIME_ATTRIBUTES_ =
  '[ DATETIME
   ]

----------------------------------------

{-| All @<track>@ attributes.

-}
type TRACK_ATTRIBUTES = TRACK_ATTRIBUTES_ ++ GLOBAL_ATTRIBUTES

{-| @<track>@-specific attributes.

-}
type TRACK_ATTRIBUTES_ =
  '[ DEFAULT
   , KIND
   , LABEL
   , SRC
   , SRCLANG
   ]

----------------------------------------

{-| All @<video>@ attributes.

@<video>@ subtypes @<media>@.

-}
type VIDEO_ATTRIBUTES = VIDEO_ATTRIBUTES_ ++ MEDIA_ATTRIBUTES 

{-| @<video>@-specific attributes.

-}
type VIDEO_ATTRIBUTES_ =
  '[ HEIGHT
   , PLAYSINLINE
   , POSTER
   , WIDTH
   ]

----------------------------------------