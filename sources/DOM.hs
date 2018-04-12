
{-|

naming conflicts between elements and attributes

(e.g. @<input>@ and @<form input="">@)

-}
module DOM
 ( module DOM.Event
 , module DOM.Event.Kind
 , module DOM.Event.Singletons
 , module DOM.Event.Types
 , module DOM.Event.Core

 , module Element
-- , module DOM.Element.Kind
-- , module DOM.Element.Singletons
 , module DOM.Element.Types
 , module DOM.Element.Core
 
 , module DOM.Attribute
 , module DOM.Attribute.Kind
 , module DOM.Attribute.Singletons
 , module DOM.Attribute.Types
 , module DOM.Attribute.Core
 , module DOM.Attribute.Record

 , module DOM.CSS
 , module DOM.CSS.Kind
 , module DOM.CSS.Singletons
 , module DOM.CSS.Types
 , module DOM.CSS.Core

 ) where

import DOM.Event
import DOM.Event.Kind
import DOM.Event.Singletons
import DOM.Event.Types
import DOM.Event.Core

import qualified DOM.Element as Element hiding
 ( Input, INPUT
 )
-- import DOM.Element.Kind
-- import DOM.Element.Singletons
import DOM.Element.Types
import DOM.Element.Core

import DOM.Attribute
import DOM.Attribute.Kind
import DOM.Attribute.Singletons
import DOM.Attribute.Types
import DOM.Attribute.Core
import DOM.Attribute.Record

import DOM.CSS
import DOM.CSS.Kind
import DOM.CSS.Singletons
import DOM.CSS.Types
import DOM.CSS.Core

