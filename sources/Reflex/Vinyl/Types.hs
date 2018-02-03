
{-| The core types. 

This module mostly defines types 
(i.e. @data@, @newtype@, @type@, @class@, @instance@) 
and whatever values are necessary for instances.

-}
module Reflex.Vinyl.Types where
--import Reflex.Vinyl.Extra()

import Reflex

import Reflex.Dom.Builder.Class.Events 

import Data.Vinyl

import qualified Control.Lens as L

----------------------------------------

----------------------------------------

{-|

@
 DOMEvents t :: [EventTag] -> *
@

e.g. specializations:

@
DOMEvents t '[ ClickTag, MousemoveTag ]
~
Rec (EventOf t) '[ ClickTag, MousemoveTag ]
~
(EventOf t ClickTag, EventOf t MousemoveTag)
~
(Event t (EventResultType ClickTag), Event t (EventResultType MousemoveTag))
~
( Event t () , Event t (Int, Int) )
@

e.g. usage:

@
rget (Proxy :: Proxy ClickTag) (DOMEvents t '[ ClickTag, MousemoveTag ])
=
EventOf t ClickTag
@

a.k.a.

@
-- simple wrapper
rgetDOM proxy events = case rget proxy events of
 EventOf event -> event

-- example
myEvents :: DOMEvents t '[ ClickTag, MousemoveTag ]
myEvents = ... 

>> :t rget Click myEvents
:: EventOf t ClickTag

>> :t rgetDOM Click myEvents
:: Event t ()
@

since

@
-- EventName is a specialized Proxy
Click :: _ ClickTag
@

-}
type DOMEvents t = Rec (EventOf t)

{-|


like `Compose Event EventResult`

maps dom event names to reflex events of haskell types

@
EventOf t :: EventTag -> * 
@

EventResultType is not injective, but it is total. 

Inference is driven by the @event :: EventTag@ (event being a type of kind EventTag). 

e.g. specializations:

@
EventOf t ClickTag
~
Event t (EventResultType ClickTag)
~
Event t ()
@

-}
newtype EventOf t event 
 = EventOf (DOMEvent t event)

eventOf :: EventOf t event -> DOMEvent t event 
eventOf (EventOf e) = e

_EventOf :: L.Iso' (EventOf t event) (DOMEvent t event)
_EventOf = L.iso eventOf EventOf

type DOMEvent t event 
 = Event t (EventResultType event)

-- GADT? Use Coyoneda thing if must be a Functor?

{-| 

@DOMEvents_ tags@ is isomorphic to @Proxy tags@, whose value is isomorphic to @()@ (i.e. just unit).

@
DOMEvents_ :: [EventTag] -> *
@

e.g. specializations:

@
DOMEvents_ '[ ClickTag, MousemoveTag ]
~
Rec EventName '[ ClickTag, MousemoveTag ]
~
(EventName ClickTag, EventName MousemoveTag)
@

e.g. usage:

@
myEventNames = Click :& Mousemove :& RNil

-- inferred
>> :t myEventNames 
DOMEvents_ '[ ClickTag, MousemoveTag ]
@

Naming: the underscore suffix is a pun on the @sequence / sequence_@ naming convention, since, as mentioned, this record carries type information, while the value it carries is just like a unit. 

-}
type DOMEvents_ = Rec EventName 

----------------------------------------

{-NOTES

data kind EventTag

data EventName :: EventTag -> * 
-- like Proxy

type family EventResultType :: EventTag -> * 
newtype EventResult :: EventTag -> * 
-- like Identity

-}

----------------------------------------
