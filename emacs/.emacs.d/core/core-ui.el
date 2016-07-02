(menu-bar-mode -1)
(tool-bar-mode 0)
(auto-save-mode -1)
(setq make-backup-files nil)
(setq-default indent-tabs-mode nil)
(setq linum-format (quote "%3d "))

;; Display the line and column number in the modeline
(setq line-number-mode t)
(setq column-number-mode t)

;; Show matching parens
(show-paren-mode)
(setq show-paren-delay 0.0)
(load-theme 'ujelly t)

(provide 'core-ui)
