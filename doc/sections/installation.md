INSTALLATION
============

You can build from source using `stack install` or `cabal install`.  `patat` is
also available from [Hackage].

[Hackage]: https://hackage.haskell.org/package/patat

For people unfamiliar with the Haskell ecosystem, this means you can do either
of the following:

Using stack
-----------

1. Install [stack] for your platform.
2. Clone this repository.
3. Run `stack setup` (if you're running stack for the first time) and
   `stack install`.
4. Make sure `$HOME/.local/bin` is in your `$PATH`.

[stack]: https://docs.haskellstack.org/en/stable/README/

Using cabal
-----------

1. Install [cabal] for your platform.
2. Run `cabal install patat`.
3. Make sure `$HOME/.cabal/bin` is in your `$PATH`.

[cabal]: https://www.haskell.org/cabal/
