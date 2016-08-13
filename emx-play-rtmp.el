;;; emx-play-rtmp.el --- play media from emacs buffers
;;
;; Author: ~nullx002
;; Maintainer: ~nullx002 (github)
;; Created: 13 August 2016
;; Keywords: play, media, vlc, mplayer, w3m, buffers
;; URL: https://github.com/nullx002/emx-play-rtmp
;; Version: 0.1

;; This package is not in MELPA, created for personal use.

;; This file is not part of GNU Emacs.

;; This code is free software; you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published
;; by the Free Software Foundation; either version 3, or
;; (at your option) any later version.

;; This code is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
;; See the GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs.  If not, see <http://www.gnu.org/licenses/>.


;;; emx-play-rtmp starts here

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;    play rtmp streams in vlc from emacs    ;;;;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(defun play-rtmp (url)
  (interactive "sURL: ")
  (start-process-shell-command "rtmp"
            nil "rtmpdump -v -r " url " -o - | vlc -"))
(global-set-key (kbd "<f9> z") 'play-rtmp)

(defun www-play-rtmp ()
  (interactive)
  (play-rtmp
    (or (w3m-anchor (point))
        (thing-at-point 'url)
        (w3m-next-anchor (point)))))
(global-set-key (kbd "<f9> Z") 'www-play-rtmp)

(provide 'emx-play-rtmp)

;;; emx-play-rtmp ends here
