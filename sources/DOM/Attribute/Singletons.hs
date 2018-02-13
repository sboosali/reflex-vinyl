{-# LANGUAGE GADTs, DataKinds #-}

{-|

-}
module DOM.Attribute.Singletons where

import DOM.Extra
import DOM.Attribute.Kind

----------------------------------------

-- type family AttributeSingleton :: forall (a :: *) (attribute :: ATTRIBUTE). attribute -> Attribute a attribute where
--   AttributeSingleton
  
----------------------------------------

{-| the (haskell) type of each attribute. 

this type-level function is total.

-}
type family AttributeType (attribute :: ATTRIBUTE) :: * where

  AttributeType ACCESSKEY             = (Text)          
  AttributeType CLASSNAME             = (Text)          
  AttributeType CONTENTEDITABLE       = (Bool)          
  AttributeType CONTEXTMENU           = (Text)          
  AttributeType DIR                   = (Text)          
  AttributeType DRAGGABLE             = (Bool)          
  AttributeType HIDDEN                = (Bool)          
  AttributeType ID                    = (Text)          
  AttributeType LANG                  = (Text)          
  AttributeType SLOT                  = (Text)          
  AttributeType SPELLCHECK            = (Bool)          
  AttributeType STYLE                 = (CSSProperties) 
  AttributeType TABINDEX              = (Number)        
  AttributeType TITLE                 = (Text)          
  AttributeType INPUTMODE             = (Text)          
  AttributeType IS                    = (Text)          
  AttributeType RADIOGROUP            = (Text)          
  AttributeType ROLE                  = (Text)          
  AttributeType ABOUT                 = (Text)          
  AttributeType DATATYPE              = (Text)          
  AttributeType INLIST                = (Any)           
  AttributeType PREFIX                = (Text)          
  AttributeType PROPERTY              = (Text)          
  AttributeType RESOURCE              = (Text)          
  AttributeType TYPEOF                = (Text)          
  AttributeType VOCAB                 = (Text)          
  AttributeType AUTOCAPITALIZE        = (Text)          
  AttributeType AUTOCORRECT           = (Text)          
  AttributeType AUTOSAVE              = (Text)          
  AttributeType COLOR                 = (Text)          
  AttributeType ITEMPROP              = (Text)          
  AttributeType ITEMSCOPE             = (Bool)          
  AttributeType ITEMTYPE              = (Text)          
  AttributeType ITEMID                = (Text)          
  AttributeType ITEMREF               = (Text)          
  AttributeType RESULTS               = (Number)        
  AttributeType SECURITY              = (Text)          
  AttributeType UNSELECTABLE          = (Bool)          

  AttributeType ARIA_ACTIVEDESCENDANT = (Text) 
  AttributeType ARIA_ATOMIC           = (Bool) 
  AttributeType ARIA_AUTOCOMPLETE     = (Enumeration ["none","inline","list","both"]) 
  AttributeType ARIA_BUSY             = (Bool) 
  AttributeType ARIA_CHECKED          = (Bool) 
  AttributeType ARIA_COLCOUNT         = (Number) 
  AttributeType ARIA_COLINDEX         = (Number) 
  AttributeType ARIA_COLSPAN          = (Number) 
  AttributeType ARIA_CURRENT          = (Either Bool (Enumeration ["page", "step", "location", "date", "time"])) 
  AttributeType ARIA_DESCRIBEDBY      = (Text) 
  AttributeType ARIA_DETAILS          = (Text) 
  AttributeType ARIA_DISABLED         = (Bool) 
  AttributeType ARIA_DROPEFFECT       = (Enumeration [ "none", "copy", "execute", "link", "move", "popup"]) 
  AttributeType ARIA_ERRORMESSAGE     = (Text) 
  AttributeType ARIA_EXPANDED         = (Bool) 
  AttributeType ARIA_FLOWTO           = (Text) 
  AttributeType ARIA_GRABBED          = (Bool) 
  AttributeType ARIA_HASPOPUP         = (Either Bool (Enumeration ["menu", "listbox", "tree", "grid", "dialog"])) 
  AttributeType ARIA_HIDDEN           = (Bool) 
  AttributeType ARIA_INVALID          = (Either Bool (Enumeration ["grammar", "spelling"])) 
  AttributeType ARIA_KEYSHORTCUTS     = (Text) 
  AttributeType ARIA_LABEL            = (Text) 
  AttributeType ARIA_LABELLEDBY       = (Text) 
  AttributeType ARIA_LEVEL            = (Number) 
  AttributeType ARIA_LIVE             = (Enumeration ["off", "assertive", "polite"]) 
  AttributeType ARIA_MODAL            = (Bool) 
  AttributeType ARIA_MULTILINE        = (Bool) 
  AttributeType ARIA_MULTISELECTABLE  = (Bool) 
  AttributeType ARIA_ORIENTATION      = (Enumeration ["horizontal", "vertical"]) 
  AttributeType ARIA_OWNS             = (Text) 
  AttributeType ARIA_PLACEHOLDER      = (Text) 
  AttributeType ARIA_POSINSET         = (Number) 
  AttributeType ARIA_PRESSED          = (Either Bool (Enumeration '["mixed"])) 
  AttributeType ARIA_READONLY         = (Bool) 
  AttributeType ARIA_RELEVANT         = (Enumeration ["additions", "additions text", "all", "removals", "text"]) 
  AttributeType ARIA_REQUIRED         = (Bool) 
  AttributeType ARIA_ROLEDESCRIPTION  = (Text) 
  AttributeType ARIA_ROWCOUNT         = (Number) 
  AttributeType ARIA_ROWINDEX         = (Number) 
  AttributeType ARIA_ROWSPAN          = (Number) 
  AttributeType ARIA_SELECTED         = (Bool) 
  AttributeType ARIA_SETSIZE          = (Number) 
  AttributeType ARIA_SORT             = (Enumeration ["none", "ascending", "descending", "other"]) 
  AttributeType ARIA_VALUEMAX         = (Number) 
  AttributeType ARIA_VALUEMIN         = (Number) 
  AttributeType ARIA_VALUENOW         = (Number) 
  AttributeType ARIA_VALUETEXT        = (Text) 

  AttributeType ACCEPT                = (Text)        
  AttributeType ACCEPTCHARSET         = (Text)        
  AttributeType ACTION                = (Text)        
  AttributeType ALLOWFULLSCREEN       = (Bool)        
  AttributeType ALLOWTRANSPARENCY     = (Bool)        
  AttributeType ALT                   = (Text)        
  AttributeType AS                    = (Text)        
  AttributeType ASYNC                 = (Bool)        
  AttributeType AUTOCOMPLETE          = (Text)        
  AttributeType AUTOFOCUS             = (Bool)        
  AttributeType AUTOPLAY              = (Bool)        
  AttributeType CAPTURE               = (Bool)        
  AttributeType CELLPADDING           = (LooseNumber) 
  AttributeType CELLSPACING           = (LooseNumber) 
  AttributeType CHARSET               = (Text)        
  AttributeType CHALLENGE             = (Text)        
  AttributeType CHECKED               = (Bool)        
  AttributeType CITE                  = (Text)        
  AttributeType CLASSID               = (Text)        
  AttributeType COLS                  = (Number)      
  AttributeType COLSPAN               = (Number)      
  AttributeType CONTENT               = (Text)        
  AttributeType CONTROLS              = (Bool)        
  AttributeType COORDS                = (Text)        
  AttributeType CROSSORIGIN           = (Text)        
  AttributeType DATA                  = (Text)        
  AttributeType DATETIME              = (Text)        
  AttributeType DEFAULT               = (Bool)        
  AttributeType DEFER                 = (Bool)        
  AttributeType DISABLED              = (Bool)        
  AttributeType DOWNLOAD              = (Any)         
  AttributeType ENCTYPE               = (Text)        
  AttributeType FORM                  = (Text)        
  AttributeType FORMACTION            = (Text)        
  AttributeType FORMENCTYPE           = (Text)        
  AttributeType FORMMETHOD            = (Text)        
  AttributeType FORMNOVALIDATE        = (Bool)        
  AttributeType FORMTARGET            = (Text)        
  AttributeType FRAMEBORDER           = (LooseNumber) 
  AttributeType HEADERS               = (Text)        
  AttributeType HEIGHT                = (LooseNumber) 
  AttributeType HIGH                  = (Number)      
  AttributeType HREF                  = (Text)        
  AttributeType HREFLANG              = (Text)        
  AttributeType HTMLFOR               = (Text)        
  AttributeType HTTPEQUIV             = (Text)        
  AttributeType INTEGRITY             = (Text)        
  AttributeType KEYPARAMS             = (Text)        
  AttributeType KEYTYPE               = (Text)        
  AttributeType KIND                  = (Text)        
  AttributeType LABEL                 = (Text)        
  AttributeType LIST                  = (Text)        
  AttributeType LOOP                  = (Bool)        
  AttributeType LOW                   = (Number)      
  AttributeType MANIFEST              = (Text)        
  AttributeType MARGINHEIGHT          = (Number)      
  AttributeType MARGINWIDTH           = (Number)      
  AttributeType MAX                   = (LooseNumber) 
  AttributeType MAXLENGTH             = (Number)      
  AttributeType MEDIA                 = (Text)        
  AttributeType MEDIAGROUP            = (Text)        
  AttributeType METHOD                = (Text)        
  AttributeType MIN                   = (LooseNumber) 
  AttributeType MINLENGTH             = (Number)      
  AttributeType MULTIPLE              = (Bool)        
  AttributeType MUTED                 = (Bool)        
  AttributeType NAME                  = (Text)        
  AttributeType NONCE                 = (Text)        
  AttributeType NOVALIDATE            = (Bool)        
  AttributeType OPEN                  = (Bool)        
  AttributeType OPTIMUM               = (Number)      
  AttributeType PATTERN               = (Text)        
  AttributeType PLACEHOLDER           = (Text)        
  AttributeType PLAYSINLINE           = (Bool)        
  AttributeType POSTER                = (Text)        
  AttributeType PRELOAD               = (Text)        
  AttributeType READONLY              = (Bool)        
  AttributeType REL                   = (Text)        
  AttributeType REQUIRED              = (Bool)        
  AttributeType REVERSED              = (Bool)        
  AttributeType ROWS                  = (Number)      
  AttributeType ROWSPAN               = (Number)      
  AttributeType SANDBOX               = (Text)        
  AttributeType SCOPE                 = (Text)        
  AttributeType SCOPED                = (Bool)        
  AttributeType SCROLLING             = (Text)        
  AttributeType SEAMLESS              = (Bool)        
  AttributeType SELECTED              = (Bool)        
  AttributeType SHAPE                 = (Text)        
  AttributeType SIZE                  = (Number)      
  AttributeType SIZES                 = (Text)        
  AttributeType SPAN                  = (Number)      
  AttributeType SRC                   = (Text)        
  AttributeType SRCDOC                = (Text)        
  AttributeType SRCLANG               = (Text)        
  AttributeType SRCSET                = (Text)        
  AttributeType START                 = (Number)      
  AttributeType STEP                  = (LooseNumber) 
  AttributeType SUMMARY               = (Text)        
  AttributeType TARGET                = (Text)        
  AttributeType TYPE                  = (Text)        
  AttributeType USEMAP                = (Text)        
  AttributeType VALUE                 = (Text)        
  AttributeType WIDTH                 = (LooseNumber) 
  AttributeType WMODE                 = (Text)        
  AttributeType WRAP                  = (Text)        

----------------------------------------

{-| a @GADT@ of singletons for all types in the 'ATTRIBUTE' kind.

-}
data Attribute (attribute :: ATTRIBUTE) where

  -- Standard HTML Attributes
  AccessKey                :: Attribute 'ACCESSKEY
  ClassName                :: Attribute 'CLASSNAME
  ContentEditable          :: Attribute 'CONTENTEDITABLE
  ContextMenu              :: Attribute 'CONTEXTMENU
  Dir                      :: Attribute 'DIR
  Draggable                :: Attribute 'DRAGGABLE
  Hidden                   :: Attribute 'HIDDEN
  Id                       :: Attribute 'ID
  Lang                     :: Attribute 'LANG
  Slot                     :: Attribute 'SLOT
  SpellCheck               :: Attribute 'SPELLCHECK
  Style                    :: Attribute 'STYLE
  TabIndex                 :: Attribute 'TABINDEX
  Title                    :: Attribute 'TITLE

  -- Unknown
  InputMode                :: Attribute 'INPUTMODE
  Is                       :: Attribute 'IS
  RadioGroup               :: Attribute 'RADIOGROUP
                                        -- <command>, <menuitem>

  -- WAI-ARIA
  Role                     :: Attribute 'ROLE

  -- RDFa Attributes
  About                    :: Attribute 'ABOUT
  Datatype                 :: Attribute 'DATATYPE
  Inlist                   :: Attribute 'INLIST
  Prefix                   :: Attribute 'PREFIX
  Property                 :: Attribute 'PROPERTY
  Resource                 :: Attribute 'RESOURCE
  Typeof                   :: Attribute 'TYPEOF
  Vocab                    :: Attribute 'VOCAB

  -- Non-standard Attributes
  AutoCapitalize           :: Attribute 'AUTOCAPITALIZE
  AutoCorrect              :: Attribute 'AUTOCORRECT
  AutoSave                 :: Attribute 'AUTOSAVE
  Color                    :: Attribute 'COLOR
  ItemProp                 :: Attribute 'ITEMPROP
  ItemScope                :: Attribute 'ITEMSCOPE
  ItemType                 :: Attribute 'ITEMTYPE
  ItemID                   :: Attribute 'ITEMID
  ItemRef                  :: Attribute 'ITEMREF
  Results                  :: Attribute 'RESULTS
  Security                 :: Attribute 'SECURITY
  Unselectable             :: Attribute 'UNSELECTABLE

  -- All the WAI-ARIA 1.1 attributes from https://www.w3.org/TR/wai-aria-1.1/
    
        
  AriaActivedescendant    :: Attribute 'ARIA_ACTIVEDESCENDANT
  -- ^ Identifies the currently active element when DOM focus is on a composite widget, textbox, group, or application. 
          
  AriaAtomic              :: Attribute 'ARIA_ATOMIC
  -- ^ Indicates whether assistive technologies will present all, or only parts of, the changed region based on the change notifications defined by the aria-relevant attribute. 
  
        
  AriaAutocomplete        :: Attribute 'ARIA_AUTOCOMPLETE
         -- ^
         -- * Indicates whether inputting text could trigger display of one or more predictions of the user's intended value for an input and specifies how predictions would be
         -- * presented if they are made.

  AriaBusy                :: Attribute 'ARIA_BUSY
  -- ^ Indicates an element is being modified and that assistive technologies MAY want to wait until the modifications are complete before exposing them to the user. 
  
        
  AriaChecked             :: Attribute 'ARIA_CHECKED
         -- ^
         -- * Indicates the current "checked" state of checkboxes, radio buttons, and other widgets.
         -- * @see aria-pressed @see aria-selected.
          
  AriaColcount            :: Attribute 'ARIA_COLCOUNT
         -- ^
         -- * Defines the total number of columns in a table, grid, or treegrid.
         -- * @see aria-colindex.
         
  
        
  AriaColindex            :: Attribute 'ARIA_COLINDEX
  -- ^
         -- * Defines an element's column index or position with respect to the total number of columns within a table, grid, or treegrid.
         -- * @see aria-colcount @see aria-colspan.
         
  
        
  AriaColspan             :: Attribute 'ARIA_COLSPAN
  -- ^
         -- * Defines the number of columns spanned by a cell or gridcell within a table, grid, or treegrid.
         -- * @see aria-colindex @see aria-rowspan.
         
  
        {- Indicates the element that represents the current item within a container or set of related elements. -}
  AriaCurrent         :: Attribute 'ARIA_CURRENT
        
  AriaDescribedby     :: Attribute 'ARIA_DESCRIBEDBY
  -- ^
         -- * Identifies the element (or elements) that describes the object.
         -- * @see aria-labelledby
         
  
        
  AriaDetails         :: Attribute 'ARIA_DETAILS
  -- ^
         -- * Identifies the element that provides a detailed, extended description for the object.
         -- * @see aria-describedby.
         
  
        
  AriaDisabled        :: Attribute 'ARIA_DISABLED
  -- ^
         -- * Indicates that the element is perceivable but disabled, so it is not editable or otherwise operable.
         -- * @see aria-hidden @see aria-readonly.
         
  
        
  AriaDropeffect      :: Attribute 'ARIA_DROPEFFECT
  -- ^
         -- * Indicates what functions can be performed when a dragged object is released on the drop target.
         -- * @deprecated in ARIA 1.1
         
  
        
  AriaErrormessage    :: Attribute 'ARIA_ERRORMESSAGE
  -- ^
         -- * Identifies the element that provides an error message for the object.
         -- * @see aria-invalid @see aria-describedby.
         

        
  AriaExpanded        :: Attribute 'ARIA_EXPANDED
  -- ^ Indicates whether the element, or another grouping element it controls, is currently expanded or collapsed. 
  
        
  AriaFlowto          :: Attribute 'ARIA_FLOWTO
  -- ^
         -- * Identifies the next element (or elements) in an alternate reading order of content which, at the user's discretion,
         -- * allows assistive technology to override the general default of reading in document source order.
         
  
        
  AriaGrabbed         :: Attribute 'ARIA_GRABBED
  -- ^
         -- * Indicates an element's "grabbed" state in a drag-and-drop operation.
         -- * @deprecated in ARIA 1.1
         
  
        
  AriaHaspopup        :: Attribute 'ARIA_HASPOPUP
  -- ^ Indicates the availability and type of interactive popup element, such as menu or dialog, that can be triggered by an element. 
  
        
  AriaHidden          :: Attribute 'ARIA_HIDDEN
  -- ^
         -- * Indicates whether the element is exposed to an accessibility API.
         -- * @see aria-disabled.
         
  
        
  AriaInvalid         :: Attribute 'ARIA_INVALID
  -- ^
         -- * Indicates the entered value does not conform to the format expected by the application.
         -- * @see aria-errormessage.
         
  
        
  AriaKeyshortcuts    :: Attribute 'ARIA_KEYSHORTCUTS
  -- ^ Indicates keyboard shortcuts that an author has implemented to activate or give focus to an element. 
  
        
  AriaLabel           :: Attribute 'ARIA_LABEL
  -- ^
         -- * Defines a string value that labels the current element.
         -- * @see aria-labelledby.
         
  
        
  AriaLabelledby      :: Attribute 'ARIA_LABELLEDBY
  -- ^
         -- * Identifies the element (or elements) that labels the current element.
         -- * @see aria-describedby.
         
  
        
  AriaLevel           :: Attribute 'ARIA_LEVEL
  -- ^ Defines the hierarchical level of an element within a structure. 
  
        
  AriaLive            :: Attribute 'ARIA_LIVE
  -- ^ Indicates that an element will be updated, and describes the types of updates the user agents, assistive technologies, and user can expect from the live region. 
  
        
  AriaModal           :: Attribute 'ARIA_MODAL
  -- ^ Indicates whether an element is modal when displayed. 
  
        
  AriaMultiline       :: Attribute 'ARIA_MULTILINE
  -- ^ Indicates whether a text box accepts multiple lines of input or only a single line. 
  
        
  AriaMultiselectable :: Attribute 'ARIA_MULTISELECTABLE
  -- ^ Indicates that the user may select more than one item from the current selectable descendants. 
  
        
  AriaOrientation     :: Attribute 'ARIA_ORIENTATION
  -- ^ Indicates whether the element's orientation is horizontal, vertical, or unknown/ambiguous. 
  
        
  AriaOwns            :: Attribute 'ARIA_OWNS
  -- ^
         -- * Identifies an element (or elements) in order to define a visual, functional, or contextual parent/child relationship
         -- * between DOM elements where the DOM hierarchy cannot be used to represent the relationship.
         -- * @see aria-controls.
         
  
        
  AriaPlaceholder     :: Attribute 'ARIA_PLACEHOLDER
  -- ^
         -- * Defines a short hint (a word or short phrase) intended to aid the user with data entry when the control has no value.
         -- * A hint could be a sample value or a brief description of the expected format.
         
  
        
  AriaPosinset        :: Attribute 'ARIA_POSINSET
  -- ^
         -- * Defines an element's number or position in the current set of listitems or treeitems. Not required if all elements in the set are present in the DOM.
         -- * @see aria-setsize.
         
  
        
  AriaPressed         :: Attribute 'ARIA_PRESSED
  -- ^
         -- * Indicates the current "pressed" state of toggle buttons.
         -- * @see aria-checked @see aria-selected.
         
  
        
  AriaReadonly        :: Attribute 'ARIA_READONLY
  -- ^
         -- * Indicates that the element is not editable, but is otherwise operable.
         -- * @see aria-disabled.
         
  
        
  AriaRelevant        :: Attribute 'ARIA_RELEVANT
  -- ^
         -- * Indicates what notifications the user agent will trigger when the accessibility tree within a live region is modified.
         -- * @see aria-atomic.
         
  
        
  AriaRequired        :: Attribute 'ARIA_REQUIRED
  -- ^ Indicates that user input is required on the element before a form may be submitted. 
  
        
  AriaRoledescription :: Attribute 'ARIA_ROLEDESCRIPTION
  -- ^ Defines a human-readable, author-localized description for the role of an element. 
  
        
  AriaRowcount        :: Attribute 'ARIA_ROWCOUNT
  -- ^
         -- * Defines the total number of rows in a table, grid, or treegrid.
         -- * @see aria-rowindex.
         
  
        
  AriaRowindex        :: Attribute 'ARIA_ROWINDEX
  -- ^
        -- * Defines an element's row index or position with respect to the total number of rows within a table, grid, or treegrid.
         -- * @see aria-rowcount @see aria-rowspan.
         

        
  AriaRowspan         :: Attribute 'ARIA_ROWSPAN
  -- ^
         -- * Defines the number of rows spanned by a cell or gridcell within a table, grid, or treegrid.
         -- * @see aria-rowindex @see aria-colspan.
         

        
  AriaSelected        :: Attribute 'ARIA_SELECTED
  -- ^
         -- * Indicates the current "selected" state of various widgets.
         -- * @see aria-checked @see aria-pressed.
         

        
  AriaSetsize         :: Attribute 'ARIA_SETSIZE
  -- ^
         -- * Defines the number of items in the current set of listitems or treeitems. Not required if all elements in the set are present in the DOM.
         -- * @see aria-posinset.
         

        
  AriaSort            :: Attribute 'ARIA_SORT
  -- ^ Indicates if items in a table or grid are sorted in ascending or descending order. 

        {- Defines the maximum allowed value for a range widget. -}
  AriaValuemax        :: Attribute 'ARIA_VALUEMAX
        
  AriaValuemin        :: Attribute 'ARIA_VALUEMIN
  -- ^ Defines the minimum allowed value for a range widget. 

        {-
         * Defines the current value for a range widget.
         * @see aria-valuetext.
         -}
  AriaValuenow        :: Attribute 'ARIA_VALUENOW
        
  AriaValuetext       :: Attribute 'ARIA_VALUETEXT
  -- ^ Defines the human readable text alternative of aria-valuenow for a range widget. 


  Accept                  :: Attribute 'ACCEPT
  AcceptCharset           :: Attribute 'ACCEPTCHARSET
  Action                  :: Attribute 'ACTION
  AllowFullScreen         :: Attribute 'ALLOWFULLSCREEN
  AllowTransparency       :: Attribute 'ALLOWTRANSPARENCY
  Alt                     :: Attribute 'ALT
  As                      :: Attribute 'AS
  Async                   :: Attribute 'ASYNC
  AutoComplete            :: Attribute 'AUTOCOMPLETE
  AutoFocus               :: Attribute 'AUTOFOCUS
  AutoPlay                :: Attribute 'AUTOPLAY
  Capture                 :: Attribute 'CAPTURE
  CellPadding             :: Attribute 'CELLPADDING
  CellSpacing             :: Attribute 'CELLSPACING
  CharSet                 :: Attribute 'CHARSET
  Challenge               :: Attribute 'CHALLENGE
  Checked                 :: Attribute 'CHECKED
  Cite                    :: Attribute 'CITE
  ClassID                 :: Attribute 'CLASSID
  Cols                    :: Attribute 'COLS
  ColSpan                 :: Attribute 'COLSPAN
  Content                 :: Attribute 'CONTENT
  Controls                :: Attribute 'CONTROLS
  Coords                  :: Attribute 'COORDS
  CrossOrigin             :: Attribute 'CROSSORIGIN
  Data                    :: Attribute 'DATA
  DateTime                :: Attribute 'DATETIME
  Default                 :: Attribute 'DEFAULT
  Defer                   :: Attribute 'DEFER
  Disabled                :: Attribute 'DISABLED
  Download                :: Attribute 'DOWNLOAD
  EncType                 :: Attribute 'ENCTYPE
  Form                    :: Attribute 'FORM
  FormAction              :: Attribute 'FORMACTION
  FormEncType             :: Attribute 'FORMENCTYPE
  FormMethod              :: Attribute 'FORMMETHOD
  FormNoValidate          :: Attribute 'FORMNOVALIDATE
  FormTarget              :: Attribute 'FORMTARGET
  FrameBorder             :: Attribute 'FRAMEBORDER
  Headers                 :: Attribute 'HEADERS
  Height                  :: Attribute 'HEIGHT
  High                    :: Attribute 'HIGH
  Href                    :: Attribute 'HREF
  HrefLang                :: Attribute 'HREFLANG
  HtmlFor                 :: Attribute 'HTMLFOR
  HttpEquiv               :: Attribute 'HTTPEQUIV
  Integrity               :: Attribute 'INTEGRITY
  KeyParams               :: Attribute 'KEYPARAMS
  KeyType                 :: Attribute 'KEYTYPE
  Kind                    :: Attribute 'KIND
  Label                   :: Attribute 'LABEL
  List                    :: Attribute 'LIST
  Loop                    :: Attribute 'LOOP
  Low                     :: Attribute 'LOW
  Manifest                :: Attribute 'MANIFEST
  MarginHeight            :: Attribute 'MARGINHEIGHT
  MarginWidth             :: Attribute 'MARGINWIDTH
  Max                     :: Attribute 'MAX
  MaxLength               :: Attribute 'MAXLENGTH
  Media                   :: Attribute 'MEDIA
  MediaGroup              :: Attribute 'MEDIAGROUP
  Method                  :: Attribute 'METHOD
  Min                     :: Attribute 'MIN
  MinLength               :: Attribute 'MINLENGTH
  Multiple                :: Attribute 'MULTIPLE
  Muted                   :: Attribute 'MUTED
  Name                    :: Attribute 'NAME
  Nonce                   :: Attribute 'NONCE
  NoValidate              :: Attribute 'NOVALIDATE
  Open                    :: Attribute 'OPEN
  Optimum                 :: Attribute 'OPTIMUM
  Pattern                 :: Attribute 'PATTERN
  Placeholder             :: Attribute 'PLACEHOLDER
  PlaysInline             :: Attribute 'PLAYSINLINE
  Poster                  :: Attribute 'POSTER
  Preload                 :: Attribute 'PRELOAD
  ReadOnly                :: Attribute 'READONLY
  Rel                     :: Attribute 'REL
  Required                :: Attribute 'REQUIRED
  Reversed                :: Attribute 'REVERSED
  Rows                    :: Attribute 'ROWS
  RowSpan                 :: Attribute 'ROWSPAN
  Sandbox                 :: Attribute 'SANDBOX
  Scope                   :: Attribute 'SCOPE
  Scoped                  :: Attribute 'SCOPED
  Scrolling               :: Attribute 'SCROLLING
  Seamless                :: Attribute 'SEAMLESS
  Selected                :: Attribute 'SELECTED
  Shape                   :: Attribute 'SHAPE
  Size                    :: Attribute 'SIZE
  Sizes                   :: Attribute 'SIZES
  Span                    :: Attribute 'SPAN
  Src                     :: Attribute 'SRC
  SrcDoc                  :: Attribute 'SRCDOC
  SrcLang                 :: Attribute 'SRCLANG
  SrcSet                  :: Attribute 'SRCSET
  Start                   :: Attribute 'START
  Step                    :: Attribute 'STEP
  Summary                 :: Attribute 'SUMMARY
  Target                  :: Attribute 'TARGET
  Type                    :: Attribute 'TYPE
  UseMap                  :: Attribute 'USEMAP
  Value                   :: Attribute 'VALUE --TODO | string[] | number) 'VALUE
  Width                   :: Attribute 'WIDTH
  Wmode                   :: Attribute 'WMODE
  Wrap                    :: Attribute 'WRAP

----------------------------------------

{-


{-| a @GADT@ of singletons for all types in the 'ATTRIBUTE' kind,
and their corresponding haskell types.

-}
data Attribute (a :: *) (attribute :: ATTRIBUTE) where

  -- Standard HTML Attributes
  AccessKey                :: Attribute (Text)          'ACCESSKEY
  ClassName                :: Attribute (Text)          'CLASSNAME
  ContentEditable          :: Attribute (Bool)          'CONTENTEDITABLE
  ContextMenu              :: Attribute (Text)          'CONTEXTMENU
  Dir                      :: Attribute (Text)          'DIR
  Draggable                :: Attribute (Bool)          'DRAGGABLE
  Hidden                   :: Attribute (Bool)          'HIDDEN
  Id                       :: Attribute (Text)          'ID
  Lang                     :: Attribute (Text)          'LANG
  Slot                     :: Attribute (Text)          'SLOT
  SpellCheck               :: Attribute (Bool)          'SPELLCHECK
  Style                    :: Attribute (CSSProperties) 'STYLE
  TabIndex                 :: Attribute (Number)        'TABINDEX
  Title                    :: Attribute (Text)          'TITLE

  -- Unknown
  InputMode                :: Attribute (Text)          'INPUTMODE
  Is                       :: Attribute (Text)          'IS
  RadioGroup               :: Attribute (Text)          'RADIOGROUP
                                        -- <command>, <menuitem>

  -- WAI-ARIA
  Role                     :: Attribute (Text)          'ROLE

  -- RDFa Attributes
  About                    :: Attribute (Text)          'ABOUT
  Datatype                 :: Attribute (Text)          'DATATYPE
  Inlist                   :: Attribute (Any)           'INLIST
  Prefix                   :: Attribute (Text)          'PREFIX
  Property                 :: Attribute (Text)          'PROPERTY
  Resource                 :: Attribute (Text)          'RESOURCE
  Typeof                   :: Attribute (Text)          'TYPEOF
  Vocab                    :: Attribute (Text)          'VOCAB

  -- Non-standard Attributes
  AutoCapitalize           :: Attribute (Text)          'AUTOCAPITALIZE
  AutoCorrect              :: Attribute (Text)          'AUTOCORRECT
  AutoSave                 :: Attribute (Text)          'AUTOSAVE
  Color                    :: Attribute (Text)          'COLOR
  ItemProp                 :: Attribute (Text)          'ITEMPROP
  ItemScope                :: Attribute (Bool)          'ITEMSCOPE
  ItemType                 :: Attribute (Text)          'ITEMTYPE
  ItemID                   :: Attribute (Text)          'ITEMID
  ItemRef                  :: Attribute (Text)          'ITEMREF
  Results                  :: Attribute (Number)        'RESULTS
  Security                 :: Attribute (Text)          'SECURITY
  Unselectable             :: Attribute (Bool)          'UNSELECTABLE

----------------------------------------
-- All the WAI-ARIA 1.1 attributes from https://www.w3.org/TR/wai-aria-1.1/
    
        {- Identifies the currently active element when DOM focus is on a composite widget, textbox, group, or application. -}
  AriaActivedescendant    :: Attribute (Text) 'ARIA_ACTIVEDESCENDANT
        {- Indicates whether assistive technologies will present all, or only parts of, the changed region based on the change notifications defined by the aria-relevant attribute. -}
  AriaAtomic              :: Attribute (Bool) 'ARIA_ATOMIC
        {-
         * Indicates whether inputting text could trigger display of one or more predictions of the user's intended value for an input and specifies how predictions would be
         * presented if they are made.
         -}
  AriaAutocomplete        :: Attribute (Enumeration ["none","inline","list","both"]) 'ARIA_AUTOCOMPLETE
        {- Indicates an element is being modified and that assistive technologies MAY want to wait until the modifications are complete before exposing them to the user. -}
  AriaBusy                :: Attribute (Bool) 'ARIA_BUSY
        {-
         * Indicates the current "checked" state of checkboxes, radio buttons, and other widgets.
         * @see aria-pressed @see aria-selected.
         -}
  AriaChecked             :: Attribute (Bool) 'ARIA_CHECKED
        {-
         * Defines the total number of columns in a table, grid, or treegrid.
         * @see aria-colindex.
         -}
  AriaColcount            :: Attribute (Number) 'ARIA_COLCOUNT
        {-
         * Defines an element's column index or position with respect to the total number of columns within a table, grid, or treegrid.
         * @see aria-colcount @see aria-colspan.
         -}
  AriaColindex            :: Attribute (Number) 'ARIA_COLINDEX
        {-
         * Defines the number of columns spanned by a cell or gridcell within a table, grid, or treegrid.
         * @see aria-colindex @see aria-rowspan.
         -}
  AriaColspan             :: Attribute (Number) 'ARIA_COLSPAN
        {- Indicates the element that represents the current item within a container or set of related elements. -}
  AriaCurrent         :: Attribute (Either Bool (Enumeration ["page", "step", "location", "date", "time"])) 'ARIA_CURRENT
        {-
         * Identifies the element (or elements) that describes the object.
         * @see aria-labelledby
         -}
  AriaDescribedby     :: Attribute (Text) 'ARIA_DESCRIBEDBY
        {-
         * Identifies the element that provides a detailed, extended description for the object.
         * @see aria-describedby.
         -}
  AriaDetails         :: Attribute (Text) 'ARIA_DETAILS
        {-
         * Indicates that the element is perceivable but disabled, so it is not editable or otherwise operable.
         * @see aria-hidden @see aria-readonly.
         -}
  AriaDisabled        :: Attribute (Bool) 'ARIA_DISABLED
        {-
         * Indicates what functions can be performed when a dragged object is released on the drop target.
         * @deprecated in ARIA 1.1
         -}
  AriaDropeffect      :: Attribute (Enumeration [ "none", "copy", "execute", "link", "move", "popup"]) 'ARIA_DROPEFFECT
        {-
         * Identifies the element that provides an error message for the object.
         * @see aria-invalid @see aria-describedby.
         -}
  AriaErrormessage    :: Attribute (Text) 'ARIA_ERRORMESSAGE
        {- Indicates whether the element, or another grouping element it controls, is currently expanded or collapsed. -}
  AriaExpanded        :: Attribute (Bool) 'ARIA_EXPANDED
        {-
         * Identifies the next element (or elements) in an alternate reading order of content which, at the user's discretion,
         * allows assistive technology to override the general default of reading in document source order.
         -}
  AriaFlowto          :: Attribute (Text) 'ARIA_FLOWTO
        {-
         * Indicates an element's "grabbed" state in a drag-and-drop operation.
         * @deprecated in ARIA 1.1
         -}
  AriaGrabbed         :: Attribute (Bool) 'ARIA_GRABBED
        {- Indicates the availability and type of interactive popup element, such as menu or dialog, that can be triggered by an element. -}
  AriaHaspopup        :: Attribute (Either Bool (Enumeration ["menu", "listbox", "tree", "grid", "dialog"])) 'ARIA_HASPOPUP
        {-
         * Indicates whether the element is exposed to an accessibility API.
         * @see aria-disabled.
         -}
  AriaHidden          :: Attribute (Bool) 'ARIA_HIDDEN
        {-
         * Indicates the entered value does not conform to the format expected by the application.
         * @see aria-errormessage.
         -}
  AriaInvalid         :: Attribute (Either Bool (Enumeration ["grammar", "spelling"])) 'ARIA_INVALID
        {- Indicates keyboard shortcuts that an author has implemented to activate or give focus to an element. -}
  AriaKeyshortcuts    :: Attribute (Text) 'ARIA_KEYSHORTCUTS
        {-
         * Defines a string value that labels the current element.
         * @see aria-labelledby.
         -}
  AriaLabel           :: Attribute (Text) 'ARIA_LABEL
        {-
         * Identifies the element (or elements) that labels the current element.
         * @see aria-describedby.
         -}
  AriaLabelledby      :: Attribute (Text) 'ARIA_LABELLEDBY
        {- Defines the hierarchical level of an element within a structure. -}
  AriaLevel           :: Attribute (Number) 'ARIA_LEVEL
        {- Indicates that an element will be updated, and describes the types of updates the user agents, assistive technologies, and user can expect from the live region. -}
  AriaLive            :: Attribute (Enumeration ["off", "assertive", "polite"]) 'ARIA_LIVE
        {- Indicates whether an element is modal when displayed. -}
  AriaModal           :: Attribute (Bool) 'ARIA_MODAL
        {- Indicates whether a text box accepts multiple lines of input or only a single line. -}
  AriaMultiline       :: Attribute (Bool) 'ARIA_MULTILINE
        {- Indicates that the user may select more than one item from the current selectable descendants. -}
  AriaMultiselectable :: Attribute (Bool) 'ARIA_MULTISELECTABLE
        {- Indicates whether the element's orientation is horizontal, vertical, or unknown/ambiguous. -}
  AriaOrientation     :: Attribute (Enumeration ["horizontal", "vertical"]) 'ARIA_ORIENTATION
        {-
         * Identifies an element (or elements) in order to define a visual, functional, or contextual parent/child relationship
         * between DOM elements where the DOM hierarchy cannot be used to represent the relationship.
         * @see aria-controls.
         -}
  AriaOwns            :: Attribute (Text) 'ARIA_OWNS
        {-
         * Defines a short hint (a word or short phrase) intended to aid the user with data entry when the control has no value.
         * A hint could be a sample value or a brief description of the expected format.
         -}
  AriaPlaceholder     :: Attribute (Text) 'ARIA_PLACEHOLDER
        {-
         * Defines an element's number or position in the current set of listitems or treeitems. Not required if all elements in the set are present in the DOM.
         * @see aria-setsize.
         -}
  AriaPosinset        :: Attribute (Number) 'ARIA_POSINSET
        {-
         * Indicates the current "pressed" state of toggle buttons.
         * @see aria-checked @see aria-selected.
         -}
  AriaPressed         :: Attribute (Either Bool (Enumeration '["mixed"])) 'ARIA_PRESSED
        {-
         * Indicates that the element is not editable, but is otherwise operable.
         * @see aria-disabled.
         -}
  AriaReadonly        :: Attribute (Bool) 'ARIA_READONLY
        {-
         * Indicates what notifications the user agent will trigger when the accessibility tree within a live region is modified.
         * @see aria-atomic.
         -}
  AriaRelevant        :: Attribute (Enumeration ["additions", "additions text", "all", "removals", "text"]) 'ARIA_RELEVANT
        {- Indicates that user input is required on the element before a form may be submitted. -}
  AriaRequired        :: Attribute (Bool) 'ARIA_REQUIRED
        {- Defines a human-readable, author-localized description for the role of an element. -}
  AriaRoledescription :: Attribute (Text) 'ARIA_ROLEDESCRIPTION
        {-
         * Defines the total number of rows in a table, grid, or treegrid.
         * @see aria-rowindex.
         -}
  AriaRowcount        :: Attribute (Number) 'ARIA_ROWCOUNT
        {-
         * Defines an element's row index or position with respect to the total number of rows within a table, grid, or treegrid.
         * @see aria-rowcount @see aria-rowspan.
         -}
  AriaRowindex        :: Attribute (Number) 'ARIA_ROWINDEX
        {-
         * Defines the number of rows spanned by a cell or gridcell within a table, grid, or treegrid.
         * @see aria-rowindex @see aria-colspan.
         -}
  AriaRowspan         :: Attribute (Number) 'ARIA_ROWSPAN
        {-
         * Indicates the current "selected" state of various widgets.
         * @see aria-checked @see aria-pressed.
         -}
  AriaSelected        :: Attribute (Bool) 'ARIA_SELECTED
        {-
         * Defines the number of items in the current set of listitems or treeitems. Not required if all elements in the set are present in the DOM.
         * @see aria-posinset.
         -}
  AriaSetsize         :: Attribute (Number) 'ARIA_SETSIZE
        {- Indicates if items in a table or grid are sorted in ascending or descending order. -}
  AriaSort            :: Attribute (Enumeration ["none", "ascending", "descending", "other"]) 'ARIA_SORT
        {- Defines the maximum allowed value for a range widget. -}
  AriaValuemax        :: Attribute (Number) 'ARIA_VALUEMAX
        {- Defines the minimum allowed value for a range widget. -}
  AriaValuemin        :: Attribute (Number) 'ARIA_VALUEMIN
        {-
         * Defines the current value for a range widget.
         * @see aria-valuetext.
         -}
  AriaValuenow        :: Attribute (Number) 'ARIA_VALUENOW
        {- Defines the human readable text alternative of aria-valuenow for a range widget. -}
  AriaValuetext       :: Attribute (Text) 'ARIA_VALUETEXT

----------------------------------------

  Accept                  :: Attribute (Text)        'ACCEPT
  AcceptCharset           :: Attribute (Text)        'ACCEPTCHARSET
  Action                  :: Attribute (Text)        'ACTION
  AllowFullScreen         :: Attribute (Bool)        'ALLOWFULLSCREEN
  AllowTransparency       :: Attribute (Bool)        'ALLOWTRANSPARENCY
  Alt                     :: Attribute (Text)        'ALT
  As                      :: Attribute (Text)        'AS
  Async                   :: Attribute (Bool)        'ASYNC
  AutoComplete            :: Attribute (Text)        'AUTOCOMPLETE
  AutoFocus               :: Attribute (Bool)        'AUTOFOCUS
  AutoPlay                :: Attribute (Bool)        'AUTOPLAY
  Capture                 :: Attribute (Bool)        'CAPTURE
  CellPadding             :: Attribute (LooseNumber) 'CELLPADDING
  CellSpacing             :: Attribute (LooseNumber) 'CELLSPACING
  CharSet                 :: Attribute (Text)        'CHARSET
  Challenge               :: Attribute (Text)        'CHALLENGE
  Checked                 :: Attribute (Bool)        'CHECKED
  Cite                    :: Attribute (Text)        'CITE
  ClassID                 :: Attribute (Text)        'CLASSID
  Cols                    :: Attribute (Number)      'COLS
  ColSpan                 :: Attribute (Number)      'COLSPAN
  Content                 :: Attribute (Text)        'CONTENT
  Controls                :: Attribute (Bool)        'CONTROLS
  Coords                  :: Attribute (Text)        'COORDS
  CrossOrigin             :: Attribute (Text)        'CROSSORIGIN
  Data                    :: Attribute (Text)        'DATA
  DateTime                :: Attribute (Text)        'DATETIME
  Default                 :: Attribute (Bool)        'DEFAULT
  Defer                   :: Attribute (Bool)        'DEFER
  Disabled                :: Attribute (Bool)        'DISABLED
  Download                :: Attribute (Any)         'DOWNLOAD
  EncType                 :: Attribute (Text)        'ENCTYPE
  Form                    :: Attribute (Text)        'FORM
  FormAction              :: Attribute (Text)        'FORMACTION
  FormEncType             :: Attribute (Text)        'FORMENCTYPE
  FormMethod              :: Attribute (Text)        'FORMMETHOD
  FormNoValidate          :: Attribute (Bool)        'FORMNOVALIDATE
  FormTarget              :: Attribute (Text)        'FORMTARGET
  FrameBorder             :: Attribute (LooseNumber) 'FRAMEBORDER
  Headers                 :: Attribute (Text)        'HEADERS
  Height                  :: Attribute (LooseNumber) 'HEIGHT
  High                    :: Attribute (Number)      'HIGH
  Href                    :: Attribute (Text)        'HREF
  HrefLang                :: Attribute (Text)        'HREFLANG
  HtmlFor                 :: Attribute (Text)        'HTMLFOR
  HttpEquiv               :: Attribute (Text)        'HTTPEQUIV
  Integrity               :: Attribute (Text)        'INTEGRITY
  KeyParams               :: Attribute (Text)        'KEYPARAMS
  KeyType                 :: Attribute (Text)        'KEYTYPE
  Kind                    :: Attribute (Text)        'KIND
  Label                   :: Attribute (Text)        'LABEL
  List                    :: Attribute (Text)        'LIST
  Loop                    :: Attribute (Bool)        'LOOP
  Low                     :: Attribute (Number)      'LOW
  Manifest                :: Attribute (Text)        'MANIFEST
  MarginHeight            :: Attribute (Number)      'MARGINHEIGHT
  MarginWidth             :: Attribute (Number)      'MARGINWIDTH
  Max                     :: Attribute (LooseNumber) 'MAX
  MaxLength               :: Attribute (Number)      'MAXLENGTH
  Media                   :: Attribute (Text)        'MEDIA
  MediaGroup              :: Attribute (Text)        'MEDIAGROUP
  Method                  :: Attribute (Text)        'METHOD
  Min                     :: Attribute (LooseNumber) 'MIN
  MinLength               :: Attribute (Number)      'MINLENGTH
  Multiple                :: Attribute (Bool)        'MULTIPLE
  Muted                   :: Attribute (Bool)        'MUTED
  Name                    :: Attribute (Text)        'NAME
  Nonce                   :: Attribute (Text)        'NONCE
  NoValidate              :: Attribute (Bool)        'NOVALIDATE
  Open                    :: Attribute (Bool)        'OPEN
  Optimum                 :: Attribute (Number)      'OPTIMUM
  Pattern                 :: Attribute (Text)        'PATTERN
  Placeholder             :: Attribute (Text)        'PLACEHOLDER
  PlaysInline             :: Attribute (Bool)        'PLAYSINLINE
  Poster                  :: Attribute (Text)        'POSTER
  Preload                 :: Attribute (Text)        'PRELOAD
  ReadOnly                :: Attribute (Bool)        'READONLY
  Rel                     :: Attribute (Text)        'REL
  Required                :: Attribute (Bool)        'REQUIRED
  Reversed                :: Attribute (Bool)        'REVERSED
  Rows                    :: Attribute (Number)      'ROWS
  RowSpan                 :: Attribute (Number)      'ROWSPAN
  Sandbox                 :: Attribute (Text)        'SANDBOX
  Scope                   :: Attribute (Text)        'SCOPE
  Scoped                  :: Attribute (Bool)        'SCOPED
  Scrolling               :: Attribute (Text)        'SCROLLING
  Seamless                :: Attribute (Bool)        'SEAMLESS
  Selected                :: Attribute (Bool)        'SELECTED
  Shape                   :: Attribute (Text)        'SHAPE
  Size                    :: Attribute (Number)      'SIZE
  Sizes                   :: Attribute (Text)        'SIZES
  Span                    :: Attribute (Number)      'SPAN
  Src                     :: Attribute (Text)        'SRC
  SrcDoc                  :: Attribute (Text)        'SRCDOC
  SrcLang                 :: Attribute (Text)        'SRCLANG
  SrcSet                  :: Attribute (Text)        'SRCSET
  Start                   :: Attribute (Number)      'START
  Step                    :: Attribute (LooseNumber) 'STEP
  Summary                 :: Attribute (Text)        'SUMMARY
  Target                  :: Attribute (Text)        'TARGET
  Type                    :: Attribute (Text)        'TYPE
  UseMap                  :: Attribute (Text)        'USEMAP
  Value                   :: Attribute (Text)        'VALUE --TODO | string[] | number) 'VALUE
  Width                   :: Attribute (LooseNumber) 'WIDTH
  Wmode                   :: Attribute (Text)        'WMODE
  Wrap                    :: Attribute (Text)        'WRAP

-}
