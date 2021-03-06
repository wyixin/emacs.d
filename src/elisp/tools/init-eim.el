;;; init-eim.el --- eim settings for KDr2's Emacs

;; Author   : KDr2 <killy.draw@gmail.com>
;; URL      : https://github.com/KDr2/emacs.d

;; This file is not part of GNU Emacs.
;;

(add-non-elpa-load-path  "/emacs-eim")

(autoload 'eim-use-package "eim" "Another emacs input method")
;; Tooltip
(setq eim-use-tooltip nil)

;;(register-input-method
;; "eim-wb" "euc-cn" 'eim-use-package
;; "五笔" "汉字五笔输入法" "wb.txt")
(register-input-method
 "eim-py" "euc-cn" 'eim-use-package
 "拼音" "汉字拼音输入法" "py.txt")

;; 用 ; 暂时输入英文
(require 'eim-extra)
(global-set-key ";" 'eim-insert-ascii)

(setq default-input-method "eim-py")

(provide 'init-eim)
