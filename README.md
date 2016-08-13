# emx-play-rtmp
play rtmp streams from within emacs in vlc media player

this package is not in melpa. you have to download zip folder from repository and place it in your .emacs.d/elpa folder and have to `cd` to that directory `emx-play-rtmp` and have to compile fie using `M-x byte-compile-file RET emx-play-rtmp.el` to compile it yourself. 

**add `(require 'emx-play-rtmp)` to your `.emacs` or `.emacs.d/init.el` file.**

### to use:
---

`M-x play-rtmp RET URL`

`M-x www-play-rtmp` - when on url or anchor
