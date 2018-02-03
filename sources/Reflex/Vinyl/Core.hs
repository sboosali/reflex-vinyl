
{-# LANGUAGE RankNTypes #-}
{-# LANGUAGE DataKinds #-}

{-| The core definitions. 

-}
module Reflex.Vinyl.Core where
import Reflex.Vinyl.Extra
import Reflex.Vinyl.Types
import Reflex.Vinyl.Events

import Reflex

import Reflex.Dom hiding (element)
--import Reflex.Dom.Builder.Class.Events 

import Data.Vinyl

import qualified Control.Lens as L

--import Prelude.Spiros

----------------------------------------

{-| most general

@
= 'elDynAttr''
@

e.g.:

@
> (events, widget) <- elDynAttr "div" (pure $ "style" =: "display:inline-block") blank
@

-}
element'
  :: (MonadWidget t m)
  => Text
  -> Dynamic t AttributeMap
  -> m a
  -> m (El' (DomBuilderSpace m) t, a)
element' = elDynAttr'

----------------------------------------
  
{-| given HTML element metadata, and the names of the DOM events to listen to, create an element and return the corresponding reflex events. 

TODO the record of events to listen to

@
(myDivEvents, myDivResults) = elFor' (Click :& Mousemove :& RNil) "div" ...

myDivClickEvent = myDivEvents ^. (rget Click . _EventOf)
myDivMousemoveEvent = myDivEvents ^. (rget Mousemove . _EventOf)


@

a.k.a. (with everything inlined, since every type is inferred):

@
do
 es <- 'elFor' ('Click' :& 'Mousemove' :& RNil) "div" ...)
 ( es ^. ('rget' Click      .  '_EventOf') ) 
 ( es ^. (rget Mousemove . _EventOf) )
@

IMPLEMENTATION:

modulo complications from typeclasses, this:

@
elFor ns name attributes child
@

is like:

@
'elDynAttr'' name attributes child
-- and
'rmap' 'domEvent' ns
@

where

@
  domEvent :: EventName eventName
           -> target
           -> Event t (DomEventType target eventName)
@

-}
elFor'
  :: forall t m es a. (MonadWidget t m)
  => DOMEvents_ es
  -> Text 
  -> DynamicAttributes t
  -> m                   a
  -> m ( DOMEvents t es, a )
elFor' ns name dAttributes child = do
  (rawElement, x) <- element' name dAttributes child

  let
    getEvent' :: EventName event -> (Event t (EventResultType event))
    getEvent' n = domEvent n rawElement

    getEvent :: EventName event -> EventOf t event
    getEvent n = EventOf (getEvent' n)
  
  let es = getEvent `rmap` ns

  return (es, x)

--

elFor
  :: forall t m es x. (MonadWidget t m)
  => DOMEvents_ es
  -> Text 
  -> DynamicAttributes t
  -> m x
  -> m (DOMEvents t es)
elFor ns name dAttributes child =
  fst <$> elFor' ns name dAttributes child 

{- ^^^  NAMING

`ns` for 'event names'
`es` for 'events'

-}

{-

  (rawElement, theValue) <- element' name attributes child
  
  let theEvents = _

  return (theEvents, theValue)

-}

----------------------------------------  

-- {-|

-- @
-- let eClick     = ( es ^. (rget Click     . _EventOf) )
-- @

-- -}
-- event'
--   :: (RElem e es i)
--   => EventName e
--   -> L.Lens' (DOMEvents t es)
--              (EventOf t e)
-- event' n = rlens n 
-- --event' n es = rlens n es

{-|

@
let eClick     = es ^. event Click 
@

-}
event
  :: (RElem e es i)
  => EventName e
  -> L.Lens' (DOMEvents t es)
             (DOMEvent t e)
event n = rlens n . _EventOf


----------------------------------------  

{-| Convenience aliases.

@
@

-}
_AllEvents :: DOMEvents_
  '[ ClickTag
   , AbortTag
   , BlurTag
   , ChangeTag
   , ClickTag
   , ContextmenuTag
   , DblclickTag
   , DragTag
   , DragendTag
   , DragenterTag
   , DragleaveTag
   , DragoverTag
   , DragstartTag
   , DropTag
   , ErrorTag
   , FocusTag
   , InputTag
   , InvalidTag
   , KeydownTag
   , KeypressTag
   , KeyupTag
   , LoadTag
   , MousedownTag
   , MouseenterTag
   , MouseleaveTag
   , MousemoveTag
   , MouseoutTag
   , MouseoverTag
   , MouseupTag
   , MousewheelTag
   , ScrollTag
   , SelectTag
   , SubmitTag
   , WheelTag
   , BeforecutTag
   , CutTag
   , BeforecopyTag
   , CopyTag
   , BeforepasteTag
   , PasteTag
   , ResetTag
   , SearchTag
   , SelectstartTag
   , TouchstartTag
   , TouchmoveTag
   , TouchendTag
   , TouchcancelTag
   ]

_AllEvents
  = Click
 :& Abort
 :& Blur
 :& Change
 :& Click
 :& Contextmenu
 :& Dblclick
 :& Drag
 :& Dragend
 :& Dragenter
 :& Dragleave
 :& Dragover
 :& Dragstart
 :& Drop
 :& Error
 :& Focus
 :& Input
 :& Invalid
 :& Keydown
 :& Keypress
 :& Keyup
 :& Load
 :& Mousedown
 :& Mouseenter
 :& Mouseleave
 :& Mousemove
 :& Mouseout
 :& Mouseover
 :& Mouseup
 :& Mousewheel
 :& Scroll
 :& Select
 :& Submit
 :& Wheel
 :& Beforecut
 :& Cut
 :& Beforecopy
 :& Copy
 :& Beforepaste
 :& Paste
 :& Reset
 :& Search
 :& Selectstart
 :& Touchstart
 :& Touchmove
 :& Touchend
 :& Touchcancel
 :& RNil


_MousingEvents :: DOMEvents_
 '[ ClickTag
  , DblclickTag
  , MousemoveTag
  , MousedownTag
  , MouseupTag
  , MouseenterTag
  , MouseleaveTag
  , MouseoutTag
  , MouseoverTag
  , MousewheelTag
  , ScrollTag
  ]

_MousingEvents
  = Click
 :& Dblclick
 :& Mousemove
 :& Mousedown
 :& Mouseup
 :& Mouseenter
 :& Mouseleave
 :& Mouseout
 :& Mouseover
 :& Mousewheel
 :& Scroll
 :& RNil


_KeyboardEvents :: DOMEvents_
  '[ KeypressTag
   , KeydownTag
   , KeyupTag
   ]

