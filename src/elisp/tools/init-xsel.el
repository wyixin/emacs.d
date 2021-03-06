;;; init-xsel.el --- cut/paste under terminal settings for KDr2's Emacs

;; Copyright (C) KDr2

;; Author   : KDr2 <killy.draw@gmail.com>
;; URL      : https://github.com/KDr2/emacs.d

;; This file is not part of GNU Emacs.
;;

;; requirements: xsel

(setq x-select-enable-clipboard t)

(unless window-system
 (when (getenv "DISPLAY")
   ;; Callback for when user cuts
   (defun xsel-cut-function (text &optional push)
     ;; Insert text to temp-buffer, and "send" content to xsel stdin
     (with-temp-buffer
       (insert text)
       ;; I prefer using the "clipboard" selection (the one the
       ;; typically is used by c-c/c-v) before the primary selection
       ;; (that uses mouse-select/middle-button-click)
       (call-process-region (point-min) (point-max) "xsel" nil 0 nil "--clipboard" "--input")))
   ;; Call back for when user pastes
   (defun xsel-paste-function()
     ;; Find out what is current selection by xsel. If it is different
     ;; from the top of the kill-ring (car kill-ring), then return
     ;; it. Else, nil is returned, so whatever is in the top of the
     ;; kill-ring will be used.
     (let ((xsel-output (shell-command-to-string "xsel --clipboard --output")))
       (unless (string= (car kill-ring) xsel-output)
         xsel-output)))
   ;; Attach callbacks to hooks
   (setq interprogram-cut-function 'xsel-cut-function)
   (setq interprogram-paste-function 'xsel-paste-function)))

(provide 'init-xsel)
