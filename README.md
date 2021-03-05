CodeIs.land
===========

Source code for my blog, [Code Island][codeisland].

Everything is licensed under [CC BY-SA][ccsa4] by default, but I'm probably
open to making exceptions for your commercial thing too as long as you ask
first.

[build.sh][build] will install dependencies, build the site with [Stack][stack],
and serve it at <http://localhost:8000>.
You need to kill and re-run the script to recompile the [Haskell][haskell]
code in [site.hs][sitehs], but everything else updates live as you edit the files.
If you have type errors it will fall back to GHCi.

[publish.sh][publish] will update the static files on the master branch and
push them for use with [Github pages](https://pages.github.com/).

[codeisland]: https://codeis.land
[build]: https://github.com/jefdaj/jefdaj.github.io/blob/develop/build.sh
[publish]: https://github.com/jefdaj/jefdaj.github.io/blob/develop/publish.sh
[stack]: https://docs.haskellstack.org/en/stable/README
[haskell]: https://www.haskell.org
[sitehs]: https://github.com/jefdaj/jefdaj.github.io/blob/develop/src/site.hs
[ccsa4]: https://creativecommons.org/licenses/by-sa/4.0/
