;;; init-git-emacs.el

;; Copyright (C) KDr2

;; Author   : KDr2 <killy.draw@gmail.com>
;; URL      : https://github.com/KDr2/emacs.d

;; This file is not part of GNU Emacs.
;;

;; git-emacs
(add-non-elpa-load-path "/git-emacs")
(require 'git-emacs-autoloads)
(setq git-state-modeline-decoration 'git-state-decoration-large-dot)

(provide 'init-git-emacs)
