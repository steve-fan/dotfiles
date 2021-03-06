;; Perspective
(global-set-key (kbd "C-x C-b") 'ibuffer)
(global-set-key (kbd "C-x C-k") 'kill-buffer-and-window)
(global-set-key (kbd "C-c C-j ") 'join-line)

(defun top-join-line ()
  "Join the current line with the line beneath it."
  (interactive)
  (delete-indentation 1))
(global-set-key (kbd "C-^") 'top-join-line)

;; Helm
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-x C-f") 'helm-find-files)
(global-set-key (kbd "C-x C-b") 'helm-buffers-list)
(global-set-key (kbd "C-x b") 'helm-mini)
(global-set-key (kbd "C-c i") 'helm-imenu)

;; Smartparens
(global-set-key (kbd "C-c m a") 'sp-beginning-of-sexp)
(global-set-key (kbd "C-c m a") 'sp-end-of-sexp)

;; Avy
(global-set-key (kbd "C-c SPC") 'avy-goto-word-0)

;; Magic
(global-set-key (kbd "C-x g") 'magit-status)

;; Kill buffern and window
(global-set-key (kbd "C-x k") 'kill-buffer-and-window)

;; expand-region
(global-set-key (kbd "C-c =") 'er/expand-region)

;; switch-window
(global-set-key (kbd "C-x o") 'switch-window)

(global-set-key (kbd "C-x f") 'helm-projectile-find-file)

;; anzu
(global-set-key [remap query-replace] 'anzu-query-replace)
(global-set-key [remap query-replace-regexp] 'anzu-query-replace-regexp)

(provide 'core-keybindings)
