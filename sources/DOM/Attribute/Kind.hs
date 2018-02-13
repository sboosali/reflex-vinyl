{-# LANGUAGE DataKinds #-}

{-|

Manually generated from definitions in the @typescript@ compiler (in Feb 2018). 

<https://github.com/DefinitelyTyped/DefinitelyTyped/blob/80589689957696f66bfd59960aadd2c5bc2cac31/types/react/index.d.ts#L605>

NOTE on Naming: haskell keywords that conflict with html attributes include: @type@, @data@, @class@, @default@.


-}

module DOM.Attribute.Kind where
import DOM.Extra
--import DOM.CSS.Kind

----------------------------------------

{-| a @data kind@.

In particular a "kind enum", a.k.a the universe of all possible HTML Attributes, ungrouped.

-}
data ATTRIBUTE 
  -- Standard (Global?) HTML Attributes
  = ACCESSKEY
  | CLASSNAME
  | CONTENTEDITABLE
  | CONTEXTMENU
  | DIR
  | DRAGGABLE
  | HIDDEN
  | ID
  | LANG
  | SLOT
  | SPELLCHECK
  | STYLE
  | TABINDEX
  | TITLE

  -- Unknown
  | INPUTMODE
  | IS
  | RADIOGROUP

  -- WAI-ARIA
  | ROLE

  -- RDFa Attributes
  | ABOUT
  | DATATYPE
  | INLIST
  | PREFIX
  | PROPERTY
  | RESOURCE
  | TYPEOF
  | VOCAB

  -- Non-standard Attributes
  | AUTOCAPITALIZE
  | AUTOCORRECT
  | AUTOSAVE
  | COLOR
  | ITEMPROP
  | ITEMSCOPE
  | ITEMTYPE
  | ITEMID
  | ITEMREF
  | RESULTS
  | SECURITY
  | UNSELECTABLE

  ----------------------------------------
  -- All the WAI-ARIA 1.1 attributes from https://www.w3.org/TR/wai-aria-1.1/

  | ARIA_ACTIVEDESCENDANT
  | ARIA_ATOMIC
  | ARIA_AUTOCOMPLETE
  | ARIA_BUSY
  | ARIA_CHECKED
  | ARIA_COLCOUNT
  | ARIA_COLINDEX
  | ARIA_COLSPAN
  | ARIA_CURRENT
  | ARIA_DESCRIBEDBY
  | ARIA_DETAILS
  | ARIA_DISABLED
  | ARIA_DROPEFFECT
  | ARIA_ERRORMESSAGE
  | ARIA_EXPANDED
  | ARIA_FLOWTO
  | ARIA_GRABBED
  | ARIA_HASPOPUP
  | ARIA_HIDDEN
  | ARIA_INVALID
  | ARIA_KEYSHORTCUTS
  | ARIA_LABEL 
  | ARIA_LABELLEDBY
  | ARIA_LEVEL
  | ARIA_LIVE
  | ARIA_MODAL
  | ARIA_MULTILINE
  | ARIA_MULTISELECTABLE
  | ARIA_ORIENTATION
  | ARIA_OWNS
  | ARIA_PLACEHOLDER
  | ARIA_POSINSET
  | ARIA_PRESSED
  | ARIA_READONLY
  | ARIA_RELEVANT
  | ARIA_REQUIRED
  | ARIA_ROLEDESCRIPTION
  | ARIA_ROWCOUNT
  | ARIA_ROWINDEX
  | ARIA_ROWSPAN
  | ARIA_SELECTED
  | ARIA_SETSIZE
  | ARIA_SORT
  | ARIA_VALUEMAX
  | ARIA_VALUEMIN
  | ARIA_VALUENOW
  | ARIA_VALUETEXT

  ----------------------------------------

    -- Other (non-Global) HTML Attributes
    -- Elements' attributes overlap
  | ACCEPT
  | ACCEPTCHARSET
  | ACTION
  | ALLOWFULLSCREEN
  | ALLOWTRANSPARENCY
  | ALT
  | AS
  | ASYNC
  | AUTOCOMPLETE
  | AUTOFOCUS
  | AUTOPLAY
  | CAPTURE
  | CELLPADDING
  | CELLSPACING
  | CHALLENGE
  | CHARSET
  | CHECKED
  | CITE
  | CLASSID
  | COLS
  | COLSPAN
  | CONTENT
  | CONTROLS
  | CONTROLSLIST
  | COORDS
  | CROSSORIGIN
  | DATA
  | DATETIME
  | DEFAULT
  | DEFER
  | DIRNAME
  | DISABLED
  | DOWNLOAD
  | ENCTYPE
  | FORM
  | FORMACTION
  | FORMENCTYPE
  | FORMMETHOD
  | FORMNOVALIDATE
  | FORMTARGET
  | FRAMEBORDER
  | HEADERS
  | HEIGHT
  | HIGH
  | HREF
  | HREFLANG
  | HTMLFOR
  | HTTPEQUIV
  | INTEGRITY
  | KEYPARAMS
  | KEYTYPE
  | KIND
  | LABEL
  | LIST
  | LOOP
  | LOW
  | MANIFEST
  | MARGINHEIGHT
  | MARGINWIDTH
  | MAX
  | MAXLENGTH
  | MEDIA
  | MEDIAGROUP
  | METHOD
  | MIN
  | MINLENGTH
  | MULTIPLE
  | MUTED
  | NAME
  | NONCE
  | NOVALIDATE
  | OPEN
  | OPTIMUM
  | PATTERN
  | PLACEHOLDER
  | PLAYSINLINE
  | POSTER
  | PRELOAD
  | READONLY
  | REL
  | REQUIRED
  | REVERSED
  | ROWS
  | ROWSPAN
  | SANDBOX
  | SCOPE
  | SCOPED
  | SCROLLING
  | SEAMLESS
  | SELECTED
  | SHAPE
  | SIZE
  | SIZES
  | SPAN
  | SRC
  | SRCDOC
  | SRCLANG
  | SRCSET
  | START
  | STEP
  | SUMMARY
  | TARGET
  | TYPE
  | USEMAP
  | VALUE
  | WIDTH
  | WMODE
  | WRAP
