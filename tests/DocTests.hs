{-# OPTIONS_GHC -fno-warn-missing-signatures #-}
import Test.DocTest

main :: IO ()
main = doctest

   -- every module in this directory (i.e. `hs-source-dirs`)
 [ "sources/"

   -- all language extensions enabled by default (i.e. `default-extensions`)
 , "-XPackageImports"
 , "-XAutoDeriveTypeable"
 , "-XDeriveDataTypeable"
 , "-XDeriveGeneric"
 , "-XDeriveFunctor"
 , "-XDeriveFoldable"
 , "-XDeriveTraversable"
 , "-XLambdaCase"
 , "-XEmptyCase"
 , "-XTypeOperators"
 , "-XPostfixOperators"
 , "-XViewPatterns"
 , "-XBangPatterns"
 , "-XKindSignatures"
 , "-XNamedFieldPuns"
 , "-XRecordWildCards"
 , "-XTupleSections"
 , "-XMultiWayIf"
 , "-XDoAndIfThenElse"
 , "-XEmptyDataDecls"
 , "-XMultiParamTypeClasses"
 , "-XFlexibleContexts"
 , "-XFlexibleInstances"
 , "-XTypeFamilies"
 , "-XFunctionalDependencies"
 , "-XScopedTypeVariables"
 , "-XStandaloneDeriving"
 ]

 -- [ "sources/Reflex/Vinyl/Extra.hs"
 -- , "sources/Reflex/Vinyl/Types.hs"
 -- , "sources/Reflex/Vinyl/Core.hs"
 -- , "sources/Reflex/Vinyl.hs"
 -- , "sources/Reflex/Vinyl/Example.hs"
 -- ]

