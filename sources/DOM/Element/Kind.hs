{-# LANGUAGE DataKinds #-}

{-|

Manually generated from definitions in the @typescript@ compiler (in Feb 2018). 

<https://github.com/DefinitelyTyped/DefinitelyTyped/blob/80589689957696f66bfd59960aadd2c5bc2cac31/types/react/index.d.ts#L605>

NOTE on Naming: haskell keywords that conflict with html element include: .

-}

module DOM.Element.Kind where
--import DOM.Extra
--import DOM.CSS.Kind

----------------------------------------

{-| a @data kind@
-}
data ELEMENT
  = ANCHOR 
  | AUDIO 
  | AREA
  | BASE
  | BLOCKQUOTE
  | BUTTON
  | CANVAS
  | COL
  | COLGROUP
  | DETAILS
  | DEL
  | EMBED
  | FIELDSET
  | FORM
  | HTML
  | IFRAME
  | IMG
  | INS
  | INPUT
  | KEYGEN
  | LABEL
  | LI
  | LINK
  | MAP
  | MENU
  | MEDIA
  | META
  | METER
  | QUOTE
  | OBJECT
  | OL
  | OPTGROUP
  | OPTION
  | OUTPUT
  | PARAM
  | PROGRESS
  | SCRIPT
  | SELECT
  | SOURCE
  | STYLE
  | TABLE
  | TEXTAREA
  | TD
  | TH
  | TIME
  | TRACK
  | VIDEO

