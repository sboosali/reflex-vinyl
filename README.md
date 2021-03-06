[![Build Status](https://secure.travis-ci.org/sboosali/reflex-vinyl.svg)](http://travis-ci.org/sboosali/reflex-vinyl)
[![Hackage](https://img.shields.io/hackage/v/reflex-vinyl.svg)](https://hackage.haskell.org/package/reflex-vinyl)

# reflex-vinyl

`vinyl` Records of `reflex` (and `reflex-dom`) Events / Behavior / Dynamics.

## Example

```
import Reflex.Vinyl

-- TODO
```

## Links

[Hackage](https://hackage.haskell.org/package/reflex-vinyl)

[Example module source](https://hackage.haskell.org/package/reflex-vinyl/docs/src/Reflex-Vinyl-Example.html). 

## Development

### Nix

These nix files:

* reflex-vinyl-default.nix 
* reflex-vinyl-shell.nix 

were automatically created by the `cabal2nix` command, and can be regenerated with './reconfigure.sh`. They shouldn't be edited manually. 

While the other nix files:

* default.nix 
* shell.nix 

import their respecitve autogen'd files, but can (and should) be edited manually when necessary. 

If, you've forked this and have rewritten your own custom nix file for development (e.g. you're on OSX, or you need an older compiler version), please suffix it with that environment (e.g. `osx-shell.nix` or `ghc-7-10-03.nix`), and submit a pull request. Ditto for `stack.yaml` files. 

