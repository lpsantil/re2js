# re2js
A simple script to produce JavaScript from re2c output

I salvaged this from a [comment in an old WebKit release][0].

## Usage:
It defaults to using `-isc` on `re2c`.  Pass additional parameters as necessary.  Redirect it's output to file to save it permanently.
* `re2js myLexer.re2js > myLexer.js`

## Installing:
* `make DESTDIR=/usr/local install`, or simply, `make install`
* You can also do `make uninstall`

[0]: http://opensource.apple.com/source/WebCore/WebCore-1298/inspector/front-end/SourceJavaScriptTokenizer.re2js?raw
