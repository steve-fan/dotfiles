;; Changes all yes/no questions to y/n type
(fset 'yes-or-no-p 'y-or-n-p)
;; (setq debug-on-error t)

;; do not confirm file creation
(setq confirm-nonexistent-file-or-buffer nil)

(transient-mark-mode t)
(which-key-mode)
(global-linum-mode)
(global-anzu-mode +1)
(global-undo-tree-mode)
(super-save-mode +1)
(setq super-save-auto-save-when-idle t)
(setq super-save-idle-duration 2)
(add-hook 'before-save-hook 'delete-trailing-whitespace)

(add-to-list 'display-buffer-alist
             `(,(rx bos "*helm" (* not-newline) "*" eos)
               (display-buffer-in-side-window)
               (inhibit-same-window . t)
               (window-height . 0.3)))

(add-to-list 'projectile-globally-ignored-directories "node_modules")

;; Use the system clipboard
(setq x-select-enable-clipboard t)

(defun close-all-buffer()
  (interactive)
  (mapc 'kill-buffer (buffer-list)))


(defun paste-to-osx (text &optional push)
  (let ((process-connection-type nil))
    (let ((proc (start-process "pbcopy" "*Messages*" "pbcopy")))
      (process-send-string proc text)
      (process-send-eof proc))))


(setq interprogram-cut-function 'paste-to-osx)

(provide 'core-custom)