_KeyboardEvents 
  = Keypress
 :& Keydown
 :& Keyup
 :& RNil


_TouchingEvents :: DOMEvents_
 '[ TouchstartTag
  , TouchmoveTag
  , TouchendTag
  , TouchcancelTag
  ]

_TouchingEvents
  = Touchstart
 :& Touchmove
 :& Touchend
 :& Touchcancel
 :& RNil


_ClipboardEvents :: DOMEvents_
  '[ BeforecutTag
   , CutTag
   , BeforecopyTag
   , CopyTag
   , BeforepasteTag
   , PasteTag
   ]

_ClipboardEvents
  = Beforecut
 :& Cut
 :& Beforecopy
 :& Copy
 :& Beforepaste
 :& Paste
 :& RNil


_DraggingEvents :: DOMEvents_
  '[ DragTag
   , DragendTag
   , DragenterTag
   , DragleaveTag
   , DragoverTag
   , DragstartTag
   , DropTag
   ]

_DraggingEvents 
  = Drag
 :& Dragend
 :& Dragenter
 :& Dragleave
 :& Dragover
 :& Dragstart
 :& Drop
 :& RNil

----------------------------------------
-- Lenses

{-| -}
_Click
  :: ('ClickTag ∈ es)
  => L.Lens' (DOMEvents t es)
             (DOMEvent  t 'ClickTag) 
_Click = event Click

{-| -}
_Abort
  :: ('AbortTag ∈ es)
  => L.Lens' (DOMEvents t es)
             (DOMEvent  t 'AbortTag) 
_Abort = event Abort

{-| -}
_Blur
  :: ('BlurTag ∈ es)
  => L.Lens' (DOMEvents t es)
             (DOMEvent  t 'BlurTag) 
_Blur = event Blur

{-| -}
_Change
  :: ('ChangeTag ∈ es)
  => L.Lens' (DOMEvents t es)
             (DOMEvent  t 'ChangeTag) 
_Change = event Change

{-| -}
_Contextmenu
  :: ('ContextmenuTag ∈ es)
  => L.Lens' (DOMEvents t es)
             (DOMEvent  t 'ContextmenuTag) 
_Contextmenu = event Contextmenu

{-| -}
_Dblclick
  :: ('DblclickTag ∈ es)
  => L.Lens' (DOMEvents t es)
             (DOMEvent  t 'DblclickTag) 
_Dblclick = event Dblclick

{-| -}
_Drag
  :: ('DragTag ∈ es)
  => L.Lens' (DOMEvents t es)
             (DOMEvent  t 'DragTag) 
_Drag = event Drag

{-| -}
_Dragend
  :: ('DragendTag ∈ es)
  => L.Lens' (DOMEvents t es)
             (DOMEvent  t 'DragendTag) 
_Dragend = event Dragend

{-| -}
_Dragenter
  :: ('DragenterTag ∈ es)
  => L.Lens' (DOMEvents t es)
             (DOMEvent  t 'DragenterTag) 
_Dragenter = event Dragenter

{-| -}
_Dragleave
  :: ('DragleaveTag ∈ es)
  => L.Lens' (DOMEvents t es)
             (DOMEvent  t 'DragleaveTag) 
_Dragleave = event Dragleave

{-| -}
_Dragover
  :: ('DragoverTag ∈ es)
  => L.Lens' (DOMEvents t es)
             (DOMEvent  t 'DragoverTag) 
_Dragover = event Dragover

{-| -}
_Dragstart
  :: ('DragstartTag ∈ es)
  => L.Lens' (DOMEvents t es)
             (DOMEvent  t 'DragstartTag) 
_Dragstart = event Dragstart

{-| -}
_Drop
  :: ('DropTag ∈ es)
  => L.Lens' (DOMEvents t es)
             (DOMEvent  t 'DropTag) 
_Drop = event Drop

{-| -}
_Error
  :: ('ErrorTag ∈ es)
  => L.Lens' (DOMEvents t es)
             (DOMEvent  t 'ErrorTag) 
_Error = event Error

{-| -}
_Focus
  :: ('FocusTag ∈ es)
  => L.Lens' (DOMEvents t es)
             (DOMEvent  t 'FocusTag) 
_Focus = event Focus

{-| -}
_Input
  :: ('InputTag ∈ es)
  => L.Lens' (DOMEvents t es)
             (DOMEvent  t 'InputTag) 
_Input = event Input

{-| -}
_Invalid
  :: ('InvalidTag ∈ es)
  => L.Lens' (DOMEvents t es)
             (DOMEvent  t 'InvalidTag) 
_Invalid = event Invalid

{-| -}
_Keydown
  :: ('KeydownTag ∈ es)
  => L.Lens' (DOMEvents t es)
             (DOMEvent  t 'KeydownTag) 
_Keydown = event Keydown

{-| -}
_Keypress
  :: ('KeypressTag ∈ es)
  => L.Lens' (DOMEvents t es)
             (DOMEvent  t 'KeypressTag) 
_Keypress = event Keypress

{-| -}
_Keyup
  :: ('KeyupTag ∈ es)
  => L.Lens' (DOMEvents t es)
             (DOMEvent  t 'KeyupTag) 
_Keyup = event Keyup

{-| -}
_Load
  :: ('LoadTag ∈ es)
  => L.Lens' (DOMEvents t es)
             (DOMEvent  t 'LoadTag) 
_Load = event Load

{-| -}
_Mousedown
  :: ('MousedownTag ∈ es)
  => L.Lens' (DOMEvents t es)
             (DOMEvent  t 'MousedownTag) 
_Mousedown = event Mousedown

{-| -}
_Mouseenter
  :: ('MouseenterTag ∈ es)
  => L.Lens' (DOMEvents t es)
             (DOMEvent  t 'MouseenterTag) 
_Mouseenter = event Mouseenter

{-| -}
_Mouseleave
  :: ('MouseleaveTag ∈ es)
  => L.Lens' (DOMEvents t es)
             (DOMEvent  t 'MouseleaveTag) 
_Mouseleave = event Mouseleave

{-| -}
_Mousemove
  :: ('MousemoveTag ∈ es)
  => L.Lens' (DOMEvents t es)
             (DOMEvent  t 'MousemoveTag) 
_Mousemove = event Mousemove

{-| -}
_Mouseout
  :: ('MouseoutTag ∈ es)
  => L.Lens' (DOMEvents t es)
             (DOMEvent  t 'MouseoutTag) 
_Mouseout = event Mouseout

{-| -}
_Mouseover
  :: ('MouseoverTag ∈ es)
  => L.Lens' (DOMEvents t es)
             (DOMEvent  t 'MouseoverTag) 
_Mouseover = event Mouseover

{-| -}
_Mouseup
  :: ('MouseupTag ∈ es)
  => L.Lens' (DOMEvents t es)
             (DOMEvent  t 'MouseupTag) 
_Mouseup = event Mouseup

{-| -}
_Mousewheel
  :: ('MousewheelTag ∈ es)
  => L.Lens' (DOMEvents t es)
             (DOMEvent  t 'MousewheelTag) 
_Mousewheel = event Mousewheel

{-| -}
_Scroll
  :: ('ScrollTag ∈ es)
  => L.Lens' (DOMEvents t es)
             (DOMEvent  t 'ScrollTag) 
_Scroll = event Scroll

{-| -}
_Select
  :: ('SelectTag ∈ es)
  => L.Lens' (DOMEvents t es)
             (DOMEvent  t 'SelectTag) 
_Select = event Select

{-| -}
_Submit
  :: ('SubmitTag ∈ es)
  => L.Lens' (DOMEvents t es)
             (DOMEvent  t 'SubmitTag) 
_Submit = event Submit

{-| -}
_Wheel
  :: ('WheelTag ∈ es)
  => L.Lens' (DOMEvents t es)
             (DOMEvent  t 'WheelTag) 
_Wheel = event Wheel

{-| -}
_Beforecut
  :: ('BeforecutTag ∈ es)
  => L.Lens' (DOMEvents t es)
             (DOMEvent  t 'BeforecutTag) 
_Beforecut = event Beforecut

{-| -}
_Cut
  :: ('CutTag ∈ es)
  => L.Lens' (DOMEvents t es)
             (DOMEvent  t 'CutTag) 
_Cut = event Cut

{-| -}
_Beforecopy
  :: ('BeforecopyTag ∈ es)
  => L.Lens' (DOMEvents t es)
             (DOMEvent  t 'BeforecopyTag) 
_Beforecopy = event Beforecopy

{-| -}
_Copy
  :: ('CopyTag ∈ es)
  => L.Lens' (DOMEvents t es)
             (DOMEvent  t 'CopyTag) 
_Copy = event Copy

{-| -}
_Beforepaste
  :: ('BeforepasteTag ∈ es)
  => L.Lens' (DOMEvents t es)
             (DOMEvent  t 'BeforepasteTag) 
_Beforepaste = event Beforepaste

{-| -}
_Paste
  :: ('PasteTag ∈ es)
  => L.Lens' (DOMEvents t es)
             (DOMEvent  t 'PasteTag) 
_Paste = event Paste

{-| -}
_Reset
  :: ('ResetTag ∈ es)
  => L.Lens' (DOMEvents t es)
             (DOMEvent  t 'ResetTag) 
_Reset = event Reset

{-| -}
_Search
  :: ('SearchTag ∈ es)
  => L.Lens' (DOMEvents t es)
             (DOMEvent  t 'SearchTag) 
_Search = event Search

{-| -}
_Selectstart
  :: ('SelectstartTag ∈ es)
  => L.Lens' (DOMEvents t es)
             (DOMEvent  t 'SelectstartTag) 
_Selectstart = event Selectstart

{-| -}
_Touchstart
  :: ('TouchstartTag ∈ es)
  => L.Lens' (DOMEvents t es)
             (DOMEvent  t 'TouchstartTag) 
_Touchstart = event Touchstart

{-| -}
_Touchmove
  :: ('TouchmoveTag ∈ es)
  => L.Lens' (DOMEvents t es)
             (DOMEvent  t 'TouchmoveTag) 
_Touchmove = event Touchmove

{-| -}
_Touchend
  :: ('TouchendTag ∈ es)
  => L.Lens' (DOMEvents t es)
             (DOMEvent  t 'TouchendTag) 
_Touchend = event Touchend

{-| -}
_Touchcancel
  :: ('TouchcancelTag ∈ es)
  => L.Lens' (DOMEvents t es)
             (DOMEvent  t 'TouchcancelTag) 
_Touchcancel = event Touchcancel

----------------------------------------
 
{-NOTES


Click
Abort
Blur
Change
Click
Contextmenu
Dblclick
Drag
Dragend
Dragenter
Dragleave
Dragover
Dragstart
Drop
Error
Focus
Input
Invalid
Keydown
Keypress
Keyup
Load
Mousedown
Mouseenter
Mouseleave
Mousemove
Mouseout
Mouseover
Mouseup
Mousewheel
Scroll
Select
Submit
Wheel
Beforecut
Cut
Beforecopy
Copy
Beforepaste
Paste
Reset
Search
Selectstart
Touchstart
Touchmove
Touchend
Touchcancel

-}
----------------------------------------