{-# LANGUAGE GADTs, DataKinds #-}

module DOM.Element.Singletons where

import DOM.Extra
import DOM.Element.Kind

----------------------------------------

{-| a @GADT@ of singletons for all types in the 'ELEMENT' kind.

-}
data Element (element :: ELEMENT) where
  Anchor     :: Element 'ANCHOR 
  Audio      :: Element 'AUDIO 
  Area       :: Element 'AREA
  Base       :: Element 'BASE
  Blockquote :: Element 'BLOCKQUOTE
  Button     :: Element 'BUTTON
  Canvas     :: Element 'CANVAS
  Col        :: Element 'COL
  Colgroup   :: Element 'COLGROUP
  Details    :: Element 'DETAILS
  Del        :: Element 'DEL
  Embed      :: Element 'EMBED
  Fieldset   :: Element 'FIELDSET
  Form       :: Element 'FORM
  Html       :: Element 'HTML
  Iframe     :: Element 'IFRAME
  Img        :: Element 'IMG
  Ins        :: Element 'INS
  Input      :: Element 'INPUT
  Keygen     :: Element 'KEYGEN
  Label      :: Element 'LABEL
  Li         :: Element 'LI
  Link       :: Element 'LINK
  Map        :: Element 'MAP
  Menu       :: Element 'MENU
  Media      :: Element 'MEDIA
  Meta       :: Element 'META
  Meter      :: Element 'METER
  Quote      :: Element 'QUOTE
  Object     :: Element 'OBJECT
  Ol         :: Element 'OL
  Optgroup   :: Element 'OPTGROUP
  Option     :: Element 'OPTION
  Output     :: Element 'OUTPUT
  Param      :: Element 'PARAM
  Progress   :: Element 'PROGRESS
  Script     :: Element 'SCRIPT
  Select     :: Element 'SELECT
  Source     :: Element 'SOURCE
  Style      :: Element 'STYLE
  Table      :: Element 'TABLE
  Textarea   :: Element 'TEXTAREA
  Td         :: Element 'TD
  Th         :: Element 'TH
  Time       :: Element 'TIME
  Track      :: Element 'TRACK
  Video      :: Element 'VIDEO

----------------------------------------
