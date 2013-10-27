;;; main.el --- settings for KDr2's emacs configuration

;; Copyright (C) 2012 KDr2

;; Author   : KDr2 <killy.draw@gmail.com>
;; URL      : https://github.com/KDr2/k.emacs.d
;; Version  : 0.7
;; Keywords : KDr2

;; This file is not part of GNU Emacs.
;;


(require 'init-vars)
(require 'init-elpa)

;; Basic Settings
(load-file "~/.emacs.d/src/elisp/basic.el")

;; Common Libraries
(load-file "~/.emacs.d/src/elisp/common.el")

;; Util Modes
(load-file "~/.emacs.d/src/elisp/util-modes.el")

;; Programming Language Modes
(load-file "~/.emacs.d/src/elisp/lang-modes.el")

;; Misc Settings
(load-file "~/.emacs.d/src/elisp/misc.el")

;; Theme Settings
(require 'init-theme)

;; Orgmode Settings
(require 'init-org)

;; chinese input method
(require 'init-eim)

(provide 'init-main)
