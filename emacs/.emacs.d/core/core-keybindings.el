;; Perspective
(global-set-key (kbd "C-x C-b") 'ibuffer)
(global-set-key (kbd "C-x C-k") 'kill-buffer-and-window)

;; Helm
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-x C-f") 'helm-find-files)
(global-set-key (kbd "C-x C-b") 'helm-buffers-list)
(global-set-key (kbd "C-x b") 'helm-mini)

;; Smartparens
(global-set-key (kbd "C-c m a") 'sp-beginning-of-sexp)
(global-set-key (kbd "C-c m a") 'sp-end-of-sexp)

;; Avy
(global-set-key (kbd "C-c SPC") 'avy-goto-word-0)

;; Magic
(global-set-key (kbd "C-x g") 'magit-status)

(provide 'core-keybindings)
