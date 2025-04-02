This Inform 7 extension changes the language of play to toki pona. For usage documentation in English, see [docs/usage.html](http://rose.systems/i7-tok/usage). **sina wile kama sona kepeken toki pona taso la, o lukin e lipu [docs/lipu_ilo.html](http://rose.systems/i7-tok/lipu_ilo)**. The English documentation can also be viewed in the Inform IDE with the extension installed.

## Current status

No functional changes since written for *anpa ma*.

Usage documentation could use more examples. The examples should probably be stored as their own files and inserted into documentation with a Python script, but that currently only happens for the English documentation, not the toki pona version.

## Contributing

Go for it.

## Miscellaneous implementation trivia

This extension is for Inform version 10.1.2. In the next version of Inform, this should be refactored into a “Language extension” according to [(IE-0016) Language extensions reform](https://github.com/ganelson/inform-evolution/blob/main/proposals/0016-language-extensions-reform.md).

UCSUR support is theoretically possible even though Inform 7 does not support such high codepoints, using i6 inclusions; this could improve sitelen pona support on systems with poor ligature rendering.

If you make something with this extension, I would love to hear about it.
