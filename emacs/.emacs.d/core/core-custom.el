;; Changes all yes/no questions to y/n type
(fset 'yes-or-no-p 'y-or-n-p)

;; do not confirm file creation
(setq confirm-nonexistent-file-or-buffer nil)

(transient-mark-mode t)
(which-key-mode)
(global-linum-mode)
(global-anzu-mode +1)
(global-undo-tree-mode)
(add-hook 'before-save-hook 'delete-trailing-whitespace)

(add-to-list 'display-buffer-alist
             `(,(rx bos "*helm" (* not-newline) "*" eos)
               (display-buffer-in-side-window)
               (inhibit-same-window . t)
               (window-height . 0.3)))

(provide 'core-custom)
